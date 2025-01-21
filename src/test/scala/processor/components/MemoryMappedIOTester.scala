package processor.components

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class MemoryMappedIOTester extends AnyFlatSpec with ChiselScalatestTester {
  val size = 1024

  it should "pass in test" in {
    test(new MemoryMappedIO(size,2000)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      def step(n: Int): Unit = {
        dut.clock.step(n)
      }
      def writeCharToDisplay(char: Char, idx: Int): Unit = {
        val ascii = char.toInt
        dut.io.address.poke(IO_Addresses.display.litValue().toInt + idx)
        dut.io.dataIn.poke(ascii.U)
        dut.io.writeEnable.poke(true.B)
        step(1)
        dut.io.writeEnable.poke(false.B)
      }
      def writeStringToDisplay(str: String): Unit = {
        for((c,n) <- str.zipWithIndex) {
          writeCharToDisplay(c,n)
        }
      }

      // Initial inputs
      dut.io.address.poke(0.U)
      dut.io.dataIn.poke(0.U)
      dut.io.readEnable.poke(false.B)
      dut.io.writeEnable.poke(false.B)
      dut.io.switches.poke(42.U)
      step(1)

      // Write text to display
//      writeStringToDisplay("RISCYwBUSINESS")
//      step(30) // See shifting in actions

      // Read from switches
      dut.io.readEnable.poke(true.B)
      dut.io.address.poke(IO_Addresses.switches)
      step(1)
      dut.io.readEnable.poke(false.B)
      dut.io.address.poke(0.U)
      step(3)

      // Write to and read from LEDs
      dut.io.address.poke(IO_Addresses.LEDs)
      dut.io.dataIn.poke("hABBA".U)
      dut.io.writeEnable.poke(true.B)
      step(1)
      dut.io.writeEnable.poke(false.B)
      dut.io.address.poke(0.U)
      step(1)
      dut.io.readEnable.poke(true.B)
      dut.io.address.poke(IO_Addresses.LEDs)
      step(1)
      dut.io.readEnable.poke(false.B)
      dut.io.address.poke(0.U)
      step(3)


      dut.io.address.poke(IO_Addresses.LEDs_pwm)
      dut.io.dataIn.poke("hBB".U)
      dut.io.writeEnable.poke(true.B)
      step(1)
      dut.io.writeEnable.poke(false.B)
      dut.io.address.poke(0.U)
      step(3)



    }
  }
}

