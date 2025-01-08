package processor.stages
import chisel3._
import chisel3.util._
import processor.components.{ALU, ControlUnit, ImmediateGenerator, RegisterFile}
class EXStage extends Module {
  val io = IO(new Bundle {
    //------------Input-------------//
    val instruction = Input(UInt(32.W))
    val instrType = Input(UInt(3.W))
    val funct3 = Input(UInt(3.W))
    val funct7 = Input(UInt(7.W))
    val opcode = Input(UInt(7.W))
    val rs1 = Input(UInt(5.W))
    val rs2 = Input(UInt(5.W))
    val rd = Input(UInt(5.W))
    val writeData = Input(UInt(32.W))
    val writeEnable = Input(UInt(1.W))
    val rdReg = Input(UInt(5.W))
    //------------Output-------------//
    val ALURes = Output(UInt(32.W))
    val address = Output(UInt(32.W))
    val dataWriteMem = Output(UInt(32.W))
    val rdRegIn = Output(UInt(5.W))
    val RegWriteEnable = Output(UInt(1.W))
    val WriteDataMux = Output(UInt(1.W))
    val MemReadEnable = Output(UInt(1.W))
    val MemWriteEnable = Output(UInt(1.W))
  })
  //Load needed modules/components
  val RegFile = Module(new RegisterFile)
  val immGen = Module(new ImmediateGenerator)
  val controlUnit = Module(new ControlUnit)
  val ALU = Module(new ALU)

  //Inputs we need to delay
  val instructionReg = RegInit(0.U(32.W))
  val instrTypeReg = RegInit(0.U(3.W))
  val funct3Reg = RegInit(0.U(3.W))
  val funct7Reg = RegInit(0.U(7.W))
  val opcodeReg = RegInit(0.U(7.W))
  val rdReg = RegInit(0.U(5.W))

  //Inputs to the registers
  instructionReg := io.instruction
  instrTypeReg := io.instrType
  funct3Reg := io.funct3
  funct7Reg := io.funct7
  opcodeReg := io.opcode
  rdReg := io.rd

  //Initialize outputs
  io.ALURes := 0.U(32.W)
  io.address := 0.U
  io.dataWriteMem := 0.U
  io.rdRegIn := 0.U
  io.RegWriteEnable := 0.U
  io.WriteDataMux := 0.U
  io.MemReadEnable := 0.U
  io.MemWriteEnable := 0.U

  //Connect RegFile
  RegFile.io.rs1 := io.rs1
  RegFile.io.rs2 := io.rs2
  RegFile.io.rd := io.rdReg
  RegFile.io.writeData := io.writeData
  RegFile.io.writeEnable := io.writeEnable
  io.dataWriteMem := RegFile.io.operand2
  //ALU and RegFile connections
  ALU.io.operand1 := RegFile.io.operand1
  ALU.io.operand2 := Mux(controlUnit.io.MuxAluSel === 1.U, immGen.io.immediate, RegFile.io.operand2)
  io.ALURes := ALU.io.ALURes
  io.address := ALU.io.ALURes

  //Connect ImmGen
  immGen.io.instrType := instrTypeReg
  immGen.io.instruction := instructionReg

  //Connect ControlUnit
  //------------Input-------------//
  controlUnit.io.funct3 := funct3Reg
  controlUnit.io.funct7 := funct7Reg
  controlUnit.io.instrType := instrTypeReg
  controlUnit.io.opcode := opcodeReg
  //------------Output-------------//
  io.RegWriteEnable := controlUnit.io.RegWriteEnable
  io.WriteDataMux := controlUnit.io.WriteDataMux
  io.MemReadEnable := controlUnit.io.MemReadEnable
  io.MemWriteEnable := controlUnit.io.MemWriteEnable
  ALU.io.ALUSel := controlUnit.io.AluSel




  //Connect rdReg
  io.rdRegIn := rdReg

}
