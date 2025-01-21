package processor.components
import chisel3._
import chisel3.util._

class HazardDetectionUnit extends Module {
  val io = IO(new Bundle {
    val decoded_instruction = new Bundle(
    ){
      val rs1 = Input(UInt(5.W))
      val rs2 = Input(UInt(5.W))
      val rd = Input(UInt(5.W))
      //      val funct3 = Output(UInt(3.W))
      //      val funct7 = Output(UInt(7.W))
      val opcode = Input(UInt(7.W))
    }
    val rd_EX = Input(UInt(5.W))        // Destination register in EX stage
    val rd_MEM = Input(UInt(5.W))       // Destination register in MEM stage
    val opcode_EX = Input(UInt(7.W))     // EX stage memory read signal

    val decoded_instruction_IFDtoEX = new Bundle(
    ){
      val rs1 = Output(UInt(5.W))
      val rs2 = Output(UInt(5.W))
      val rd = Output(UInt(5.W))
      //      val funct3 = Output(UInt(3.W))
      //      val funct7 = Output(UInt(7.W))
      val opcode = Output(UInt(7.W))
    }
    val stall = Output(Bool())          // Signal to stall the pipeline
  })

  // Default stall signal is false
  io.stall := false.B
  val loadOperation_EX = WireDefault(false.B)
  loadOperation_EX := io.opcode_EX === Opcode.load
  // Detect a hazard: if the EX stage is performing a load (`mem_read`)
  // and its destination register (`rd`) matches one of the source registers (`rs1` or `rs2`) in the ID stage
  when(loadOperation_EX && (io.rd_EX === io.decoded_instruction.rs1 || io.rd_EX === io.decoded_instruction.rs2) && io.rd_EX =/= 0.U) {
    io.stall := true.B
    io.decoded_instruction_IFDtoEX.rs1 := 0.U
    io.decoded_instruction_IFDtoEX.rs2 := 0.U
    io.decoded_instruction_IFDtoEX.rd := 0.U
    io.decoded_instruction_IFDtoEX.opcode := 0.U
  }
  io.decoded_instruction_IFDtoEX <> io.decoded_instruction
}

