package processor.components
import chisel3._
import chisel3.util._

class RegisterFile extends Module {
  val io = IO(new Bundle {
    //Define the module interface here (inputs/outputs)
    //------------Input-------------//
    val rs1 = Input(UInt(5.W))
    val rs2 = Input(UInt(5.W))
    val regfile_write_data_WBtoEX = Input(UInt(32.W))
    val rd_WBtoEX = Input(UInt(5.W))
    val regfile_write_enable_WBtoEX = Input(UInt(1.W))
    //------------Output-------------//
    val alu_operand_1 = Output(UInt(32.W)) // connects to alu_operand_1 in ALU
    val reg_data_2 = Output(UInt(32.W)) // connects to MUX before ALU
  })

  val RegFile = RegInit ( VecInit (Seq.fill (32) (0.U(32.W))))

  //Implement this module here
  io.alu_operand_1 := 0.U
  io.reg_data_2 := 0.U

  when((io.regfile_write_enable_WBtoEX === 1.U)){
    RegFile(io.rd_WBtoEX) := io.regfile_write_data_WBtoEX
    when(io.rd_WBtoEX === 0.U){
      RegFile(io.rd_WBtoEX) := 0.U
    }
  }.otherwise{
    RegFile(io.rd_WBtoEX) := RegFile(io.rd_WBtoEX)
    when(io.rd_WBtoEX === 0.U) {
      RegFile(io.rd_WBtoEX) := 0.U
    }
  }

  io.alu_operand_1 := RegNext(RegFile(io.rs1))
  io.reg_data_2 := RegNext(RegFile(io.rs2))
}
