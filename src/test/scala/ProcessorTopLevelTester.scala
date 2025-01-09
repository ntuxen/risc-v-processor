import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.ProcessorTopLevel

class ProcessorTopLevelTester extends AnyFlatSpec with ChiselScalatestTester {
  // Define the program
  val program: Seq[UInt] = Seq(
    "h02500193".U(32.W), // Sample instructions
    "hffd00093".U(32.W),
    "hffe00113".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h0020a1b3".U(32.W)
  )

  "ProcessorTopLevelTester" should "pass" in {
    test(new ProcessorTopLevel(program)).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>

      dut.clock.step(20)

    }
  }
}