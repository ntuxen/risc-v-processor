package processor.components

import chisel3._
import lib.peripherals._

class MemoryMappedIO(val memoryMaxAddress: Int) extends Module {
  val io = IO(new Bundle {
    //------- INPUTS --------//
    val address = Input(UInt(32.W))
    val dataWriteMem = Input(UInt(32.W))
    val writeEnable = Input(Bool())
    //------ OUTPUTS --------//
    val dataReadIO = Output(UInt(32.W))
    val leds = Output(UInt(16.W))
  })

  object IO_Adresses {
    val LEDs = 0.U
  }
  // IO Modules
  val leds = Module(new MemoryMappedLeds(16)) // contains a register

  // Signals
  val addressIO = io.address - memoryMaxAddress.U // May be accomplished by a shift register, if the data memory size is static

  //------ Patching/IO logic -------//
  // LEDs
  leds.io.port.write := io.writeEnable && (addressIO === IO_Adresses.LEDs) // Write when address matches
  leds.io.port.wrData := io.dataWriteMem(15,0)
  leds.io.port.read := (!io.writeEnable) && (addressIO === IO_Adresses.LEDs) // Read when not writing
  leds.io.port.addr := 0.U // For initialization
  io.dataReadIO := leds.io.port.rdData // Output to register file
  io.leds := leds.io.pins // Output to LEDs
  // UART





}
