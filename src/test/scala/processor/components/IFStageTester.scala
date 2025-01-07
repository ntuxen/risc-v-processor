package processor.components

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.stages._

class IFStageTester extends AnyFlatSpec with ChiselScalatestTester {
  "IFStage test" should "pass" in {
    test(new IFStage).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>
      //println("Generating VCD file for IFStage Test")
      dut.io.EnableJump.poke(false.B)
      dut.io.AddressJump.poke(0.U)
      dut.clock.step(5)


    }
  }
}
