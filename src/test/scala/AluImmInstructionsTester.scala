import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.ProcessorTopLevel
import processor.components.ProgramLoader

class AluImmInstructionsTester extends AnyFlatSpec with ChiselScalatestTester {
  // Define the program
  val program: Seq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/AutomaticALUImmTest.hex")
  "AluImmInstructionsTester" should "pass" in {
    test(new ProcessorTopLevel(program)).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>

      def checkOutputs(expectedOp1: UInt, message: String): Unit = {
        dut.io.LEDs.expect(expectedOp1, message)
      }

      dut.clock.step(100) // Run through the program

      checkOutputs("b0000_0000_1001_1111".U, "An ALU Imm instruction went wrong, check VCD file 'AluImmInstructionsTester_should_pass/ProcessorTopLevel.vcd' for more information")

    }
  }
}