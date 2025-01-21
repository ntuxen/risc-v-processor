package lib.peripherals

import Chisel.Cat
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class DisplayTester extends AnyFlatSpec with ChiselScalatestTester {
  "DisplayTester" should "pass" in {
    test(new MemoryMappedDisplay(2000)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      // Helper functions
      def writeCharacter(char: Char, addr: Int): Unit = {
        val ascii = char.toInt
        dut.io.port.addr.poke(addr.U)
        dut.io.port.write.poke(true.B)
        dut.io.port.wrData.poke(ascii.U)
        step(1)
        dut.io.port.write.poke(false.B)
      }
      def readCharacter(addr: Int): Unit = {
        dut.io.port.addr.poke(addr.U)
        dut.io.port.read.poke(true.B)
        step(1)
        dut.io.port.read.poke(false.B)
      }
      def step(n: Int): Unit = {
        dut.clock.step(n)
      }

      // Test writes
      writeCharacter('R',0)
      writeCharacter('I',1)
      writeCharacter('S',2)
      writeCharacter('C',3)
      writeCharacter('Y',4)

      // Test of display multiplexing
      step(8)

      // Test reads
      readCharacter(0)
      readCharacter(1)
      readCharacter(2)
      readCharacter(3)
      readCharacter(4)
      step(2)



    }
  }
}


