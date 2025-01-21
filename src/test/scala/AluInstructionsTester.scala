import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.ProcessorTopLevel
import processor.components.ProgramLoader

class AluInstructionsTester extends AnyFlatSpec with ChiselScalatestTester {
  // Define the program
  val program: Seq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/AutomaticALUTest.hex")
  "AluInstructionsTester" should "pass" in {
    test(new ProcessorTopLevel(program)).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>

      def checkOutputs(expectedOp1: UInt, message: String): Unit = {
        dut.io.LEDs.expect(expectedOp1, message)
      }

      dut.clock.step(100) // Run through the program

      checkOutputs("b1111_1111_0000_0010".U, "An ALU instruction went wrong, check VCD file 'AluInstructionsTester_should_pass/ProcessorTopLevel.vcd' for more information")

    }
  }
}