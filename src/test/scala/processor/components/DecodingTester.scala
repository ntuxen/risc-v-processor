package processor.components


import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import processor.stages.InstructionDecoder

class DecodingTester extends AnyFlatSpec with ChiselScalatestTester {
  "DecodingTester" should "pass" in {
    test(new InstructionDecoder).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      // Input value
      dut.io.instruction.poke("h12300093".U(32.W))

      // Step the clock to see output
      dut.clock.step(1)

      def printDutState(): Unit = {
        println("\nDUT State:")
        println("instrType: " + dut.io.instrType.peek().litValue()) // Print instruction type
        println("rs1: " + dut.io.rs1.peek().litValue())            // Source register 1
        println("rs2: " + dut.io.rs2.peek().litValue())            // Source register 2
        println("rd: " + dut.io.rd.peek().litValue())              // Destination register
        println("opcode: " + dut.io.opcode.peek().litValue().toInt.toBinaryString.reverse.padTo(7, '0').reverse) // Opcode in binary
        println("funct3: " + dut.io.funct3.peek().litValue())      // Function field 3
        println("funct7: " + dut.io.funct7.peek().litValue())      // Function field 7
      }

      printDutState()

      // Test ADD instruction (R-Type)
      // Full instruction: opcode (0110011), funct3 (000 for ADD), funct7 (0000000 for ADD)
      val addInstruction = "b0000000_00010_00001_000_00011_0110011".U // ADD x3 = x1 + x2
      dut.io.instruction.poke(addInstruction)
      println("Poked instruction for ADD (x3 = x1 + x2)")

      printDutState()
      // Test SUB instruction (R-Type)
      // Full instruction: opcode (0110011), funct3 (000 for SUB), funct7 (0100000 for SUB)
      val subInstruction = "b0100000_00100_00011_000_00101_0110011".U // SUB x5 = x3 - x4
      dut.io.instruction.poke(subInstruction)
      println("Poked instruction for SUB (x5 = x3 - x4)")

      printDutState()
      // Test AND instruction (R-Type)
      // Full instruction: opcode (0110011), funct3 (111 for AND), funct7 (0000000 for AND)
      val andInstruction = "b0000000_00110_00101_111_00111_0110011".U // AND x7 = x5 & x6
      dut.io.instruction.poke(andInstruction)
      println("Poked instruction for AND (x7 = x5 & x6)")

      printDutState()
      // Test ADDI instruction (I-Type)
      // Full instruction: opcode (0010011), funct3 (000 for ADDI), imm (12 bits)
      val addiInstruction = "b000000000101_00001_000_00010_0010011".U // ADDI x2 = x1 + 5
      dut.io.instruction.poke(addiInstruction)
      println("Poked instruction for ADDI (x2 = x1 + 5)")

      printDutState()
      // Test ORI instruction (I-Type)
      // Full instruction: opcode (0010011), funct3 (110 for ORI), imm (12 bits)
      val oriInstruction = "b000000001011_00010_110_00011_0010011".U // ORI x3 = x2 | 11
      dut.io.instruction.poke(oriInstruction)
      println("Poked instruction for ORI (x3 = x2 | 11)")

      printDutState()
      // Test ANDI instruction (I-Type)
      // Full instruction: opcode (0010011), funct3 (111 for ANDI), imm (12 bits)
      val andiInstruction = "b000000000011_00011_111_00100_0010011".U // ANDI x4 = x3 & 3
      dut.io.instruction.poke(andiInstruction)
      println("Poked instruction for ANDI (x4 = x3 & 3)")

      printDutState()

    }
  }
}