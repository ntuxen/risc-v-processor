package processor.stages

import chisel3._
import chisel3.util._
import processor.components._

class IFDStage(val program: Seq[UInt]) extends Module {
  val io = IO(new Bundle {
    //------------INPUTS--------//
    val EXtoIFD = new Bundle {
      val take_branch_EXtoIFD = Input(Bool())
      val branch_address_EXtoIFD = Input(UInt(32.W))
      val rd_EXtoIFD = Input(UInt(5.W))
      val opcode_EXtoIFD = Input(UInt(7.W))
    }
    val MEMtoIFD = new Bundle() {
      val rd_MEMtoIFD = Input(UInt(5.W))
      val opcode_MEMtoIFD = Input(UInt(7.W))
    }
    //-----------OUTPUTS---------------//
    val decoded_instruction_IFDtoEX = new Bundle(
    ){
      val rs1 = Output(UInt(5.W))
      val rs2 = Output(UInt(5.W))
      val rd = Output(UInt(5.W))
      //      val funct3 = Output(UInt(3.W))
      //      val funct7 = Output(UInt(7.W))
      val opcode = Output(UInt(7.W))
    }
    val IFDtoEX = new Bundle {
      val pc_IFDtoEX = Output(UInt(32.W))
      val immediate_IFDtoEX = Output(UInt(32.W))
      val alu_op2mux_select_IFDtoEX = Output(UInt(1.W))
      val alu_operation_select_IFDtoEX = Output(UInt(8.W))
      val register_write_enable_IFDtoEX = Output(UInt(1.W))
      val write_back_select_IFDtoEX = Output(UInt(1.W))
      val MemReadEnable_IFDtoEX = Output(UInt(1.W)) //TODO: Do we need this?
      val write_memory_enable_IFDtoEX = Output(UInt(1.W))
      val forward_enable_rs1_IFDtoEX = Output(UInt(3.W))
      val forward_enable_rs2_IFDtoEX = Output(UInt(3.W))
      val forward_enable_memory_data_IFDtoEX = Output(UInt(3.W))
      val forward_choose_data = Output(UInt(2.W))
    }
    val WBtoIFD = new Bundle() {
      val rd_WBtoIFD = Input(UInt(5.W))
      val opcode_WBtoIFD = Input(UInt(7.W))
    }
  })

  // PC logic
  // Remember that the PC implicitly starts at an instruction address 4 higher
  // TODO: fix the above
  val PC = RegInit("hFFFFFFFC".U(32.W))
  val NextInstrAdd = WireDefault(Mux(io.EXtoIFD.take_branch_EXtoIFD, io.EXtoIFD.branch_address_EXtoIFD, PC + 4.U))
  PC := NextInstrAdd

  // Instruction memory
  val instrMem = Module(new InstrMemory(256,10,program))
  instrMem.io.addr := NextInstrAdd >> 2.U

  //Instruction Decoder
  val instructionDecoder = Module(new InstructionDecoder)
  instructionDecoder.io.instruction := instrMem.io.dataOut

  //Immediate Generator
  val immediateGenerator = Module(new ImmediateGenerator)
  immediateGenerator.io.instruction := instrMem.io.dataOut
  immediateGenerator.io.instrType := instructionDecoder.io.instrType

  //ControlUnit
  val controlUnit = Module(new ControlUnit)
  controlUnit.io.funct3 := instructionDecoder.io.funct3
  controlUnit.io.funct7 := instructionDecoder.io.funct7
  controlUnit.io.opcode := instructionDecoder.io.decoded_instruction_IFDtoEX.opcode
  controlUnit.io.take_branch := io.EXtoIFD.take_branch_EXtoIFD
  io.IFDtoEX.write_back_select_IFDtoEX := controlUnit.io.write_back_select
  io.IFDtoEX.write_memory_enable_IFDtoEX := controlUnit.io.write_memory_enable
  io.IFDtoEX.alu_operation_select_IFDtoEX := controlUnit.io.alu_operation_select
  io.IFDtoEX.alu_op2mux_select_IFDtoEX := controlUnit.io.alu_op2mux_select
  io.IFDtoEX.MemReadEnable_IFDtoEX := controlUnit.io.MemReadEnable
  io.IFDtoEX.register_write_enable_IFDtoEX := controlUnit.io.register_write_enable

  // Pipeline register
  io.IFDtoEX.pc_IFDtoEX := RegNext(NextInstrAdd)


  //Connect PC to output so it propagates to next stage
  io.decoded_instruction_IFDtoEX <> instructionDecoder.io.decoded_instruction_IFDtoEX

  io.IFDtoEX.immediate_IFDtoEX := immediateGenerator.io.immediate

  val rs1 = io.decoded_instruction_IFDtoEX.rs1
  val rs2 = io.decoded_instruction_IFDtoEX.rs2
  val opcode = io.decoded_instruction_IFDtoEX.opcode

  //Forwarding Logic
  // Forwarding enable for rs1
//  io.IFDtoEX.forward_enable_rs1_IFDtoEX := Cat(
//    (io.EXtoIFD.rd_EXtoIFD === rs1) && rs1 =/= 0.U && io.EXtoIFD.opcode_EXtoIFD =/= Opcode.load, // EX stage forwarding
//    (io.MEMtoIFD.rd_MEMtoIFD === rs1) && rs1 =/= 0.U && io.MEMtoIFD.opcode_MEMtoIFD =/= Opcode.load, // MEM stage forwarding
//    (io.WBtoIFD.rd_WBtoIFD === rs1) && rs1 =/= 0.U && io.WBtoIFD.opcode_WBtoIFD =/= Opcode.load //WB stage forwarding
//  )
  io.IFDtoEX.forward_enable_rs1_IFDtoEX := Cat(
    (io.EXtoIFD.rd_EXtoIFD === rs1) && rs1 =/= 0.U, // EX stage forwarding
    (io.MEMtoIFD.rd_MEMtoIFD === rs1) && rs1 =/= 0.U, // MEM stage forwarding
    (io.WBtoIFD.rd_WBtoIFD === rs1) && rs1 =/= 0.U //WB stage forwarding
  )
  // Forwarding enable for rs2 (When the current opcode is a load or store then we want the immediate value)
  io.IFDtoEX.forward_enable_rs2_IFDtoEX := Cat(
    (io.EXtoIFD.rd_EXtoIFD === rs2) && rs2 =/= 0.U && opcode =/= Opcode.load && opcode =/= Opcode.store, // EX stage forwarding
    (io.MEMtoIFD.rd_MEMtoIFD === rs2) && rs2 =/= 0.U && opcode =/= Opcode.load && opcode =/= Opcode.store, // MEM stage forwarding
    (io.WBtoIFD.rd_WBtoIFD === rs2) && rs2 =/= 0.U && opcode =/= Opcode.load && opcode =/= Opcode.store
  )
  //Forwarding enable for memory data
  io.IFDtoEX.forward_enable_memory_data_IFDtoEX := Cat(
    (io.EXtoIFD.rd_EXtoIFD === rs2) && rs2 =/= 0.U, // EX stage forwarding
    (io.MEMtoIFD.rd_MEMtoIFD === rs2) && rs2 =/= 0.U, // MEM stage forwarding
    (io.WBtoIFD.rd_WBtoIFD === rs2) && rs2 =/= 0.U
  )
  io.IFDtoEX.forward_choose_data := Cat(
    (io.MEMtoIFD.opcode_MEMtoIFD === Opcode.load), // MEM stage forwarding
    (io.WBtoIFD.opcode_WBtoIFD === Opcode.load)
  )
}






