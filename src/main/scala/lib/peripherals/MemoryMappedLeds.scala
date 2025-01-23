package lib.peripherals

import chisel3._
import chisel3.util._
import lib.Bus
import processor.components.{IO_Addresses, MemoryMappedIO}

/** Memory mapped register controlling [[cnt]] LEDs.
  *
  * The IO is as follows:
  * - [[io.port]] responder bus port
  * - [[io.pins]] pins to the physical LEDs
  *
  *
  */
class MemoryMappedLeds(cnt: Int) extends Module {
  assert(cnt <= 32, "Only up to 32 LEDs can be controlled through the bus")

  val io = IO(new Bundle {

    /** bus port */
    val port = Bus.RespondPort()

    /** LED pins */
    val pins = Output(UInt(cnt.W))
  })

  val led_reg = RegInit(0.U(cnt.W))
  // val pwm_reg = RegInit("hFF".U(8.W)) // PWM width is one byte wide
  val pwm_reg = RegInit(VecInit (Seq.fill (cnt) ("hFF".U(8.W)))) // 16 8-bit registers
  val pwm_counter = RegInit(0.U(8.W))
  val clk_prescaler = RegInit(0.U(12.W)) // Clock prescaler TODO: set prescaler to 12.W

  clk_prescaler := clk_prescaler + 1.U

  // Write logic
  val pwm_addr = io.port.addr - IO_Addresses.LEDs_pwm
  when(io.port.write) {
    when(io.port.addr === IO_Addresses.LEDs) { // Write to led_reg
      led_reg := io.port.wrData
    } .elsewhen(pwm_addr < "h10".U) { // Write to pwm_reg
      pwm_reg(pwm_addr) := io.port.wrData
    }
  }

  // Read logic
  val rdData = RegInit(0.U(cnt.W))
  rdData := DontCare
  when(io.port.read) {
    when(io.port.addr === IO_Addresses.LEDs) {
      rdData := led_reg
    } .otherwise {
      //rdData := pwm_reg
    }
  }
  io.port.rdData := RegNext(rdData)

  // PWM/LED output logic
  when(clk_prescaler === 0.U) {
    pwm_counter := pwm_counter + 1.U // Automatically overflows back to 0 after 255
  }
  val led_state = Wire(Vec(cnt, Bool()))
  for(i <- 0 until cnt) { // Generate each LED PWM module
    led_state(i) := pwm_reg(i) >= pwm_counter
  }
  io.pins := Cat(led_state.reverse)
}
