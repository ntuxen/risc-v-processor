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

  // Create memory with Wire (read-only, constant values)
  val mem = Wire(Vec(size, UInt(width.W)))  // Read-only memory

  // Initialize the memory with the given program, pad with NOPs if necessary
  val programPadded = program.padTo(size, "h00000013".U(32.W))

  // Initialize the memory (constant values)
  for (i <- 0 until size) {
    mem(i) := programPadded(i)
  }

  // Read from the memory (this does not modify it)
  // initialised to nop, so first instruction is always nop
  io.dataOut := RegNext(mem(io.addr), "h00000013".U)

}
