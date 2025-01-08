import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.components._

class ControlUnitTester extends AnyFlatSpec with ChiselScalatestTester {
  "ControlUnitTester" should "correctly decode ALU operations" in {
    test(new ControlUnit).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      // Helper functions
      def pokeInputs(funct3: Int, funct7: Int, opcode: UInt): Unit = {
        dut.io.funct3.poke(funct3.U)
        dut.io.funct7.poke(funct7.U)
        dut.io.opcode.poke(opcode)
      }
      def checkAluSel(expected: AluOperation.Value, message: String): Unit = {
        dut.io.AluSel.expect(expected.id.U, message)
      }

      // Test each ALU operation
      println("Testing ALU Add operation")
      pokeInputs(funct3 = 0, funct7 = 0x00, opcode = Opcode.Alu)
      checkAluSel(AluOperation.Add, "Add operation failed")

      println("Testing ALU Sub operation")
      pokeInputs(funct3 = 0, funct7 = 0x20, opcode = Opcode.Alu)
      checkAluSel(AluOperation.Sub, "Sub operation failed")

      println("Testing ALU Srl operation")
      pokeInputs(funct3 = 5, funct7 = 0x00, opcode = Opcode.Alu)
      checkAluSel(AluOperation.Srl, "Srl operation failed")

      println("Testing ALU Sra operation")
      pokeInputs(funct3 = 5, funct7 = 0x20, opcode = Opcode.Alu)
      checkAluSel(AluOperation.Sra, "Sra operation failed")

      // Test invalid functor cases
      println("Testing invalid funct3/funct7 combination")
      pokeInputs(funct3 = 7, funct7 = 0x7F, opcode = Opcode.Alu)
      dut.io.AluSel.expect(0.U, "Invalid funct3/funct7 value should default AluSel signal")
    }
  }
}

