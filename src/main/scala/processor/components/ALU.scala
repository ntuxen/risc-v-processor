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
    val result = Output(UInt(32.W))
  })

  // Typecast operands to SInt for all ALU operations
  val signedOperand1 = io.operand1.asSInt
  val signedOperand2 = io.operand2.asSInt

  // ALU Operations, using signed operands directly
  switch(io.ALUSel) {
    is(AluOperation.Add.id.U) {
      io.result := (signedOperand1 + signedOperand2).asUInt
    }
    is(AluOperation.Sub.id.U) {
      io.result := (signedOperand1 - signedOperand2).asUInt
    }
    is(AluOperation.And.id.U) {
      io.result := (signedOperand1 & signedOperand2)
    }
    is(AluOperation.Or.id.U) {
      io.result := (signedOperand1 | signedOperand2)
    }
    is(AluOperation.Xor.id.U) {
      io.result := (signedOperand1 ^ signedOperand2)
    }
  }
}