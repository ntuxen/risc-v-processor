package processor.components

import chisel3._
import chisel3.util.experimental.loadMemoryFromFile




class InstrMemory(val size: Int, val addrWidth: Int, val program: Seq[UInt]) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val dataOut = Output(UInt(width.W))
  })
//
//  // Make memory with SyncReadMem
//  // TODO: learn how to insert data into the memory
//  val mem = SyncReadMem(size,UInt(width.W))
//  // Load program from a file
//  loadMemoryFromFile(mem, program_file)
//
//  // Fake "read" during elaboration for debugging
//  //  for (i <- 0 until 5) {
//  //    printf(p"Memory[$i]: 0x${Hexadecimal(mem.read(i.U))}\n")
//  //  }
//
//  // Read/write
//  io.dataOut := mem.read(io.addr)

    val mem = Wire(VecInit(program.padTo(size, "h13".U(32.W)))) // Pad with nops to reach the required size

  io.dataOut := RegNext(mem(io.addr))

}
