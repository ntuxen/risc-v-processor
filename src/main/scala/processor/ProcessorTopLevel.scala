package processor

import chisel3._
import chisel3.stage.ChiselStage
import chisel3.util._
import processor.components._
import processor.stages._

class ProcessorTopLevel extends Module {
  val io = IO(new Bundle {

  })

  val IF = Module(new IFStage)
  val ID = Module(new InstructionDecoder) // ID Stage
  val EX = Module(new EXStage)
  val MEM = Module (new MEMStage)

  //-------------Connections-------------//
  //---- ID <- IF -----//
  // There are no input register in the ID stage; instead there is an output register in the IF stage
  ID.io.instruction := IF.io.instruction
  //---- EX <- ID -----//
  EX.io.instruction := IF.io.instruction // No register in ID stage anyways, so this is valid
  EX.io.instrType := ID.io.instrType
  EX.io.funct3 := ID.io.funct3
  EX.io.funct7 := ID.io.funct7
  EX.io.opcode := ID.io.opcode
  EX.io.rs1 := ID.io.rs1
  EX.io.rs2 := ID.io.rs2
  EX.io.rd := ID.io.rd
  //---- MEM <- EX  ----//
  MEM.io.ALURes := EX.io.ALURes
  MEM.io.address := EX.io.address
  MEM.io.dataWriteMem := EX.io.dataWriteMem
  MEM.io.memWriteEnable := EX.io.MemWriteEnable
  MEM.io.registerWriteEnableIn := EX.io.registerWriteEnableIn
  MEM.io.writeDataMux := EX.io.WriteDataMux
  MEM.io.rdRegIn := EX.io.rdRegIn
  //----  EX <- MEM ----//
  EX.io.writeData := MEM.io.writeData
  EX.io.writeEnable := MEM.io.registerWriteEnableOut
  EX.io.rdReg := MEM.io.rdRegOut

  //--- Temporary Connection ---//
  IF.io.AddressJump := 0.U
  IF.io.EnableJump := false.B

}

object Processor extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new ProcessorTopLevel)
}

