package processor.stages

import chisel3._
import processor.components._

class IFDStage(val program: Seq[UInt]) extends Module {
  val io = IO(new Bundle {
    //------------INPUTS--------//
    val MEMtoIFD = new Bundle {
      val take_branch_MEMtoIFD = Input(Bool())
      val branch_address_MEMtoIFD = Input(UInt(32.W))
    }
    //-----------OUTPUTS---------------//
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
    val IFDtoEX = new Bundle {
      val pc_IFDtoEX = Output(UInt(32.W))
      val instruction_IFDtoEX = Output(UInt(32.W))
    }
  })

  // PC logic
  // Remember that the PC implicitly starts at an instruction address 4 higher
  // TODO: fix the above
  val PC = RegInit("hFFFFFFFC".U(32.W))
  val NextInstrAdd = WireDefault(Mux(io.MEMtoIFD.take_branch_MEMtoIFD, io.MEMtoIFD.branch_address_MEMtoIFD, PC + 4.U))
  // Instruction memory
  val instrMem = Module(new InstrMemoryTest(1024,10,program))
  instrMem.io.addr := NextInstrAdd >> 2.U
  //Instruction Decoder
  val instructionDecoder = Module(new InstructionDecoder)
  instructionDecoder.io.instruction := instrMem.io.dataOut

  PC := NextInstrAdd

  
  //Connect PC to output so it propagates to next stage
  io.IFDtoEX.pc_IFDtoEX := NextInstrAdd
  io.decoded_instruction_IFDtoEX <> instructionDecoder.io.decoded_instruction_IFDtoEX
  io.IFDtoEX.instruction_IFDtoEX := instrMem.io.dataOut
}