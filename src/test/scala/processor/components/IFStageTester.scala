package processor.components

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.stages.IFStage

class IFStageTester extends AnyFlatSpec with ChiselScalatestTester {
  "IFStage test" should "pass" in {
    test(new IFStage).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>
      // Set inputs
      dut.io.EnableJump.poke(false.B)
      dut.io.AddressJump.poke(0.U)

      // Verify the upcounting feature
      for( addr <- 0 to 5) {
        dut.io.instruction.expect((addr*4).U)
        dut.clock.step(1)
      }

      // Verify jump functionality
      dut.io.AddressJump.poke(10.U)
      dut.io.EnableJump.poke(true.B)
      dut.clock.step(1)
      dut.io.instruction.expect(10.U)

    }
  }
}
