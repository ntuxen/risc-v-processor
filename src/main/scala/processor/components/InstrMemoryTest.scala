package processor.components

import chisel3._
import chisel3.experimental.{ChiselAnnotation, annotate}
import firrtl.transforms.DontTouchAnnotation

class InstrMemoryTest(val size: Int, val addrWidth: Int) extends Module {
  val width: Int = 32
  val io = IO(new Bundle {
    val addr = Input(UInt(addrWidth.W))
    val dataOut = Output(UInt(width.W))
  })

  // Define the program
  val program: Seq[UInt] = Seq(
    "h00f00213".U(32.W), // Sample instructions
    "h00520213".U(32.W),
    "hfec20213".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h002081b3".U(32.W)
  )

  // Initialize memory with program and fill the rest with 0
  val mem = RegInit(VecInit(
    program.padTo(size, 0.U(32.W)) // Pad with 0 to reach the required size
  ))

  // Explicit register with DontTouchAnnotation
  val dataReg = RegNext(mem(io.addr), init = 0.U) // Equivalent to using RegInit for init
  annotate(new ChiselAnnotation {
    def toFirrtl = DontTouchAnnotation(dataReg.toTarget) // Keep register from being optimized
  })

  //io.dataOut := dataReg // Assign register value to output
  io.dataOut := mem(io.addr)
}
