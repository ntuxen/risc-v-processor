package processor.components
import chisel3._
import chisel3.util._

class ALU extends Module {
  val io = IO(new Bundle {
    //------------Input-------------//
    val ALUSel = Input(UInt(8.W))
    val operand1 = Input(UInt(32.W))
    val operand2 = Input(UInt(32.W))
    //------------Output-------------//
    val ALURes = Output(UInt(32.W))
  })

  // Typecast operands to SInt for all ALU operations
  val signedOperand1 = io.operand1.asSInt
  val signedOperand2 = io.operand2.asSInt

  // ALU Operations, using signed operands directly
  io.ALURes := 42.U // Default assignment (should only be true if io.ALUSel is undefined)
  switch(io.ALUSel) {
    is(AluOperation.Add.id.U) {
      io.ALURes := (signedOperand1 + signedOperand2).asUInt
    }
    is(AluOperation.Sub.id.U) {
      io.ALURes := (signedOperand1 - signedOperand2).asUInt
    }
    is(AluOperation.And.id.U) {
      io.ALURes := (signedOperand1 & signedOperand2).asUInt // Are signed operands necessary?
    }
    is(AluOperation.Or.id.U) {
      io.ALURes := (signedOperand1 | signedOperand2).asUInt // Are signed operands necessary?
    }
    is(AluOperation.Xor.id.U) {
      io.ALURes := (signedOperand1 ^ signedOperand2).asUInt // Are signed operands necessary?
    }
    is(AluOperation.Sll.id.U) {
      io.ALURes := (io.operand1 << io.operand2(4,0)) // Has to use unsigned operands to make proper logic shift (can max shift 32 bits)
    }
    is(AluOperation.Srl.id.U) {
      io.ALURes := (io.operand1 >> io.operand2(4,0)) // Has to use unsigned operands to make proper logic shift (can max shift 32 bits)
    }
    is(AluOperation.Sra.id.U) {
      //io.ALURes := (signedOperand1 >> signedOperand2(4,0)).asUInt // Has to use signed operands to make arithmetic shift (can max shift 32 bits)
      io.ALURes := (signedOperand1 >> (signedOperand2(4,0))).asUInt
    }
    is(AluOperation.Slt.id.U) {
      when(signedOperand1 < signedOperand2){ // Has to be signed to compare signed integers
        io.ALURes := 1.U
      } .otherwise{
        io.ALURes := 0.U
      }
    }
    is(AluOperation.Sltu.id.U) {
      when(io.operand1 < io.operand2) { // Has to be unsigned to compare unsigned integers
        io.ALURes := 1.U
      }.otherwise {
        io.ALURes := 0.U
      }
    }
  }
}