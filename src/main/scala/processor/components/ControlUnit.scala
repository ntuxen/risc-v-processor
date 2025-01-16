package processor.components
import chisel3._
import chisel3.util._

// ControlUnit
class ControlUnit extends Module {
  val io = IO(new Bundle {
    // Inputs
    val funct3 = Input(UInt(3.W))
    val funct7 = Input(UInt(7.W))
    val opcode = Input(UInt(7.W))
    // Outputs
    val alu_op2mux_select = Output(UInt(1.W))
    val alu_operation_select = Output(UInt(8.W))
    val register_write_enable_EXtoMEM = Output(UInt(1.W))
    val write_back_select_EXtoMEM = Output(UInt(1.W))
    val MemReadEnable = Output(UInt(1.W)) //TODO: Do we need this?
    val write_memory_enable = Output(UInt(1.W))
  })

  // Default values for outputs
  io.write_memory_enable := false.B
  io.MemReadEnable := false.B
  io.register_write_enable_EXtoMEM := false.B
  io.write_back_select_EXtoMEM := false.B
  io.alu_operation_select := 0.U
  io.alu_op2mux_select := 1.U // Default immediate

  // Helper function to map ALU opcode and function decoding
  def getAluOperation(funct3: UInt, funct7: UInt): UInt = {
    val compositeKey = Cat(funct3, funct7).asUInt()

    // Ensure lookup table keys are correctly and explicitly defined
    MuxLookup(compositeKey, 0.U, Seq( //Default to 0.U
      Cat(AluFunct3.add.U(3.W), AluFunct7.default.U(7.W)) -> AluOperation.Add.id.U,
      Cat(AluFunct3.sub.U(3.W), AluFunct7.SRA_SUB.U(7.W)) -> AluOperation.Sub.id.U,
      Cat(AluFunct3.xor.U(3.W), AluFunct7.default.U(7.W)) -> AluOperation.Xor.id.U,
      Cat(AluFunct3.or.U(3.W), AluFunct7.default.U(7.W)) -> AluOperation.Or.id.U,
      Cat(AluFunct3.and.U(3.W), AluFunct7.default.U(7.W)) -> AluOperation.And.id.U,
      Cat(AluFunct3.sll.U(3.W), AluFunct7.default.U(7.W)) -> AluOperation.Sll.id.U,
      Cat(AluFunct3.slt.U(3.W), AluFunct7.default.U(7.W)) -> AluOperation.Slt.id.U,
      Cat(AluFunct3.sltu.U(3.W), AluFunct7.default.U(7.W)) -> AluOperation.Sltu.id.U,
      Cat(AluFunct3.srl.U(3.W), AluFunct7.default.U(7.W)) -> AluOperation.Srl.id.U,
      Cat(AluFunct3.sra.U(3.W), AluFunct7.SRA_SUB.U(7.W)) -> AluOperation.Sra.id.U
    ))
  }

  // Opcode-specific logic
  switch(io.opcode) {
    is(Opcode.Alu, Opcode.AluImm) { // ALU Operations
      io.register_write_enable_EXtoMEM := true.B
      io.alu_operation_select := getAluOperation(io.funct3, io.funct7)
      io.alu_op2mux_select := Mux(io.opcode === Opcode.Alu, 0.U, 1.U) // rs2 or immediate
    }

    is(Opcode.branch) { // Branch Operations
      io.register_write_enable_EXtoMEM := false.B
      io.alu_op2mux_select := 0.U
      io.alu_operation_select := MuxLookup(io.funct3, 0.U, Seq( //Default to 0.U
        BranchFunct3.beq.U -> AluOperation.Beq.id.U,
        BranchFunct3.bne.U -> AluOperation.Bne.id.U,
        BranchFunct3.blt.U -> AluOperation.Blt.id.U,
        BranchFunct3.bge.U -> AluOperation.Bge.id.U,
        BranchFunct3.bltu.U -> AluOperation.Bltu.id.U,
        BranchFunct3.bgeu.U -> AluOperation.Bgeu.id.U
      ))
    }

    is(Opcode.load) { // Load Operations
      io.register_write_enable_EXtoMEM := RegNext(true.B) //TODO: This might break stuff "RegNext"
      io.write_back_select_EXtoMEM := RegNext(true.B)   // Delays signal one cycle because reads are slower
      io.alu_operation_select := MuxLookup(io.funct3, 0.U, Seq( //Default to 0.U
        LoadFunct3.lb.U -> AluOperation.Lb.id.U,
        LoadFunct3.lh.U -> AluOperation.Lh.id.U,
        LoadFunct3.lw.U -> AluOperation.Lw.id.U,
        LoadFunct3.lbu.U -> AluOperation.Lbu.id.U,
        LoadFunct3.lhu.U -> AluOperation.Lhu.id.U
      ))
    }

    is(Opcode.store) { // Store Operations
      io.write_memory_enable := true.B
      io.register_write_enable_EXtoMEM := false.B
      io.alu_operation_select := MuxLookup(io.funct3, 0.U, Seq( //Default to 0.U
        StoreFunct3.sb.U -> AluOperation.Sb.id.U,
        StoreFunct3.sh.U -> AluOperation.Sh.id.U,
        StoreFunct3.sw.U -> AluOperation.Sw.id.U
      ))
    }
    is(Opcode.lui){
      io.register_write_enable_EXtoMEM := true.B
    }
    is(Opcode.auipc){
      io.register_write_enable_EXtoMEM := true.B
    }
    is(Opcode.jal){
      io.register_write_enable_EXtoMEM := true.B
      io.alu_operation_select := Opcode.jal
    }
    is(Opcode.jalr){
      io.register_write_enable_EXtoMEM := true.B
      io.alu_operation_select := Opcode.jalr
    }
  }
}