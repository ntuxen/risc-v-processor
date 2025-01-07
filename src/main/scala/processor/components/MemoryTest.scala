package processor.components

import chisel3._

class MemoryTest(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val enableWrite = Input(Bool())
    val addr = Input(UInt(addrWidth.W))
    val dataIn = Input(UInt(width.W))
    val dataOut = Output(UInt(width.W))
  })

  val mem = RegInit(VecInit(Seq.fill(size)(0.U(width.W))))
  // Read/write
  when(io.enableWrite) {
    mem(io.addr) := io.dataIn
    io.dataOut := DontCare
  } .otherwise {
    mem(io.addr) := DontCare
    io.dataOut := mem(io.addr)
  }
}
