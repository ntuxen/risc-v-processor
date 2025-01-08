import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import processor.components._

class ControlUnitTester extends AnyFlatSpec with ChiselScalatestTester {
  "ControlUnitTester" should "pass" in {
    test(new ControlUnit).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>
      // Set inputs
      dut.io.funct3.poke("h0".U)
      dut.io.funct7.poke("h00".U)
      dut.io.instrType.poke(0.U)
      dut.io.opcode.poke(Opcode.Alu)

      // Check AluSel
      dut.io.funct3.poke("h0".U)
      dut.io.funct7.poke("h00".U)
      dut.io.AluSel.expect(AluOperation.Add.id.U)
      dut.io.funct3.poke("h0".U)
      dut.io.funct7.poke("h20".U)
      dut.io.AluSel.expect(AluOperation.Sub.id.U)
      dut.io.funct3.poke("h5".U)
      dut.io.funct7.poke("h00".U)
      dut.io.AluSel.expect(AluOperation.Srl.id.U)
      dut.io.funct3.poke("h5".U)
      dut.io.funct7.poke("h20".U)
      dut.io.AluSel.expect(AluOperation.Sra.id.U)



      // Verify the upcounting feature
      for( addr <- 0 to 5) {

        dut.clock.step(1)
      }



    }
  }
}

