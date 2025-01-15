package processor.stages

import chisel3._

class WBStage extends Module {
  val io = IO(new Bundle {
    //---------- INPUTS -------------//
    val MEMtoWB = new Bundle {
      val alu_result_MEMtoWB            = Input(UInt(32.W))
      val register_write_enable_MEMtoWB = Input(Bool())
      val write_back_select_MEMtoWB     = Input(Bool())
      val rd_MEMtoWB                    = Input(UInt(5.W))
      val address_is_io_MEMtoWB         = Input(Bool())

      // IO and Data memory
      val data_memory_read_MEMtoWB      = Input(UInt(32.W))
      val io_memory_read_MEMtoWB        = Input(UInt(32.W))
    }
    //---------- OUTPUTS -------------//
    val WBtoEX = new Bundle {
      val regfile_write_data_WBtoEX     = Output(UInt(32.W))
      val regfile_write_enable_WBtoEX  = Output(Bool())
      val rd_WBtoEX                     = Output(UInt(5.W))
    }

  })

  // Pipeline registers (NOTE: memory output should not be pipelined)
  val alu_result                   = RegNext(io.MEMtoWB.alu_result_MEMtoWB)
  val write_back_select            = RegNext(io.MEMtoWB.write_back_select_MEMtoWB)
  val address_is_io                = RegNext(io.MEMtoWB.address_is_io_MEMtoWB)
  io.WBtoEX.regfile_write_enable_WBtoEX := RegNext(io.MEMtoWB.register_write_enable_MEMtoWB)
  io.WBtoEX.rd_WBtoEX                   := RegNext(io.MEMtoWB.rd_MEMtoWB)

  // Implements multiplexers in diagram
  when(write_back_select){
    io.WBtoEX.regfile_write_data_WBtoEX := Mux(address_is_io,io.MEMtoWB.io_memory_read_MEMtoWB,io.MEMtoWB.data_memory_read_MEMtoWB)
  } .otherwise {
    io.WBtoEX.regfile_write_data_WBtoEX := alu_result
  }
}
