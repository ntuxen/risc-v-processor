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

  // Make memory with RegInit.
  // Insert dummy values (incrementing numbers from 0)
  val mem = RegInit(VecInit(Seq.tabulate(size) { i => (i*1).U(width.W)}))
  // Read
  annotate(new ChiselAnnotation {
    def toFirrtl = DontTouchAnnotation(dataReg.toTarget) // Mark the problematic register as non-optimizable
  })
  val dataReg = RegInit(0.U) // Initialize register explicitly
  dataReg := mem(io.addr)    // Update dataReg with the memory value
  io.dataOut := dataReg      // Output the value from the register

  // For testing purposes
  mem(1) := "h12300093".U
}
