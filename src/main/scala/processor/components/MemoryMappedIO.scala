package processor.components

import chisel3._
import chisel3.util._
import lib.peripherals._

object IO_Addresses {
  val uart_data   = "h00".U
  val uart_status = "h04".U
  val display     = "h10".U
  val LEDs        = "h30".U
  val LEDs_pwm    = "h40".U
  val switches    = "h90".U
}

class MemoryMappedIO(
                      val memoryMaxAddress: Int,
                      val clock_freq: Int
                    ) extends Module {
  val io = IO(new Bundle {
    //------- INPUTS --------//
    val address = Input(UInt(32.W))
    val dataIn = Input(UInt(32.W))
    val writeEnable = Input(Bool())
    val readEnable = Input(Bool())
    val switches = Input(UInt(16.W))
    //------ OUTPUTS --------//
    val dataOut = Output(UInt(32.W))
    val leds = Output(UInt(16.W))
    val display = new Bundle {
      val seg = Output(UInt(7.W))
      val an = Output(UInt(4.W))
    }
  })

  // IO Modules
  val leds = Module(new MemoryMappedLeds(16)) // contains a register
  val sw = Module(new MemoryMappedSwitches)
  val uart = Module(new MemoryMappedUart(
                          100000000, // Clock rate of FPGA
                          19200,     // Baud rate
                          64,        // Buffer size (tx)
                          64))       // Buffer size (rx)
  val display = Module(new MemoryMappedDisplay(clock_freq))

  // Signals
  val address_io = (io.address - memoryMaxAddress.U)(7,0) // May be accomplished by a shift register, if the data memory size is static

  //------ Patching/IO logic -------//
  // LEDs
  val is_led = address_io === IO_Addresses.LEDs || (IO_Addresses.LEDs_pwm <= address_io && address_io < (IO_Addresses.LEDs_pwm + 16.U(8.W)))
  leds.io.port.write := io.writeEnable && is_led
  leds.io.port.read := io.readEnable && is_led
  leds.io.port.addr := address_io
  leds.io.port.wrData := io.dataIn(15,0)
  io.leds := leds.io.pins // Output to LEDs

  // Switches
  sw.io.port.write := DontCare
  sw.io.port.read := DontCare
  sw.io.port.addr := DontCare
  sw.io.port.wrData := DontCare
  sw.io.pins := io.switches // Input from switches

  // UART
  val is_uart = address_io === IO_Addresses.uart_data || address_io === IO_Addresses.uart_status
  uart.io.port.write := io.writeEnable && is_uart
  uart.io.port.read := io.readEnable && is_uart
  uart.io.port.addr := address_io // Address input
  uart.io.port.wrData := io.dataIn // Data input
  uart.io.pins.rx := 0.U

  // Display
  val is_display = (IO_Addresses.display <= address_io) && (address_io < (IO_Addresses.display + 16.U(8.W))) // Evil error happened here: Can You See Spot The Fix?
  display.io.port.write := io.writeEnable && is_display
  display.io.port.read := io.readEnable && is_display
  display.io.port.addr := address_io // Address input
  display.io.port.wrData := io.dataIn // Data input
  io.display.seg := display.io.display.seg // Output to display
  io.display.an := display.io.display.an  // Output to display

  // DATA OUTPUT FROM READS
  val dataOut = WireDefault(0.U(32.W))
  switch(RegNext(RegNext(address_io))) { // Output mux selector is delayed to match read delay
    is(IO_Addresses.LEDs, IO_Addresses.LEDs_pwm) {
      dataOut := leds.io.port.rdData
    }
    is(IO_Addresses.switches) {
      dataOut := sw.io.port.rdData
    }
    is(IO_Addresses.uart_data, IO_Addresses.uart_status) {
//      dataOut := uart.io.port.rdData
    }
  }
  when(RegNext(RegNext(io.readEnable))) {
    io.dataOut := dataOut
  } .otherwise {
    io.dataOut := 0.U
  }



}
