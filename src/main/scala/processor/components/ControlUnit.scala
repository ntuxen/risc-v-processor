package processor.components
import chisel3._
import chisel3.util._
class ControlUnit  extends Module{
  val io = IO(new Bundle{
    val rs1 = Input(UInt(5.W))
    val rs2 = Input(UInt(5.W))
    val rd = Input(UInt(5.W))
    val imm = Input(UInt(32.W))
    val funct3 = Input(UInt(3.W))
    val funct7 = Input(UInt(7.W))
    val instrType = Input(UInt(3.W))

    val MuxAluSel = Output(UInt(1.W))
    val ALUSel = Output(UInt(8.W))
    val RegWriteEnable = Output(UInt(1.W))
    val WriteDataMux = Output(UInt(1.W))
    val MemReadEnable = Output(UInt(1.W))
    val MemWriteEnable = Output(UInt(1.W))
  })
//Controlling mux that chooses rs2 or immediate for the ALU
 when((io.instrType === InstrType.RType.id.U) || (io.instrType === InstrType.BType.id.U)){
   io.MuxAluSel := 0.U //Take rs2
 }.otherwise{
   io.MuxAluSel := 1.U //Take Immediate
 }




}
