package lib.peripherals

import chisel3._
import lib.Bus

class MemoryMappedSwitches extends Module {
  val io = IO(new Bundle {
    // Port from Martin
    val port = new Bus.RespondPort()
    // Input pins
    val pins = Input(UInt(16.W))
  })

  val sw_reg = RegNext(io.pins)

  when(io.port.read) {

  }

}
