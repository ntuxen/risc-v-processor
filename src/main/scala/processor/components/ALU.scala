package processor.components
import chisel3._
import chisel3.util._

class ALU extends Module {
  val io = IO(new Bundle {
    val ALUSel = Input(UInt(8.W))
    val operand1 = Input(UInt(32.W))
    val operand2 = Input(UInt(32.W))
    val result = Output(UInt(32.W))
  })
}
