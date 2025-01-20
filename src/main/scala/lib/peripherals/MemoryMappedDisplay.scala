package lib.peripherals

import chisel3._
import chisel3.util._
import lib.Bus

class MemoryMappedDisplay(val freq: Int, val addr: UInt) extends Module {
  val io = IO(new Bundle {
    val port = Bus.RespondPort()
    val display = new Bundle {
      val seg = Output(UInt(7.W))
      val an = Output(UInt(4.W))
    }
  })

  // Declarations
  val size = 16
  val relative_address = io.port.addr - addr // Address relative to assigned IO address.
  val sevSegDecoder = Module(new SevenSegmentDecoder) // Decoder
  val select = RegInit(1.U(4.W)) // Select signal for choosing the display digit
  val rdData = WireDefault(0.U(8.W))

  // Display register
  val display_reg = RegInit(VecInit (Seq.fill (size) (0.U(8.W)))) // 16 8-bit registers
  // val display_reg = SyncReadMem(size, UInt(8.W)) // 16 8-bit registers
  val display_shift_reg = RegInit(0.U(4.W))

  // Signal initializations
  io.port.rdData := 0.U






  // Slower clock for display multiplexing
  val tick_counter_multiplex_reg = RegInit(0.U(32.W))             // Counter
  tick_counter_multiplex_reg := tick_counter_multiplex_reg + 1.U  // Increment once every clock cycle
  val FREQ_MULTIPLEX = 1000                                       // Frequency of multiplexing
  val MAX_COUNT_MULTIPLEXING = ((freq/FREQ_MULTIPLEX)-1).U        // What to count up to
  val tick_multiplexing = tick_counter_multiplex_reg === MAX_COUNT_MULTIPLEXING  // Tick condition
  // Multiplexing logic
  when(tick_multiplexing) {
    tick_counter_multiplex_reg := 0.U // Reset counter on tick
    select := select(0) ## select(3,1) // Circular shift
  }

  // Slower clock for display shifting
  val tick_counter_shift_reg = RegInit(0.U(32.W))         // Counter
  tick_counter_shift_reg := tick_counter_shift_reg + 1.U  // Increment once every clock cycle
  val FREQ_SHIFT = 500                                      // Frequency of shifting
  val MAX_COUNT_SHIFT = ((freq/FREQ_SHIFT)-1).U           // What to count up to
  val tick_shift = tick_counter_shift_reg === MAX_COUNT_SHIFT // Tick condition
  // Shifting logic
  when(tick_shift) {
    tick_counter_shift_reg := 0.U // Reset counter on tick
    when(display_shift_reg === 15.U) { // Increment shift each tick
      display_shift_reg := 0.U
    } .otherwise {
      display_shift_reg := display_shift_reg + 1.U
    }
  }

  // Receive data from CPU and write to specific register
  when(io.port.write && (relative_address < size.U)) { // Address is within range and write is enabled
    display_reg(relative_address) := io.port.wrData
    // display_reg.write(relative_address,io.port.wrData) // SyncReadMem
  }
  // Read data and output to CPU
  when(io.port.read && (relative_address < size.U)) { // Address is within range and read is enabled
    rdData := display_reg(relative_address) // Register memory
    // io.port.rdData := display_reg.read(relative_address) // SyndReadMem
  }
  io.port.rdData := RegNext(RegNext(rdData)) // Register memory


  // Switch between input for decoder
  sevSegDecoder.io.in := 0.U
  switch(select) { // Use display_shift_reg to index into display_reg
    is("b0001".U) { sevSegDecoder.io.in := display_reg((display_shift_reg + 0.U)(3,0))}
    is("b0010".U) { sevSegDecoder.io.in := display_reg((display_shift_reg + 1.U)(3,0))}
    is("b0100".U) { sevSegDecoder.io.in := display_reg((display_shift_reg + 2.U)(3,0))}
    is("b1000".U) { sevSegDecoder.io.in := display_reg((display_shift_reg + 3.U)(3,0))}
  }

  // Output
  io.display.seg := ~sevSegDecoder.io.out // Signal is inverted because of LED later
  io.display.an := ~select // Signal is inverted because of LED later




}
