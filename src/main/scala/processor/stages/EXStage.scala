package processor.stages
import chisel3._
import chisel3.util._
import processor.components.{ALU, ControlUnit, ImmediateGenerator, Opcode, RegisterFile}
class EXStage extends Module {
  val io = IO(new Bundle {
    //------------Input-------------//
    val instruction_IDFtoEX = Input(UInt(32.W))
    val decoded_instruction_IFDtoEX = new Bundle(
      ){
        val rs1 = Output(UInt(5.W))
        val rs2 = Output(UInt(5.W))
        val rd = Output(UInt(5.W))
        val funct3 = Output(UInt(3.W))
        val funct7 = Output(UInt(7.W))
        val instrType = Output(UInt(3.W))
        val opcode = Output(UInt(7.W))
      }
    val regfile_write_data_WBtoEX = Input(UInt(32.W))
    val regfile_write_enable_WBtoEX = Input(UInt(1.W))
    val rd_WBtoEX = Input(UInt(5.W))
    val pc_IFDtoEX = Input(UInt(32.W))
    //------------Output-------------//
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
  })
  //Load needed modules/components
  val RegFile = Module(new RegisterFile)
  val immGen = Module(new ImmediateGenerator)
  val controlUnit = Module(new ControlUnit)
  val ALU = Module(new ALU)

  //Pipeline Registers
  val instructionReg = RegNext(io.instruction_IDFtoEX, 0.U)
  val instrTypeReg = RegNext(io.decoded_instruction_IFDtoEX.instrType, 0.U)
  val funct3Reg = RegNext(io.decoded_instruction_IFDtoEX.funct3, 0.U)
  val funct7Reg = RegNext(io.decoded_instruction_IFDtoEX.funct7, 0.U)
  val opcodeReg = RegNext(io.decoded_instruction_IFDtoEX.opcode, 0.U)
  val rdReg = RegNext(io.decoded_instruction_IFDtoEX.rd, 0.U)
  val branchAddrReg = RegNext(io.pc_IFDtoEX, 0.U)
  

  //Initialize outputs
  io.alu_result_EXtoMEM := 0.U(32.W)
  io.memory_write_data_EXtoMEM := 0.U
  io.rd_EXtoMEM := false.B
  io.register_write_enable_EXtoMEM := false.B
  io.write_back_select_EXtoMEM := false.B
  io.data_memory_write_enable_EXtoMEM := false.B
  io. address_is_io_EXtoMEM := false.B
  io.io_memory_write_enable_EXtoMEM := false.B
  io.alu_operation_select_EXtoMEM := 0.U
  //BranchAddress Logic: (Standard for jal and branch instructions)
  io.branch_address_EXtoMEM := branchAddrReg + (immGen.io.immediate << 1)
  io.take_branch_EXtoMEM := false.B

  //Connect RegFile
  RegFile.io.rs1 := io.decoded_instruction_IFDtoEX.rs1
  RegFile.io.rs2 := io.decoded_instruction_IFDtoEX.rs2
  RegFile.io.rd := io.rd_WBtoEX
  RegFile.io.writeData := io.regfile_write_data_WBtoEX
  RegFile.io.writeEnable := io.regfile_write_enable_WBtoEX
  io.memory_write_data_EXtoMEM := RegFile.io.operand2

  //ALU and RegFile connections
  ALU.io.operand1 := RegFile.io.operand1
  ALU.io.operand2 := Mux(controlUnit.io.MuxAluSel === 1.U, immGen.io.immediate, RegFile.io.operand2)
  io.alu_result_EXtoMEM := ALU.io.ALURes
  io.take_branch_EXtoMEM := ALU.io.takeBranch

  //Connect ImmGen
  immGen.io.instrType := instrTypeReg
  immGen.io.instruction := instructionReg

  //Connect ControlUnit
  //------------Input-------------//
  controlUnit.io.funct3 := funct3Reg
  controlUnit.io.funct7 := funct7Reg
  controlUnit.io.instrType := instrTypeReg
  controlUnit.io.opcode := opcodeReg

  //------------Output-------------//
  io.register_write_enable_EXtoMEM := controlUnit.io.RegWriteEnable
  io.write_back_select_EXtoMEM := controlUnit.io.WriteDataMux
  io.data_memory_write_enable_EXtoMEM := controlUnit.io.MemWriteEnable
  ALU.io.ALUSel := controlUnit.io.AluSel
  io.alu_operation_select_EXtoMEM := controlUnit.io.AluSel


  // Logic for memory-mapped IO: address in memory or IO
  when(ALU.io.ALURes >= 1024.U && opcodeReg =/= Opcode.lui && opcodeReg =/= Opcode.auipc) {  // if requested address is in IO space
    io.data_memory_write_enable_EXtoMEM := false.B  // Don't write to normal memory
    io.address_is_io_EXtoMEM := true.B         // DELAYED ONE CLOCK CYCLE FOR READS
    io.io_memory_write_enable_EXtoMEM := controlUnit.io.MemWriteEnable
  }


  //Connect rdReg
  io.rd_EXtoMEM := rdReg

  //LUI Logic
  when(opcodeReg === Opcode.lui){
    io.alu_result_EXtoMEM := immGen.io.immediate
  }
  //AUIPC Logic
  when(opcodeReg === Opcode.auipc){
    io.alu_result_EXtoMEM := branchAddrReg + immGen.io.immediate
  }


  //PC logic for Jal and Jalr
  when(opcodeReg === Opcode.jal){
    io.branch_address_EXtoMEM := branchAddrReg + (immGen.io.immediate) //
    io.alu_result_EXtoMEM := branchAddrReg + 4.U
  }
  when(opcodeReg === Opcode.jalr){ //TODO: Test Jalr (Maybe dont shift with 2?)
    io.branch_address_EXtoMEM := RegFile.io.operand1 + (immGen.io.immediate << 2)
    io.alu_result_EXtoMEM := branchAddrReg + 4.U
  }



}
