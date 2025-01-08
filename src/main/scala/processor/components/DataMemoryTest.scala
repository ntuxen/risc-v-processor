package processor.components

import chisel3._

class DataMemoryTest(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val enableWrite = Input(Bool())
    val dataIn = Input(UInt(32.W))

    val dataOut = Output(UInt(width.W))
  })

  // Make memory with RegInit
  val mem = RegInit(VecInit(Seq.tabulate(size) { i => (i*1).U(width.W)}))

  // Read
  io.dataOut := RegNext(mem(io.addr))

  // Write
  when(io.enableWrite){
    mem(io.addr) := io.dataIn
    io.dataOut := RegNext(io.dataIn)
  }
}
