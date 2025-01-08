package processor.components
import chisel3._
import chisel3.util._

class RegisterFile extends Module {
  val io = IO(new Bundle {
    //Define the module interface here (inputs/outputs)
    //------------Input-------------//
    val rs1 = Input(UInt(5.W))
    val rs2 = Input(UInt(5.W))
    val writeData = Input(UInt(32.W))
    val rd = Input(UInt(5.W))
    val writeEnable = Input(UInt(1.W))
    //------------Output-------------//
    val operand1 = Output(UInt(32.W)) // connects to operand1 in ALU
    val operand2 = Output(UInt(32.W)) // connects to operand2 in ALU
  })

  val RegFile = RegInit ( VecInit (Seq.fill (32) (0.U(32.W))))

  //Implement this module here
  io.operand1 := 0.U
  io.operand2 := 0.U

  when((io.writeEnable === 1.U)){
    RegFile(io.rd) := io.writeData
    when(io.rd === 0.U){
      RegFile(io.rd) := 0.U
    }
  }.otherwise{
    RegFile(io.rd) := RegFile(io.rd)
    when(io.rd === 0.U) {
      RegFile(io.rd) := 0.U
    }
  }

  io.operand1 := RegFile(io.rs1)
  io.operand2 := RegFile(io.rs2)
}
