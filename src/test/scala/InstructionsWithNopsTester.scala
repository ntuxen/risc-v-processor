import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import processor.ProcessorTopLevel
import processor.components.ProgramLoader

class InstructionsWithNopsTester extends AnyFlatSpec with ChiselScalatestTester {
  // Define the program
  val program: Seq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/arithmetic_instr_test.hex")
  "InstructionsWithNopsTester" should "pass" in {
    test(new ProcessorTopLevel("src/test/TestPrograms/arithmetic_instr_test.hex")).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>
      dut.clock.step(80)
    }
  }
}