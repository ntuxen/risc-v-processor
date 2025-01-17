package processor.stages

import chisel3._
import processor.components._

class IFDStage(val program: Seq[UInt]) extends Module {
  val io = IO(new Bundle {
    //------------INPUTS--------//
    val EXtoIFD = new Bundle {
      val take_branch_EXtoIFD = Input(Bool())
      val branch_address_EXtoIFD = Input(UInt(32.W))
    }

    //-----------OUTPUTS---------------//
    val decoded_instruction_IFDtoEX = new Bundle(
    ){
      val rs1 = Output(UInt(5.W))
      val rs2 = Output(UInt(5.W))
      val rd = Output(UInt(5.W))
//      val funct3 = Output(UInt(3.W))
//      val funct7 = Output(UInt(7.W))
      val opcode = Output(UInt(7.W))
    }
    val IFDtoEX = new Bundle {
      val pc_IFDtoEX = Output(UInt(32.W))
      val immediate_IFDtoEX = Output(UInt(32.W))
      val alu_op2mux_select_IFDtoEX = Output(UInt(1.W))
      val alu_operation_select_IFDtoEX = Output(UInt(8.W))
      val register_write_enable_IFDtoEX = Output(UInt(1.W))
      val write_back_select_IFDtoEX = Output(UInt(1.W))
      val MemReadEnable_IFDtoEX = Output(UInt(1.W)) //TODO: Do we need this?
      val write_memory_enable_IFDtoEX = Output(UInt(1.W))
    }
  })

  // PC logic
  // Remember that the PC implicitly starts at an instruction address 4 higher
  // TODO: fix the above
  val PC = RegInit("hFFFFFFFC".U(32.W))
  val NextInstrAdd = WireDefault(Mux(io.EXtoIFD.take_branch_EXtoIFD, io.EXtoIFD.branch_address_EXtoIFD, PC + 4.U))
  PC := NextInstrAdd

  // Instruction memory
  val instrMem = Module(new InstrMemory(256,10,program))
  instrMem.io.addr := NextInstrAdd >> 2.U

  //Instruction Decoder
  val instructionDecoder = Module(new InstructionDecoder)
  instructionDecoder.io.instruction := instrMem.io.dataOut

  //Immediate Generator
  val immediateGenerator = Module(new ImmediateGenerator)
  immediateGenerator.io.instruction := instrMem.io.dataOut
  immediateGenerator.io.instrType := instructionDecoder.io.instrType

  //ControlUnit
  val controlUnit = Module(new ControlUnit)
  controlUnit.io.funct3 := instructionDecoder.io.funct3
  controlUnit.io.funct7 := instructionDecoder.io.funct7
  controlUnit.io.opcode := instructionDecoder.io.decoded_instruction_IFDtoEX.opcode
  io.IFDtoEX.write_back_select_IFDtoEX := controlUnit.io.write_back_select
  io.IFDtoEX.write_memory_enable_IFDtoEX := controlUnit.io.write_memory_enable
  io.IFDtoEX.alu_operation_select_IFDtoEX := controlUnit.io.alu_operation_select
  io.IFDtoEX.alu_op2mux_select_IFDtoEX := controlUnit.io.alu_op2mux_select
  io.IFDtoEX.MemReadEnable_IFDtoEX := controlUnit.io.MemReadEnable
  io.IFDtoEX.register_write_enable_IFDtoEX := controlUnit.io.register_write_enable

  // Pipeline register
  io.IFDtoEX.pc_IFDtoEX := RegNext(NextInstrAdd)

  
  //Connect PC to output so it propagates to next stage
  io.decoded_instruction_IFDtoEX <> instructionDecoder.io.decoded_instruction_IFDtoEX

  io.IFDtoEX.immediate_IFDtoEX := immediateGenerator.io.immediate


}