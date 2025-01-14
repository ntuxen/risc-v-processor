package processor.stages

import chisel3._
import chisel3.util._
import processor.components.DataMemoryTest
import processor.components.DataMemory
import processor.components.MemoryMappedIO

class MEMStage extends Module {
  val io = IO(new Bundle {
    //---------- INPUTS -------------//
    // Control signals
    val branch_address_EXtoMEM        = Input(UInt(32.W))
    val take_branch_EXtoMEM           = Input(Bool())
    val register_write_enable_EXtoMEM = Input(Bool())
    val write_back_select_EXtoMEM     = Input(Bool())
    val rd_EXtoMEM                    = Input(UInt(5.W))
    val address_is_io_EXtoMEM         = Input(Bool())

    // Memory stuff
    val alu_result_EXtoMEM            = Input(UInt(32.W))
    val memory_write_data_EXtoMEM     = Input(UInt(32.W))
    // Data Memory
    val data_memory_write_enable_EXtoMEM = Input(Bool())
    val alu_operation_select_EXtoMEM  = Input(UInt(8.W))
    // Memory-mapped IO
    val io_memory_write_enable_EXtoMEM = Input(Bool())

    //---------- OUTPUTS -------------//
    // Branch Reg (to IFD)
    val branch_address_MEMtoIFD         = Output(UInt(32.W))
    val take_branch_MEMtoIFD            = Output(Bool())
    // Other control signals
    val alu_result_MEMtoWB              = Output(UInt(32.W))
    val register_write_enable_MEMtoWB   = Output(Bool())
    val write_back_select_MEMtoWB       = Output(Bool())
    val rd_MEMtoWB                      = Output(UInt(5.W))
    val address_is_io_MEMtoWB           = Output(Bool())

    // Memory
    val data_memory_read_MEMtoWB        = Output(UInt(32.W))
    val io_memory_read_MEMtoWB          = Output(UInt(32.W))

    //------ PERIPHERALS ---------//
    val leds                            = Output(UInt(16.W))

  })
  //DataMemory Module
  val dataMem = Module(new DataMemoryTest(1024,10))

  // Memory-mapped IO
  val MemoryMappedIO = Module(new MemoryMappedIO(1024))
  MemoryMappedIO.io.writeEnable := io.io_memory_write_enable_EXtoMEM
  MemoryMappedIO.io.dataIn := io.memory_write_data_EXtoMEM
  MemoryMappedIO.io.address := io.alu_result_EXtoMEM
  io.io_memory_read_MEMtoWB := MemoryMappedIO.io.dataOut
  io.leds := MemoryMappedIO.io.leds // LED signal for top level output pins
  
  //Pipeline Registers
  io.alu_result_MEMtoWB           := RegNext(io.alu_result_EXtoMEM)
  io.register_write_enable_MEMtoWB:= RegNext(io.register_write_enable_EXtoMEM)
  io.write_back_select_MEMtoWB    := RegNext(io.write_back_select_EXtoMEM)
  io.rd_MEMtoWB                   := RegNext(io.rd_EXtoMEM)
  io.branch_address_MEMtoIFD      := RegNext(io.branch_address_EXtoMEM)
  io.take_branch_MEMtoIFD         := RegNext(io.take_branch_EXtoMEM)
  io.address_is_io_MEMtoWB        := RegNext(io.address_is_io_EXtoMEM)



  // MEMORY RELATED
  dataMem.io.addr := io.alu_result_EXtoMEM
  dataMem.io.dataIn := io.memory_write_data_EXtoMEM
  dataMem.io.enableWrite := io.data_memory_write_enable_EXtoMEM
  dataMem.io.memSel := io.alu_operation_select_EXtoMEM
  io.data_memory_read_MEMtoWB := dataMem.io.dataOut // TODO: is this correct?
}
