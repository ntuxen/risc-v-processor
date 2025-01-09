import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import processor.components.MemoryMappedIO

class MemoryMappedIOTester extends AnyFlatSpec with ChiselScalatestTester {
  val size = 1024

  it should "pass in test" in {
    test(new MemoryMappedIO(size)).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      // Initial values
      dut.io.address.poke(42.U)
      dut.io.dataWriteMem.poke(0.U)
      dut.io.writeEnable.poke(false.B)
      dut.clock.step()
      dut.io.leds.expect(0.U)

      // T1
      dut.io.address.poke((size+0).U)
      dut.io.dataWriteMem.poke("hFEED".U)
      dut.io.writeEnable.poke(true.B)
      dut.clock.step()
      dut.io.writeEnable.poke(false.B)
      dut.io.leds.expect("hFEED".U)

      // T2
      dut.io.address.poke((size+2).U)
      dut.io.dataWriteMem.poke("h8888".U)
      dut.io.writeEnable.poke(true.B)
      dut.clock.step()
      dut.io.writeEnable.poke(false.B)
      dut.io.leds.expect("hFEED".U)

      // T3
      dut.io.address.poke((size+0).U)
      dut.io.dataWriteMem.poke("hAAAA".U)
      dut.io.writeEnable.poke(false.B)
      dut.clock.step()
      dut.io.leds.expect("hFEED".U)

      // T4
      dut.io.address.poke((size+0).U)
      dut.io.dataWriteMem.poke("hAAAA".U)
      dut.io.writeEnable.poke(true.B)
      dut.clock.step()
      dut.io.writeEnable.poke(false.B)
      dut.io.leds.expect("hAAAA".U)


    }
  }
}

