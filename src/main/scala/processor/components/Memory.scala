package processor.components

import chisel3._

class Memory(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val enableWrite = Input(Bool())
    val addr = Input(UInt(addrWidth.W))
    val dataIn = Input(UInt(width.W))
    val dataOut = Output(UInt(width.W))
  })

  val mem = SyncReadMem(size,UInt(width.W))
  // Read/write
  when(io.enableWrite) {
    mem.write(io.addr, io.dataIn)
  } .otherwise {
    io.dataOut := mem.read(io.addr,!io.enableWrite)
  }
}
