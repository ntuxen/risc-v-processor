import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import processor.ProcessorTopLevel
import processor.components.ProgramLoader

class BlinkingLEDsTester extends AnyFlatSpec with ChiselScalatestTester {
  // Define the program
  //eq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/BlinkingLEDsSlow.hex")
  val program = "src/test/TestPrograms/BlinkingLEDsSlow.hex"
  "BlinkingLEDs" should "pass" in {
    test(new ProcessorTopLevel(program)).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>
      dut.clock.step(500)
    }
  }
}