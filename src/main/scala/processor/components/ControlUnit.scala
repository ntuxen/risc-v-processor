package processor.components
import chisel3._
import chisel3.util._
class ControlUnit  extends Module{
  val io = IO(new Bundle{
    //------------Input-------------//
    val funct3 = Input(UInt(3.W))
    val funct7 = Input(UInt(7.W))
    val instrType = Input(UInt(3.W))
    val opcode = Input(UInt(7.W))
    //------------Output-------------//
    val MuxAluSel = Output(UInt(1.W))
    val AluSel = Output(UInt(8.W))
    val RegWriteEnable = Output(UInt(1.W))
    val WriteDataMux = Output(UInt(1.W))
    val MemReadEnable = Output(UInt(1.W))
    val MemWriteEnable = Output(UInt(1.W))
  })
//Controlling mux that chooses rs2 or immediate for the ALU
 when((io.opcode === Opcode.Alu) || (io.opcode === Opcode.branch)){
   io.MuxAluSel := 0.U //Take rs2
 }.otherwise{
   io.MuxAluSel := 1.U //Take Immediate
 }

 when(io.opcode === Opcode.Alu || io.opcode === Opcode.AluImm){
     io.MemWriteEnable := 0.U
     io.MemReadEnable := 0.U
     io.RegWriteEnable := 1.U
     io.WriteDataMux := 0.U
     io.AluSel := MuxCase(0.U, Array(
       (io.funct3 === AluFunct3.add.U && io.funct7 === AluFunct7.default.U) -> AluOperation.Add.id.U,
       (io.funct3 === AluFunct3.sub.U && io.funct7 === AluFunct7.SRA_SUB.U) -> AluOperation.Sub.id.U,
       (io.funct3 === AluFunct3.xor.U) -> AluOperation.Xor.id.U,
       (io.funct3 === AluFunct3.or.U) -> AluOperation.Or.id.U,
       (io.funct3 === AluFunct3.and.U) -> AluOperation.And.id.U,
       (io.funct3 === AluFunct3.sll.U) -> AluOperation.Sll.id.U,
       (io.funct3 === AluFunct3.slt.U) -> AluOperation.Slt.id.U,
       (io.funct3 === AluFunct3.sltu.U) -> AluOperation.Sltu.id.U,
       (io.funct3 === AluFunct3.srl.U && io.funct7 === AluFunct7.default.U) -> AluOperation.Srl.id.U,
       (io.funct3 === AluFunct3.sra.U && io.funct7 === AluFunct7.SRA_SUB.U) -> AluOperation.Sra.id.U
     ))
 }


}
