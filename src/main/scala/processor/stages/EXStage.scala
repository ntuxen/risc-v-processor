package processor.stages
import chisel3._
import chisel3.util._
class EXStage extends Module {
  val io = IO(new Bundle {
    //------------Input-------------//
    val instruction = Input(UInt(32.W))
    val instrType = Input(UInt(3.W))
    val funct3 = Input(UInt(3.W))
    val funct7 = Input(UInt(7.W))
    val opcode = Input(UInt(7.W))
    val rs1 = Input(UInt(5.W))
    val rs2 = Input(UInt(5.W))
    val rd = Input(UInt(5.W))
    val writeData = Input(UInt(32.W))
    val writeEnable = Input(UInt(1.W))
    //------------Output-------------//
    val AluResult = Output(UInt(32.W))
    val RegWriteEnable = Output(UInt(1.W))
    val WriteDataMux = Output(UInt(1.W))
    val MemReadEnable = Output(UInt(1.W))
    val MemWriteEnable = Output(UInt(1.W))

  })
}
