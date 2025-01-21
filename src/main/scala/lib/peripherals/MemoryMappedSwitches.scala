package lib.peripherals

import chisel3._
import lib.Bus

class MemoryMappedSwitches extends Module {
  val io = IO(new Bundle {
    // Port from Martin
    val port = Bus.RespondPort()
    // Input pins
    val pins = Input(UInt(16.W))
  })


  /*
    The exact timing here does not matter -
    neither does the address, since the timing on the output
    is decided by the IO parent module
  */
  io.port.rdData := RegNext(io.pins) // Constant read

}
