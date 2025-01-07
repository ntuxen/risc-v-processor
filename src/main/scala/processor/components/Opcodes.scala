package processor.components
import chisel3._
import chisel3.util._
object Opcode {
  val Alu = "b0110011".U
  val AluImm = "b0010011".U
  val load = "b0000011".U
  val store = "b0100011".U
  val branch = "b1100011".U
  val jal = "b1101111".U
  val jalr = "b1100111".U
  val lui = "b0110111".U
  val auipc = "b0010111".U
}

object AluFunct3 {
  val add = 0x0
  val sub = 0x0
  val xor = 0x4
  val or = 0x6
  val and = 0x7
  val sll = 0x1
  val srl = 0x5
  val sra = 0x5
  val slt = 0x2
  val sltu = 0x3
}

object LoadFunct3 {
  val lb = 0x0
  val lh = 0x1
  val lw = 0x2
  val lbu = 0x4
  val lhu = 0x5
}

object StoreFunct3 {
  val sb = 0x0
  val sh = 0x1
  val sw = 0x2
}

object BranchFunct3 {
  val beq = 0x0
  val bne = 0x1
  val blt = 0x4
  val bge = 0x5
  val bltu = 0x6
  val bgeu = 0x7
}

object AluFunct7 {
  val default = 0x00
  val SRA_SUB = 0x20
}

object InstrType extends Enumeration {
  type InstrType = Value
  val RType, IType, SType, BType, UType, JType = Value
}

object AluOperation extends Enumeration{
  type AluOperation = Value
  val Add, Sub, And, Or, Xor, Sll, Srl, Sra, Slt, Sltu = Value
}