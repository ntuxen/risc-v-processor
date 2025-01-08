import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.stages._

class MEMStageTester extends AnyFlatSpec with ChiselScalatestTester {
  "MEMStage test" should "pass" in {
    test(new MEMStage).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>
      // RUN 1
      dut.io.ALURes.poke(42.U)
      dut.io.address.poke(1.U)
      dut.io.dataWriteMem.poke(0.U)
      dut.io.memWriteEnable.poke(1.U)
      dut.io.registerWriteEnableIn.poke(0.U)
      dut.io.writeDataMux.poke(0.U)
      dut.io.rdRegIn.poke(7.U)

      dut.clock.step()
      dut.io.writeData.expect(42.U)
      dut.io.registerWriteEnableOut.expect(0.U)
      dut.io.rdRegOut.expect(7.U)

      // RUN 2
      dut.io.ALURes.poke(43.U)
      dut.io.address.poke(400.U)
      dut.io.dataWriteMem.poke(8100.U)
      dut.io.memWriteEnable.poke(1.U)
      dut.io.registerWriteEnableIn.poke(1.U)
      dut.io.writeDataMux.poke(1.U)
      dut.io.rdRegIn.poke(0.U)

      dut.clock.step()
      dut.io.writeData.expect(8100.U)
      dut.io.registerWriteEnableOut.expect(1.U)
      dut.io.rdRegOut.expect(0.U)

      dut.clock.step()
    }
  }
}
