package processor.stages
import chisel3._
import chisel3.util._
import processor.components._

class IDStage {
  class InstructionDecoder extends Module {
    val io = IO(new Bundle {
      val instruction = Input(UInt(32.W))
      val rs1 = Output(UInt(5.W))
      val rs2 = Output(UInt(5.W))
      val rd = Output(UInt(5.W))
      val imm = Output(UInt(32.W))
      val funct3 = Output(UInt(3.W))
      val funct7 = Output(UInt(7.W))
      val instrType = Output(UInt(3.W))
    })

    // Default values for outputs
    io.rs1 := 0.U
    io.rs2 := 0.U
    io.rd := 0.U
    io.imm := 0.U
    io.funct3 := 0.U
    io.funct7 := 0.U
    io.instrType := 0.U
    val opcode = io.instruction(6, 0)
    //Find instruction type from opcode
    switch(opcode) {
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

      // Decode the instruction based on type
      switch(io.instrType) {
        is(InstrType.RType.id.U) {
          io.rs1 := io.instruction(19, 15)
          io.rs2 := io.instruction(24, 20)
          io.rd := io.instruction(11, 7)
          io.funct3 := io.instruction(14, 12)
          io.funct7 := io.instruction(31, 25)
        }
        is(InstrType.IType.id.U) {
          io.rs1 := io.instruction(19, 15)
          io.imm := io.instruction(31, 20)
          io.funct3 := io.instruction(14, 12)
        }
        is(InstrType.SType.id.U) {
          io.rs1 := io.instruction(19, 15)
          io.rs2 := io.instruction(24, 20)
          io.imm := io.instruction(31, 20)
          io.funct3 := io.instruction(14, 12)
        }
        is(InstrType.BType.id.U) {
          io.rs1 := io.instruction(19, 15)
          io.rs2 := io.instruction(24, 20)
          io.imm := io.instruction(31, 20)
          io.funct3 := io.instruction(14, 12)
        }
        is(InstrType.JType.id.U) {
          io.imm := io.instruction(31, 20)
          io.rd := io.instruction(11, 7)
        }
        is(InstrType.UType.id.U) {
          io.imm := io.instruction(31, 12)
          io.rd := io.instruction(11, 7)
        }
      }
    }
  }

}


