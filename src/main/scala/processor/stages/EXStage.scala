package processor.stages
import chisel3._
import chisel3.util._
import processor.components.{ALU, ControlUnit, ImmediateGenerator, Opcode, RegisterFile}
class EXStage extends Module {
  val io = IO(new Bundle {
    //------------Input-------------//
    val decoded_instruction_IFDtoEX = new Bundle {
      val rs1 = Input(UInt(5.W))
      val rs2 = Input(UInt(5.W))
      val rd = Input(UInt(5.W))
      val funct3 = Input(UInt(3.W))
      val funct7 = Input(UInt(7.W))
      val opcode = Input(UInt(7.W))
      }
    val IFDtoEX = new Bundle {
      val pc_IFDtoEX = Input(UInt(32.W))
      val immediate_IFDtoEX = Input(UInt(32.W))
    }
    val WBtoEX = new Bundle {
      val regfile_write_data_WBtoEX = Input(UInt(32.W))
      val regfile_write_enable_WBtoEX = Input(Bool())
      val rd_WBtoEX = Input(UInt(5.W))
    }


    //------------Output-------------//
    val EXtoMEM = new Bundle {
      val alu_result_EXtoMEM = Output(UInt(32.W))
      val memory_write_data_EXtoMEM = Output(UInt(32.W))
      val rd_EXtoMEM = Output(UInt(5.W))
      val register_write_enable_EXtoMEM = Output(Bool())
      val write_back_select_EXtoMEM = Output(Bool())
      val data_memory_write_enable_EXtoMEM = Output(Bool())
      val io_memory_write_enable_EXtoMEM = Output(Bool())
      val branch_address_EXtoMEM = Output(UInt(32.W))
      val take_branch_EXtoMEM = Output(Bool())
      val address_is_io_EXtoMEM = Output(Bool())
      val alu_operation_select_EXtoMEM = Output(UInt(8.W))
    }
  })

  //Load needed modules/components
  val RegFile = Module(new RegisterFile)
  //val immGen = Module(new ImmediateGenerator)
  val controlUnit = Module(new ControlUnit)
  val ALU = Module(new ALU)

  //Pipeline Registers
  val immediateReg = RegNext(io.IFDtoEX.immediate_IFDtoEX, 0.U)
  val funct3Reg = RegNext(io.decoded_instruction_IFDtoEX.funct3, 0.U)
  val funct7Reg = RegNext(io.decoded_instruction_IFDtoEX.funct7, 0.U)
  val opcodeReg = RegNext(io.decoded_instruction_IFDtoEX.opcode, 0.U)
  val rdReg = RegNext(io.decoded_instruction_IFDtoEX.rd, 0.U)
  val branchAddrReg = RegNext(io.IFDtoEX.pc_IFDtoEX, 0.U)
  

  //Initialize outputs
  io.EXtoMEM.alu_result_EXtoMEM := 0.U(32.W)
  io.EXtoMEM.memory_write_data_EXtoMEM := 0.U
  io.EXtoMEM.rd_EXtoMEM := false.B
  io.EXtoMEM.register_write_enable_EXtoMEM := false.B
  io.EXtoMEM.write_back_select_EXtoMEM := false.B
  io.EXtoMEM.data_memory_write_enable_EXtoMEM := false.B //TODO: Gets overwrited later
  io.EXtoMEM.address_is_io_EXtoMEM := false.B
  io.EXtoMEM.io_memory_write_enable_EXtoMEM := false.B
  io.EXtoMEM.alu_operation_select_EXtoMEM := 0.U
  //BranchAddress Logic: (Standard for jal and branch instructions)
  io.EXtoMEM.branch_address_EXtoMEM := branchAddrReg + (immediateReg)
  io.EXtoMEM.take_branch_EXtoMEM := false.B

  //Connect RegFile
  RegFile.io.rs1 := io.decoded_instruction_IFDtoEX.rs1
  RegFile.io.rs2 := io.decoded_instruction_IFDtoEX.rs2
  RegFile.io.rd_WBtoEX := io.WBtoEX.rd_WBtoEX
  RegFile.io.regfile_write_data_WBtoEX := io.WBtoEX.regfile_write_data_WBtoEX
  RegFile.io.regfile_write_enable_WBtoEX := io.WBtoEX.regfile_write_enable_WBtoEX
  io.EXtoMEM.memory_write_data_EXtoMEM := RegFile.io.reg_data_2

  //ALU and RegFile connections
  ALU.io.alu_operand_1 := RegFile.io.alu_operand_1
  ALU.io.alu_operand_2 := Mux(controlUnit.io.alu_op2mux_select === 1.U, immediateReg, RegFile.io.reg_data_2)
  io.EXtoMEM.alu_result_EXtoMEM := ALU.io.alu_result
  io.EXtoMEM.take_branch_EXtoMEM := ALU.io.take_branch_EXtoMEM

  //Connect ImmGen
//  immGen.io.instrType := instrTypeReg
//  immGen.io.instruction := instructionReg

  //Connect ControlUnit
  //------------Input-------------//
  controlUnit.io.funct3 := funct3Reg
  controlUnit.io.funct7 := funct7Reg
  controlUnit.io.opcode := opcodeReg

  //------------Output-------------//
  io.EXtoMEM.register_write_enable_EXtoMEM := controlUnit.io.register_write_enable_EXtoMEM
  io.EXtoMEM.write_back_select_EXtoMEM := controlUnit.io.write_back_select_EXtoMEM
  io.EXtoMEM.data_memory_write_enable_EXtoMEM := controlUnit.io.write_memory_enable
  ALU.io.alu_operation_select := controlUnit.io.alu_operation_select
  io.EXtoMEM.alu_operation_select_EXtoMEM := controlUnit.io.alu_operation_select


  // Logic for memory-mapped IO: address in memory or IO
  when(ALU.io.alu_result >= 1024.U /*&& opcodeReg =/= Opcode.lui && opcodeReg =/= Opcode.auipc*/) {  // if requested address is in IO space
    io.EXtoMEM.data_memory_write_enable_EXtoMEM := false.B  // Don't write to normal memory
    io.EXtoMEM.address_is_io_EXtoMEM := true.B         // DELAYED ONE CLOCK CYCLE FOR READS
    io.EXtoMEM.io_memory_write_enable_EXtoMEM := controlUnit.io.write_memory_enable
  }


  //Connect rdReg
  io.EXtoMEM.rd_EXtoMEM := rdReg

  //LUI Logic
  when(opcodeReg === Opcode.lui){
    io.EXtoMEM.alu_result_EXtoMEM := immediateReg
  }
  //AUIPC Logic
  when(opcodeReg === Opcode.auipc){
    io.EXtoMEM.alu_result_EXtoMEM := branchAddrReg + immediateReg
  }


  //PC logic for Jal and Jalr
  when(opcodeReg === Opcode.jal){
    io.EXtoMEM.branch_address_EXtoMEM := branchAddrReg + immediateReg
    io.EXtoMEM.alu_result_EXtoMEM := branchAddrReg + 4.U
  }
  when(opcodeReg === Opcode.jalr){
    io.EXtoMEM.branch_address_EXtoMEM := RegFile.io.alu_operand_1 + immediateReg
    io.EXtoMEM.alu_result_EXtoMEM := branchAddrReg + 4.U
  }



}
