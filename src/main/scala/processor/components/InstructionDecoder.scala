package processor.components
import chisel3._
import chisel3.util._

class InstructionDecoder extends Module {
  val io = IO(new Bundle {
    //------------Input-------------//
    val instruction = Input(UInt(32.W))
    //------------Output-------------//
    val decoded_instruction_IFDtoEX = new Bundle(
    ){
      val rs1 = Output(UInt(5.W))
      val rs2 = Output(UInt(5.W))
      val rd = Output(UInt(5.W))
      val opcode = Output(UInt(7.W))
    }
    val funct3 = Output(UInt(3.W))
    val funct7 = Output(UInt(7.W))
    val instrType = Output(UInt(3.W))
  })
  // Default values for outputs
  io.decoded_instruction_IFDtoEX.rs1 := 0.U
  io.decoded_instruction_IFDtoEX.rs2 := 0.U
  io.decoded_instruction_IFDtoEX.rd := 0.U
  io.funct3 := 0.U
  io.funct7 := 0.U
  io.instrType := 0.U
  io.decoded_instruction_IFDtoEX.opcode := io.instruction(6, 0)
  //Find instruction type from opcode
  switch(io.decoded_instruction_IFDtoEX.opcode) {
    is(Opcode.Alu) {
      io.instrType := InstrType.RType.id.U
    }
    is(Opcode.AluImm) {
      io.instrType := InstrType.IType.id.U
    }
    is(Opcode.load) {
      io.instrType := InstrType.IType.id.U
    }
    is(Opcode.store) {
      io.instrType := InstrType.SType.id.U
    }
    is(Opcode.branch) {
      io.instrType := InstrType.BType.id.U
    }
    is(Opcode.jal) {
      io.instrType := InstrType.JType.id.U
    }
    is(Opcode.jalr) {
      io.instrType := InstrType.IType.id.U
    }
    is(Opcode.auipc) {
      io.instrType := InstrType.UType.id.U
    }
    is(Opcode.lui) {
      io.instrType := InstrType.UType.id.U
    }
  }
  // Decode the instruction based on type
  switch(io.instrType) {
    is(InstrType.RType.id.U) {
      io.decoded_instruction_IFDtoEX.rs1 := io.instruction(19, 15)
      io.decoded_instruction_IFDtoEX.rs2 := io.instruction(24, 20)
      io.decoded_instruction_IFDtoEX.rd := io.instruction(11, 7)
      io.funct3 := io.instruction(14, 12)
      io.funct7 := io.instruction(31, 25)
    }
    is(InstrType.IType.id.U) {
      io.decoded_instruction_IFDtoEX.rs1 := io.instruction(19, 15)
      io.funct3 := io.instruction(14, 12)
      io.decoded_instruction_IFDtoEX.rd := io.instruction(11, 7)
      when(io.funct3 === AluFunct3.sll.U || io.funct3 === AluFunct3.srl.U || io.funct3 === AluFunct3.sra.U){
        //funct7 set to imm[5:11]
        io.funct7 := io.instruction(31, 25)
      }
    }
    is(InstrType.SType.id.U) {
      io.decoded_instruction_IFDtoEX.rs1 := io.instruction(19, 15)
      io.decoded_instruction_IFDtoEX.rs2 := io.instruction(24, 20)
      io.funct3 := io.instruction(14, 12)
    }
    is(InstrType.BType.id.U) {
      io.decoded_instruction_IFDtoEX.rs1 := io.instruction(19, 15)
      io.decoded_instruction_IFDtoEX.rs2 := io.instruction(24, 20)
      io.funct3 := io.instruction(14, 12)
    }
    is(InstrType.JType.id.U) {
      io.decoded_instruction_IFDtoEX.rd := io.instruction(11, 7)
    }
    is(InstrType.UType.id.U) {
      io.decoded_instruction_IFDtoEX.rd := io.instruction(11, 7)
    }
  }
}




