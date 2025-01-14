package processor.components

import Chisel.Cat
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class ControlUnitTester extends AnyFlatSpec with ChiselScalatestTester {
  "ControlUnitTester" should "correctly decode ALU operations" in {
    test(new ControlUnit).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      // Helper functions
      def pokeInputs(funct3: Int, funct7: Int, opcode: UInt): Unit = {
        dut.io.funct3.poke(funct3.U(3.W))
        dut.io.funct7.poke(funct7.U(7.W))
        dut.io.opcode.poke(opcode)
      }
      def checkAluSel(expected: AluOperation.Value, message: String): Unit = {
        dut.io.alu_operation_select.expect(expected.id.U, message)
      }

      // Test each ALU operation
      println("Testing ALU Add operation")
      pokeInputs(funct3 = 0, funct7 = 0x00, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.Add, "Add operation failed")

      println("Testing ALU Sub operation")
      pokeInputs(funct3 = 0, funct7 = 0x20, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.Sub, "Sub operation failed")

      println("Testing ALU XOR operation")
      pokeInputs(funct3 = 0x4, funct7 = 0x00, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.Xor, "XOR operation failed")

      println("Testing ALU OR operation")
      pokeInputs(funct3 = 0x6, funct7 = 0x00, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.Or, "OR operation failed")

      println("Testing ALU AND operation")
      pokeInputs(funct3 = 0x7, funct7 = 0x00, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.And, "AND operation failed")

      println("Testing ALU Srl operation")
      pokeInputs(funct3 = 0x5, funct7 = 0x00, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.Srl, "Srl operation failed")

      println("Testing ALU Sra operation")
      pokeInputs(funct3 = 0x5, funct7 = 0x20, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.Sra, "Sra operation failed")

      println("Testing ALU Slt operation")
      pokeInputs(funct3 = 0x2, funct7 = 0x00, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.Slt, "Slt operation failed")

      println("Testing ALU Slt operation")
      pokeInputs(funct3 = 0x3, funct7 = 0x00, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      checkAluSel(AluOperation.Sltu, "Slt operation failed")

      // Test invalid functor cases
      println("Testing invalid funct3/funct7 combination")
      pokeInputs(funct3 = 0x7, funct7 = 0x7F, opcode = Opcode.Alu)
      println(dut.io.alu_operation_select.peek().litValue())
      dut.io.alu_operation_select.expect(0.U, "Invalid funct3/funct7 value should default AluSel signal")
    }
  }
}

