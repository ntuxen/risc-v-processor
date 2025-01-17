package processor.components
import chisel3._
import chisel3.util._

class ALU extends Module {
  val io = IO(new Bundle {
    //------------Input-------------//
    val alu_operation_select = Input(UInt(8.W))
    val alu_operand_1 = Input(UInt(32.W))
    val alu_operand_2 = Input(UInt(32.W))
    //------------Output-------------//
    val alu_result = Output(UInt(32.W))
    val take_branch_EXtoIFD = Output(Bool())
  })

  // Typecast operands to SInt for all ALU operations
  val signedOperand1 = io.alu_operand_1.asSInt
  val signedOperand2 = io.alu_operand_2.asSInt

  // ALU Operations, using signed operands directly
  io.alu_result := 42.U // Default assignment (should only be true if io.alu_operation_select is undefined)
  io.take_branch_EXtoIFD := false.B
  switch(io.alu_operation_select) {
    is(AluOperation.Add.id.U) {
      io.alu_result := (signedOperand1 + signedOperand2).asUInt
    }
    is(AluOperation.Sub.id.U) {
      io.alu_result := (signedOperand1 - signedOperand2).asUInt
    }
    is(AluOperation.And.id.U) {
      io.alu_result := (signedOperand1 & signedOperand2).asUInt // Are signed operands necessary?
    }
    is(AluOperation.Or.id.U) {
      io.alu_result := (signedOperand1 | signedOperand2).asUInt // Are signed operands necessary?
    }
    is(AluOperation.Xor.id.U) {
      io.alu_result := (signedOperand1 ^ signedOperand2).asUInt // Are signed operands necessary?
    }
    is(AluOperation.Sll.id.U) {
      io.alu_result := (io.alu_operand_1 << io.alu_operand_2(4,0)) // Has to use unsigned operands to make proper logic shift (can max shift 32 bits)
    }
    is(AluOperation.Srl.id.U) {
      io.alu_result := (io.alu_operand_1 >> io.alu_operand_2(4,0)) // Has to use unsigned operands to make proper logic shift (can max shift 32 bits)
    }
    is(AluOperation.Sra.id.U) {
      //io.alu_result := (signedOperand1 >> signedOperand2(4,0)).asUInt // Has to use signed operands to make arithmetic shift (can max shift 32 bits)
      io.alu_result := (signedOperand1 >> (signedOperand2(4,0))).asUInt
    }
    is(AluOperation.Slt.id.U) {
      when(signedOperand1 < signedOperand2){ // Has to be signed to compare signed integers
        io.alu_result := 1.U
      } .otherwise{
        io.alu_result := 0.U
      }
    }
    is(AluOperation.Sltu.id.U) {
      when(io.alu_operand_1 < io.alu_operand_2) { // Has to be unsigned to compare unsigned integers
        io.alu_result := 1.U
      }.otherwise {
        io.alu_result := 0.U
      }
    }
    // --------  BRANCHES --------------//
    is(AluOperation.Beq.id.U){
      when(signedOperand1 === signedOperand2){
        io.take_branch_EXtoIFD := true.B
      }
    }
    is(AluOperation.Bne.id.U){
      when(signedOperand1 =/= signedOperand2){
        io.take_branch_EXtoIFD := true.B
      }
    }
    is(AluOperation.Blt.id.U){
      when(signedOperand1 < signedOperand2){
        io.take_branch_EXtoIFD := true.B
      }
    }
    is(AluOperation.Bge.id.U){
      when(signedOperand1 >= signedOperand2){
        io.take_branch_EXtoIFD := true.B
      }
    }
    is(AluOperation.Bltu.id.U){
      when(io.alu_operand_1 < io.alu_operand_2){
        io.take_branch_EXtoIFD := true.B
      }
    }
    is(AluOperation.Bgeu.id.U){
      when(io.alu_operand_1 >= io.alu_operand_2){
        io.take_branch_EXtoIFD := true.B
      }
    }
    //------- ----- LOAD & STORE -----------//
    is(AluOperation.Lb.id.U,AluOperation.Lbu.id.U,AluOperation.Lw.id.U, AluOperation.Lh.id.U,AluOperation.Lhu.id.U,AluOperation.Sb.id.U, AluOperation.Sh.id.U, AluOperation.Sw.id.U){
      io.alu_result := io.alu_operand_1 + io.alu_operand_2
    }
    is(Opcode.jal, Opcode.jalr){
      io.take_branch_EXtoIFD := true.B
    }
  }

}