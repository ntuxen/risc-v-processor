package processor.stages

import chisel3._
import processor.components._

class IFStage(val program: Seq[UInt]) extends Module {
  val io = IO(new Bundle {
    val EnableJump = Input(Bool())
    val BranchAddress = Input(UInt(32.W))
    val instruction = Output(UInt(32.W))
    val PC = Output(UInt(32.W))
  })


  // PC logic
  // Remember that the PC implicitly starts at an instruction address 4 higher
  // TODO: fix the above
  val PC = RegInit("hFFFFFFFC".U(32.W))
  val NextInstrAdd = WireDefault(Mux(io.EnableJump, io.BranchAddress, PC + 4.U))

  PC := NextInstrAdd

  // Instruction memory
  val instrMem = Module(new InstrMemoryTest(1024,10,program))

  instrMem.io.addr := NextInstrAdd >> 2.U
  io.instruction := instrMem.io.dataOut
  //Connect PC to output so it propagates to next stage
  io.PC := NextInstrAdd

}