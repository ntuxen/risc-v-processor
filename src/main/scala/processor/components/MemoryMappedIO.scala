package processor.components

import chisel3._
import lib.peripherals._

class MemoryMappedIO(val memoryMaxAddress: Int) extends Module {
  val io = IO(new Bundle {
    //------- INPUTS --------//
    val addressInput = Input(UInt(32.W))
    //val dataWriteMemInput = Input(UInt(32.W))
    val memWriteEnableInput = Input(Bool())
    //------ OUTPUTS --------//
    //val addressOutput = Output(UInt(32.W))
    //val dataWriteMemOutput = Output(UInt(32.W))
    val memWriteEnableOutput = Output(Bool())
    val leds = Output(UInt(16.W))
  })

  // Patch signals
  // io.addressOutput := io.addressInput // Remains unchanged. May be patched over instead
  // io.dataWriteMemOutput := io.dataWriteMemInput // Remains unchanged. May be patched over instead

  // IO Modules
  val leds = Module(new MemoryMappedLeds(16))

  // IO logic
  io.memWriteEnableOutput := io.memWriteEnableInput // Patch directly unless the following is true
  when(io.addressInput >= memoryMaxAddress.U) { // If address is out of range
    io.memWriteEnableOutput := false.B // Don't write to normal memory (just in case?)
    // Write to IO


  }

}
