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
  }
}