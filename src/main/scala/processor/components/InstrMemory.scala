package processor.components

import chisel3._
import chisel3.util.experimental.loadMemoryFromFile




class InstrMemory(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val dataOut = Output(UInt(width.W))
  })

  // Make memory with SyncReadMem
  // TODO: learn how to insert data into the memory
  val mem = SyncReadMem(size,UInt(width.W))
  // Load program from a file
  loadMemoryFromFile(mem, "src/test/TestPrograms/AddImmTest.hex")

  // Fake "read" during elaboration for debugging
  //  for (i <- 0 until 5) {
  //    printf(p"Memory[$i]: 0x${Hexadecimal(mem.read(i.U))}\n")
  //  }

  // Read/write
  io.dataOut := mem.read(io.addr)
}
