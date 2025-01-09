package processor.components


import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class ImmediateGenTester extends AnyFlatSpec with ChiselScalatestTester {
  "DecodingTester" should "pass" in {
    test(new ImmediateGenerator).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>

      def printDutState(): Unit = {
        println("Immediate: " + dut.io.immediate.peek().litValue) // Print instruction type
      }

      val oriInstruction = "b000000001011_00010_110_00011_0010011".U // ORI x3 = x2 | 11
      dut.io.instruction.poke(oriInstruction)
      dut.io.instrType.poke(InstrType.IType.id.U)
      println("Poked instruction for ORI (x3 = x2 | 11)")
      printDutState()

      // Full instruction: opcode (0010011), funct3 (111 for ANDI), imm (12 bits)
      val andiInstruction = "b000000000011_00011_111_00100_0010011".U // ANDI x4 = x3 & 3
      dut.io.instruction.poke(andiInstruction)
      dut.io.instrType.poke(InstrType.IType.id.U)
      println("Poked instruction for ANDI (x4 = x3 & 3)")


      val NegativeAddiInstruction = "hff500213".U // ADDI x4 = x0 + (-11)
      dut.io.instruction.poke(NegativeAddiInstruction)
      dut.io.instrType.poke(InstrType.IType.id.U)
      println("Poked instruction for ADDI x4 = x0 + (-11)")

      printDutState()

      // ====== R-Type ======
      val addInstruction = "b0000000_00010_00001_000_00011_0110011".U // ADD x3 = x1 + x2
      dut.io.instruction.poke(addInstruction)
      dut.io.instrType.poke(InstrType.RType.id.U)
      println("Poked instruction for ADD (R-Type), Immediate: 0 (not used in R-Type)")
      printDutState()

      val subInstruction = "b0100000_00010_00001_000_00011_0110011".U // SUB x3 = x1 - x2
      dut.io.instruction.poke(subInstruction)
      dut.io.instrType.poke(InstrType.RType.id.U)
      println("Poked instruction for SUB (R-Type), Immediate: 0 (not used in R-Type)")
      printDutState()

      // ====== B-Type ======
      val beqInstruction = 0x04208463.U // BEQ x1, x2, offset
      dut.io.instruction.poke(beqInstruction)
      dut.io.instrType.poke(InstrType.BType.id.U)
      println("Poked instruction for BEQ (B-Type), Immediate: 72 (branch offset = 72)")
      printDutState()

      val bneInstruction = 0x02209c63.U // BNE x1, x2, offset
      dut.io.instruction.poke(bneInstruction)
      dut.io.instrType.poke(InstrType.BType.id.U)
      println("Poked instruction for BNE (B-Type), Immediate: 56 (branch offset = 56)")
      printDutState()

      // ====== J-Type ======

      val jalAltInstruction = 0x048000ef.U // JAL x1, alt target
      dut.io.instruction.poke(jalAltInstruction)
      dut.io.instrType.poke(InstrType.JType.id.U)
      println("Poked instruction for JAL (J-Type), Immediate: 72 (jump offset = 4096 with sign-extension)")
      printDutState()

      // ====== U-Type ======
      val luiInstruction = 0x028350b7.U // LUI x2, imm
      dut.io.instruction.poke(luiInstruction)
      dut.io.instrType.poke(InstrType.UType.id.U)
      println("Poked instruction for LUI (U-Type), Immediate: 10293 (upper immediate = imm << 12)")
      printDutState() // Expect immediate = imm[31:12] << 12 = 1 << 20

      val auipcInstruction = 0x0240f097.U // AUIPC x2, imm
      dut.io.instruction.poke(auipcInstruction)
      dut.io.instrType.poke(InstrType.UType.id.U)
      println("Poked instruction for AUIPC (U-Type), Immediate: 9231 (imm << 12)")
      printDutState() // Expect immediate = imm[31:12] << 12 = 2 << 20


    }
  }
}