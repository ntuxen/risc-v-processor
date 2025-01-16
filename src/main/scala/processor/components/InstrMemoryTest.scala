package processor.components

import chisel3._


class InstrMemoryTest(val size: Int, val addrWidth: Int, val program: Seq[UInt]) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val dataOut = Output(UInt(width.W))
  })

  // Initialize memory with program and fill the rest with 0
  val mem = RegInit(VecInit(
    program.padTo(size, 0.U(32.W)) // Pad with 0 to reach the required size
  ))

  // Explicit register with DontTouchAnnotation
  val dataReg = RegNext(mem(io.addr), init = 0.U) // Equivalent to using RegInit for init


  //io.dataOut := dataReg // Assign register value to output
  io.dataOut := mem(io.addr)
}
