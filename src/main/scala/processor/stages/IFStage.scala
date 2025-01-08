package processor.stages

import chisel3._
import processor.components._

class IFStage extends Module {
  val io = IO(new Bundle {
    val EnableJump = Input(Bool())
    val AddressJump = Input(UInt(32.W))
    val instruction = Output(UInt(32.W))
  })

  // PC logic
  // Remember that the PC implicitly starts at an instruction address 4 higher
  // TODO: fix the above
  val PC = RegInit("hFFFFFFFC".U(32.W))
  val NextInstrAdd = WireDefault(Mux(io.EnableJump, io.AddressJump, PC + 4.U)) // TODO: set increment to 4 instead
  PC := NextInstrAdd

  // Instruction memory
  val instrMem = Module(new InstrMemoryTest(1024,10))
  instrMem.io.addr := NextInstrAdd
  io.instruction := instrMem.io.dataOut

}