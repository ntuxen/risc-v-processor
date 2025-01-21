import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.ProcessorTopLevel
import processor.components.ProgramLoader

class BranchJalJalrLuiAuipcInstructionsTester extends AnyFlatSpec with ChiselScalatestTester {
  // Define the program
  val program: Seq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/AutomaticBranchJalJalrLuiAuipcTest.hex")
  "BranchJalJalrLuiAuipcInstructionsTester" should "pass" in {
    test(new ProcessorTopLevel(program)).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>

      def checkOutputs(expectedOp1: UInt, message: String): Unit = {
        dut.io.LEDs.expect(expectedOp1, message)
      }

      dut.clock.step(100) // Run through the program

      checkOutputs("h10AC".U, "A branch, jal, jalr, lui, or auipc instruction went wrong, check VCD file 'BranchJalJalrLuiAuipcInstructionsTester_should_pass/ProcessorTopLevel.vcd' for more information")

    }
  }
}