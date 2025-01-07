package processor.components
import chisel3._
import chisel3.util._
class ImmediateGenerator extends Module {
  val io = IO(new Bundle{
    val instrType = Input(UInt(3.W))
    val instruction = Input(UInt(32.W))
    val immediate = Output(SInt(32.W))
  })

  

}
