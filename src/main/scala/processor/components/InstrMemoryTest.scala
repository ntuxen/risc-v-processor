package processor.components

import chisel3._

class InstrMemoryTest(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val dataOut = Output(UInt(width.W))
  })

  // Make memory with RegInit.
  // Insert dummy values (incrementing numbers from 0)
  val mem = RegInit(VecInit(Seq.tabulate(size) { i => (i*1).U(width.W)}))
  // Read
  io.dataOut := RegNext(mem(io.addr)) // RegNext because RegInit has asynchronous read, which we do not want

  // For testing purposes
  mem(1) := "h12300093".U
}
