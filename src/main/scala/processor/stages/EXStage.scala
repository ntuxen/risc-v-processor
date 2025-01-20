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
//      val funct3 = Input(UInt(3.W))
//      val funct7 = Input(UInt(7.W))
      val opcode = Input(UInt(7.W))
      }
    val IFDtoEX = new Bundle {
      val pc_IFDtoEX = Input(UInt(32.W))
      val immediate_IFDtoEX = Input(UInt(32.W))
      val alu_op2mux_select_IFDtoEX = Input(UInt(1.W))
      val alu_operation_select_IFDtoEX = Input(UInt(8.W))
      val register_write_enable_IFDtoEX = Input(UInt(1.W))
      val write_back_select_IFDtoEX = Input(UInt(1.W))
      val MemReadEnable_IFDtoEX = Input(UInt(1.W)) //TODO: Do we need this?
      val write_memory_enable_IFDtoEX = Input(UInt(1.W))
      val forward_enable_rs1_IFDtoEX = Input(UInt(3.W))
      val forward_enable_rs2_IFDtoEX = Input(UInt(3.W))
      
    }
    val WBtoEX = new Bundle {
      val regfile_write_data_WBtoEX = Input(UInt(32.W))
      val regfile_write_enable_WBtoEX = Input(Bool())
      val rd_WBtoEX = Input(UInt(5.W))
      val alu_result_WBtoEX = Input(UInt(32.W))
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
      val address_is_io_EXtoMEM = Output(Bool())
      val alu_operation_select_EXtoMEM = Output(UInt(8.W))
    }

    val EXtoIFD = new Bundle {
      val branch_address_EXtoIFD = Output(UInt(32.W))
      val take_branch_EXtoIFD = Output(Bool())
      val rd_EXtoIFD = Output(UInt(5.W))
    }

    val MEMtoEX = new Bundle() {
      val alu_result_MEMtoEX = Input(UInt(32.W))
    }

  })

  //Load needed modules/components
  val RegFile = Module(new RegisterFile)
  //val immGen = Module(new ImmediateGenerator)
  //val controlUnit = Module(new ControlUnit)
  val ALU = Module(new ALU)

  //Pipeline Registers
  val immediateReg = RegNext(io.IFDtoEX.immediate_IFDtoEX, 0.U)
//  val funct3Reg = RegNext(io.decoded_instruction_IFDtoEX.funct3, 0.U)
//  val funct7Reg = RegNext(io.decoded_instruction_IFDtoEX.funct7, 0.U)
  val opcodeReg = RegNext(io.decoded_instruction_IFDtoEX.opcode, 0.U)
  val rdReg = RegNext(io.decoded_instruction_IFDtoEX.rd, 0.U)
  val branchAddrReg = RegNext(io.IFDtoEX.pc_IFDtoEX, 0.U)
  val alu_operation_Reg = RegNext(io.IFDtoEX.alu_operation_select_IFDtoEX, 0.U)
  val register_write_Reg = RegNext(io.IFDtoEX.register_write_enable_IFDtoEX, 0.U)
  val write_back_Reg = RegNext(io.IFDtoEX.write_back_select_IFDtoEX, 0.U)
  val write_memory_Reg = RegNext(io.IFDtoEX.write_memory_enable_IFDtoEX, 0.U)
  val alu_op2mux_Reg = RegNext(io.IFDtoEX.alu_op2mux_select_IFDtoEX, 0.U)
  val forward_enable_rs1_Reg = RegNext(io.IFDtoEX.forward_enable_rs1_IFDtoEX, 0.U(3.W))
  val forward_enable_rs2_Reg = RegNext(io.IFDtoEX.forward_enable_rs2_IFDtoEX, 0.U(3.W))
  val alu_result_WBtoEX_Reg = RegNext(io.WBtoEX.alu_result_WBtoEX, 0.U)
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
  io.EXtoIFD.branch_address_EXtoIFD := branchAddrReg + (immediateReg)
  io.EXtoIFD.take_branch_EXtoIFD := false.B

  //Connect RegFile
  RegFile.io.rs1 := io.decoded_instruction_IFDtoEX.rs1
  RegFile.io.rs2 := io.decoded_instruction_IFDtoEX.rs2
  RegFile.io.rd_WBtoEX := io.WBtoEX.rd_WBtoEX
  RegFile.io.regfile_write_data_WBtoEX := io.WBtoEX.regfile_write_data_WBtoEX
  RegFile.io.regfile_write_enable_WBtoEX := io.WBtoEX.regfile_write_enable_WBtoEX
  io.EXtoMEM.memory_write_data_EXtoMEM := RegFile.io.reg_data_2

  //ALU and RegFile connections (And Forward logic)
  ALU.io.alu_operand_1 := MuxCase(RegFile.io.alu_operand_1,
    Array(
    (forward_enable_rs1_Reg === Cat(1.U, 0.U, 0.U)) -> io.MEMtoEX.alu_result_MEMtoEX,
    (forward_enable_rs1_Reg === Cat(0.U, 1.U, 0.U)) -> io.WBtoEX.alu_result_WBtoEX,
    (forward_enable_rs1_Reg === Cat(0.U, 0.U, 1.U)) -> alu_result_WBtoEX_Reg,
    (forward_enable_rs1_Reg === Cat(1.U, 1.U)) -> io.MEMtoEX.alu_result_MEMtoEX //TODO: Not sure about this case
  ))

  ALU.io.alu_operand_2 := MuxCase(
    Mux(alu_op2mux_Reg === 1.U, immediateReg, RegFile.io.reg_data_2),
    Array(
      (forward_enable_rs2_Reg === Cat(1.U, 0.U, 0.U)) -> io.MEMtoEX.alu_result_MEMtoEX,
      (forward_enable_rs2_Reg === Cat(0.U, 1.U, 0.U)) -> io.WBtoEX.alu_result_WBtoEX,
      (forward_enable_rs2_Reg === Cat(0.U, 0.U, 1.U)) -> alu_result_WBtoEX_Reg,
      (forward_enable_rs2_Reg === Cat(1.U, 1.U)) -> io.MEMtoEX.alu_result_MEMtoEX //TODO: Not sure about this case
    )
  )

  io.EXtoMEM.alu_result_EXtoMEM := ALU.io.alu_result
  io.EXtoIFD.take_branch_EXtoIFD := ALU.io.take_branch_EXtoIFD

  //Connect ImmGen
//  immGen.io.instrType := instrTypeReg
//  immGen.io.instruction := instructionReg

  //Connect ControlUnit
  //------------Input-------------//
//  controlUnit.io.funct3 := funct3Reg
//  controlUnit.io.funct7 := funct7Reg
//  controlUnit.io.opcode := opcodeReg

  //------------Output-------------//
  io.EXtoMEM.register_write_enable_EXtoMEM := register_write_Reg
  io.EXtoMEM.write_back_select_EXtoMEM := write_back_Reg
  io.EXtoMEM.data_memory_write_enable_EXtoMEM := write_memory_Reg
  ALU.io.alu_operation_select := alu_operation_Reg
  io.EXtoMEM.alu_operation_select_EXtoMEM := alu_operation_Reg
  io.EXtoIFD.rd_EXtoIFD := rdReg


  // Logic for memory-mapped IO: address in memory or IO
  when(ALU.io.alu_result >= 1024.U /*&& opcodeReg =/= Opcode.lui && opcodeReg =/= Opcode.auipc*/) {  // if requested address is in IO space
    io.EXtoMEM.data_memory_write_enable_EXtoMEM := false.B  // Don't write to normal memory
    io.EXtoMEM.address_is_io_EXtoMEM := true.B         // DELAYED ONE CLOCK CYCLE FOR READS
    io.EXtoMEM.io_memory_write_enable_EXtoMEM := write_memory_Reg
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
    io.EXtoIFD.branch_address_EXtoIFD := branchAddrReg + immediateReg
    io.EXtoMEM.alu_result_EXtoMEM := branchAddrReg + 4.U
  }
  when(opcodeReg === Opcode.jalr){
    io.EXtoIFD.branch_address_EXtoIFD := RegFile.io.alu_operand_1 + immediateReg
    io.EXtoMEM.alu_result_EXtoMEM := branchAddrReg + 4.U
  }





}
