package processor.components

import chisel3._
import chisel3.util._
class DataMemory(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val enableWrite = Input(Bool())
    val dataIn = Input(UInt(32.W))
    val alu_operation_select_EXtoMEM = Input(UInt(8.W)) // Connect to ALUSel

    val dataOut = Output(UInt(width.W))
  })

  val commonAddr = io.addr(addrWidth-1, 2)
  val specAddr = io.addr(1,0)
  val dataOut = WireDefault(0.U(32.W))
  val delayed_alu_operation_select = RegNext(RegNext(io.alu_operation_select_EXtoMEM, 0.U), 0.U)
  val delayed_specAddr = RegNext(RegNext(io.addr(1,0), 0.U), 0.U)

  // Make memory with SyncReadMem
  val mem0 = SyncReadMem(size >> 2,UInt((width>>2).W))
  val mem1 = SyncReadMem(size >> 2,UInt((width>>2).W))
  val mem2 = SyncReadMem(size >> 2,UInt((width>>2).W))
  val mem3 = SyncReadMem(size >> 2,UInt((width>>2).W))

  // Prepare load instructions
  val load0 = RegNext(mem0.read(commonAddr), 0.U)
  val load1 = RegNext(mem1.read(commonAddr), 0.U)
  val load2 = RegNext(mem2.read(commonAddr), 0.U)
  val load3 = RegNext(mem3.read(commonAddr), 0.U)

  // --------- READ/LOAD INSTRUCTIONS --------- //
  switch(delayed_alu_operation_select){
    is(AluOperation.Lb.id.U){ // Lb
      switch(delayed_specAddr){
        is(0.U){
          dataOut := Cat(Fill(24, load0(7)), load0)
        }
        is(1.U){
          dataOut := Cat(Fill(24, load1(7)), load1)
        }
        is(2.U){
          dataOut := Cat(Fill(24, load2(7)), load2)
        }
        is(3.U){
          dataOut := Cat(Fill(24, load3(7)), load3)
        }
      }
    }
    is(AluOperation.Lbu.id.U){ // Lbu
      switch(delayed_specAddr){
        is(0.U){
          dataOut := Cat(Fill(24, 0.U), load0)
        }
        is(1.U){
          dataOut := Cat(Fill(24, 0.U), load1)
        }
        is(2.U){
          dataOut := Cat(Fill(24, 0.U), load2)
        }
        is(3.U){
          dataOut := Cat(Fill(24, 0.U), load3)
        }
      }
    }
    is(AluOperation.Lh.id.U){ // Lh
      switch(delayed_specAddr){
        is(0.U){
          dataOut := Cat(Fill(16, load1(7)), load1, load0)
        }
        is(2.U){
          dataOut := Cat(Fill(16, load3(7)), load3, load2)
        }
      }
    }
    is(AluOperation.Lhu.id.U){ // Lhu
      switch(delayed_specAddr){
        is(0.U){
          dataOut := Cat(Fill(16, 0.U), load1, load0)
        }
        is(2.U){
          dataOut := Cat(Fill(16, 0.U), load3, load2)
        }
      }
    }
    is(AluOperation.Lw.id.U){ // Lw
      switch(delayed_specAddr){
        is(0.U){
          dataOut := Cat(load3, load2, load1, load0)
        }
      }
    }
  }

  // -------- WRITE/STORE INSTRUCTIONS -------- //
  switch(io.alu_operation_select_EXtoMEM) {
    is(AluOperation.Sb.id.U) { // Sb
      switch(specAddr) {
        is(0.U) {
          when(io.enableWrite) {
            mem0.write(commonAddr, io.dataIn(7, 0))
          }
        }
        is(1.U) {
          when(io.enableWrite) {
            mem1.write(commonAddr, io.dataIn(7, 0))
          }
        }
        is(2.U) {
          when(io.enableWrite) {
            mem2.write(commonAddr, io.dataIn(7, 0))
          }
        }
        is(3.U) {
          when(io.enableWrite) {
            mem3.write(commonAddr, io.dataIn(7, 0))
          }
        }
      }
    }
    is(AluOperation.Sh.id.U) { // Sh
      switch(specAddr) {
        is(0.U) {
          when(io.enableWrite) {
            mem0.write(commonAddr, io.dataIn(7, 0))
            mem1.write(commonAddr, io.dataIn(15, 8))
          }
        }
        is(2.U) {
          when(io.enableWrite) {
            mem2.write(commonAddr, io.dataIn(7, 0))
            mem3.write(commonAddr, io.dataIn(15, 8))
          }
        }
      }
    }
    is(AluOperation.Sw.id.U) { // Sw
      switch(specAddr) {
        is(0.U) {
          when(io.enableWrite) {
            mem0.write(commonAddr, io.dataIn(7, 0))
            mem1.write(commonAddr, io.dataIn(15, 8))
            mem2.write(commonAddr, io.dataIn(23, 16))
            mem3.write(commonAddr, io.dataIn(31, 24))
          }
        }
      }
    }
  }

  io.dataOut := dataOut
}
