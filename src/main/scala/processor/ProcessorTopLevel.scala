package processor

import chisel3._
import chisel3.stage.ChiselStage
import chisel3.util._
import processor.components._
import processor.stages._

class ProcessorTopLevel(val program: Seq[UInt]) extends Module {
  val io = IO(new Bundle {
    val LEDs = Output(UInt(16.W))
  })

  val IFD = Module(new IFDStage(program))
  //val ID = Module(new InstructionDecoder) // ID Stage
  val EX = Module(new EXStage)
  val MEM = Module (new MEMStage)
  val WB = Module (new WBStage)

  //-------------Connections-------------//
  //---- ID <- IF -----//
  // There are no input register in the ID stage; instead there is an output register in the IF stage
//  ID.io.instruction := IF.io.instruction

  //---- EX <- IF -----//
//  EX.io.BranchAddressIn := IF.io.PC

  //---- EX <- ID -----//
//  EX.io.instruction := IF.io.instruction // No register in ID stage anyways, so this is valid
//  EX.io.instrType := ID.io.instrType
//  EX.io.funct3 := ID.io.funct3
//  EX.io.funct7 := ID.io.funct7
//  EX.io.opcode := ID.io.opcode
//  EX.io.rs1 := ID.io.rs1
//  EX.io.rs2 := ID.io.rs2
//  EX.io.rd := ID.io.rd
  //---- MEM <- EX  ----//
//  MEM.io.ALURes := EX.io.ALURes
//  MEM.io.address := EX.io.address
//  MEM.io.dataWriteMem := EX.io.dataWriteMem
//  MEM.io.memWriteEnable := EX.io.MemWriteEnable
//  MEM.io.registerWriteEnableIn := EX.io.RegWriteEnable
//  MEM.io.writeDataMux := EX.io.WriteDataMux
//  MEM.io.rdRegIn := EX.io.rdRegIn
//  MEM.io.BranchAddressIn := EX.io.BranchAddressOut
//  MEM.io.IOWriteEnable := EX.io.IOWriteEnable
//  MEM.io.readIsIO := EX.io.readIsIO
//  MEM.io.takeBranchIn := EX.io.takeBranchOut
//  MEM.io.memSel := EX.io.memSel
  //----  EX <- MEM ----//
//  EX.io.writeData := MEM.io.writeData
//  EX.io.writeEnable := MEM.io.registerWriteEnableOut
//  EX.io.rdReg := MEM.io.rdRegOut

  //----- IF <- MEM ------//
//  IF.io.BranchAddress := MEM.io.BranchAddressOut
//  IF.io.EnableJump := MEM.io.takeBranchOut

  //---MEMORY MAPPED IO---//
  io.LEDs := MEM.io.leds

  IFD.io.IFDtoEX <> EX.io.IFDtoEX
  IFD.io.decoded_instruction_IFDtoEX <> EX.io.decoded_instruction_IFDtoEX
  IFD.io.MEMtoIFD <> MEM.io.MEMtoIFD
  EX.io.EXtoMEM <> MEM.io.EXtoMEM
  EX.io.WBtoEX <> WB.io.WBtoEX
  MEM.io.MEMtoWB <> WB.io.MEMtoWB

}

object Processor extends App {
  // Define the program
  val program: Seq[UInt] = Seq(
    "h00000013".U(32.W), // Sample instructions
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W),
    "h00000013".U(32.W)
  )
  //Example Usage of loadHexFile:
  //val program: Seq[UInt] = ProgramLoader.loadHexFile("src/test/TestPrograms/AddImmTest.hex")
  (new chisel3.stage.ChiselStage).emitVerilog(new ProcessorTopLevel(program))
}

