import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.ProcessorTopLevel
import processor.components.ProgramLoader

class ProcessorTopLevelTester extends AnyFlatSpec with ChiselScalatestTester {
  // Define the program
  val program: Seq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/lb_lbu_lh_lhu_lw_test.hex")
  //val program: Seq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/sb_sh_sw_test.hex")
  "ProcessorTopLevelTester" should "pass" in {
    test(new ProcessorTopLevel("src/test/TestPrograms/arithmetic_instr_test.hex")).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>

      dut.clock.step(100)

    }
  }
}