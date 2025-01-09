import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.components.RegisterFile

class RegisterFileTester extends AnyFlatSpec with ChiselScalatestTester {
  "RegisterFileTester" should "pass" in {
    test(new RegisterFile).withAnnotations(Seq(WriteVcdAnnotation))
    { dut =>

      def pokeInputs(rs1: UInt, rs2: UInt, writeData: UInt, rd: UInt, writeEnable: UInt): Unit = {
        dut.io.rs1.poke(rs1)
        dut.io.rs2.poke(rs2)
        dut.io.writeData.poke(writeData)
        dut.io.rd.poke(rd)
        dut.io.writeEnable.poke(writeEnable)
      }

      def checkOutputs(expectedOp1: UInt, expectedOp2: UInt, message: String): Unit = {
        dut.io.operand1.expect(expectedOp1, message)
        dut.io.operand2.expect(expectedOp2, message)
      }

      // RUN 1 (Try to write a value to x1)
      pokeInputs(1.U, 31.U, 42.U, 1.U, 1.U)
      dut.clock.step()
      pokeInputs(1.U, 31.U, 42.U, 1.U, 0.U)
      dut.clock.step()
      checkOutputs(42.U, 0.U, "Error when writing to registerFile x1")

      // RUN 2 (Try to write a value to x2)
      pokeInputs(31.U, 2.U, 42.U, 2.U, 1.U)
      dut.clock.step()
      pokeInputs(31.U, 2.U, 42.U, 2.U, 0.U)
      dut.clock.step()
      checkOutputs(0.U, 42.U, "Error when writing to registerFile x2")

      // RUN 3 (Try to write a value to x0 and hopefully fail)
      pokeInputs(0.U, 31.U, 42.U, 0.U, 1.U)
      dut.clock.step()
      pokeInputs(0.U, 31.U, 42.U, 0.U, 0.U)
      dut.clock.step()
      checkOutputs(0.U, 0.U, "Error when writing to registerFile x0 (should not be possible)")
    }
  }
}