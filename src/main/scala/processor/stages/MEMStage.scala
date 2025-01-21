package processor.stages

import chisel3._
import chisel3.util._
import processor.components.DataMemoryTest
import processor.components.DataMemory
import processor.components.MemoryMappedIO

class MEMStage(clock_freq: Int) extends Module {
  val io = IO(new Bundle {
    //---------- INPUTS -------------//
    val EXtoMEM = new Bundle {
      // Control signals
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
    }

    //---------- OUTPUTS -------------//
    val MEMtoWB = new Bundle {
      // Other control signals
      val alu_result_MEMtoWB              = Output(UInt(32.W))
      val register_write_enable_MEMtoWB   = Output(Bool())
      val write_back_select_MEMtoWB       = Output(Bool())
      val rd_MEMtoWB                      = Output(UInt(5.W))
      val address_is_io_MEMtoWB           = Output(Bool())

      // Memory
      val data_memory_read_MEMtoWB        = Output(UInt(32.W))
      val io_memory_read_MEMtoWB          = Output(UInt(32.W))
    }

    //------ PERIPHERALS ---------//
    val switches                        = Input(UInt(16.W))
    val leds                            = Output(UInt(16.W))
    val display = new Bundle {
      val seg = Output(UInt(7.W))
      val an = Output(UInt(4.W))
    }
  })

  //DataMemory Module
  val dataMem = Module(new DataMemory(1024,10))

  // Memory-mapped IO
  val MemoryMappedIO = Module(new MemoryMappedIO(1024,clock_freq))
  MemoryMappedIO.io.writeEnable := io.EXtoMEM.io_memory_write_enable_EXtoMEM
  MemoryMappedIO.io.dataIn := io.EXtoMEM.memory_write_data_EXtoMEM
  MemoryMappedIO.io.address := io.EXtoMEM.alu_result_EXtoMEM
  io.MEMtoWB.io_memory_read_MEMtoWB := MemoryMappedIO.io.dataOut
  // IO
  io.leds := MemoryMappedIO.io.leds // LED signal to top level output pins
  MemoryMappedIO.io.switches := io.switches// Switches signal from top level input pins
  io.display.seg := MemoryMappedIO.io.display.seg
  io.display.an := MemoryMappedIO.io.display.an


  //Pipeline Registers
  io.MEMtoWB.alu_result_MEMtoWB           := RegNext(io.EXtoMEM.alu_result_EXtoMEM)
  io.MEMtoWB.register_write_enable_MEMtoWB:= RegNext(io.EXtoMEM.register_write_enable_EXtoMEM)
  io.MEMtoWB.write_back_select_MEMtoWB    := RegNext(io.EXtoMEM.write_back_select_EXtoMEM)
  io.MEMtoWB.rd_MEMtoWB                   := RegNext(io.EXtoMEM.rd_EXtoMEM)
  io.MEMtoWB.address_is_io_MEMtoWB        := RegNext(io.EXtoMEM.address_is_io_EXtoMEM)

  // MEMORY RELATED
  dataMem.io.addr := io.EXtoMEM.alu_result_EXtoMEM
  dataMem.io.dataIn := io.EXtoMEM.memory_write_data_EXtoMEM
  dataMem.io.enableWrite := io.EXtoMEM.data_memory_write_enable_EXtoMEM
  dataMem.io.alu_operation_select_EXtoMEM := io.EXtoMEM.alu_operation_select_EXtoMEM
  io.MEMtoWB.data_memory_read_MEMtoWB := dataMem.io.dataOut // TODO: is this correct?
}
