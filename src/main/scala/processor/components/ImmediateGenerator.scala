package processor.components
import chisel3._
import chisel3.util._
class ImmediateGenerator extends Module {
  val io = IO(new Bundle{
    val instrType = Input(UInt(3.W))
    val instruction = Input(UInt(32.W))
    val immediate = Output(SInt(32.W))
  })

  io.immediate := 0.S(32.W)
  switch(io.instrType){
    is(InstrType.RType.id.U){
      io.immediate := 0.S(32.W)
    }
    is(InstrType.IType.id.U){
      io.immediate := io.instruction(31, 20).asSInt
    }
    is(InstrType.SType.id.U){
      io.immediate := Cat(io.instruction(31, 25), io.instruction(11, 7)).asSInt
    }
    is(InstrType.BType.id.U){
      io.immediate := Cat(io.instruction(31), io.instruction(7), io.instruction(30, 25), io.instruction(11, 8), 0.U(1.W)).asSInt
    }
    is(InstrType.UType.id.U){
      io.immediate := Cat(io.instruction(31, 12), 0.U(12.W)).asSInt
    }
    is(InstrType.JType.id.U){
      io.immediate := Cat(io.instruction(31), io.instruction(19, 12), io.instruction(20), io.instruction(30, 21), 0.U(1.W)).asSInt
    }
  }

}
