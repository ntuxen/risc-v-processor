package processor.components

import chisel3._

class InstrMemory(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val dataOut = Output(UInt(width.W))
  })

  // Make memory with SyncReadMem
  // TODO: learn how to insert data into the memory
  val mem = SyncReadMem(size,UInt(width.W))
  // Read/write
  io.dataOut := mem.read(io.addr)
}
