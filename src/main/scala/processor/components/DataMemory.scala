package processor.components

import chisel3._

class DataMemory(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val enableWrite = Input(Bool())
    val dataIn = Input(UInt(32.W))

    val dataOut = Output(UInt(width.W))
  })

  // Make memory with SyncReadMem
  val mem = SyncReadMem(size,UInt(width.W))

  // Read
  io.dataOut := mem.read(io.addr)

  // Write
  when(io.enableWrite) {
    mem(io.addr) := io.dataIn
  }
}
