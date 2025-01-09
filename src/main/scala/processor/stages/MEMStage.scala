package processor.stages

import chisel3._
import chisel3.util._
import processor.components.DataMemoryTest
import processor.components.DataMemory
import processor.components.MemoryMappedIO

class MEMStage extends Module {
  val io = IO(new Bundle {
    //------ INPUTS ---------//
    val ALURes = Input(UInt(32.W))
    val address = Input(UInt(32.W))
    val dataWriteMem = Input(UInt(32.W))
    val memWriteEnable = Input(UInt(1.W))
    //val memReadEnable = Input(UInt(1.W))
    val registerWriteEnableIn = Input(UInt(1.W))
    val writeDataMux = Input(UInt(1.W))
    val rdRegIn = Input(UInt(5.W))
    val BranchAddressIn = Input(UInt(32.W))
    val readIsIO = Input(Bool())
    val IOWriteEnable = Input(Bool())
    //------ OUTPUTS ---------//
    val writeData = Output(UInt(32.W))
    val registerWriteEnableOut = Output(Bool())
    val rdRegOut = Output(UInt(5.W))
    val BranchAddressOut = Output(UInt(32.W))
    //------ PERIPHERALS ---------//
    val leds = Output(UInt(16.W))

  })

  val ALUResReg = RegInit(0.U(32.W))
  val controlReg = RegInit(0.U(2.W)) // Bit #1 = registerWriteEnableIn, Bit #0 = writeDataMux
  val rdReg = RegInit(0.U(5.W))
  val dataMem = Module(new DataMemoryTest(1024,10))
  val branchAddressReg = RegInit(0.U(32.W))
  val readIsIO = RegNext(io.readIsIO)

  // Memory-mapped IO
  val memoryMappedIO = Module(new MemoryMappedIO(1024))
  memoryMappedIO.io.writeEnable := io.IOWriteEnable
  memoryMappedIO.io.dataWriteMem := io.dataWriteMem
  memoryMappedIO.io.address := io.address
  io.leds := memoryMappedIO.io.leds // LED signal for top level output pins

  // INPUTS TO REGISTERS
  ALUResReg := io.ALURes
  controlReg := Cat(io.registerWriteEnableIn, io.writeDataMux)
  rdReg := io.rdRegIn
  branchAddressReg := io.BranchAddressIn

  // OUTPUTS FROM REGISTERS
  when(controlReg(0) === 1.U){ // This should implement the two Multiplexers
    io.writeData := Mux(readIsIO,memoryMappedIO.io.dataReadIO,dataMem.io.dataOut)
  } .otherwise {
    io.writeData := ALUResReg
  }
  io.registerWriteEnableOut := controlReg(1)
  io.rdRegOut := rdReg
  io.BranchAddressOut := branchAddressReg

  // MEMORY RELATED
  dataMem.io.addr := io.address
  dataMem.io.dataIn := io.dataWriteMem
  dataMem.io.enableWrite := io.memWriteEnable
}
