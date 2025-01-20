package processor

import chisel3._
import chisel3.stage.ChiselStage
import chisel3.util._
import processor.components._
import processor.stages._

class ProcessorTopLevel(val program: Seq[UInt]) extends Module {
  val io = IO(new Bundle {
    val sw = Input(UInt(16.W))
    val LEDs = Output(UInt(16.W))
    val display = new Bundle {
      val seg = Output(UInt(7.W))
      val an = Output(UInt(4.W))
    }
  })

  val IFD = Module(new IFDStage(program))
  //val ID = Module(new InstructionDecoder) // ID Stage
  val EX = Module(new EXStage)
  val MEM = Module (new MEMStage)
  val WB = Module (new WBStage)

  //-------------Connections-------------//
  IFD.io.IFDtoEX <> EX.io.IFDtoEX
  IFD.io.decoded_instruction_IFDtoEX <> EX.io.decoded_instruction_IFDtoEX
  IFD.io.EXtoIFD <> EX.io.EXtoIFD
  EX.io.EXtoMEM <> MEM.io.EXtoMEM
  EX.io.WBtoEX <> WB.io.WBtoEX
  MEM.io.MEMtoWB <> WB.io.MEMtoWB

  //---MEMORY MAPPED IO---//
  io.LEDs := MEM.io.leds ^ io.sw
  MEM.io.switches := io.sw
  io.display.seg := MEM.io.display.seg
  io.display.an := MEM.io.display.an

}

object Processor extends App {
  // Load Program (doesn't work because of different types
  val program: Seq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/BlinkingLEDsFast.hex")
  //val program = "src/test/TestPrograms/BlinkingLEDsFast.hex"
  // Emit Verilog file
  (new chisel3.stage.ChiselStage).emitVerilog(new ProcessorTopLevel(program))
}

