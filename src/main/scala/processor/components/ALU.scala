package processor.components
import chisel3._
import chisel3.util._

class ALU extends Module {
  val io = IO(new Bundle {
    val ALUSel = Input(UInt(8.W))
    val operand1 = Input(SInt(32.W))
    val operand2 = Input(SInt(32.W))
    val result = Output(UInt(32.W))
  })

  switch(io.ALUSel){
    is(AluOperation.Add.id.U){
      io.result := io.operand1 + io.operand2
    }
    is(AluOperation.Sub.id.U){
      io.result := io.operand1 - io.operand2
    }
    is(AluOperation.And.id.U){
      io.result := io.operand1 & io.operand2
    }
    is(AluOperation.Or.id.U){
      io.result := io.operand1 | io.operand2
    }
    is(AluOperation.Xor.id.U){
      io.result := io.operand1 ^ io.operand2
    }
  }
}
