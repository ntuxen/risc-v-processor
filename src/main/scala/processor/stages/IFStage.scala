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
  val EnableJump = WireDefault(Bool(),false.B)
  val AddressJump = WireDefault(0.U(32.W))
  val PC = RegInit(0.U(32.W))
  val NextInstrAdd = WireDefault(Mux(EnableJump, AddressJump, PC + 4.U))
  PC := NextInstrAdd

  // Instruction memory
  val instrMem = Module(new MemoryTest(1024,10))
  instrMem.io.addr := NextInstrAdd
  io.instruction := instrMem.io.dataOut



  // Drive input
  EnableJump := io.EnableJump
  AddressJump := io.AddressJump
  instrMem.io.enableWrite := false.B
  instrMem.io.dataIn := 0.U
  // Drive output
  //io.InstrAdd := InstrMem

}