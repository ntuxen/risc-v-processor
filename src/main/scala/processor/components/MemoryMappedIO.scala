package processor.components

import chisel3._
import chisel3.util._
import lib.peripherals._

class MemoryMappedIO(val memoryMaxAddress: Int) extends Module {
  val io = IO(new Bundle {
    //------- INPUTS --------//
    val address = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val writeEnable = Input(Bool())
    val switches = Input(UInt(16.W))
    //------ OUTPUTS --------//
    val dataOut = Output(UInt(32.W))
    val leds = Output(UInt(16.W))
    val display = new Bundle {
      val seg = Output(UInt(7.W))
      val an = Output(UInt(4.W))
    }
  })

  object IO_Adresses {
    val uart_data   = "h00".U
    val uart_status = "h04".U
    val display     = "h10".U
    val LEDs        = "h30".U
    val switches    = "h40".U
  }
  // IO Modules
  val leds = Module(new MemoryMappedLeds(16)) // contains a register
//  val sw = Module(new MemoryMappedSwitches)
//  val uart = Module(new MemoryMappedUart(
//                          100000000, // Clock rate of FPGA
//                          19200,     // Baud rate
//                          64,        // Buffer size (tx)
//                          64))       // Buffer size (rx)
  val display = Module(new MemoryMappedDisplay(100000000,IO_Adresses.display))

  // Signals
  val addressIO = (io.address - memoryMaxAddress.U)(7,0) // May be accomplished by a shift register, if the data memory size is static

  //------ Patching/IO logic -------//
  // LEDs
  leds.io.port.write := io.writeEnable && (addressIO === IO_Adresses.LEDs) // Write when address matches
  leds.io.port.read := (!io.writeEnable) && (addressIO === IO_Adresses.LEDs) // Read when not writing
  leds.io.port.addr := 0.U // Address should be fixed, we only have 16 LEDs (< 1 word)
  leds.io.port.wrData := io.dataIn(15,0)
  io.leds := leds.io.pins // Output to LEDs

  // Switches
//  sw.io.port.read := (!io.writeEnable) && (addressIO === IO_Adresses.switches) // Read when address matches
//  sw.io.pins := io.switches // Input from switches


  // UART
//  uart.io.port.write := io.writeEnable && (addressIO === IO_Adresses.uart_data) // Write when address matches
//          // TODO: this one reads whenever write is low, which would not work in practice... use separate read signal
//  uart.io.port.read := (!io.writeEnable) && (addressIO === IO_Adresses.uart_data || addressIO === IO_Adresses.uart_status) // Read when address matches
//  uart.io.port.wrData := io.dataIn // Data input
//  uart.io.port.addr := addressIO // Address input

  // Display
  display.io.port.wrData := io.dataIn // Data input
  io.dataOut := display.io.port.rdData // Data output
  display.io.port.write := io.writeEnable
  display.io.port.read := !io.writeEnable // TODO: use separate write signal
  display.io.port.addr := io.address
  io.display.seg := display.io.display.seg
  io.display.an := display.io.display.an

  // dataOut
  io.dataOut := 0.U
  switch(addressIO) {
    is(IO_Adresses.LEDs) {
      io.dataOut := leds.io.port.rdData
    }
    is(IO_Adresses.switches) {
//      io.dataOut := sw.io.port.rdData // Is the timing correct on this?
    }
    is(IO_Adresses.uart_data) {
//      io.dataOut := uart.io.port.rdData
    }
    is(IO_Adresses.uart_status) {
//      io.dataOut := uart.io.port.rdData
    }
  }



}
