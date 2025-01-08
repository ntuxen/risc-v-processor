import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.ProcessorTopLevel

class ProcessorTopLevelTester extends AnyFlatSpec with ChiselScalatestTester {
  "ProcessorTopLevelTester" should "pass" in {
    test(new ProcessorTopLevel).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>

      dut.clock.step(10)

    }
  }
}