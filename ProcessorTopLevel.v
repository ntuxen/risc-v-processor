module InstrMemory(
  input         clock,
  input  [9:0]  io_addr,
  output [31:0] io_dataOut
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mem [0:1023]; // @[InstrMemory.scala 18:24]
  wire  mem_io_dataOut_MPORT_en; // @[InstrMemory.scala 18:24]
  wire [9:0] mem_io_dataOut_MPORT_addr; // @[InstrMemory.scala 18:24]
  wire [31:0] mem_io_dataOut_MPORT_data; // @[InstrMemory.scala 18:24]
  reg  mem_io_dataOut_MPORT_en_pipe_0;
  reg [9:0] mem_io_dataOut_MPORT_addr_pipe_0;
  assign mem_io_dataOut_MPORT_en = mem_io_dataOut_MPORT_en_pipe_0;
  assign mem_io_dataOut_MPORT_addr = mem_io_dataOut_MPORT_addr_pipe_0;
  assign mem_io_dataOut_MPORT_data = mem[mem_io_dataOut_MPORT_addr]; // @[InstrMemory.scala 18:24]
  assign io_dataOut = mem_io_dataOut_MPORT_data; // @[InstrMemory.scala 28:14]
  always @(posedge clock) begin
    mem_io_dataOut_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_io_dataOut_MPORT_addr_pipe_0 <= io_addr;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_io_dataOut_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_io_dataOut_MPORT_addr_pipe_0 = _RAND_2[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionDecoder(
  input  [31:0] io_instruction,
  output [4:0]  io_decoded_instruction_IFDtoEX_rs1,
  output [4:0]  io_decoded_instruction_IFDtoEX_rs2,
  output [4:0]  io_decoded_instruction_IFDtoEX_rd,
  output [2:0]  io_decoded_instruction_IFDtoEX_funct3,
  output [6:0]  io_decoded_instruction_IFDtoEX_funct7,
  output [2:0]  io_decoded_instruction_IFDtoEX_instrType,
  output [6:0]  io_decoded_instruction_IFDtoEX_opcode
);
  wire [2:0] _GEN_0 = 7'h37 == io_decoded_instruction_IFDtoEX_opcode ? 3'h4 : 3'h0; // @[InstructionDecoder.scala 27:44 30:49 56:48]
  wire [2:0] _GEN_1 = 7'h17 == io_decoded_instruction_IFDtoEX_opcode ? 3'h4 : _GEN_0; // @[InstructionDecoder.scala 30:49 53:48]
  wire [2:0] _GEN_2 = 7'h67 == io_decoded_instruction_IFDtoEX_opcode ? 3'h1 : _GEN_1; // @[InstructionDecoder.scala 30:49 50:48]
  wire [2:0] _GEN_3 = 7'h6f == io_decoded_instruction_IFDtoEX_opcode ? 3'h5 : _GEN_2; // @[InstructionDecoder.scala 30:49 47:48]
  wire [2:0] _GEN_4 = 7'h63 == io_decoded_instruction_IFDtoEX_opcode ? 3'h3 : _GEN_3; // @[InstructionDecoder.scala 30:49 44:48]
  wire [2:0] _GEN_5 = 7'h23 == io_decoded_instruction_IFDtoEX_opcode ? 3'h2 : _GEN_4; // @[InstructionDecoder.scala 30:49 41:48]
  wire [2:0] _GEN_6 = 7'h3 == io_decoded_instruction_IFDtoEX_opcode ? 3'h1 : _GEN_5; // @[InstructionDecoder.scala 30:49 38:48]
  wire [2:0] _GEN_7 = 7'h13 == io_decoded_instruction_IFDtoEX_opcode ? 3'h1 : _GEN_6; // @[InstructionDecoder.scala 30:49 35:48]
  wire [6:0] _GEN_9 = io_decoded_instruction_IFDtoEX_funct3 == 3'h1 | io_decoded_instruction_IFDtoEX_funct3 == 3'h5 |
    io_decoded_instruction_IFDtoEX_funct3 == 3'h5 ? io_instruction[31:25] : 7'h0; // @[InstructionDecoder.scala 72:192 26:41 74:47]
  wire [4:0] _GEN_10 = 3'h4 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[11:7] : 5'h0; // @[InstructionDecoder.scala 24:37 60:52 91:41]
  wire [4:0] _GEN_11 = 3'h5 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[11:7] : _GEN_10; // @[InstructionDecoder.scala 60:52 88:41]
  wire [4:0] _GEN_12 = 3'h3 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[19:15] : 5'h0; // @[InstructionDecoder.scala 22:38 60:52 83:42]
  wire [4:0] _GEN_13 = 3'h3 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[24:20] : 5'h0; // @[InstructionDecoder.scala 23:38 60:52 84:42]
  wire [2:0] _GEN_14 = 3'h3 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[14:12] : 3'h0; // @[InstructionDecoder.scala 25:41 60:52 85:45]
  wire [4:0] _GEN_15 = 3'h3 == io_decoded_instruction_IFDtoEX_instrType ? 5'h0 : _GEN_11; // @[InstructionDecoder.scala 24:37 60:52]
  wire [4:0] _GEN_16 = 3'h2 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[19:15] : _GEN_12; // @[InstructionDecoder.scala 60:52 78:42]
  wire [4:0] _GEN_17 = 3'h2 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[24:20] : _GEN_13; // @[InstructionDecoder.scala 60:52 79:42]
  wire [2:0] _GEN_18 = 3'h2 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[14:12] : _GEN_14; // @[InstructionDecoder.scala 60:52 80:45]
  wire [4:0] _GEN_19 = 3'h2 == io_decoded_instruction_IFDtoEX_instrType ? 5'h0 : _GEN_15; // @[InstructionDecoder.scala 24:37 60:52]
  wire [4:0] _GEN_20 = 3'h1 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[19:15] : _GEN_16; // @[InstructionDecoder.scala 60:52 69:42]
  wire [2:0] _GEN_21 = 3'h1 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[14:12] : _GEN_18; // @[InstructionDecoder.scala 60:52 70:45]
  wire [4:0] _GEN_22 = 3'h1 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[11:7] : _GEN_19; // @[InstructionDecoder.scala 60:52 71:41]
  wire [6:0] _GEN_23 = 3'h1 == io_decoded_instruction_IFDtoEX_instrType ? _GEN_9 : 7'h0; // @[InstructionDecoder.scala 26:41 60:52]
  wire [4:0] _GEN_24 = 3'h1 == io_decoded_instruction_IFDtoEX_instrType ? 5'h0 : _GEN_17; // @[InstructionDecoder.scala 23:38 60:52]
  assign io_decoded_instruction_IFDtoEX_rs1 = 3'h0 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[19:15]
     : _GEN_20; // @[InstructionDecoder.scala 60:52 62:42]
  assign io_decoded_instruction_IFDtoEX_rs2 = 3'h0 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[24:20]
     : _GEN_24; // @[InstructionDecoder.scala 60:52 63:42]
  assign io_decoded_instruction_IFDtoEX_rd = 3'h0 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[11:7] :
    _GEN_22; // @[InstructionDecoder.scala 60:52 64:41]
  assign io_decoded_instruction_IFDtoEX_funct3 = 3'h0 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[14:12
    ] : _GEN_21; // @[InstructionDecoder.scala 60:52 65:45]
  assign io_decoded_instruction_IFDtoEX_funct7 = 3'h0 == io_decoded_instruction_IFDtoEX_instrType ? io_instruction[31:25
    ] : _GEN_23; // @[InstructionDecoder.scala 60:52 66:45]
  assign io_decoded_instruction_IFDtoEX_instrType = 7'h33 == io_decoded_instruction_IFDtoEX_opcode ? 3'h0 : _GEN_7; // @[InstructionDecoder.scala 30:49 32:48]
  assign io_decoded_instruction_IFDtoEX_opcode = io_instruction[6:0]; // @[InstructionDecoder.scala 28:58]
endmodule
module IFDStage(
  input         clock,
  input         reset,
  input         io_MEMtoIFD_take_branch_MEMtoIFD,
  input  [31:0] io_MEMtoIFD_branch_address_MEMtoIFD,
  output [4:0]  io_decoded_instruction_IFDtoEX_rs1,
  output [4:0]  io_decoded_instruction_IFDtoEX_rs2,
  output [4:0]  io_decoded_instruction_IFDtoEX_rd,
  output [2:0]  io_decoded_instruction_IFDtoEX_funct3,
  output [6:0]  io_decoded_instruction_IFDtoEX_funct7,
  output [2:0]  io_decoded_instruction_IFDtoEX_instrType,
  output [6:0]  io_decoded_instruction_IFDtoEX_opcode,
  output [31:0] io_IFDtoEX_pc_IFDtoEX,
  output [31:0] io_IFDtoEX_instruction_IFDtoEX
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  instrMem_clock; // @[IFDStage.scala 38:24]
  wire [9:0] instrMem_io_addr; // @[IFDStage.scala 38:24]
  wire [31:0] instrMem_io_dataOut; // @[IFDStage.scala 38:24]
  wire [31:0] instructionDecoder_io_instruction; // @[IFDStage.scala 42:34]
  wire [4:0] instructionDecoder_io_decoded_instruction_IFDtoEX_rs1; // @[IFDStage.scala 42:34]
  wire [4:0] instructionDecoder_io_decoded_instruction_IFDtoEX_rs2; // @[IFDStage.scala 42:34]
  wire [4:0] instructionDecoder_io_decoded_instruction_IFDtoEX_rd; // @[IFDStage.scala 42:34]
  wire [2:0] instructionDecoder_io_decoded_instruction_IFDtoEX_funct3; // @[IFDStage.scala 42:34]
  wire [6:0] instructionDecoder_io_decoded_instruction_IFDtoEX_funct7; // @[IFDStage.scala 42:34]
  wire [2:0] instructionDecoder_io_decoded_instruction_IFDtoEX_instrType; // @[IFDStage.scala 42:34]
  wire [6:0] instructionDecoder_io_decoded_instruction_IFDtoEX_opcode; // @[IFDStage.scala 42:34]
  reg [31:0] PC; // @[IFDStage.scala 33:19]
  wire [31:0] _NextInstrAdd_T_1 = PC + 32'h4; // @[IFDStage.scala 34:112]
  wire [31:0] NextInstrAdd = io_MEMtoIFD_take_branch_MEMtoIFD ? io_MEMtoIFD_branch_address_MEMtoIFD : _NextInstrAdd_T_1; // @[IFDStage.scala 34:37]
  wire [31:0] _instrMem_io_addr_T = {{2'd0}, NextInstrAdd[31:2]}; // @[IFDStage.scala 39:36]
  reg [31:0] io_IFDtoEX_pc_IFDtoEX_REG; // @[IFDStage.scala 46:35]
  InstrMemory instrMem ( // @[IFDStage.scala 38:24]
    .clock(instrMem_clock),
    .io_addr(instrMem_io_addr),
    .io_dataOut(instrMem_io_dataOut)
  );
  InstructionDecoder instructionDecoder ( // @[IFDStage.scala 42:34]
    .io_instruction(instructionDecoder_io_instruction),
    .io_decoded_instruction_IFDtoEX_rs1(instructionDecoder_io_decoded_instruction_IFDtoEX_rs1),
    .io_decoded_instruction_IFDtoEX_rs2(instructionDecoder_io_decoded_instruction_IFDtoEX_rs2),
    .io_decoded_instruction_IFDtoEX_rd(instructionDecoder_io_decoded_instruction_IFDtoEX_rd),
    .io_decoded_instruction_IFDtoEX_funct3(instructionDecoder_io_decoded_instruction_IFDtoEX_funct3),
    .io_decoded_instruction_IFDtoEX_funct7(instructionDecoder_io_decoded_instruction_IFDtoEX_funct7),
    .io_decoded_instruction_IFDtoEX_instrType(instructionDecoder_io_decoded_instruction_IFDtoEX_instrType),
    .io_decoded_instruction_IFDtoEX_opcode(instructionDecoder_io_decoded_instruction_IFDtoEX_opcode)
  );
  assign io_decoded_instruction_IFDtoEX_rs1 = instructionDecoder_io_decoded_instruction_IFDtoEX_rs1; // @[IFDStage.scala 50:34]
  assign io_decoded_instruction_IFDtoEX_rs2 = instructionDecoder_io_decoded_instruction_IFDtoEX_rs2; // @[IFDStage.scala 50:34]
  assign io_decoded_instruction_IFDtoEX_rd = instructionDecoder_io_decoded_instruction_IFDtoEX_rd; // @[IFDStage.scala 50:34]
  assign io_decoded_instruction_IFDtoEX_funct3 = instructionDecoder_io_decoded_instruction_IFDtoEX_funct3; // @[IFDStage.scala 50:34]
  assign io_decoded_instruction_IFDtoEX_funct7 = instructionDecoder_io_decoded_instruction_IFDtoEX_funct7; // @[IFDStage.scala 50:34]
  assign io_decoded_instruction_IFDtoEX_instrType = instructionDecoder_io_decoded_instruction_IFDtoEX_instrType; // @[IFDStage.scala 50:34]
  assign io_decoded_instruction_IFDtoEX_opcode = instructionDecoder_io_decoded_instruction_IFDtoEX_opcode; // @[IFDStage.scala 50:34]
  assign io_IFDtoEX_pc_IFDtoEX = io_IFDtoEX_pc_IFDtoEX_REG; // @[IFDStage.scala 46:25]
  assign io_IFDtoEX_instruction_IFDtoEX = instrMem_io_dataOut; // @[IFDStage.scala 51:34]
  assign instrMem_clock = clock;
  assign instrMem_io_addr = _instrMem_io_addr_T[9:0]; // @[IFDStage.scala 39:20]
  assign instructionDecoder_io_instruction = instrMem_io_dataOut; // @[IFDStage.scala 43:37]
  always @(posedge clock) begin
    if (reset) begin // @[IFDStage.scala 33:19]
      PC <= 32'hfffffffc; // @[IFDStage.scala 33:19]
    end else if (io_MEMtoIFD_take_branch_MEMtoIFD) begin // @[IFDStage.scala 34:37]
      PC <= io_MEMtoIFD_branch_address_MEMtoIFD;
    end else begin
      PC <= _NextInstrAdd_T_1;
    end
    if (io_MEMtoIFD_take_branch_MEMtoIFD) begin // @[IFDStage.scala 34:37]
      io_IFDtoEX_pc_IFDtoEX_REG <= io_MEMtoIFD_branch_address_MEMtoIFD;
    end else begin
      io_IFDtoEX_pc_IFDtoEX_REG <= _NextInstrAdd_T_1;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  PC = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  io_IFDtoEX_pc_IFDtoEX_REG = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RegisterFile(
  input         clock,
  input         reset,
  input  [4:0]  io_rs1,
  input  [4:0]  io_rs2,
  input  [31:0] io_regfile_write_data_WBtoEX,
  input  [4:0]  io_rd_WBtoEX,
  input         io_regfile_write_enable_WBtoEX,
  output [31:0] io_alu_operand_1,
  output [31:0] io_reg_data_2
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] RegFile_0; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_1; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_2; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_3; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_4; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_5; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_6; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_7; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_8; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_9; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_10; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_11; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_12; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_13; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_14; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_15; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_16; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_17; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_18; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_19; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_20; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_21; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_22; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_23; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_24; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_25; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_26; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_27; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_28; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_29; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_30; // @[RegisterFile.scala 19:25]
  reg [31:0] RegFile_31; // @[RegisterFile.scala 19:25]
  wire [31:0] _GEN_0 = 5'h0 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_0; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_1 = 5'h1 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_1; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_2 = 5'h2 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_2; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_3 = 5'h3 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_3; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_4 = 5'h4 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_4; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_5 = 5'h5 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_5; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_6 = 5'h6 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_6; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_7 = 5'h7 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_7; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_8 = 5'h8 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_8; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_9 = 5'h9 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_9; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_10 = 5'ha == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_10; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_11 = 5'hb == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_11; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_12 = 5'hc == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_12; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_13 = 5'hd == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_13; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_14 = 5'he == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_14; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_15 = 5'hf == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_15; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_16 = 5'h10 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_16; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_17 = 5'h11 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_17; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_18 = 5'h12 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_18; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_19 = 5'h13 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_19; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_20 = 5'h14 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_20; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_21 = 5'h15 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_21; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_22 = 5'h16 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_22; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_23 = 5'h17 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_23; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_24 = 5'h18 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_24; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_25 = 5'h19 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_25; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_26 = 5'h1a == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_26; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_27 = 5'h1b == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_27; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_28 = 5'h1c == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_28; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_29 = 5'h1d == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_29; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_30 = 5'h1e == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_30; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire [31:0] _GEN_31 = 5'h1f == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_31; // @[RegisterFile.scala 19:25 26:{27,27}]
  wire  _T_1 = io_rd_WBtoEX == 5'h0; // @[RegisterFile.scala 27:23]
  wire [31:0] _GEN_129 = 5'h1 == io_rd_WBtoEX ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_130 = 5'h2 == io_rd_WBtoEX ? RegFile_2 : _GEN_129; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_131 = 5'h3 == io_rd_WBtoEX ? RegFile_3 : _GEN_130; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_132 = 5'h4 == io_rd_WBtoEX ? RegFile_4 : _GEN_131; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_133 = 5'h5 == io_rd_WBtoEX ? RegFile_5 : _GEN_132; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_134 = 5'h6 == io_rd_WBtoEX ? RegFile_6 : _GEN_133; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_135 = 5'h7 == io_rd_WBtoEX ? RegFile_7 : _GEN_134; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_136 = 5'h8 == io_rd_WBtoEX ? RegFile_8 : _GEN_135; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_137 = 5'h9 == io_rd_WBtoEX ? RegFile_9 : _GEN_136; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_138 = 5'ha == io_rd_WBtoEX ? RegFile_10 : _GEN_137; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_139 = 5'hb == io_rd_WBtoEX ? RegFile_11 : _GEN_138; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_140 = 5'hc == io_rd_WBtoEX ? RegFile_12 : _GEN_139; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_141 = 5'hd == io_rd_WBtoEX ? RegFile_13 : _GEN_140; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_142 = 5'he == io_rd_WBtoEX ? RegFile_14 : _GEN_141; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_143 = 5'hf == io_rd_WBtoEX ? RegFile_15 : _GEN_142; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_144 = 5'h10 == io_rd_WBtoEX ? RegFile_16 : _GEN_143; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_145 = 5'h11 == io_rd_WBtoEX ? RegFile_17 : _GEN_144; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_146 = 5'h12 == io_rd_WBtoEX ? RegFile_18 : _GEN_145; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_147 = 5'h13 == io_rd_WBtoEX ? RegFile_19 : _GEN_146; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_148 = 5'h14 == io_rd_WBtoEX ? RegFile_20 : _GEN_147; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_149 = 5'h15 == io_rd_WBtoEX ? RegFile_21 : _GEN_148; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_150 = 5'h16 == io_rd_WBtoEX ? RegFile_22 : _GEN_149; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_151 = 5'h17 == io_rd_WBtoEX ? RegFile_23 : _GEN_150; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_152 = 5'h18 == io_rd_WBtoEX ? RegFile_24 : _GEN_151; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_153 = 5'h19 == io_rd_WBtoEX ? RegFile_25 : _GEN_152; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_154 = 5'h1a == io_rd_WBtoEX ? RegFile_26 : _GEN_153; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_155 = 5'h1b == io_rd_WBtoEX ? RegFile_27 : _GEN_154; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_156 = 5'h1c == io_rd_WBtoEX ? RegFile_28 : _GEN_155; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_157 = 5'h1d == io_rd_WBtoEX ? RegFile_29 : _GEN_156; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_158 = 5'h1e == io_rd_WBtoEX ? RegFile_30 : _GEN_157; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_159 = 5'h1f == io_rd_WBtoEX ? RegFile_31 : _GEN_158; // @[RegisterFile.scala 31:{27,27}]
  wire [31:0] _GEN_96 = 5'h0 == io_rd_WBtoEX ? _GEN_159 : RegFile_0; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_97 = 5'h1 == io_rd_WBtoEX ? _GEN_159 : RegFile_1; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_98 = 5'h2 == io_rd_WBtoEX ? _GEN_159 : RegFile_2; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_99 = 5'h3 == io_rd_WBtoEX ? _GEN_159 : RegFile_3; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_100 = 5'h4 == io_rd_WBtoEX ? _GEN_159 : RegFile_4; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_101 = 5'h5 == io_rd_WBtoEX ? _GEN_159 : RegFile_5; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_102 = 5'h6 == io_rd_WBtoEX ? _GEN_159 : RegFile_6; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_103 = 5'h7 == io_rd_WBtoEX ? _GEN_159 : RegFile_7; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_104 = 5'h8 == io_rd_WBtoEX ? _GEN_159 : RegFile_8; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_105 = 5'h9 == io_rd_WBtoEX ? _GEN_159 : RegFile_9; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_106 = 5'ha == io_rd_WBtoEX ? _GEN_159 : RegFile_10; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_107 = 5'hb == io_rd_WBtoEX ? _GEN_159 : RegFile_11; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_108 = 5'hc == io_rd_WBtoEX ? _GEN_159 : RegFile_12; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_109 = 5'hd == io_rd_WBtoEX ? _GEN_159 : RegFile_13; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_110 = 5'he == io_rd_WBtoEX ? _GEN_159 : RegFile_14; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_111 = 5'hf == io_rd_WBtoEX ? _GEN_159 : RegFile_15; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_112 = 5'h10 == io_rd_WBtoEX ? _GEN_159 : RegFile_16; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_113 = 5'h11 == io_rd_WBtoEX ? _GEN_159 : RegFile_17; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_114 = 5'h12 == io_rd_WBtoEX ? _GEN_159 : RegFile_18; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_115 = 5'h13 == io_rd_WBtoEX ? _GEN_159 : RegFile_19; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_116 = 5'h14 == io_rd_WBtoEX ? _GEN_159 : RegFile_20; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_117 = 5'h15 == io_rd_WBtoEX ? _GEN_159 : RegFile_21; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_118 = 5'h16 == io_rd_WBtoEX ? _GEN_159 : RegFile_22; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_119 = 5'h17 == io_rd_WBtoEX ? _GEN_159 : RegFile_23; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_120 = 5'h18 == io_rd_WBtoEX ? _GEN_159 : RegFile_24; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_121 = 5'h19 == io_rd_WBtoEX ? _GEN_159 : RegFile_25; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_122 = 5'h1a == io_rd_WBtoEX ? _GEN_159 : RegFile_26; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_123 = 5'h1b == io_rd_WBtoEX ? _GEN_159 : RegFile_27; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_124 = 5'h1c == io_rd_WBtoEX ? _GEN_159 : RegFile_28; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_125 = 5'h1d == io_rd_WBtoEX ? _GEN_159 : RegFile_29; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_126 = 5'h1e == io_rd_WBtoEX ? _GEN_159 : RegFile_30; // @[RegisterFile.scala 19:25 31:{27,27}]
  wire [31:0] _GEN_127 = 5'h1f == io_rd_WBtoEX ? _GEN_159 : RegFile_31; // @[RegisterFile.scala 19:25 31:{27,27}]
  reg [31:0] io_alu_operand_1_REG; // @[RegisterFile.scala 37:30]
  wire [31:0] _GEN_257 = 5'h1 == io_rs1 ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_258 = 5'h2 == io_rs1 ? RegFile_2 : _GEN_257; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_259 = 5'h3 == io_rs1 ? RegFile_3 : _GEN_258; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_260 = 5'h4 == io_rs1 ? RegFile_4 : _GEN_259; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_261 = 5'h5 == io_rs1 ? RegFile_5 : _GEN_260; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_262 = 5'h6 == io_rs1 ? RegFile_6 : _GEN_261; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_263 = 5'h7 == io_rs1 ? RegFile_7 : _GEN_262; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_264 = 5'h8 == io_rs1 ? RegFile_8 : _GEN_263; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_265 = 5'h9 == io_rs1 ? RegFile_9 : _GEN_264; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_266 = 5'ha == io_rs1 ? RegFile_10 : _GEN_265; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_267 = 5'hb == io_rs1 ? RegFile_11 : _GEN_266; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_268 = 5'hc == io_rs1 ? RegFile_12 : _GEN_267; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_269 = 5'hd == io_rs1 ? RegFile_13 : _GEN_268; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_270 = 5'he == io_rs1 ? RegFile_14 : _GEN_269; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_271 = 5'hf == io_rs1 ? RegFile_15 : _GEN_270; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_272 = 5'h10 == io_rs1 ? RegFile_16 : _GEN_271; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_273 = 5'h11 == io_rs1 ? RegFile_17 : _GEN_272; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_274 = 5'h12 == io_rs1 ? RegFile_18 : _GEN_273; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_275 = 5'h13 == io_rs1 ? RegFile_19 : _GEN_274; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_276 = 5'h14 == io_rs1 ? RegFile_20 : _GEN_275; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_277 = 5'h15 == io_rs1 ? RegFile_21 : _GEN_276; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_278 = 5'h16 == io_rs1 ? RegFile_22 : _GEN_277; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_279 = 5'h17 == io_rs1 ? RegFile_23 : _GEN_278; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_280 = 5'h18 == io_rs1 ? RegFile_24 : _GEN_279; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_281 = 5'h19 == io_rs1 ? RegFile_25 : _GEN_280; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_282 = 5'h1a == io_rs1 ? RegFile_26 : _GEN_281; // @[RegisterFile.scala 37:{30,30}]
  wire [31:0] _GEN_283 = 5'h1b == io_rs1 ? RegFile_27 : _GEN_282; // @[RegisterFile.scala 37:{30,30}]
  reg [31:0] io_reg_data_2_REG; // @[RegisterFile.scala 38:27]
  wire [31:0] _GEN_289 = 5'h1 == io_rs2 ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_290 = 5'h2 == io_rs2 ? RegFile_2 : _GEN_289; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_291 = 5'h3 == io_rs2 ? RegFile_3 : _GEN_290; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_292 = 5'h4 == io_rs2 ? RegFile_4 : _GEN_291; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_293 = 5'h5 == io_rs2 ? RegFile_5 : _GEN_292; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_294 = 5'h6 == io_rs2 ? RegFile_6 : _GEN_293; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_295 = 5'h7 == io_rs2 ? RegFile_7 : _GEN_294; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_296 = 5'h8 == io_rs2 ? RegFile_8 : _GEN_295; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_297 = 5'h9 == io_rs2 ? RegFile_9 : _GEN_296; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_298 = 5'ha == io_rs2 ? RegFile_10 : _GEN_297; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_299 = 5'hb == io_rs2 ? RegFile_11 : _GEN_298; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_300 = 5'hc == io_rs2 ? RegFile_12 : _GEN_299; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_301 = 5'hd == io_rs2 ? RegFile_13 : _GEN_300; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_302 = 5'he == io_rs2 ? RegFile_14 : _GEN_301; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_303 = 5'hf == io_rs2 ? RegFile_15 : _GEN_302; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_304 = 5'h10 == io_rs2 ? RegFile_16 : _GEN_303; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_305 = 5'h11 == io_rs2 ? RegFile_17 : _GEN_304; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_306 = 5'h12 == io_rs2 ? RegFile_18 : _GEN_305; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_307 = 5'h13 == io_rs2 ? RegFile_19 : _GEN_306; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_308 = 5'h14 == io_rs2 ? RegFile_20 : _GEN_307; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_309 = 5'h15 == io_rs2 ? RegFile_21 : _GEN_308; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_310 = 5'h16 == io_rs2 ? RegFile_22 : _GEN_309; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_311 = 5'h17 == io_rs2 ? RegFile_23 : _GEN_310; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_312 = 5'h18 == io_rs2 ? RegFile_24 : _GEN_311; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_313 = 5'h19 == io_rs2 ? RegFile_25 : _GEN_312; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_314 = 5'h1a == io_rs2 ? RegFile_26 : _GEN_313; // @[RegisterFile.scala 38:{27,27}]
  wire [31:0] _GEN_315 = 5'h1b == io_rs2 ? RegFile_27 : _GEN_314; // @[RegisterFile.scala 38:{27,27}]
  assign io_alu_operand_1 = io_alu_operand_1_REG; // @[RegisterFile.scala 37:20]
  assign io_reg_data_2 = io_reg_data_2_REG; // @[RegisterFile.scala 38:17]
  always @(posedge clock) begin
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_0 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h0 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_0 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_0 <= _GEN_0;
        end
      end else begin
        RegFile_0 <= _GEN_0;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h0 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_0 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_0 <= _GEN_96;
      end
    end else begin
      RegFile_0 <= _GEN_96;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_1 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h1 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_1 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_1 <= _GEN_1;
        end
      end else begin
        RegFile_1 <= _GEN_1;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h1 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_1 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_1 <= _GEN_97;
      end
    end else begin
      RegFile_1 <= _GEN_97;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_2 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h2 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_2 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_2 <= _GEN_2;
        end
      end else begin
        RegFile_2 <= _GEN_2;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h2 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_2 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_2 <= _GEN_98;
      end
    end else begin
      RegFile_2 <= _GEN_98;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_3 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h3 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_3 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_3 <= _GEN_3;
        end
      end else begin
        RegFile_3 <= _GEN_3;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h3 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_3 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_3 <= _GEN_99;
      end
    end else begin
      RegFile_3 <= _GEN_99;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_4 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h4 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_4 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_4 <= _GEN_4;
        end
      end else begin
        RegFile_4 <= _GEN_4;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h4 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_4 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_4 <= _GEN_100;
      end
    end else begin
      RegFile_4 <= _GEN_100;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_5 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h5 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_5 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_5 <= _GEN_5;
        end
      end else begin
        RegFile_5 <= _GEN_5;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h5 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_5 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_5 <= _GEN_101;
      end
    end else begin
      RegFile_5 <= _GEN_101;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_6 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h6 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_6 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_6 <= _GEN_6;
        end
      end else begin
        RegFile_6 <= _GEN_6;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h6 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_6 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_6 <= _GEN_102;
      end
    end else begin
      RegFile_6 <= _GEN_102;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_7 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h7 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_7 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_7 <= _GEN_7;
        end
      end else begin
        RegFile_7 <= _GEN_7;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h7 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_7 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_7 <= _GEN_103;
      end
    end else begin
      RegFile_7 <= _GEN_103;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_8 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h8 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_8 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_8 <= _GEN_8;
        end
      end else begin
        RegFile_8 <= _GEN_8;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h8 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_8 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_8 <= _GEN_104;
      end
    end else begin
      RegFile_8 <= _GEN_104;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_9 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h9 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_9 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_9 <= _GEN_9;
        end
      end else begin
        RegFile_9 <= _GEN_9;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h9 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_9 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_9 <= _GEN_105;
      end
    end else begin
      RegFile_9 <= _GEN_105;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_10 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'ha == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_10 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_10 <= _GEN_10;
        end
      end else begin
        RegFile_10 <= _GEN_10;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'ha == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_10 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_10 <= _GEN_106;
      end
    end else begin
      RegFile_10 <= _GEN_106;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_11 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'hb == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_11 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_11 <= _GEN_11;
        end
      end else begin
        RegFile_11 <= _GEN_11;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'hb == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_11 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_11 <= _GEN_107;
      end
    end else begin
      RegFile_11 <= _GEN_107;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_12 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'hc == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_12 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_12 <= _GEN_12;
        end
      end else begin
        RegFile_12 <= _GEN_12;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'hc == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_12 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_12 <= _GEN_108;
      end
    end else begin
      RegFile_12 <= _GEN_108;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_13 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'hd == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_13 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_13 <= _GEN_13;
        end
      end else begin
        RegFile_13 <= _GEN_13;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'hd == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_13 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_13 <= _GEN_109;
      end
    end else begin
      RegFile_13 <= _GEN_109;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_14 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'he == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_14 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_14 <= _GEN_14;
        end
      end else begin
        RegFile_14 <= _GEN_14;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'he == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_14 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_14 <= _GEN_110;
      end
    end else begin
      RegFile_14 <= _GEN_110;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_15 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'hf == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_15 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_15 <= _GEN_15;
        end
      end else begin
        RegFile_15 <= _GEN_15;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'hf == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_15 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_15 <= _GEN_111;
      end
    end else begin
      RegFile_15 <= _GEN_111;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_16 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h10 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_16 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_16 <= _GEN_16;
        end
      end else begin
        RegFile_16 <= _GEN_16;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h10 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_16 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_16 <= _GEN_112;
      end
    end else begin
      RegFile_16 <= _GEN_112;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_17 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h11 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_17 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_17 <= _GEN_17;
        end
      end else begin
        RegFile_17 <= _GEN_17;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h11 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_17 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_17 <= _GEN_113;
      end
    end else begin
      RegFile_17 <= _GEN_113;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_18 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h12 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_18 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_18 <= _GEN_18;
        end
      end else begin
        RegFile_18 <= _GEN_18;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h12 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_18 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_18 <= _GEN_114;
      end
    end else begin
      RegFile_18 <= _GEN_114;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_19 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h13 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_19 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_19 <= _GEN_19;
        end
      end else begin
        RegFile_19 <= _GEN_19;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h13 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_19 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_19 <= _GEN_115;
      end
    end else begin
      RegFile_19 <= _GEN_115;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_20 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h14 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_20 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_20 <= _GEN_20;
        end
      end else begin
        RegFile_20 <= _GEN_20;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h14 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_20 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_20 <= _GEN_116;
      end
    end else begin
      RegFile_20 <= _GEN_116;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_21 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h15 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_21 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_21 <= _GEN_21;
        end
      end else begin
        RegFile_21 <= _GEN_21;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h15 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_21 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_21 <= _GEN_117;
      end
    end else begin
      RegFile_21 <= _GEN_117;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_22 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h16 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_22 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_22 <= _GEN_22;
        end
      end else begin
        RegFile_22 <= _GEN_22;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h16 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_22 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_22 <= _GEN_118;
      end
    end else begin
      RegFile_22 <= _GEN_118;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_23 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h17 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_23 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_23 <= _GEN_23;
        end
      end else begin
        RegFile_23 <= _GEN_23;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h17 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_23 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_23 <= _GEN_119;
      end
    end else begin
      RegFile_23 <= _GEN_119;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_24 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h18 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_24 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_24 <= _GEN_24;
        end
      end else begin
        RegFile_24 <= _GEN_24;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h18 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_24 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_24 <= _GEN_120;
      end
    end else begin
      RegFile_24 <= _GEN_120;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_25 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h19 == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_25 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_25 <= _GEN_25;
        end
      end else begin
        RegFile_25 <= _GEN_25;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h19 == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_25 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_25 <= _GEN_121;
      end
    end else begin
      RegFile_25 <= _GEN_121;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_26 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h1a == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_26 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_26 <= _GEN_26;
        end
      end else begin
        RegFile_26 <= _GEN_26;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h1a == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_26 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_26 <= _GEN_122;
      end
    end else begin
      RegFile_26 <= _GEN_122;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_27 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h1b == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_27 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_27 <= _GEN_27;
        end
      end else begin
        RegFile_27 <= _GEN_27;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h1b == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_27 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_27 <= _GEN_123;
      end
    end else begin
      RegFile_27 <= _GEN_123;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_28 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h1c == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_28 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_28 <= _GEN_28;
        end
      end else begin
        RegFile_28 <= _GEN_28;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h1c == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_28 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_28 <= _GEN_124;
      end
    end else begin
      RegFile_28 <= _GEN_124;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_29 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h1d == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_29 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_29 <= _GEN_29;
        end
      end else begin
        RegFile_29 <= _GEN_29;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h1d == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_29 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_29 <= _GEN_125;
      end
    end else begin
      RegFile_29 <= _GEN_125;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_30 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h1e == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_30 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_30 <= _GEN_30;
        end
      end else begin
        RegFile_30 <= _GEN_30;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h1e == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_30 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_30 <= _GEN_126;
      end
    end else begin
      RegFile_30 <= _GEN_126;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_31 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 25:49]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 27:31]
        if (5'h1f == io_rd_WBtoEX) begin // @[RegisterFile.scala 28:29]
          RegFile_31 <= 32'h0; // @[RegisterFile.scala 28:29]
        end else begin
          RegFile_31 <= _GEN_31;
        end
      end else begin
        RegFile_31 <= _GEN_31;
      end
    end else if (_T_1) begin // @[RegisterFile.scala 32:32]
      if (5'h1f == io_rd_WBtoEX) begin // @[RegisterFile.scala 33:29]
        RegFile_31 <= 32'h0; // @[RegisterFile.scala 33:29]
      end else begin
        RegFile_31 <= _GEN_127;
      end
    end else begin
      RegFile_31 <= _GEN_127;
    end
    if (5'h1f == io_rs1) begin // @[RegisterFile.scala 37:30]
      io_alu_operand_1_REG <= RegFile_31; // @[RegisterFile.scala 37:30]
    end else if (5'h1e == io_rs1) begin // @[RegisterFile.scala 37:30]
      io_alu_operand_1_REG <= RegFile_30; // @[RegisterFile.scala 37:30]
    end else if (5'h1d == io_rs1) begin // @[RegisterFile.scala 37:30]
      io_alu_operand_1_REG <= RegFile_29; // @[RegisterFile.scala 37:30]
    end else if (5'h1c == io_rs1) begin // @[RegisterFile.scala 37:30]
      io_alu_operand_1_REG <= RegFile_28; // @[RegisterFile.scala 37:30]
    end else begin
      io_alu_operand_1_REG <= _GEN_283;
    end
    if (5'h1f == io_rs2) begin // @[RegisterFile.scala 38:27]
      io_reg_data_2_REG <= RegFile_31; // @[RegisterFile.scala 38:27]
    end else if (5'h1e == io_rs2) begin // @[RegisterFile.scala 38:27]
      io_reg_data_2_REG <= RegFile_30; // @[RegisterFile.scala 38:27]
    end else if (5'h1d == io_rs2) begin // @[RegisterFile.scala 38:27]
      io_reg_data_2_REG <= RegFile_29; // @[RegisterFile.scala 38:27]
    end else if (5'h1c == io_rs2) begin // @[RegisterFile.scala 38:27]
      io_reg_data_2_REG <= RegFile_28; // @[RegisterFile.scala 38:27]
    end else begin
      io_reg_data_2_REG <= _GEN_315;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  RegFile_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  RegFile_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  RegFile_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  RegFile_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  RegFile_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  RegFile_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  RegFile_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  RegFile_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  RegFile_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  RegFile_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  RegFile_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  RegFile_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  RegFile_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  RegFile_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  RegFile_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  RegFile_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  RegFile_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  RegFile_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  RegFile_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  RegFile_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  RegFile_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  RegFile_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  RegFile_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  RegFile_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  RegFile_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  RegFile_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  RegFile_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  RegFile_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  RegFile_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  RegFile_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  RegFile_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  RegFile_31 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  io_alu_operand_1_REG = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  io_reg_data_2_REG = _RAND_33[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ImmediateGenerator(
  input  [2:0]  io_instrType,
  input  [31:0] io_instruction,
  output [31:0] io_immediate
);
  wire [19:0] _io_immediate_T_2 = io_instruction[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _io_immediate_T_4 = {_io_immediate_T_2,io_instruction[31:20]}; // @[Cat.scala 33:92]
  wire [11:0] _io_immediate_T_7 = {io_instruction[31:25],io_instruction[11:7]}; // @[Cat.scala 33:92]
  wire [18:0] _io_immediate_T_10 = io_instruction[31] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _io_immediate_T_15 = {_io_immediate_T_10,io_instruction[31],io_instruction[7],io_instruction[30:25],
    io_instruction[11:8],1'h0}; // @[Cat.scala 33:92]
  wire [31:0] _io_immediate_T_17 = {io_instruction[31:12],12'h0}; // @[Cat.scala 33:92]
  wire [20:0] _io_immediate_T_22 = {io_instruction[31],io_instruction[19:12],io_instruction[20],io_instruction[30:21],1'h0
    }; // @[Cat.scala 33:92]
  wire [31:0] _GEN_0 = 3'h5 == io_instrType ? {{11'd0}, _io_immediate_T_22} : 32'h0; // @[ImmediateGenerator.scala 14:16 16:23 33:20]
  wire [31:0] _GEN_1 = 3'h4 == io_instrType ? _io_immediate_T_17 : _GEN_0; // @[ImmediateGenerator.scala 16:23 30:20]
  wire [31:0] _GEN_2 = 3'h3 == io_instrType ? _io_immediate_T_15 : _GEN_1; // @[ImmediateGenerator.scala 16:23 27:20]
  wire [31:0] _GEN_3 = 3'h2 == io_instrType ? {{20'd0}, _io_immediate_T_7} : _GEN_2; // @[ImmediateGenerator.scala 16:23 24:20]
  wire [31:0] _GEN_4 = 3'h1 == io_instrType ? _io_immediate_T_4 : _GEN_3; // @[ImmediateGenerator.scala 16:23 21:20]
  assign io_immediate = 3'h0 == io_instrType ? 32'h0 : _GEN_4; // @[ImmediateGenerator.scala 16:23 18:20]
endmodule
module ControlUnit(
  input  [2:0] io_funct3,
  input  [6:0] io_funct7,
  input  [6:0] io_opcode,
  output       io_alu_op2mux_select,
  output [7:0] io_alu_operation_select,
  output       io_register_write_enable_EXtoMEM,
  output       io_write_back_select_EXtoMEM,
  output       io_write_memory_enable
);
  wire [9:0] io_alu_operation_select_compositeKey = {io_funct3,io_funct7}; // @[Cat.scala 33:92]
  wire [2:0] _io_alu_operation_select_T_15 = 10'h200 == io_alu_operation_select_compositeKey ? 3'h4 : {{2'd0}, 10'h20
     == io_alu_operation_select_compositeKey}; // @[Mux.scala 81:58]
  wire [2:0] _io_alu_operation_select_T_17 = 10'h300 == io_alu_operation_select_compositeKey ? 3'h3 :
    _io_alu_operation_select_T_15; // @[Mux.scala 81:58]
  wire [2:0] _io_alu_operation_select_T_19 = 10'h380 == io_alu_operation_select_compositeKey ? 3'h2 :
    _io_alu_operation_select_T_17; // @[Mux.scala 81:58]
  wire [2:0] _io_alu_operation_select_T_21 = 10'h80 == io_alu_operation_select_compositeKey ? 3'h5 :
    _io_alu_operation_select_T_19; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_23 = 10'h100 == io_alu_operation_select_compositeKey ? 4'h8 : {{1'd0},
    _io_alu_operation_select_T_21}; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_25 = 10'h180 == io_alu_operation_select_compositeKey ? 4'h9 :
    _io_alu_operation_select_T_23; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_27 = 10'h280 == io_alu_operation_select_compositeKey ? 4'h6 :
    _io_alu_operation_select_T_25; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_29 = 10'h2a0 == io_alu_operation_select_compositeKey ? 4'h7 :
    _io_alu_operation_select_T_27; // @[Mux.scala 81:58]
  wire  _io_alu_op2mux_select_T_1 = io_opcode == 7'h33 ? 1'h0 : 1'h1; // @[ControlUnit.scala 54:34]
  wire [3:0] _io_alu_operation_select_T_31 = 3'h0 == io_funct3 ? 4'ha : 4'h0; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_33 = 3'h1 == io_funct3 ? 4'hb : _io_alu_operation_select_T_31; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_35 = 3'h4 == io_funct3 ? 4'hc : _io_alu_operation_select_T_33; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_37 = 3'h5 == io_funct3 ? 4'hd : _io_alu_operation_select_T_35; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_39 = 3'h6 == io_funct3 ? 4'he : _io_alu_operation_select_T_37; // @[Mux.scala 81:58]
  wire [3:0] _io_alu_operation_select_T_41 = 3'h7 == io_funct3 ? 4'hf : _io_alu_operation_select_T_39; // @[Mux.scala 81:58]
  wire [4:0] _io_alu_operation_select_T_43 = 3'h0 == io_funct3 ? 5'h10 : 5'h0; // @[Mux.scala 81:58]
  wire [4:0] _io_alu_operation_select_T_45 = 3'h1 == io_funct3 ? 5'h11 : _io_alu_operation_select_T_43; // @[Mux.scala 81:58]
  wire [4:0] _io_alu_operation_select_T_47 = 3'h2 == io_funct3 ? 5'h12 : _io_alu_operation_select_T_45; // @[Mux.scala 81:58]
  wire [4:0] _io_alu_operation_select_T_49 = 3'h4 == io_funct3 ? 5'h13 : _io_alu_operation_select_T_47; // @[Mux.scala 81:58]
  wire [4:0] _io_alu_operation_select_T_51 = 3'h5 == io_funct3 ? 5'h14 : _io_alu_operation_select_T_49; // @[Mux.scala 81:58]
  wire [4:0] _io_alu_operation_select_T_53 = 3'h0 == io_funct3 ? 5'h15 : 5'h0; // @[Mux.scala 81:58]
  wire [4:0] _io_alu_operation_select_T_55 = 3'h1 == io_funct3 ? 5'h16 : _io_alu_operation_select_T_53; // @[Mux.scala 81:58]
  wire [4:0] _io_alu_operation_select_T_57 = 3'h2 == io_funct3 ? 5'h17 : _io_alu_operation_select_T_55; // @[Mux.scala 81:58]
  wire [6:0] _GEN_1 = 7'h67 == io_opcode ? 7'h67 : 7'h0; // @[ControlUnit.scala 50:21 103:31 27:27]
  wire  _GEN_2 = 7'h6f == io_opcode | 7'h67 == io_opcode; // @[ControlUnit.scala 50:21 98:40]
  wire [6:0] _GEN_3 = 7'h6f == io_opcode ? 7'h6f : _GEN_1; // @[ControlUnit.scala 50:21 99:31]
  wire  _GEN_4 = 7'h17 == io_opcode | _GEN_2; // @[ControlUnit.scala 50:21 95:40]
  wire [6:0] _GEN_5 = 7'h17 == io_opcode ? 7'h0 : _GEN_3; // @[ControlUnit.scala 50:21 27:27]
  wire  _GEN_6 = 7'h37 == io_opcode | _GEN_4; // @[ControlUnit.scala 50:21 92:40]
  wire [6:0] _GEN_7 = 7'h37 == io_opcode ? 7'h0 : _GEN_5; // @[ControlUnit.scala 50:21 27:27]
  wire  _GEN_9 = 7'h23 == io_opcode ? 1'h0 : _GEN_6; // @[ControlUnit.scala 50:21 84:40]
  wire [6:0] _GEN_10 = 7'h23 == io_opcode ? {{2'd0}, _io_alu_operation_select_T_57} : _GEN_7; // @[ControlUnit.scala 50:21 85:31]
  wire  _GEN_11 = 7'h3 == io_opcode | _GEN_9; // @[ControlUnit.scala 50:21 71:40]
  wire [6:0] _GEN_13 = 7'h3 == io_opcode ? {{2'd0}, _io_alu_operation_select_T_51} : _GEN_10; // @[ControlUnit.scala 50:21 73:31]
  wire  _GEN_14 = 7'h3 == io_opcode ? 1'h0 : 7'h23 == io_opcode; // @[ControlUnit.scala 50:21 23:26]
  wire  _GEN_15 = 7'h63 == io_opcode ? 1'h0 : _GEN_11; // @[ControlUnit.scala 50:21 58:40]
  wire  _GEN_16 = 7'h63 == io_opcode ? 1'h0 : 1'h1; // @[ControlUnit.scala 50:21 28:24 59:28]
  wire [6:0] _GEN_17 = 7'h63 == io_opcode ? {{3'd0}, _io_alu_operation_select_T_41} : _GEN_13; // @[ControlUnit.scala 50:21 60:31]
  wire  _GEN_18 = 7'h63 == io_opcode ? 1'h0 : 7'h3 == io_opcode; // @[ControlUnit.scala 50:21 26:32]
  wire  _GEN_19 = 7'h63 == io_opcode ? 1'h0 : _GEN_14; // @[ControlUnit.scala 50:21 23:26]
  wire [6:0] _GEN_21 = 7'h33 == io_opcode | 7'h13 == io_opcode ? {{3'd0}, _io_alu_operation_select_T_29} : _GEN_17; // @[ControlUnit.scala 50:21 53:31]
  assign io_alu_op2mux_select = 7'h33 == io_opcode | 7'h13 == io_opcode ? _io_alu_op2mux_select_T_1 : _GEN_16; // @[ControlUnit.scala 50:21 54:28]
  assign io_alu_operation_select = {{1'd0}, _GEN_21};
  assign io_register_write_enable_EXtoMEM = 7'h33 == io_opcode | 7'h13 == io_opcode | _GEN_15; // @[ControlUnit.scala 50:21 52:40]
  assign io_write_back_select_EXtoMEM = 7'h33 == io_opcode | 7'h13 == io_opcode ? 1'h0 : _GEN_18; // @[ControlUnit.scala 50:21 26:32]
  assign io_write_memory_enable = 7'h33 == io_opcode | 7'h13 == io_opcode ? 1'h0 : _GEN_19; // @[ControlUnit.scala 50:21 23:26]
endmodule
module ALU(
  input  [7:0]  io_alu_operation_select,
  input  [31:0] io_alu_operand_1,
  input  [31:0] io_alu_operand_2,
  output [31:0] io_alu_result,
  output        io_take_branch_EXtoMEM
);
  wire [31:0] signedOperand2 = io_alu_operand_2; // @[ALU.scala 18:41]
  wire [31:0] _io_alu_result_T_3 = $signed(io_alu_operand_1) + $signed(io_alu_operand_2); // @[ALU.scala 25:58]
  wire [31:0] _io_alu_result_T_7 = $signed(io_alu_operand_1) - $signed(io_alu_operand_2); // @[ALU.scala 28:58]
  wire [31:0] _io_alu_result_T_10 = $signed(io_alu_operand_1) & $signed(io_alu_operand_2); // @[ALU.scala 31:58]
  wire [31:0] _io_alu_result_T_13 = $signed(io_alu_operand_1) | $signed(io_alu_operand_2); // @[ALU.scala 34:58]
  wire [31:0] _io_alu_result_T_16 = $signed(io_alu_operand_1) ^ $signed(io_alu_operand_2); // @[ALU.scala 37:58]
  wire [62:0] _GEN_0 = {{31'd0}, io_alu_operand_1}; // @[ALU.scala 40:42]
  wire [62:0] _io_alu_result_T_18 = _GEN_0 << io_alu_operand_2[4:0]; // @[ALU.scala 40:42]
  wire [31:0] _io_alu_result_T_20 = io_alu_operand_1 >> io_alu_operand_2[4:0]; // @[ALU.scala 43:42]
  wire [31:0] _io_alu_result_T_23 = $signed(io_alu_operand_1) >>> signedOperand2[4:0]; // @[ALU.scala 47:66]
  wire  _T_9 = $signed(io_alu_operand_1) < $signed(io_alu_operand_2); // @[ALU.scala 50:27]
  wire  _T_11 = io_alu_operand_1 < io_alu_operand_2; // @[ALU.scala 57:29]
  wire  _T_13 = $signed(io_alu_operand_1) == $signed(io_alu_operand_2); // @[ALU.scala 65:27]
  wire  _T_15 = $signed(io_alu_operand_1) != $signed(io_alu_operand_2); // @[ALU.scala 70:27]
  wire  _T_19 = $signed(io_alu_operand_1) >= $signed(io_alu_operand_2); // @[ALU.scala 80:27]
  wire  _T_23 = io_alu_operand_1 >= io_alu_operand_2; // @[ALU.scala 90:29]
  wire [31:0] _io_alu_result_T_25 = io_alu_operand_1 + io_alu_operand_2; // @[ALU.scala 96:41]
  wire [31:0] _GEN_9 = 8'h10 == io_alu_operation_select | 8'h13 == io_alu_operation_select | 8'h12 ==
    io_alu_operation_select | 8'h11 == io_alu_operation_select | 8'h14 == io_alu_operation_select | 8'h15 ==
    io_alu_operation_select | 8'h16 == io_alu_operation_select | 8'h17 == io_alu_operation_select ? _io_alu_result_T_25
     : 32'h2a; // @[ALU.scala 21:17 23:35 96:21]
  wire  _GEN_10 = 8'h10 == io_alu_operation_select | 8'h13 == io_alu_operation_select | 8'h12 == io_alu_operation_select
     | 8'h11 == io_alu_operation_select | 8'h14 == io_alu_operation_select | 8'h15 == io_alu_operation_select | 8'h16
     == io_alu_operation_select | 8'h17 == io_alu_operation_select ? 1'h0 : 8'h6f == io_alu_operation_select | 8'h67 ==
    io_alu_operation_select; // @[ALU.scala 22:26 23:35]
  wire  _GEN_11 = 8'hf == io_alu_operation_select ? _T_23 : _GEN_10; // @[ALU.scala 23:35]
  wire [31:0] _GEN_12 = 8'hf == io_alu_operation_select ? 32'h2a : _GEN_9; // @[ALU.scala 21:17 23:35]
  wire  _GEN_13 = 8'he == io_alu_operation_select ? _T_11 : _GEN_11; // @[ALU.scala 23:35]
  wire [31:0] _GEN_14 = 8'he == io_alu_operation_select ? 32'h2a : _GEN_12; // @[ALU.scala 21:17 23:35]
  wire  _GEN_15 = 8'hd == io_alu_operation_select ? _T_19 : _GEN_13; // @[ALU.scala 23:35]
  wire [31:0] _GEN_16 = 8'hd == io_alu_operation_select ? 32'h2a : _GEN_14; // @[ALU.scala 21:17 23:35]
  wire  _GEN_17 = 8'hc == io_alu_operation_select ? _T_9 : _GEN_15; // @[ALU.scala 23:35]
  wire [31:0] _GEN_18 = 8'hc == io_alu_operation_select ? 32'h2a : _GEN_16; // @[ALU.scala 21:17 23:35]
  wire  _GEN_19 = 8'hb == io_alu_operation_select ? _T_15 : _GEN_17; // @[ALU.scala 23:35]
  wire [31:0] _GEN_20 = 8'hb == io_alu_operation_select ? 32'h2a : _GEN_18; // @[ALU.scala 21:17 23:35]
  wire  _GEN_21 = 8'ha == io_alu_operation_select ? _T_13 : _GEN_19; // @[ALU.scala 23:35]
  wire [31:0] _GEN_22 = 8'ha == io_alu_operation_select ? 32'h2a : _GEN_20; // @[ALU.scala 21:17 23:35]
  wire [31:0] _GEN_23 = 8'h9 == io_alu_operation_select ? {{31'd0}, _T_11} : _GEN_22; // @[ALU.scala 23:35]
  wire  _GEN_24 = 8'h9 == io_alu_operation_select ? 1'h0 : _GEN_21; // @[ALU.scala 22:26 23:35]
  wire [31:0] _GEN_25 = 8'h8 == io_alu_operation_select ? {{31'd0}, _T_9} : _GEN_23; // @[ALU.scala 23:35]
  wire  _GEN_26 = 8'h8 == io_alu_operation_select ? 1'h0 : _GEN_24; // @[ALU.scala 22:26 23:35]
  wire [31:0] _GEN_27 = 8'h7 == io_alu_operation_select ? _io_alu_result_T_23 : _GEN_25; // @[ALU.scala 23:35 47:21]
  wire  _GEN_28 = 8'h7 == io_alu_operation_select ? 1'h0 : _GEN_26; // @[ALU.scala 22:26 23:35]
  wire [31:0] _GEN_29 = 8'h6 == io_alu_operation_select ? _io_alu_result_T_20 : _GEN_27; // @[ALU.scala 23:35 43:21]
  wire  _GEN_30 = 8'h6 == io_alu_operation_select ? 1'h0 : _GEN_28; // @[ALU.scala 22:26 23:35]
  wire [62:0] _GEN_31 = 8'h5 == io_alu_operation_select ? _io_alu_result_T_18 : {{31'd0}, _GEN_29}; // @[ALU.scala 23:35 40:21]
  wire  _GEN_32 = 8'h5 == io_alu_operation_select ? 1'h0 : _GEN_30; // @[ALU.scala 22:26 23:35]
  wire [62:0] _GEN_33 = 8'h4 == io_alu_operation_select ? {{31'd0}, _io_alu_result_T_16} : _GEN_31; // @[ALU.scala 23:35 37:21]
  wire  _GEN_34 = 8'h4 == io_alu_operation_select ? 1'h0 : _GEN_32; // @[ALU.scala 22:26 23:35]
  wire [62:0] _GEN_35 = 8'h3 == io_alu_operation_select ? {{31'd0}, _io_alu_result_T_13} : _GEN_33; // @[ALU.scala 23:35 34:21]
  wire  _GEN_36 = 8'h3 == io_alu_operation_select ? 1'h0 : _GEN_34; // @[ALU.scala 22:26 23:35]
  wire [62:0] _GEN_37 = 8'h2 == io_alu_operation_select ? {{31'd0}, _io_alu_result_T_10} : _GEN_35; // @[ALU.scala 23:35 31:21]
  wire  _GEN_38 = 8'h2 == io_alu_operation_select ? 1'h0 : _GEN_36; // @[ALU.scala 22:26 23:35]
  wire [62:0] _GEN_39 = 8'h1 == io_alu_operation_select ? {{31'd0}, _io_alu_result_T_7} : _GEN_37; // @[ALU.scala 23:35 28:21]
  wire  _GEN_40 = 8'h1 == io_alu_operation_select ? 1'h0 : _GEN_38; // @[ALU.scala 22:26 23:35]
  wire [62:0] _GEN_41 = 8'h0 == io_alu_operation_select ? {{31'd0}, _io_alu_result_T_3} : _GEN_39; // @[ALU.scala 23:35 25:21]
  assign io_alu_result = _GEN_41[31:0];
  assign io_take_branch_EXtoMEM = 8'h0 == io_alu_operation_select ? 1'h0 : _GEN_40; // @[ALU.scala 22:26 23:35]
endmodule
module EXStage(
  input         clock,
  input         reset,
  input  [4:0]  io_decoded_instruction_IFDtoEX_rs1,
  input  [4:0]  io_decoded_instruction_IFDtoEX_rs2,
  input  [4:0]  io_decoded_instruction_IFDtoEX_rd,
  input  [2:0]  io_decoded_instruction_IFDtoEX_funct3,
  input  [6:0]  io_decoded_instruction_IFDtoEX_funct7,
  input  [2:0]  io_decoded_instruction_IFDtoEX_instrType,
  input  [6:0]  io_decoded_instruction_IFDtoEX_opcode,
  input  [31:0] io_IFDtoEX_pc_IFDtoEX,
  input  [31:0] io_IFDtoEX_instruction_IFDtoEX,
  input  [31:0] io_WBtoEX_regfile_write_data_WBtoEX,
  input         io_WBtoEX_regfile_write_enable_WBtoEX,
  input  [4:0]  io_WBtoEX_rd_WBtoEX,
  output [31:0] io_EXtoMEM_alu_result_EXtoMEM,
  output [31:0] io_EXtoMEM_memory_write_data_EXtoMEM,
  output [4:0]  io_EXtoMEM_rd_EXtoMEM,
  output        io_EXtoMEM_register_write_enable_EXtoMEM,
  output        io_EXtoMEM_write_back_select_EXtoMEM,
  output        io_EXtoMEM_data_memory_write_enable_EXtoMEM,
  output        io_EXtoMEM_io_memory_write_enable_EXtoMEM,
  output [31:0] io_EXtoMEM_branch_address_EXtoMEM,
  output        io_EXtoMEM_take_branch_EXtoMEM,
  output        io_EXtoMEM_address_is_io_EXtoMEM,
  output [7:0]  io_EXtoMEM_alu_operation_select_EXtoMEM
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  RegFile_clock; // @[EXStage.scala 45:23]
  wire  RegFile_reset; // @[EXStage.scala 45:23]
  wire [4:0] RegFile_io_rs1; // @[EXStage.scala 45:23]
  wire [4:0] RegFile_io_rs2; // @[EXStage.scala 45:23]
  wire [31:0] RegFile_io_regfile_write_data_WBtoEX; // @[EXStage.scala 45:23]
  wire [4:0] RegFile_io_rd_WBtoEX; // @[EXStage.scala 45:23]
  wire  RegFile_io_regfile_write_enable_WBtoEX; // @[EXStage.scala 45:23]
  wire [31:0] RegFile_io_alu_operand_1; // @[EXStage.scala 45:23]
  wire [31:0] RegFile_io_reg_data_2; // @[EXStage.scala 45:23]
  wire [2:0] immGen_io_instrType; // @[EXStage.scala 46:22]
  wire [31:0] immGen_io_instruction; // @[EXStage.scala 46:22]
  wire [31:0] immGen_io_immediate; // @[EXStage.scala 46:22]
  wire [2:0] controlUnit_io_funct3; // @[EXStage.scala 47:27]
  wire [6:0] controlUnit_io_funct7; // @[EXStage.scala 47:27]
  wire [6:0] controlUnit_io_opcode; // @[EXStage.scala 47:27]
  wire  controlUnit_io_alu_op2mux_select; // @[EXStage.scala 47:27]
  wire [7:0] controlUnit_io_alu_operation_select; // @[EXStage.scala 47:27]
  wire  controlUnit_io_register_write_enable_EXtoMEM; // @[EXStage.scala 47:27]
  wire  controlUnit_io_write_back_select_EXtoMEM; // @[EXStage.scala 47:27]
  wire  controlUnit_io_write_memory_enable; // @[EXStage.scala 47:27]
  wire [7:0] ALU_io_alu_operation_select; // @[EXStage.scala 48:19]
  wire [31:0] ALU_io_alu_operand_1; // @[EXStage.scala 48:19]
  wire [31:0] ALU_io_alu_operand_2; // @[EXStage.scala 48:19]
  wire [31:0] ALU_io_alu_result; // @[EXStage.scala 48:19]
  wire  ALU_io_take_branch_EXtoMEM; // @[EXStage.scala 48:19]
  reg [31:0] instructionReg; // @[EXStage.scala 51:31]
  reg [2:0] instrTypeReg; // @[EXStage.scala 52:29]
  reg [2:0] funct3Reg; // @[EXStage.scala 53:26]
  reg [6:0] funct7Reg; // @[EXStage.scala 54:26]
  reg [6:0] opcodeReg; // @[EXStage.scala 55:26]
  reg [4:0] rdReg; // @[EXStage.scala 56:22]
  reg [31:0] branchAddrReg; // @[EXStage.scala 57:30]
  wire [31:0] _io_EXtoMEM_branch_address_EXtoMEM_T_1 = branchAddrReg + immGen_io_immediate; // @[EXStage.scala 71:54]
  wire [31:0] _GEN_3 = opcodeReg == 7'h37 ? immGen_io_immediate : ALU_io_alu_result; // @[EXStage.scala 119:33 120:35 85:33]
  wire [31:0] _GEN_4 = opcodeReg == 7'h17 ? _io_EXtoMEM_branch_address_EXtoMEM_T_1 : _GEN_3; // @[EXStage.scala 123:35 124:35]
  wire [31:0] _io_EXtoMEM_alu_result_EXtoMEM_T_3 = branchAddrReg + 32'h4; // @[EXStage.scala 131:52]
  wire [31:0] _GEN_5 = opcodeReg == 7'h6f ? _io_EXtoMEM_branch_address_EXtoMEM_T_1 :
    _io_EXtoMEM_branch_address_EXtoMEM_T_1; // @[EXStage.scala 129:33 130:39 71:37]
  wire [31:0] _GEN_6 = opcodeReg == 7'h6f ? _io_EXtoMEM_alu_result_EXtoMEM_T_3 : _GEN_4; // @[EXStage.scala 129:33 131:35]
  wire [31:0] _io_EXtoMEM_branch_address_EXtoMEM_T_5 = RegFile_io_alu_operand_1 + immGen_io_immediate; // @[EXStage.scala 134:67]
  RegisterFile RegFile ( // @[EXStage.scala 45:23]
    .clock(RegFile_clock),
    .reset(RegFile_reset),
    .io_rs1(RegFile_io_rs1),
    .io_rs2(RegFile_io_rs2),
    .io_regfile_write_data_WBtoEX(RegFile_io_regfile_write_data_WBtoEX),
    .io_rd_WBtoEX(RegFile_io_rd_WBtoEX),
    .io_regfile_write_enable_WBtoEX(RegFile_io_regfile_write_enable_WBtoEX),
    .io_alu_operand_1(RegFile_io_alu_operand_1),
    .io_reg_data_2(RegFile_io_reg_data_2)
  );
  ImmediateGenerator immGen ( // @[EXStage.scala 46:22]
    .io_instrType(immGen_io_instrType),
    .io_instruction(immGen_io_instruction),
    .io_immediate(immGen_io_immediate)
  );
  ControlUnit controlUnit ( // @[EXStage.scala 47:27]
    .io_funct3(controlUnit_io_funct3),
    .io_funct7(controlUnit_io_funct7),
    .io_opcode(controlUnit_io_opcode),
    .io_alu_op2mux_select(controlUnit_io_alu_op2mux_select),
    .io_alu_operation_select(controlUnit_io_alu_operation_select),
    .io_register_write_enable_EXtoMEM(controlUnit_io_register_write_enable_EXtoMEM),
    .io_write_back_select_EXtoMEM(controlUnit_io_write_back_select_EXtoMEM),
    .io_write_memory_enable(controlUnit_io_write_memory_enable)
  );
  ALU ALU ( // @[EXStage.scala 48:19]
    .io_alu_operation_select(ALU_io_alu_operation_select),
    .io_alu_operand_1(ALU_io_alu_operand_1),
    .io_alu_operand_2(ALU_io_alu_operand_2),
    .io_alu_result(ALU_io_alu_result),
    .io_take_branch_EXtoMEM(ALU_io_take_branch_EXtoMEM)
  );
  assign io_EXtoMEM_alu_result_EXtoMEM = opcodeReg == 7'h67 ? _io_EXtoMEM_alu_result_EXtoMEM_T_3 : _GEN_6; // @[EXStage.scala 133:34 135:35]
  assign io_EXtoMEM_memory_write_data_EXtoMEM = RegFile_io_reg_data_2; // @[EXStage.scala 80:40]
  assign io_EXtoMEM_rd_EXtoMEM = rdReg; // @[EXStage.scala 116:25]
  assign io_EXtoMEM_register_write_enable_EXtoMEM = controlUnit_io_register_write_enable_EXtoMEM; // @[EXStage.scala 100:44]
  assign io_EXtoMEM_write_back_select_EXtoMEM = controlUnit_io_write_back_select_EXtoMEM; // @[EXStage.scala 101:40]
  assign io_EXtoMEM_data_memory_write_enable_EXtoMEM = ALU_io_alu_result >= 32'h400 & opcodeReg != 7'h37 & opcodeReg != 7'h17
     ? 1'h0 : controlUnit_io_write_memory_enable; // @[EXStage.scala 102:47 108:95 109:49]
  assign io_EXtoMEM_io_memory_write_enable_EXtoMEM = ALU_io_alu_result >= 32'h400 & opcodeReg != 7'h37 & opcodeReg != 7'h17
     & controlUnit_io_write_memory_enable; // @[EXStage.scala 108:95 111:47 68:45]
  assign io_EXtoMEM_branch_address_EXtoMEM = opcodeReg == 7'h67 ? _io_EXtoMEM_branch_address_EXtoMEM_T_5 : _GEN_5; // @[EXStage.scala 133:34 134:39]
  assign io_EXtoMEM_take_branch_EXtoMEM = ALU_io_take_branch_EXtoMEM; // @[EXStage.scala 86:34]
  assign io_EXtoMEM_address_is_io_EXtoMEM = ALU_io_alu_result >= 32'h400 & opcodeReg != 7'h37 & opcodeReg != 7'h17; // @[EXStage.scala 108:64]
  assign io_EXtoMEM_alu_operation_select_EXtoMEM = controlUnit_io_alu_operation_select; // @[EXStage.scala 104:43]
  assign RegFile_clock = clock;
  assign RegFile_reset = reset;
  assign RegFile_io_rs1 = io_decoded_instruction_IFDtoEX_rs1; // @[EXStage.scala 75:18]
  assign RegFile_io_rs2 = io_decoded_instruction_IFDtoEX_rs2; // @[EXStage.scala 76:18]
  assign RegFile_io_regfile_write_data_WBtoEX = io_WBtoEX_regfile_write_data_WBtoEX; // @[EXStage.scala 78:40]
  assign RegFile_io_rd_WBtoEX = io_WBtoEX_rd_WBtoEX; // @[EXStage.scala 77:24]
  assign RegFile_io_regfile_write_enable_WBtoEX = io_WBtoEX_regfile_write_enable_WBtoEX; // @[EXStage.scala 79:42]
  assign immGen_io_instrType = instrTypeReg; // @[EXStage.scala 89:23]
  assign immGen_io_instruction = instructionReg; // @[EXStage.scala 90:25]
  assign controlUnit_io_funct3 = funct3Reg; // @[EXStage.scala 94:25]
  assign controlUnit_io_funct7 = funct7Reg; // @[EXStage.scala 95:25]
  assign controlUnit_io_opcode = opcodeReg; // @[EXStage.scala 97:25]
  assign ALU_io_alu_operation_select = controlUnit_io_alu_operation_select; // @[EXStage.scala 103:31]
  assign ALU_io_alu_operand_1 = RegFile_io_alu_operand_1; // @[EXStage.scala 83:24]
  assign ALU_io_alu_operand_2 = controlUnit_io_alu_op2mux_select ? immGen_io_immediate : RegFile_io_reg_data_2; // @[EXStage.scala 84:30]
  always @(posedge clock) begin
    if (reset) begin // @[EXStage.scala 51:31]
      instructionReg <= 32'h0; // @[EXStage.scala 51:31]
    end else begin
      instructionReg <= io_IFDtoEX_instruction_IFDtoEX; // @[EXStage.scala 51:31]
    end
    if (reset) begin // @[EXStage.scala 52:29]
      instrTypeReg <= 3'h0; // @[EXStage.scala 52:29]
    end else begin
      instrTypeReg <= io_decoded_instruction_IFDtoEX_instrType; // @[EXStage.scala 52:29]
    end
    if (reset) begin // @[EXStage.scala 53:26]
      funct3Reg <= 3'h0; // @[EXStage.scala 53:26]
    end else begin
      funct3Reg <= io_decoded_instruction_IFDtoEX_funct3; // @[EXStage.scala 53:26]
    end
    if (reset) begin // @[EXStage.scala 54:26]
      funct7Reg <= 7'h0; // @[EXStage.scala 54:26]
    end else begin
      funct7Reg <= io_decoded_instruction_IFDtoEX_funct7; // @[EXStage.scala 54:26]
    end
    if (reset) begin // @[EXStage.scala 55:26]
      opcodeReg <= 7'h0; // @[EXStage.scala 55:26]
    end else begin
      opcodeReg <= io_decoded_instruction_IFDtoEX_opcode; // @[EXStage.scala 55:26]
    end
    if (reset) begin // @[EXStage.scala 56:22]
      rdReg <= 5'h0; // @[EXStage.scala 56:22]
    end else begin
      rdReg <= io_decoded_instruction_IFDtoEX_rd; // @[EXStage.scala 56:22]
    end
    if (reset) begin // @[EXStage.scala 57:30]
      branchAddrReg <= 32'h0; // @[EXStage.scala 57:30]
    end else begin
      branchAddrReg <= io_IFDtoEX_pc_IFDtoEX; // @[EXStage.scala 57:30]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  instructionReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  instrTypeReg = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  funct3Reg = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  funct7Reg = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  opcodeReg = _RAND_4[6:0];
  _RAND_5 = {1{`RANDOM}};
  rdReg = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  branchAddrReg = _RAND_6[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module DataMemory(
  input         clock,
  input  [9:0]  io_addr,
  input         io_enableWrite,
  input  [31:0] io_dataIn,
  input  [7:0]  io_alu_operation_select_EXtoMEM,
  output [31:0] io_dataOut
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_41;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem0 [0:255]; // @[DataMemory.scala 21:25]
  wire  mem0_dataOut_MPORT_en; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_addr; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_data; // @[DataMemory.scala 21:25]
  wire  mem0_dataOut_MPORT_1_en; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_1_addr; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_1_data; // @[DataMemory.scala 21:25]
  wire  mem0_dataOut_MPORT_8_en; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_8_addr; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_8_data; // @[DataMemory.scala 21:25]
  wire  mem0_dataOut_MPORT_14_en; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_14_addr; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_14_data; // @[DataMemory.scala 21:25]
  wire  mem0_dataOut_MPORT_19_en; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_19_addr; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_19_data; // @[DataMemory.scala 21:25]
  wire  mem0_dataOut_MPORT_25_en; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_25_addr; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_dataOut_MPORT_25_data; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_MPORT_data; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_MPORT_addr; // @[DataMemory.scala 21:25]
  wire  mem0_MPORT_mask; // @[DataMemory.scala 21:25]
  wire  mem0_MPORT_en; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_MPORT_4_data; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_MPORT_4_addr; // @[DataMemory.scala 21:25]
  wire  mem0_MPORT_4_mask; // @[DataMemory.scala 21:25]
  wire  mem0_MPORT_4_en; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_MPORT_8_data; // @[DataMemory.scala 21:25]
  wire [7:0] mem0_MPORT_8_addr; // @[DataMemory.scala 21:25]
  wire  mem0_MPORT_8_mask; // @[DataMemory.scala 21:25]
  wire  mem0_MPORT_8_en; // @[DataMemory.scala 21:25]
  reg  mem0_dataOut_MPORT_en_pipe_0;
  reg [7:0] mem0_dataOut_MPORT_addr_pipe_0;
  reg  mem0_dataOut_MPORT_1_en_pipe_0;
  reg [7:0] mem0_dataOut_MPORT_1_addr_pipe_0;
  reg  mem0_dataOut_MPORT_8_en_pipe_0;
  reg [7:0] mem0_dataOut_MPORT_8_addr_pipe_0;
  reg  mem0_dataOut_MPORT_14_en_pipe_0;
  reg [7:0] mem0_dataOut_MPORT_14_addr_pipe_0;
  reg  mem0_dataOut_MPORT_19_en_pipe_0;
  reg [7:0] mem0_dataOut_MPORT_19_addr_pipe_0;
  reg  mem0_dataOut_MPORT_25_en_pipe_0;
  reg [7:0] mem0_dataOut_MPORT_25_addr_pipe_0;
  reg [7:0] mem1 [0:255]; // @[DataMemory.scala 22:25]
  wire  mem1_dataOut_MPORT_2_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_2_addr; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_2_data; // @[DataMemory.scala 22:25]
  wire  mem1_dataOut_MPORT_3_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_3_addr; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_3_data; // @[DataMemory.scala 22:25]
  wire  mem1_dataOut_MPORT_9_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_9_addr; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_9_data; // @[DataMemory.scala 22:25]
  wire  mem1_dataOut_MPORT_12_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_12_addr; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_12_data; // @[DataMemory.scala 22:25]
  wire  mem1_dataOut_MPORT_13_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_13_addr; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_13_data; // @[DataMemory.scala 22:25]
  wire  mem1_dataOut_MPORT_18_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_18_addr; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_18_data; // @[DataMemory.scala 22:25]
  wire  mem1_dataOut_MPORT_24_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_24_addr; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_dataOut_MPORT_24_data; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_MPORT_1_data; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_MPORT_1_addr; // @[DataMemory.scala 22:25]
  wire  mem1_MPORT_1_mask; // @[DataMemory.scala 22:25]
  wire  mem1_MPORT_1_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_MPORT_5_data; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_MPORT_5_addr; // @[DataMemory.scala 22:25]
  wire  mem1_MPORT_5_mask; // @[DataMemory.scala 22:25]
  wire  mem1_MPORT_5_en; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_MPORT_9_data; // @[DataMemory.scala 22:25]
  wire [7:0] mem1_MPORT_9_addr; // @[DataMemory.scala 22:25]
  wire  mem1_MPORT_9_mask; // @[DataMemory.scala 22:25]
  wire  mem1_MPORT_9_en; // @[DataMemory.scala 22:25]
  reg  mem1_dataOut_MPORT_2_en_pipe_0;
  reg [7:0] mem1_dataOut_MPORT_2_addr_pipe_0;
  reg  mem1_dataOut_MPORT_3_en_pipe_0;
  reg [7:0] mem1_dataOut_MPORT_3_addr_pipe_0;
  reg  mem1_dataOut_MPORT_9_en_pipe_0;
  reg [7:0] mem1_dataOut_MPORT_9_addr_pipe_0;
  reg  mem1_dataOut_MPORT_12_en_pipe_0;
  reg [7:0] mem1_dataOut_MPORT_12_addr_pipe_0;
  reg  mem1_dataOut_MPORT_13_en_pipe_0;
  reg [7:0] mem1_dataOut_MPORT_13_addr_pipe_0;
  reg  mem1_dataOut_MPORT_18_en_pipe_0;
  reg [7:0] mem1_dataOut_MPORT_18_addr_pipe_0;
  reg  mem1_dataOut_MPORT_24_en_pipe_0;
  reg [7:0] mem1_dataOut_MPORT_24_addr_pipe_0;
  reg [7:0] mem2 [0:255]; // @[DataMemory.scala 23:25]
  wire  mem2_dataOut_MPORT_4_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_4_addr; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_4_data; // @[DataMemory.scala 23:25]
  wire  mem2_dataOut_MPORT_5_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_5_addr; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_5_data; // @[DataMemory.scala 23:25]
  wire  mem2_dataOut_MPORT_10_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_10_addr; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_10_data; // @[DataMemory.scala 23:25]
  wire  mem2_dataOut_MPORT_17_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_17_addr; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_17_data; // @[DataMemory.scala 23:25]
  wire  mem2_dataOut_MPORT_21_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_21_addr; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_21_data; // @[DataMemory.scala 23:25]
  wire  mem2_dataOut_MPORT_23_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_23_addr; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_dataOut_MPORT_23_data; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_MPORT_2_data; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_MPORT_2_addr; // @[DataMemory.scala 23:25]
  wire  mem2_MPORT_2_mask; // @[DataMemory.scala 23:25]
  wire  mem2_MPORT_2_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_MPORT_6_data; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_MPORT_6_addr; // @[DataMemory.scala 23:25]
  wire  mem2_MPORT_6_mask; // @[DataMemory.scala 23:25]
  wire  mem2_MPORT_6_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_MPORT_10_data; // @[DataMemory.scala 23:25]
  wire [7:0] mem2_MPORT_10_addr; // @[DataMemory.scala 23:25]
  wire  mem2_MPORT_10_mask; // @[DataMemory.scala 23:25]
  wire  mem2_MPORT_10_en; // @[DataMemory.scala 23:25]
  reg  mem2_dataOut_MPORT_4_en_pipe_0;
  reg [7:0] mem2_dataOut_MPORT_4_addr_pipe_0;
  reg  mem2_dataOut_MPORT_5_en_pipe_0;
  reg [7:0] mem2_dataOut_MPORT_5_addr_pipe_0;
  reg  mem2_dataOut_MPORT_10_en_pipe_0;
  reg [7:0] mem2_dataOut_MPORT_10_addr_pipe_0;
  reg  mem2_dataOut_MPORT_17_en_pipe_0;
  reg [7:0] mem2_dataOut_MPORT_17_addr_pipe_0;
  reg  mem2_dataOut_MPORT_21_en_pipe_0;
  reg [7:0] mem2_dataOut_MPORT_21_addr_pipe_0;
  reg  mem2_dataOut_MPORT_23_en_pipe_0;
  reg [7:0] mem2_dataOut_MPORT_23_addr_pipe_0;
  reg [7:0] mem3 [0:255]; // @[DataMemory.scala 24:25]
  wire  mem3_dataOut_MPORT_6_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_6_addr; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_6_data; // @[DataMemory.scala 24:25]
  wire  mem3_dataOut_MPORT_7_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_7_addr; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_7_data; // @[DataMemory.scala 24:25]
  wire  mem3_dataOut_MPORT_11_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_11_addr; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_11_data; // @[DataMemory.scala 24:25]
  wire  mem3_dataOut_MPORT_15_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_15_addr; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_15_data; // @[DataMemory.scala 24:25]
  wire  mem3_dataOut_MPORT_16_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_16_addr; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_16_data; // @[DataMemory.scala 24:25]
  wire  mem3_dataOut_MPORT_20_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_20_addr; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_20_data; // @[DataMemory.scala 24:25]
  wire  mem3_dataOut_MPORT_22_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_22_addr; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_dataOut_MPORT_22_data; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_MPORT_3_data; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_MPORT_3_addr; // @[DataMemory.scala 24:25]
  wire  mem3_MPORT_3_mask; // @[DataMemory.scala 24:25]
  wire  mem3_MPORT_3_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_MPORT_7_data; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_MPORT_7_addr; // @[DataMemory.scala 24:25]
  wire  mem3_MPORT_7_mask; // @[DataMemory.scala 24:25]
  wire  mem3_MPORT_7_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_MPORT_11_data; // @[DataMemory.scala 24:25]
  wire [7:0] mem3_MPORT_11_addr; // @[DataMemory.scala 24:25]
  wire  mem3_MPORT_11_mask; // @[DataMemory.scala 24:25]
  wire  mem3_MPORT_11_en; // @[DataMemory.scala 24:25]
  reg  mem3_dataOut_MPORT_6_en_pipe_0;
  reg [7:0] mem3_dataOut_MPORT_6_addr_pipe_0;
  reg  mem3_dataOut_MPORT_7_en_pipe_0;
  reg [7:0] mem3_dataOut_MPORT_7_addr_pipe_0;
  reg  mem3_dataOut_MPORT_11_en_pipe_0;
  reg [7:0] mem3_dataOut_MPORT_11_addr_pipe_0;
  reg  mem3_dataOut_MPORT_15_en_pipe_0;
  reg [7:0] mem3_dataOut_MPORT_15_addr_pipe_0;
  reg  mem3_dataOut_MPORT_16_en_pipe_0;
  reg [7:0] mem3_dataOut_MPORT_16_addr_pipe_0;
  reg  mem3_dataOut_MPORT_20_en_pipe_0;
  reg [7:0] mem3_dataOut_MPORT_20_addr_pipe_0;
  reg  mem3_dataOut_MPORT_22_en_pipe_0;
  reg [7:0] mem3_dataOut_MPORT_22_addr_pipe_0;
  wire [1:0] specAddr = io_addr[1:0]; // @[DataMemory.scala 17:25]
  wire  _T = 8'h10 == io_alu_operation_select_EXtoMEM; // @[DataMemory.scala 26:42]
  wire  _T_1 = 2'h0 == specAddr; // @[DataMemory.scala 29:23]
  wire [23:0] _dataOut_T_4 = mem0_dataOut_MPORT_data[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_7 = {_dataOut_T_4,mem0_dataOut_MPORT_1_data}; // @[Cat.scala 33:92]
  wire  _T_2 = 2'h1 == specAddr; // @[DataMemory.scala 29:23]
  wire [23:0] _dataOut_T_12 = mem1_dataOut_MPORT_2_data[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_15 = {_dataOut_T_12,mem1_dataOut_MPORT_3_data}; // @[Cat.scala 33:92]
  wire  _T_3 = 2'h2 == specAddr; // @[DataMemory.scala 29:23]
  wire [23:0] _dataOut_T_20 = mem2_dataOut_MPORT_4_data[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_23 = {_dataOut_T_20,mem2_dataOut_MPORT_5_data}; // @[Cat.scala 33:92]
  wire  _T_4 = 2'h3 == specAddr; // @[DataMemory.scala 29:23]
  wire [23:0] _dataOut_T_28 = mem3_dataOut_MPORT_6_data[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_31 = {_dataOut_T_28,mem3_dataOut_MPORT_7_data}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_15 = 2'h3 == specAddr ? _dataOut_T_31 : 32'h0; // @[DataMemory.scala 29:23 41:19 18:28]
  wire [31:0] _GEN_20 = 2'h2 == specAddr ? _dataOut_T_23 : _GEN_15; // @[DataMemory.scala 29:23 38:19]
  wire  _GEN_21 = 2'h2 == specAddr ? 1'h0 : 2'h3 == specAddr; // @[DataMemory.scala 29:23 24:25]
  wire [31:0] _GEN_29 = 2'h1 == specAddr ? _dataOut_T_15 : _GEN_20; // @[DataMemory.scala 29:23 35:19]
  wire  _GEN_30 = 2'h1 == specAddr ? 1'h0 : 2'h2 == specAddr; // @[DataMemory.scala 29:23 23:25]
  wire  _GEN_34 = 2'h1 == specAddr ? 1'h0 : _GEN_21; // @[DataMemory.scala 29:23 24:25]
  wire [31:0] _GEN_42 = 2'h0 == specAddr ? _dataOut_T_7 : _GEN_29; // @[DataMemory.scala 29:23 32:19]
  wire  _GEN_43 = 2'h0 == specAddr ? 1'h0 : 2'h1 == specAddr; // @[DataMemory.scala 29:23 22:25]
  wire  _GEN_47 = 2'h0 == specAddr ? 1'h0 : _GEN_30; // @[DataMemory.scala 29:23 23:25]
  wire  _GEN_51 = 2'h0 == specAddr ? 1'h0 : _GEN_34; // @[DataMemory.scala 29:23 24:25]
  wire [31:0] _dataOut_T_35 = {24'h0,mem0_dataOut_MPORT_8_data}; // @[Cat.scala 33:92]
  wire [31:0] _dataOut_T_39 = {24'h0,mem1_dataOut_MPORT_9_data}; // @[Cat.scala 33:92]
  wire [31:0] _dataOut_T_43 = {24'h0,mem2_dataOut_MPORT_10_data}; // @[Cat.scala 33:92]
  wire [31:0] _dataOut_T_47 = {24'h0,mem3_dataOut_MPORT_11_data}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_62 = _T_4 ? _dataOut_T_47 : 32'h0; // @[DataMemory.scala 46:23 57:19 18:28]
  wire [31:0] _GEN_66 = _T_3 ? _dataOut_T_43 : _GEN_62; // @[DataMemory.scala 46:23 54:19]
  wire [31:0] _GEN_73 = _T_2 ? _dataOut_T_39 : _GEN_66; // @[DataMemory.scala 46:23 51:19]
  wire [31:0] _GEN_83 = _T_1 ? _dataOut_T_35 : _GEN_73; // @[DataMemory.scala 46:23 48:19]
  wire [15:0] _dataOut_T_52 = mem1_dataOut_MPORT_12_data[7] ? 16'hffff : 16'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_57 = {_dataOut_T_52,mem1_dataOut_MPORT_13_data,mem0_dataOut_MPORT_14_data}; // @[Cat.scala 33:92]
  wire [15:0] _dataOut_T_62 = mem3_dataOut_MPORT_15_data[7] ? 16'hffff : 16'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_67 = {_dataOut_T_62,mem3_dataOut_MPORT_16_data,mem2_dataOut_MPORT_17_data}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_104 = _T_3 ? _dataOut_T_67 : 32'h0; // @[DataMemory.scala 62:23 67:19 18:28]
  wire [31:0] _GEN_110 = _T_1 ? _dataOut_T_57 : _GEN_104; // @[DataMemory.scala 62:23 64:19]
  wire  _GEN_111 = _T_1 ? 1'h0 : _T_3; // @[DataMemory.scala 62:23 24:25]
  wire [31:0] _dataOut_T_73 = {16'h0,mem1_dataOut_MPORT_18_data,mem0_dataOut_MPORT_19_data}; // @[Cat.scala 33:92]
  wire [31:0] _dataOut_T_79 = {16'h0,mem3_dataOut_MPORT_20_data,mem2_dataOut_MPORT_21_data}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_124 = _T_3 ? _dataOut_T_79 : 32'h0; // @[DataMemory.scala 72:23 77:19 18:28]
  wire [31:0] _GEN_129 = _T_1 ? _dataOut_T_73 : _GEN_124; // @[DataMemory.scala 72:23 74:19]
  wire [31:0] _dataOut_T_88 = {mem3_dataOut_MPORT_22_data,mem2_dataOut_MPORT_23_data,mem1_dataOut_MPORT_24_data,
    mem0_dataOut_MPORT_25_data}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_144 = _T_1 ? _dataOut_T_88 : 32'h0; // @[DataMemory.scala 82:23 84:19 18:28]
  wire  _GEN_160 = _T_3 & io_enableWrite; // @[DataMemory.scala 91:23 23:25]
  wire  _GEN_165 = _T_3 ? 1'h0 : _T_4 & io_enableWrite; // @[DataMemory.scala 91:23 24:25]
  wire  _GEN_175 = _T_2 ? 1'h0 : _T_3 & io_enableWrite; // @[DataMemory.scala 91:23 23:25]
  wire  _GEN_180 = _T_2 ? 1'h0 : _GEN_165; // @[DataMemory.scala 91:23 24:25]
  wire  _GEN_185 = _T_1 & io_enableWrite; // @[DataMemory.scala 91:23 21:25]
  wire  _GEN_190 = _T_1 ? 1'h0 : _T_2 & io_enableWrite; // @[DataMemory.scala 91:23 22:25]
  wire  _GEN_195 = _T_1 ? 1'h0 : _GEN_175; // @[DataMemory.scala 91:23 23:25]
  wire  _GEN_200 = _T_1 ? 1'h0 : _GEN_180; // @[DataMemory.scala 91:23 24:25]
  wire  _GEN_221 = _T_1 ? 1'h0 : _GEN_160; // @[DataMemory.scala 115:23 23:25]
  wire  _GEN_259 = 8'h16 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h17 == io_alu_operation_select_EXtoMEM & _GEN_185
    ; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_287 = 8'h15 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h16 == io_alu_operation_select_EXtoMEM & _GEN_185
    ; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_293 = 8'h15 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h16 == io_alu_operation_select_EXtoMEM & _GEN_221
    ; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_299 = 8'h15 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_259; // @[DataMemory.scala 21:25 26:42]
  wire [31:0] _GEN_311 = 8'h12 == io_alu_operation_select_EXtoMEM ? _GEN_144 : 32'h0; // @[DataMemory.scala 18:28 26:42]
  wire  _GEN_314 = 8'h12 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h15 == io_alu_operation_select_EXtoMEM & _GEN_185
    ; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_319 = 8'h12 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h15 == io_alu_operation_select_EXtoMEM & _GEN_190
    ; // @[DataMemory.scala 22:25 26:42]
  wire  _GEN_324 = 8'h12 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h15 == io_alu_operation_select_EXtoMEM & _GEN_195
    ; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_329 = 8'h12 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h15 == io_alu_operation_select_EXtoMEM & _GEN_200
    ; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_334 = 8'h12 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_287; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_340 = 8'h12 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_293; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_346 = 8'h12 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_299; // @[DataMemory.scala 21:25 26:42]
  wire [31:0] _GEN_356 = 8'h14 == io_alu_operation_select_EXtoMEM ? _GEN_129 : _GEN_311; // @[DataMemory.scala 26:42]
  wire  _GEN_361 = 8'h14 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h12 == io_alu_operation_select_EXtoMEM & _T_1; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_369 = 8'h14 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_314; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_374 = 8'h14 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_319; // @[DataMemory.scala 22:25 26:42]
  wire  _GEN_379 = 8'h14 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_324; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_384 = 8'h14 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_329; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_389 = 8'h14 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_334; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_395 = 8'h14 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_340; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_401 = 8'h14 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_346; // @[DataMemory.scala 21:25 26:42]
  wire [31:0] _GEN_412 = 8'h11 == io_alu_operation_select_EXtoMEM ? _GEN_110 : _GEN_356; // @[DataMemory.scala 26:42]
  wire  _GEN_418 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h14 == io_alu_operation_select_EXtoMEM & _T_1; // @[DataMemory.scala 22:25 26:42]
  wire  _GEN_422 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h14 == io_alu_operation_select_EXtoMEM & _GEN_111
    ; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_426 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_361; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_434 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_369; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_439 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_374; // @[DataMemory.scala 22:25 26:42]
  wire  _GEN_444 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_379; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_449 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_384; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_454 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_389; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_460 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_395; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_466 = 8'h11 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_401; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_472 = 8'h13 == io_alu_operation_select_EXtoMEM & _T_1; // @[DataMemory.scala 21:25 26:42]
  wire [31:0] _GEN_475 = 8'h13 == io_alu_operation_select_EXtoMEM ? _GEN_83 : _GEN_412; // @[DataMemory.scala 26:42]
  wire  _GEN_476 = 8'h13 == io_alu_operation_select_EXtoMEM & _GEN_43; // @[DataMemory.scala 22:25 26:42]
  wire  _GEN_479 = 8'h13 == io_alu_operation_select_EXtoMEM & _GEN_47; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_482 = 8'h13 == io_alu_operation_select_EXtoMEM & _GEN_51; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_485 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h11 == io_alu_operation_select_EXtoMEM & _T_1; // @[DataMemory.scala 22:25 26:42]
  wire  _GEN_490 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h11 == io_alu_operation_select_EXtoMEM & _GEN_111
    ; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_495 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_418; // @[DataMemory.scala 22:25 26:42]
  wire  _GEN_499 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_422; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_503 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_426; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_511 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_434; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_516 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_439; // @[DataMemory.scala 22:25 26:42]
  wire  _GEN_521 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_444; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_526 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_449; // @[DataMemory.scala 24:25 26:42]
  wire  _GEN_531 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_454; // @[DataMemory.scala 21:25 26:42]
  wire  _GEN_537 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_460; // @[DataMemory.scala 23:25 26:42]
  wire  _GEN_543 = 8'h13 == io_alu_operation_select_EXtoMEM ? 1'h0 : _GEN_466; // @[DataMemory.scala 21:25 26:42]
  assign mem0_dataOut_MPORT_en = mem0_dataOut_MPORT_en_pipe_0;
  assign mem0_dataOut_MPORT_addr = mem0_dataOut_MPORT_addr_pipe_0;
  assign mem0_dataOut_MPORT_data = mem0[mem0_dataOut_MPORT_addr]; // @[DataMemory.scala 21:25]
  assign mem0_dataOut_MPORT_1_en = mem0_dataOut_MPORT_1_en_pipe_0;
  assign mem0_dataOut_MPORT_1_addr = mem0_dataOut_MPORT_1_addr_pipe_0;
  assign mem0_dataOut_MPORT_1_data = mem0[mem0_dataOut_MPORT_1_addr]; // @[DataMemory.scala 21:25]
  assign mem0_dataOut_MPORT_8_en = mem0_dataOut_MPORT_8_en_pipe_0;
  assign mem0_dataOut_MPORT_8_addr = mem0_dataOut_MPORT_8_addr_pipe_0;
  assign mem0_dataOut_MPORT_8_data = mem0[mem0_dataOut_MPORT_8_addr]; // @[DataMemory.scala 21:25]
  assign mem0_dataOut_MPORT_14_en = mem0_dataOut_MPORT_14_en_pipe_0;
  assign mem0_dataOut_MPORT_14_addr = mem0_dataOut_MPORT_14_addr_pipe_0;
  assign mem0_dataOut_MPORT_14_data = mem0[mem0_dataOut_MPORT_14_addr]; // @[DataMemory.scala 21:25]
  assign mem0_dataOut_MPORT_19_en = mem0_dataOut_MPORT_19_en_pipe_0;
  assign mem0_dataOut_MPORT_19_addr = mem0_dataOut_MPORT_19_addr_pipe_0;
  assign mem0_dataOut_MPORT_19_data = mem0[mem0_dataOut_MPORT_19_addr]; // @[DataMemory.scala 21:25]
  assign mem0_dataOut_MPORT_25_en = mem0_dataOut_MPORT_25_en_pipe_0;
  assign mem0_dataOut_MPORT_25_addr = mem0_dataOut_MPORT_25_addr_pipe_0;
  assign mem0_dataOut_MPORT_25_data = mem0[mem0_dataOut_MPORT_25_addr]; // @[DataMemory.scala 21:25]
  assign mem0_MPORT_data = io_dataIn[7:0];
  assign mem0_MPORT_addr = io_addr[9:2];
  assign mem0_MPORT_mask = 1'h1;
  assign mem0_MPORT_en = _T ? 1'h0 : _GEN_511;
  assign mem0_MPORT_4_data = io_dataIn[7:0];
  assign mem0_MPORT_4_addr = io_addr[9:2];
  assign mem0_MPORT_4_mask = 1'h1;
  assign mem0_MPORT_4_en = _T ? 1'h0 : _GEN_531;
  assign mem0_MPORT_8_data = io_dataIn[7:0];
  assign mem0_MPORT_8_addr = io_addr[9:2];
  assign mem0_MPORT_8_mask = 1'h1;
  assign mem0_MPORT_8_en = _T ? 1'h0 : _GEN_543;
  assign mem1_dataOut_MPORT_2_en = mem1_dataOut_MPORT_2_en_pipe_0;
  assign mem1_dataOut_MPORT_2_addr = mem1_dataOut_MPORT_2_addr_pipe_0;
  assign mem1_dataOut_MPORT_2_data = mem1[mem1_dataOut_MPORT_2_addr]; // @[DataMemory.scala 22:25]
  assign mem1_dataOut_MPORT_3_en = mem1_dataOut_MPORT_3_en_pipe_0;
  assign mem1_dataOut_MPORT_3_addr = mem1_dataOut_MPORT_3_addr_pipe_0;
  assign mem1_dataOut_MPORT_3_data = mem1[mem1_dataOut_MPORT_3_addr]; // @[DataMemory.scala 22:25]
  assign mem1_dataOut_MPORT_9_en = mem1_dataOut_MPORT_9_en_pipe_0;
  assign mem1_dataOut_MPORT_9_addr = mem1_dataOut_MPORT_9_addr_pipe_0;
  assign mem1_dataOut_MPORT_9_data = mem1[mem1_dataOut_MPORT_9_addr]; // @[DataMemory.scala 22:25]
  assign mem1_dataOut_MPORT_12_en = mem1_dataOut_MPORT_12_en_pipe_0;
  assign mem1_dataOut_MPORT_12_addr = mem1_dataOut_MPORT_12_addr_pipe_0;
  assign mem1_dataOut_MPORT_12_data = mem1[mem1_dataOut_MPORT_12_addr]; // @[DataMemory.scala 22:25]
  assign mem1_dataOut_MPORT_13_en = mem1_dataOut_MPORT_13_en_pipe_0;
  assign mem1_dataOut_MPORT_13_addr = mem1_dataOut_MPORT_13_addr_pipe_0;
  assign mem1_dataOut_MPORT_13_data = mem1[mem1_dataOut_MPORT_13_addr]; // @[DataMemory.scala 22:25]
  assign mem1_dataOut_MPORT_18_en = mem1_dataOut_MPORT_18_en_pipe_0;
  assign mem1_dataOut_MPORT_18_addr = mem1_dataOut_MPORT_18_addr_pipe_0;
  assign mem1_dataOut_MPORT_18_data = mem1[mem1_dataOut_MPORT_18_addr]; // @[DataMemory.scala 22:25]
  assign mem1_dataOut_MPORT_24_en = mem1_dataOut_MPORT_24_en_pipe_0;
  assign mem1_dataOut_MPORT_24_addr = mem1_dataOut_MPORT_24_addr_pipe_0;
  assign mem1_dataOut_MPORT_24_data = mem1[mem1_dataOut_MPORT_24_addr]; // @[DataMemory.scala 22:25]
  assign mem1_MPORT_1_data = io_dataIn[7:0];
  assign mem1_MPORT_1_addr = io_addr[9:2];
  assign mem1_MPORT_1_mask = 1'h1;
  assign mem1_MPORT_1_en = _T ? 1'h0 : _GEN_516;
  assign mem1_MPORT_5_data = io_dataIn[15:8];
  assign mem1_MPORT_5_addr = io_addr[9:2];
  assign mem1_MPORT_5_mask = 1'h1;
  assign mem1_MPORT_5_en = _T ? 1'h0 : _GEN_531;
  assign mem1_MPORT_9_data = io_dataIn[15:8];
  assign mem1_MPORT_9_addr = io_addr[9:2];
  assign mem1_MPORT_9_mask = 1'h1;
  assign mem1_MPORT_9_en = _T ? 1'h0 : _GEN_543;
  assign mem2_dataOut_MPORT_4_en = mem2_dataOut_MPORT_4_en_pipe_0;
  assign mem2_dataOut_MPORT_4_addr = mem2_dataOut_MPORT_4_addr_pipe_0;
  assign mem2_dataOut_MPORT_4_data = mem2[mem2_dataOut_MPORT_4_addr]; // @[DataMemory.scala 23:25]
  assign mem2_dataOut_MPORT_5_en = mem2_dataOut_MPORT_5_en_pipe_0;
  assign mem2_dataOut_MPORT_5_addr = mem2_dataOut_MPORT_5_addr_pipe_0;
  assign mem2_dataOut_MPORT_5_data = mem2[mem2_dataOut_MPORT_5_addr]; // @[DataMemory.scala 23:25]
  assign mem2_dataOut_MPORT_10_en = mem2_dataOut_MPORT_10_en_pipe_0;
  assign mem2_dataOut_MPORT_10_addr = mem2_dataOut_MPORT_10_addr_pipe_0;
  assign mem2_dataOut_MPORT_10_data = mem2[mem2_dataOut_MPORT_10_addr]; // @[DataMemory.scala 23:25]
  assign mem2_dataOut_MPORT_17_en = mem2_dataOut_MPORT_17_en_pipe_0;
  assign mem2_dataOut_MPORT_17_addr = mem2_dataOut_MPORT_17_addr_pipe_0;
  assign mem2_dataOut_MPORT_17_data = mem2[mem2_dataOut_MPORT_17_addr]; // @[DataMemory.scala 23:25]
  assign mem2_dataOut_MPORT_21_en = mem2_dataOut_MPORT_21_en_pipe_0;
  assign mem2_dataOut_MPORT_21_addr = mem2_dataOut_MPORT_21_addr_pipe_0;
  assign mem2_dataOut_MPORT_21_data = mem2[mem2_dataOut_MPORT_21_addr]; // @[DataMemory.scala 23:25]
  assign mem2_dataOut_MPORT_23_en = mem2_dataOut_MPORT_23_en_pipe_0;
  assign mem2_dataOut_MPORT_23_addr = mem2_dataOut_MPORT_23_addr_pipe_0;
  assign mem2_dataOut_MPORT_23_data = mem2[mem2_dataOut_MPORT_23_addr]; // @[DataMemory.scala 23:25]
  assign mem2_MPORT_2_data = io_dataIn[7:0];
  assign mem2_MPORT_2_addr = io_addr[9:2];
  assign mem2_MPORT_2_mask = 1'h1;
  assign mem2_MPORT_2_en = _T ? 1'h0 : _GEN_521;
  assign mem2_MPORT_6_data = io_dataIn[7:0];
  assign mem2_MPORT_6_addr = io_addr[9:2];
  assign mem2_MPORT_6_mask = 1'h1;
  assign mem2_MPORT_6_en = _T ? 1'h0 : _GEN_537;
  assign mem2_MPORT_10_data = io_dataIn[23:16];
  assign mem2_MPORT_10_addr = io_addr[9:2];
  assign mem2_MPORT_10_mask = 1'h1;
  assign mem2_MPORT_10_en = _T ? 1'h0 : _GEN_543;
  assign mem3_dataOut_MPORT_6_en = mem3_dataOut_MPORT_6_en_pipe_0;
  assign mem3_dataOut_MPORT_6_addr = mem3_dataOut_MPORT_6_addr_pipe_0;
  assign mem3_dataOut_MPORT_6_data = mem3[mem3_dataOut_MPORT_6_addr]; // @[DataMemory.scala 24:25]
  assign mem3_dataOut_MPORT_7_en = mem3_dataOut_MPORT_7_en_pipe_0;
  assign mem3_dataOut_MPORT_7_addr = mem3_dataOut_MPORT_7_addr_pipe_0;
  assign mem3_dataOut_MPORT_7_data = mem3[mem3_dataOut_MPORT_7_addr]; // @[DataMemory.scala 24:25]
  assign mem3_dataOut_MPORT_11_en = mem3_dataOut_MPORT_11_en_pipe_0;
  assign mem3_dataOut_MPORT_11_addr = mem3_dataOut_MPORT_11_addr_pipe_0;
  assign mem3_dataOut_MPORT_11_data = mem3[mem3_dataOut_MPORT_11_addr]; // @[DataMemory.scala 24:25]
  assign mem3_dataOut_MPORT_15_en = mem3_dataOut_MPORT_15_en_pipe_0;
  assign mem3_dataOut_MPORT_15_addr = mem3_dataOut_MPORT_15_addr_pipe_0;
  assign mem3_dataOut_MPORT_15_data = mem3[mem3_dataOut_MPORT_15_addr]; // @[DataMemory.scala 24:25]
  assign mem3_dataOut_MPORT_16_en = mem3_dataOut_MPORT_16_en_pipe_0;
  assign mem3_dataOut_MPORT_16_addr = mem3_dataOut_MPORT_16_addr_pipe_0;
  assign mem3_dataOut_MPORT_16_data = mem3[mem3_dataOut_MPORT_16_addr]; // @[DataMemory.scala 24:25]
  assign mem3_dataOut_MPORT_20_en = mem3_dataOut_MPORT_20_en_pipe_0;
  assign mem3_dataOut_MPORT_20_addr = mem3_dataOut_MPORT_20_addr_pipe_0;
  assign mem3_dataOut_MPORT_20_data = mem3[mem3_dataOut_MPORT_20_addr]; // @[DataMemory.scala 24:25]
  assign mem3_dataOut_MPORT_22_en = mem3_dataOut_MPORT_22_en_pipe_0;
  assign mem3_dataOut_MPORT_22_addr = mem3_dataOut_MPORT_22_addr_pipe_0;
  assign mem3_dataOut_MPORT_22_data = mem3[mem3_dataOut_MPORT_22_addr]; // @[DataMemory.scala 24:25]
  assign mem3_MPORT_3_data = io_dataIn[7:0];
  assign mem3_MPORT_3_addr = io_addr[9:2];
  assign mem3_MPORT_3_mask = 1'h1;
  assign mem3_MPORT_3_en = _T ? 1'h0 : _GEN_526;
  assign mem3_MPORT_7_data = io_dataIn[15:8];
  assign mem3_MPORT_7_addr = io_addr[9:2];
  assign mem3_MPORT_7_mask = 1'h1;
  assign mem3_MPORT_7_en = _T ? 1'h0 : _GEN_537;
  assign mem3_MPORT_11_data = io_dataIn[31:24];
  assign mem3_MPORT_11_addr = io_addr[9:2];
  assign mem3_MPORT_11_mask = 1'h1;
  assign mem3_MPORT_11_en = _T ? 1'h0 : _GEN_543;
  assign io_dataOut = 8'h10 == io_alu_operation_select_EXtoMEM ? _GEN_42 : _GEN_475; // @[DataMemory.scala 26:42]
  always @(posedge clock) begin
    if (mem0_MPORT_en & mem0_MPORT_mask) begin
      mem0[mem0_MPORT_addr] <= mem0_MPORT_data; // @[DataMemory.scala 21:25]
    end
    if (mem0_MPORT_4_en & mem0_MPORT_4_mask) begin
      mem0[mem0_MPORT_4_addr] <= mem0_MPORT_4_data; // @[DataMemory.scala 21:25]
    end
    if (mem0_MPORT_8_en & mem0_MPORT_8_mask) begin
      mem0[mem0_MPORT_8_addr] <= mem0_MPORT_8_data; // @[DataMemory.scala 21:25]
    end
    mem0_dataOut_MPORT_en_pipe_0 <= _T & _T_1;
    if (_T & _T_1) begin
      mem0_dataOut_MPORT_addr_pipe_0 <= io_addr[9:2];
    end
    mem0_dataOut_MPORT_1_en_pipe_0 <= _T & _T_1;
    if (_T & _T_1) begin
      mem0_dataOut_MPORT_1_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem0_dataOut_MPORT_8_en_pipe_0 <= 1'h0;
    end else begin
      mem0_dataOut_MPORT_8_en_pipe_0 <= _GEN_472;
    end
    if (_T ? 1'h0 : _GEN_472) begin
      mem0_dataOut_MPORT_8_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem0_dataOut_MPORT_14_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem0_dataOut_MPORT_14_en_pipe_0 <= 1'h0; // @[DataMemory.scala 22:25]
    end else begin
      mem0_dataOut_MPORT_14_en_pipe_0 <= 8'h11 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_485) begin
      mem0_dataOut_MPORT_14_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem0_dataOut_MPORT_19_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem0_dataOut_MPORT_19_en_pipe_0 <= 1'h0; // @[DataMemory.scala 22:25]
    end else if (8'h11 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem0_dataOut_MPORT_19_en_pipe_0 <= 1'h0; // @[DataMemory.scala 22:25]
    end else begin
      mem0_dataOut_MPORT_19_en_pipe_0 <= 8'h14 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_495) begin
      mem0_dataOut_MPORT_19_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem0_dataOut_MPORT_25_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem0_dataOut_MPORT_25_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h11 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem0_dataOut_MPORT_25_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h14 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem0_dataOut_MPORT_25_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem0_dataOut_MPORT_25_en_pipe_0 <= 8'h12 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_503) begin
      mem0_dataOut_MPORT_25_addr_pipe_0 <= io_addr[9:2];
    end
    if (mem1_MPORT_1_en & mem1_MPORT_1_mask) begin
      mem1[mem1_MPORT_1_addr] <= mem1_MPORT_1_data; // @[DataMemory.scala 22:25]
    end
    if (mem1_MPORT_5_en & mem1_MPORT_5_mask) begin
      mem1[mem1_MPORT_5_addr] <= mem1_MPORT_5_data; // @[DataMemory.scala 22:25]
    end
    if (mem1_MPORT_9_en & mem1_MPORT_9_mask) begin
      mem1[mem1_MPORT_9_addr] <= mem1_MPORT_9_data; // @[DataMemory.scala 22:25]
    end
    mem1_dataOut_MPORT_2_en_pipe_0 <= _T & _GEN_43;
    if (_T & _GEN_43) begin
      mem1_dataOut_MPORT_2_addr_pipe_0 <= io_addr[9:2];
    end
    mem1_dataOut_MPORT_3_en_pipe_0 <= _T & _GEN_43;
    if (_T & _GEN_43) begin
      mem1_dataOut_MPORT_3_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem1_dataOut_MPORT_9_en_pipe_0 <= 1'h0;
    end else begin
      mem1_dataOut_MPORT_9_en_pipe_0 <= _GEN_476;
    end
    if (_T ? 1'h0 : _GEN_476) begin
      mem1_dataOut_MPORT_9_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem1_dataOut_MPORT_12_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem1_dataOut_MPORT_12_en_pipe_0 <= 1'h0; // @[DataMemory.scala 22:25]
    end else begin
      mem1_dataOut_MPORT_12_en_pipe_0 <= 8'h11 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_485) begin
      mem1_dataOut_MPORT_12_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem1_dataOut_MPORT_13_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem1_dataOut_MPORT_13_en_pipe_0 <= 1'h0; // @[DataMemory.scala 22:25]
    end else begin
      mem1_dataOut_MPORT_13_en_pipe_0 <= 8'h11 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_485) begin
      mem1_dataOut_MPORT_13_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem1_dataOut_MPORT_18_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem1_dataOut_MPORT_18_en_pipe_0 <= 1'h0; // @[DataMemory.scala 22:25]
    end else if (8'h11 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem1_dataOut_MPORT_18_en_pipe_0 <= 1'h0; // @[DataMemory.scala 22:25]
    end else begin
      mem1_dataOut_MPORT_18_en_pipe_0 <= 8'h14 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_495) begin
      mem1_dataOut_MPORT_18_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem1_dataOut_MPORT_24_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem1_dataOut_MPORT_24_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h11 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem1_dataOut_MPORT_24_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h14 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem1_dataOut_MPORT_24_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem1_dataOut_MPORT_24_en_pipe_0 <= 8'h12 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_503) begin
      mem1_dataOut_MPORT_24_addr_pipe_0 <= io_addr[9:2];
    end
    if (mem2_MPORT_2_en & mem2_MPORT_2_mask) begin
      mem2[mem2_MPORT_2_addr] <= mem2_MPORT_2_data; // @[DataMemory.scala 23:25]
    end
    if (mem2_MPORT_6_en & mem2_MPORT_6_mask) begin
      mem2[mem2_MPORT_6_addr] <= mem2_MPORT_6_data; // @[DataMemory.scala 23:25]
    end
    if (mem2_MPORT_10_en & mem2_MPORT_10_mask) begin
      mem2[mem2_MPORT_10_addr] <= mem2_MPORT_10_data; // @[DataMemory.scala 23:25]
    end
    mem2_dataOut_MPORT_4_en_pipe_0 <= _T & _GEN_47;
    if (_T & _GEN_47) begin
      mem2_dataOut_MPORT_4_addr_pipe_0 <= io_addr[9:2];
    end
    mem2_dataOut_MPORT_5_en_pipe_0 <= _T & _GEN_47;
    if (_T & _GEN_47) begin
      mem2_dataOut_MPORT_5_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem2_dataOut_MPORT_10_en_pipe_0 <= 1'h0;
    end else begin
      mem2_dataOut_MPORT_10_en_pipe_0 <= _GEN_479;
    end
    if (_T ? 1'h0 : _GEN_479) begin
      mem2_dataOut_MPORT_10_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem2_dataOut_MPORT_17_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem2_dataOut_MPORT_17_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem2_dataOut_MPORT_17_en_pipe_0 <= 8'h11 == io_alu_operation_select_EXtoMEM & _GEN_111;
    end
    if (_T ? 1'h0 : _GEN_490) begin
      mem2_dataOut_MPORT_17_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem2_dataOut_MPORT_21_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem2_dataOut_MPORT_21_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h11 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem2_dataOut_MPORT_21_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem2_dataOut_MPORT_21_en_pipe_0 <= 8'h14 == io_alu_operation_select_EXtoMEM & _GEN_111;
    end
    if (_T ? 1'h0 : _GEN_499) begin
      mem2_dataOut_MPORT_21_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem2_dataOut_MPORT_23_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem2_dataOut_MPORT_23_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h11 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem2_dataOut_MPORT_23_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h14 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem2_dataOut_MPORT_23_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem2_dataOut_MPORT_23_en_pipe_0 <= 8'h12 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_503) begin
      mem2_dataOut_MPORT_23_addr_pipe_0 <= io_addr[9:2];
    end
    if (mem3_MPORT_3_en & mem3_MPORT_3_mask) begin
      mem3[mem3_MPORT_3_addr] <= mem3_MPORT_3_data; // @[DataMemory.scala 24:25]
    end
    if (mem3_MPORT_7_en & mem3_MPORT_7_mask) begin
      mem3[mem3_MPORT_7_addr] <= mem3_MPORT_7_data; // @[DataMemory.scala 24:25]
    end
    if (mem3_MPORT_11_en & mem3_MPORT_11_mask) begin
      mem3[mem3_MPORT_11_addr] <= mem3_MPORT_11_data; // @[DataMemory.scala 24:25]
    end
    mem3_dataOut_MPORT_6_en_pipe_0 <= _T & _GEN_51;
    if (_T & _GEN_51) begin
      mem3_dataOut_MPORT_6_addr_pipe_0 <= io_addr[9:2];
    end
    mem3_dataOut_MPORT_7_en_pipe_0 <= _T & _GEN_51;
    if (_T & _GEN_51) begin
      mem3_dataOut_MPORT_7_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem3_dataOut_MPORT_11_en_pipe_0 <= 1'h0;
    end else begin
      mem3_dataOut_MPORT_11_en_pipe_0 <= _GEN_482;
    end
    if (_T ? 1'h0 : _GEN_482) begin
      mem3_dataOut_MPORT_11_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem3_dataOut_MPORT_15_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem3_dataOut_MPORT_15_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem3_dataOut_MPORT_15_en_pipe_0 <= 8'h11 == io_alu_operation_select_EXtoMEM & _GEN_111;
    end
    if (_T ? 1'h0 : _GEN_490) begin
      mem3_dataOut_MPORT_15_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem3_dataOut_MPORT_16_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem3_dataOut_MPORT_16_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem3_dataOut_MPORT_16_en_pipe_0 <= 8'h11 == io_alu_operation_select_EXtoMEM & _GEN_111;
    end
    if (_T ? 1'h0 : _GEN_490) begin
      mem3_dataOut_MPORT_16_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem3_dataOut_MPORT_20_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem3_dataOut_MPORT_20_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h11 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem3_dataOut_MPORT_20_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem3_dataOut_MPORT_20_en_pipe_0 <= 8'h14 == io_alu_operation_select_EXtoMEM & _GEN_111;
    end
    if (_T ? 1'h0 : _GEN_499) begin
      mem3_dataOut_MPORT_20_addr_pipe_0 <= io_addr[9:2];
    end
    if (_T) begin
      mem3_dataOut_MPORT_22_en_pipe_0 <= 1'h0;
    end else if (8'h13 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem3_dataOut_MPORT_22_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h11 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem3_dataOut_MPORT_22_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else if (8'h14 == io_alu_operation_select_EXtoMEM) begin // @[DataMemory.scala 26:42]
      mem3_dataOut_MPORT_22_en_pipe_0 <= 1'h0; // @[DataMemory.scala 24:25]
    end else begin
      mem3_dataOut_MPORT_22_en_pipe_0 <= 8'h12 == io_alu_operation_select_EXtoMEM & _T_1;
    end
    if (_T ? 1'h0 : _GEN_503) begin
      mem3_dataOut_MPORT_22_addr_pipe_0 <= io_addr[9:2];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    mem0[initvar] = _RAND_0[7:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    mem1[initvar] = _RAND_13[7:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    mem2[initvar] = _RAND_28[7:0];
  _RAND_41 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    mem3[initvar] = _RAND_41[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem0_dataOut_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem0_dataOut_MPORT_addr_pipe_0 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  mem0_dataOut_MPORT_1_en_pipe_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mem0_dataOut_MPORT_1_addr_pipe_0 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  mem0_dataOut_MPORT_8_en_pipe_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  mem0_dataOut_MPORT_8_addr_pipe_0 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  mem0_dataOut_MPORT_14_en_pipe_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  mem0_dataOut_MPORT_14_addr_pipe_0 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  mem0_dataOut_MPORT_19_en_pipe_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  mem0_dataOut_MPORT_19_addr_pipe_0 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  mem0_dataOut_MPORT_25_en_pipe_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  mem0_dataOut_MPORT_25_addr_pipe_0 = _RAND_12[7:0];
  _RAND_14 = {1{`RANDOM}};
  mem1_dataOut_MPORT_2_en_pipe_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  mem1_dataOut_MPORT_2_addr_pipe_0 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  mem1_dataOut_MPORT_3_en_pipe_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  mem1_dataOut_MPORT_3_addr_pipe_0 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  mem1_dataOut_MPORT_9_en_pipe_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  mem1_dataOut_MPORT_9_addr_pipe_0 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  mem1_dataOut_MPORT_12_en_pipe_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  mem1_dataOut_MPORT_12_addr_pipe_0 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  mem1_dataOut_MPORT_13_en_pipe_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mem1_dataOut_MPORT_13_addr_pipe_0 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  mem1_dataOut_MPORT_18_en_pipe_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem1_dataOut_MPORT_18_addr_pipe_0 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  mem1_dataOut_MPORT_24_en_pipe_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mem1_dataOut_MPORT_24_addr_pipe_0 = _RAND_27[7:0];
  _RAND_29 = {1{`RANDOM}};
  mem2_dataOut_MPORT_4_en_pipe_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  mem2_dataOut_MPORT_4_addr_pipe_0 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  mem2_dataOut_MPORT_5_en_pipe_0 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  mem2_dataOut_MPORT_5_addr_pipe_0 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  mem2_dataOut_MPORT_10_en_pipe_0 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  mem2_dataOut_MPORT_10_addr_pipe_0 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  mem2_dataOut_MPORT_17_en_pipe_0 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  mem2_dataOut_MPORT_17_addr_pipe_0 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  mem2_dataOut_MPORT_21_en_pipe_0 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  mem2_dataOut_MPORT_21_addr_pipe_0 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  mem2_dataOut_MPORT_23_en_pipe_0 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  mem2_dataOut_MPORT_23_addr_pipe_0 = _RAND_40[7:0];
  _RAND_42 = {1{`RANDOM}};
  mem3_dataOut_MPORT_6_en_pipe_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  mem3_dataOut_MPORT_6_addr_pipe_0 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  mem3_dataOut_MPORT_7_en_pipe_0 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  mem3_dataOut_MPORT_7_addr_pipe_0 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  mem3_dataOut_MPORT_11_en_pipe_0 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  mem3_dataOut_MPORT_11_addr_pipe_0 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  mem3_dataOut_MPORT_15_en_pipe_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  mem3_dataOut_MPORT_15_addr_pipe_0 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  mem3_dataOut_MPORT_16_en_pipe_0 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  mem3_dataOut_MPORT_16_addr_pipe_0 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  mem3_dataOut_MPORT_20_en_pipe_0 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  mem3_dataOut_MPORT_20_addr_pipe_0 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  mem3_dataOut_MPORT_22_en_pipe_0 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  mem3_dataOut_MPORT_22_addr_pipe_0 = _RAND_55[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module MemoryMappedLeds(
  input         clock,
  input         reset,
  input         io_port_write,
  input  [31:0] io_port_wrData,
  output [31:0] io_port_rdData,
  output [15:0] io_pins
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] ledReg; // @[MemoryMappedLeds.scala 28:23]
  wire [31:0] _GEN_0 = io_port_write ? io_port_wrData : {{16'd0}, ledReg}; // @[MemoryMappedLeds.scala 30:23 31:12 28:23]
  wire [31:0] _GEN_1 = reset ? 32'h0 : _GEN_0; // @[MemoryMappedLeds.scala 28:{23,23}]
  assign io_port_rdData = {{16'd0}, ledReg}; // @[MemoryMappedLeds.scala 35:18]
  assign io_pins = ledReg; // @[MemoryMappedLeds.scala 34:11]
  always @(posedge clock) begin
    ledReg <= _GEN_1[15:0]; // @[MemoryMappedLeds.scala 28:{23,23}]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ledReg = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module MemoryMappedIO(
  input         clock,
  input         reset,
  input  [31:0] io_address,
  input  [31:0] io_dataIn,
  input         io_writeEnable,
  output [31:0] io_dataOut,
  output [15:0] io_leds
);
  wire  leds_clock; // @[MemoryMappedIO.scala 21:20]
  wire  leds_reset; // @[MemoryMappedIO.scala 21:20]
  wire  leds_io_port_write; // @[MemoryMappedIO.scala 21:20]
  wire [31:0] leds_io_port_wrData; // @[MemoryMappedIO.scala 21:20]
  wire [31:0] leds_io_port_rdData; // @[MemoryMappedIO.scala 21:20]
  wire [15:0] leds_io_pins; // @[MemoryMappedIO.scala 21:20]
  wire [31:0] addressIO = io_address - 32'h400; // @[MemoryMappedIO.scala 24:30]
  MemoryMappedLeds leds ( // @[MemoryMappedIO.scala 21:20]
    .clock(leds_clock),
    .reset(leds_reset),
    .io_port_write(leds_io_port_write),
    .io_port_wrData(leds_io_port_wrData),
    .io_port_rdData(leds_io_port_rdData),
    .io_pins(leds_io_pins)
  );
  assign io_dataOut = leds_io_port_rdData; // @[MemoryMappedIO.scala 35:14]
  assign io_leds = leds_io_pins; // @[MemoryMappedIO.scala 32:11]
  assign leds_clock = clock;
  assign leds_reset = reset;
  assign leds_io_port_write = io_writeEnable & addressIO == 32'h0; // @[MemoryMappedIO.scala 28:40]
  assign leds_io_port_wrData = {{16'd0}, io_dataIn[15:0]}; // @[MemoryMappedIO.scala 31:23]
endmodule
module MEMStage(
  input         clock,
  input         reset,
  input  [31:0] io_EXtoMEM_branch_address_EXtoMEM,
  input         io_EXtoMEM_take_branch_EXtoMEM,
  input         io_EXtoMEM_register_write_enable_EXtoMEM,
  input         io_EXtoMEM_write_back_select_EXtoMEM,
  input  [4:0]  io_EXtoMEM_rd_EXtoMEM,
  input         io_EXtoMEM_address_is_io_EXtoMEM,
  input  [31:0] io_EXtoMEM_alu_result_EXtoMEM,
  input  [31:0] io_EXtoMEM_memory_write_data_EXtoMEM,
  input         io_EXtoMEM_data_memory_write_enable_EXtoMEM,
  input  [7:0]  io_EXtoMEM_alu_operation_select_EXtoMEM,
  input         io_EXtoMEM_io_memory_write_enable_EXtoMEM,
  output [31:0] io_MEMtoIFD_branch_address_MEMtoIFD,
  output        io_MEMtoIFD_take_branch_MEMtoIFD,
  output [31:0] io_MEMtoWB_alu_result_MEMtoWB,
  output        io_MEMtoWB_register_write_enable_MEMtoWB,
  output        io_MEMtoWB_write_back_select_MEMtoWB,
  output [4:0]  io_MEMtoWB_rd_MEMtoWB,
  output        io_MEMtoWB_address_is_io_MEMtoWB,
  output [31:0] io_MEMtoWB_data_memory_read_MEMtoWB,
  output [31:0] io_MEMtoWB_io_memory_read_MEMtoWB,
  output [15:0] io_leds
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  dataMem_clock; // @[MEMStage.scala 54:23]
  wire [9:0] dataMem_io_addr; // @[MEMStage.scala 54:23]
  wire  dataMem_io_enableWrite; // @[MEMStage.scala 54:23]
  wire [31:0] dataMem_io_dataIn; // @[MEMStage.scala 54:23]
  wire [7:0] dataMem_io_alu_operation_select_EXtoMEM; // @[MEMStage.scala 54:23]
  wire [31:0] dataMem_io_dataOut; // @[MEMStage.scala 54:23]
  wire  MemoryMappedIO_clock; // @[MEMStage.scala 57:30]
  wire  MemoryMappedIO_reset; // @[MEMStage.scala 57:30]
  wire [31:0] MemoryMappedIO_io_address; // @[MEMStage.scala 57:30]
  wire [31:0] MemoryMappedIO_io_dataIn; // @[MEMStage.scala 57:30]
  wire  MemoryMappedIO_io_writeEnable; // @[MEMStage.scala 57:30]
  wire [31:0] MemoryMappedIO_io_dataOut; // @[MEMStage.scala 57:30]
  wire [15:0] MemoryMappedIO_io_leds; // @[MEMStage.scala 57:30]
  reg [31:0] io_MEMtoWB_alu_result_MEMtoWB_REG; // @[MEMStage.scala 65:53]
  reg  io_MEMtoWB_register_write_enable_MEMtoWB_REG; // @[MEMStage.scala 66:53]
  reg  io_MEMtoWB_write_back_select_MEMtoWB_REG; // @[MEMStage.scala 67:53]
  reg [4:0] io_MEMtoWB_rd_MEMtoWB_REG; // @[MEMStage.scala 68:53]
  reg [31:0] io_MEMtoIFD_branch_address_MEMtoIFD_REG; // @[MEMStage.scala 69:53]
  reg  io_MEMtoIFD_take_branch_MEMtoIFD_REG; // @[MEMStage.scala 70:53]
  reg  io_MEMtoWB_address_is_io_MEMtoWB_REG; // @[MEMStage.scala 71:53]
  DataMemory dataMem ( // @[MEMStage.scala 54:23]
    .clock(dataMem_clock),
    .io_addr(dataMem_io_addr),
    .io_enableWrite(dataMem_io_enableWrite),
    .io_dataIn(dataMem_io_dataIn),
    .io_alu_operation_select_EXtoMEM(dataMem_io_alu_operation_select_EXtoMEM),
    .io_dataOut(dataMem_io_dataOut)
  );
  MemoryMappedIO MemoryMappedIO ( // @[MEMStage.scala 57:30]
    .clock(MemoryMappedIO_clock),
    .reset(MemoryMappedIO_reset),
    .io_address(MemoryMappedIO_io_address),
    .io_dataIn(MemoryMappedIO_io_dataIn),
    .io_writeEnable(MemoryMappedIO_io_writeEnable),
    .io_dataOut(MemoryMappedIO_io_dataOut),
    .io_leds(MemoryMappedIO_io_leds)
  );
  assign io_MEMtoIFD_branch_address_MEMtoIFD = io_MEMtoIFD_branch_address_MEMtoIFD_REG; // @[MEMStage.scala 69:43]
  assign io_MEMtoIFD_take_branch_MEMtoIFD = io_MEMtoIFD_take_branch_MEMtoIFD_REG; // @[MEMStage.scala 70:43]
  assign io_MEMtoWB_alu_result_MEMtoWB = io_MEMtoWB_alu_result_MEMtoWB_REG; // @[MEMStage.scala 65:43]
  assign io_MEMtoWB_register_write_enable_MEMtoWB = io_MEMtoWB_register_write_enable_MEMtoWB_REG; // @[MEMStage.scala 66:43]
  assign io_MEMtoWB_write_back_select_MEMtoWB = io_MEMtoWB_write_back_select_MEMtoWB_REG; // @[MEMStage.scala 67:43]
  assign io_MEMtoWB_rd_MEMtoWB = io_MEMtoWB_rd_MEMtoWB_REG; // @[MEMStage.scala 68:43]
  assign io_MEMtoWB_address_is_io_MEMtoWB = io_MEMtoWB_address_is_io_MEMtoWB_REG; // @[MEMStage.scala 71:43]
  assign io_MEMtoWB_data_memory_read_MEMtoWB = dataMem_io_dataOut; // @[MEMStage.scala 78:39]
  assign io_MEMtoWB_io_memory_read_MEMtoWB = MemoryMappedIO_io_dataOut; // @[MEMStage.scala 61:37]
  assign io_leds = MemoryMappedIO_io_leds; // @[MEMStage.scala 62:11]
  assign dataMem_clock = clock;
  assign dataMem_io_addr = io_EXtoMEM_alu_result_EXtoMEM[9:0]; // @[MEMStage.scala 74:19]
  assign dataMem_io_enableWrite = io_EXtoMEM_data_memory_write_enable_EXtoMEM; // @[MEMStage.scala 76:26]
  assign dataMem_io_dataIn = io_EXtoMEM_memory_write_data_EXtoMEM; // @[MEMStage.scala 75:21]
  assign dataMem_io_alu_operation_select_EXtoMEM = io_EXtoMEM_alu_operation_select_EXtoMEM; // @[MEMStage.scala 77:43]
  assign MemoryMappedIO_clock = clock;
  assign MemoryMappedIO_reset = reset;
  assign MemoryMappedIO_io_address = io_EXtoMEM_alu_result_EXtoMEM; // @[MEMStage.scala 60:29]
  assign MemoryMappedIO_io_dataIn = io_EXtoMEM_memory_write_data_EXtoMEM; // @[MEMStage.scala 59:28]
  assign MemoryMappedIO_io_writeEnable = io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[MEMStage.scala 58:33]
  always @(posedge clock) begin
    io_MEMtoWB_alu_result_MEMtoWB_REG <= io_EXtoMEM_alu_result_EXtoMEM; // @[MEMStage.scala 65:53]
    io_MEMtoWB_register_write_enable_MEMtoWB_REG <= io_EXtoMEM_register_write_enable_EXtoMEM; // @[MEMStage.scala 66:53]
    io_MEMtoWB_write_back_select_MEMtoWB_REG <= io_EXtoMEM_write_back_select_EXtoMEM; // @[MEMStage.scala 67:53]
    io_MEMtoWB_rd_MEMtoWB_REG <= io_EXtoMEM_rd_EXtoMEM; // @[MEMStage.scala 68:53]
    io_MEMtoIFD_branch_address_MEMtoIFD_REG <= io_EXtoMEM_branch_address_EXtoMEM; // @[MEMStage.scala 69:53]
    io_MEMtoIFD_take_branch_MEMtoIFD_REG <= io_EXtoMEM_take_branch_EXtoMEM; // @[MEMStage.scala 70:53]
    io_MEMtoWB_address_is_io_MEMtoWB_REG <= io_EXtoMEM_address_is_io_EXtoMEM; // @[MEMStage.scala 71:53]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_MEMtoWB_alu_result_MEMtoWB_REG = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  io_MEMtoWB_register_write_enable_MEMtoWB_REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  io_MEMtoWB_write_back_select_MEMtoWB_REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_MEMtoWB_rd_MEMtoWB_REG = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  io_MEMtoIFD_branch_address_MEMtoIFD_REG = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  io_MEMtoIFD_take_branch_MEMtoIFD_REG = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  io_MEMtoWB_address_is_io_MEMtoWB_REG = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module WBStage(
  input         clock,
  input  [31:0] io_MEMtoWB_alu_result_MEMtoWB,
  input         io_MEMtoWB_register_write_enable_MEMtoWB,
  input         io_MEMtoWB_write_back_select_MEMtoWB,
  input  [4:0]  io_MEMtoWB_rd_MEMtoWB,
  input         io_MEMtoWB_address_is_io_MEMtoWB,
  input  [31:0] io_MEMtoWB_data_memory_read_MEMtoWB,
  input  [31:0] io_MEMtoWB_io_memory_read_MEMtoWB,
  output [31:0] io_WBtoEX_regfile_write_data_WBtoEX,
  output        io_WBtoEX_regfile_write_enable_WBtoEX,
  output [4:0]  io_WBtoEX_rd_WBtoEX
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] alu_result; // @[WBStage.scala 29:45]
  reg  write_back_select; // @[WBStage.scala 30:45]
  reg  address_is_io; // @[WBStage.scala 31:45]
  reg  io_WBtoEX_regfile_write_enable_WBtoEX_REG; // @[WBStage.scala 32:51]
  reg [4:0] io_WBtoEX_rd_WBtoEX_REG; // @[WBStage.scala 33:51]
  wire [31:0] _io_WBtoEX_regfile_write_data_WBtoEX_T = address_is_io ? io_MEMtoWB_io_memory_read_MEMtoWB :
    io_MEMtoWB_data_memory_read_MEMtoWB; // @[WBStage.scala 37:47]
  assign io_WBtoEX_regfile_write_data_WBtoEX = write_back_select ? _io_WBtoEX_regfile_write_data_WBtoEX_T : alu_result; // @[WBStage.scala 36:26 37:41 39:41]
  assign io_WBtoEX_regfile_write_enable_WBtoEX = io_WBtoEX_regfile_write_enable_WBtoEX_REG; // @[WBStage.scala 32:41]
  assign io_WBtoEX_rd_WBtoEX = io_WBtoEX_rd_WBtoEX_REG; // @[WBStage.scala 33:41]
  always @(posedge clock) begin
    alu_result <= io_MEMtoWB_alu_result_MEMtoWB; // @[WBStage.scala 29:45]
    write_back_select <= io_MEMtoWB_write_back_select_MEMtoWB; // @[WBStage.scala 30:45]
    address_is_io <= io_MEMtoWB_address_is_io_MEMtoWB; // @[WBStage.scala 31:45]
    io_WBtoEX_regfile_write_enable_WBtoEX_REG <= io_MEMtoWB_register_write_enable_MEMtoWB; // @[WBStage.scala 32:51]
    io_WBtoEX_rd_WBtoEX_REG <= io_MEMtoWB_rd_MEMtoWB; // @[WBStage.scala 33:51]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  alu_result = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  write_back_select = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  address_is_io = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  io_WBtoEX_regfile_write_enable_WBtoEX_REG = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_WBtoEX_rd_WBtoEX_REG = _RAND_4[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ProcessorTopLevel(
  input         clock,
  input         reset,
  input  [15:0] io_sw,
  output [15:0] io_LEDs
);
  wire  IFD_clock; // @[ProcessorTopLevel.scala 15:19]
  wire  IFD_reset; // @[ProcessorTopLevel.scala 15:19]
  wire  IFD_io_MEMtoIFD_take_branch_MEMtoIFD; // @[ProcessorTopLevel.scala 15:19]
  wire [31:0] IFD_io_MEMtoIFD_branch_address_MEMtoIFD; // @[ProcessorTopLevel.scala 15:19]
  wire [4:0] IFD_io_decoded_instruction_IFDtoEX_rs1; // @[ProcessorTopLevel.scala 15:19]
  wire [4:0] IFD_io_decoded_instruction_IFDtoEX_rs2; // @[ProcessorTopLevel.scala 15:19]
  wire [4:0] IFD_io_decoded_instruction_IFDtoEX_rd; // @[ProcessorTopLevel.scala 15:19]
  wire [2:0] IFD_io_decoded_instruction_IFDtoEX_funct3; // @[ProcessorTopLevel.scala 15:19]
  wire [6:0] IFD_io_decoded_instruction_IFDtoEX_funct7; // @[ProcessorTopLevel.scala 15:19]
  wire [2:0] IFD_io_decoded_instruction_IFDtoEX_instrType; // @[ProcessorTopLevel.scala 15:19]
  wire [6:0] IFD_io_decoded_instruction_IFDtoEX_opcode; // @[ProcessorTopLevel.scala 15:19]
  wire [31:0] IFD_io_IFDtoEX_pc_IFDtoEX; // @[ProcessorTopLevel.scala 15:19]
  wire [31:0] IFD_io_IFDtoEX_instruction_IFDtoEX; // @[ProcessorTopLevel.scala 15:19]
  wire  EX_clock; // @[ProcessorTopLevel.scala 17:18]
  wire  EX_reset; // @[ProcessorTopLevel.scala 17:18]
  wire [4:0] EX_io_decoded_instruction_IFDtoEX_rs1; // @[ProcessorTopLevel.scala 17:18]
  wire [4:0] EX_io_decoded_instruction_IFDtoEX_rs2; // @[ProcessorTopLevel.scala 17:18]
  wire [4:0] EX_io_decoded_instruction_IFDtoEX_rd; // @[ProcessorTopLevel.scala 17:18]
  wire [2:0] EX_io_decoded_instruction_IFDtoEX_funct3; // @[ProcessorTopLevel.scala 17:18]
  wire [6:0] EX_io_decoded_instruction_IFDtoEX_funct7; // @[ProcessorTopLevel.scala 17:18]
  wire [2:0] EX_io_decoded_instruction_IFDtoEX_instrType; // @[ProcessorTopLevel.scala 17:18]
  wire [6:0] EX_io_decoded_instruction_IFDtoEX_opcode; // @[ProcessorTopLevel.scala 17:18]
  wire [31:0] EX_io_IFDtoEX_pc_IFDtoEX; // @[ProcessorTopLevel.scala 17:18]
  wire [31:0] EX_io_IFDtoEX_instruction_IFDtoEX; // @[ProcessorTopLevel.scala 17:18]
  wire [31:0] EX_io_WBtoEX_regfile_write_data_WBtoEX; // @[ProcessorTopLevel.scala 17:18]
  wire  EX_io_WBtoEX_regfile_write_enable_WBtoEX; // @[ProcessorTopLevel.scala 17:18]
  wire [4:0] EX_io_WBtoEX_rd_WBtoEX; // @[ProcessorTopLevel.scala 17:18]
  wire [31:0] EX_io_EXtoMEM_alu_result_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire [31:0] EX_io_EXtoMEM_memory_write_data_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire [4:0] EX_io_EXtoMEM_rd_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire  EX_io_EXtoMEM_register_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire  EX_io_EXtoMEM_write_back_select_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire  EX_io_EXtoMEM_data_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire  EX_io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire [31:0] EX_io_EXtoMEM_branch_address_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire  EX_io_EXtoMEM_take_branch_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire  EX_io_EXtoMEM_address_is_io_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire [7:0] EX_io_EXtoMEM_alu_operation_select_EXtoMEM; // @[ProcessorTopLevel.scala 17:18]
  wire  MEM_clock; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_reset; // @[ProcessorTopLevel.scala 18:20]
  wire [31:0] MEM_io_EXtoMEM_branch_address_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_EXtoMEM_take_branch_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_EXtoMEM_register_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_EXtoMEM_write_back_select_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire [4:0] MEM_io_EXtoMEM_rd_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_EXtoMEM_address_is_io_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire [31:0] MEM_io_EXtoMEM_alu_result_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire [31:0] MEM_io_EXtoMEM_memory_write_data_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_EXtoMEM_data_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire [7:0] MEM_io_EXtoMEM_alu_operation_select_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 18:20]
  wire [31:0] MEM_io_MEMtoIFD_branch_address_MEMtoIFD; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_MEMtoIFD_take_branch_MEMtoIFD; // @[ProcessorTopLevel.scala 18:20]
  wire [31:0] MEM_io_MEMtoWB_alu_result_MEMtoWB; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_MEMtoWB_register_write_enable_MEMtoWB; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_MEMtoWB_write_back_select_MEMtoWB; // @[ProcessorTopLevel.scala 18:20]
  wire [4:0] MEM_io_MEMtoWB_rd_MEMtoWB; // @[ProcessorTopLevel.scala 18:20]
  wire  MEM_io_MEMtoWB_address_is_io_MEMtoWB; // @[ProcessorTopLevel.scala 18:20]
  wire [31:0] MEM_io_MEMtoWB_data_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 18:20]
  wire [31:0] MEM_io_MEMtoWB_io_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 18:20]
  wire [15:0] MEM_io_leds; // @[ProcessorTopLevel.scala 18:20]
  wire  WB_clock; // @[ProcessorTopLevel.scala 19:19]
  wire [31:0] WB_io_MEMtoWB_alu_result_MEMtoWB; // @[ProcessorTopLevel.scala 19:19]
  wire  WB_io_MEMtoWB_register_write_enable_MEMtoWB; // @[ProcessorTopLevel.scala 19:19]
  wire  WB_io_MEMtoWB_write_back_select_MEMtoWB; // @[ProcessorTopLevel.scala 19:19]
  wire [4:0] WB_io_MEMtoWB_rd_MEMtoWB; // @[ProcessorTopLevel.scala 19:19]
  wire  WB_io_MEMtoWB_address_is_io_MEMtoWB; // @[ProcessorTopLevel.scala 19:19]
  wire [31:0] WB_io_MEMtoWB_data_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 19:19]
  wire [31:0] WB_io_MEMtoWB_io_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 19:19]
  wire [31:0] WB_io_WBtoEX_regfile_write_data_WBtoEX; // @[ProcessorTopLevel.scala 19:19]
  wire  WB_io_WBtoEX_regfile_write_enable_WBtoEX; // @[ProcessorTopLevel.scala 19:19]
  wire [4:0] WB_io_WBtoEX_rd_WBtoEX; // @[ProcessorTopLevel.scala 19:19]
  IFDStage IFD ( // @[ProcessorTopLevel.scala 15:19]
    .clock(IFD_clock),
    .reset(IFD_reset),
    .io_MEMtoIFD_take_branch_MEMtoIFD(IFD_io_MEMtoIFD_take_branch_MEMtoIFD),
    .io_MEMtoIFD_branch_address_MEMtoIFD(IFD_io_MEMtoIFD_branch_address_MEMtoIFD),
    .io_decoded_instruction_IFDtoEX_rs1(IFD_io_decoded_instruction_IFDtoEX_rs1),
    .io_decoded_instruction_IFDtoEX_rs2(IFD_io_decoded_instruction_IFDtoEX_rs2),
    .io_decoded_instruction_IFDtoEX_rd(IFD_io_decoded_instruction_IFDtoEX_rd),
    .io_decoded_instruction_IFDtoEX_funct3(IFD_io_decoded_instruction_IFDtoEX_funct3),
    .io_decoded_instruction_IFDtoEX_funct7(IFD_io_decoded_instruction_IFDtoEX_funct7),
    .io_decoded_instruction_IFDtoEX_instrType(IFD_io_decoded_instruction_IFDtoEX_instrType),
    .io_decoded_instruction_IFDtoEX_opcode(IFD_io_decoded_instruction_IFDtoEX_opcode),
    .io_IFDtoEX_pc_IFDtoEX(IFD_io_IFDtoEX_pc_IFDtoEX),
    .io_IFDtoEX_instruction_IFDtoEX(IFD_io_IFDtoEX_instruction_IFDtoEX)
  );
  EXStage EX ( // @[ProcessorTopLevel.scala 17:18]
    .clock(EX_clock),
    .reset(EX_reset),
    .io_decoded_instruction_IFDtoEX_rs1(EX_io_decoded_instruction_IFDtoEX_rs1),
    .io_decoded_instruction_IFDtoEX_rs2(EX_io_decoded_instruction_IFDtoEX_rs2),
    .io_decoded_instruction_IFDtoEX_rd(EX_io_decoded_instruction_IFDtoEX_rd),
    .io_decoded_instruction_IFDtoEX_funct3(EX_io_decoded_instruction_IFDtoEX_funct3),
    .io_decoded_instruction_IFDtoEX_funct7(EX_io_decoded_instruction_IFDtoEX_funct7),
    .io_decoded_instruction_IFDtoEX_instrType(EX_io_decoded_instruction_IFDtoEX_instrType),
    .io_decoded_instruction_IFDtoEX_opcode(EX_io_decoded_instruction_IFDtoEX_opcode),
    .io_IFDtoEX_pc_IFDtoEX(EX_io_IFDtoEX_pc_IFDtoEX),
    .io_IFDtoEX_instruction_IFDtoEX(EX_io_IFDtoEX_instruction_IFDtoEX),
    .io_WBtoEX_regfile_write_data_WBtoEX(EX_io_WBtoEX_regfile_write_data_WBtoEX),
    .io_WBtoEX_regfile_write_enable_WBtoEX(EX_io_WBtoEX_regfile_write_enable_WBtoEX),
    .io_WBtoEX_rd_WBtoEX(EX_io_WBtoEX_rd_WBtoEX),
    .io_EXtoMEM_alu_result_EXtoMEM(EX_io_EXtoMEM_alu_result_EXtoMEM),
    .io_EXtoMEM_memory_write_data_EXtoMEM(EX_io_EXtoMEM_memory_write_data_EXtoMEM),
    .io_EXtoMEM_rd_EXtoMEM(EX_io_EXtoMEM_rd_EXtoMEM),
    .io_EXtoMEM_register_write_enable_EXtoMEM(EX_io_EXtoMEM_register_write_enable_EXtoMEM),
    .io_EXtoMEM_write_back_select_EXtoMEM(EX_io_EXtoMEM_write_back_select_EXtoMEM),
    .io_EXtoMEM_data_memory_write_enable_EXtoMEM(EX_io_EXtoMEM_data_memory_write_enable_EXtoMEM),
    .io_EXtoMEM_io_memory_write_enable_EXtoMEM(EX_io_EXtoMEM_io_memory_write_enable_EXtoMEM),
    .io_EXtoMEM_branch_address_EXtoMEM(EX_io_EXtoMEM_branch_address_EXtoMEM),
    .io_EXtoMEM_take_branch_EXtoMEM(EX_io_EXtoMEM_take_branch_EXtoMEM),
    .io_EXtoMEM_address_is_io_EXtoMEM(EX_io_EXtoMEM_address_is_io_EXtoMEM),
    .io_EXtoMEM_alu_operation_select_EXtoMEM(EX_io_EXtoMEM_alu_operation_select_EXtoMEM)
  );
  MEMStage MEM ( // @[ProcessorTopLevel.scala 18:20]
    .clock(MEM_clock),
    .reset(MEM_reset),
    .io_EXtoMEM_branch_address_EXtoMEM(MEM_io_EXtoMEM_branch_address_EXtoMEM),
    .io_EXtoMEM_take_branch_EXtoMEM(MEM_io_EXtoMEM_take_branch_EXtoMEM),
    .io_EXtoMEM_register_write_enable_EXtoMEM(MEM_io_EXtoMEM_register_write_enable_EXtoMEM),
    .io_EXtoMEM_write_back_select_EXtoMEM(MEM_io_EXtoMEM_write_back_select_EXtoMEM),
    .io_EXtoMEM_rd_EXtoMEM(MEM_io_EXtoMEM_rd_EXtoMEM),
    .io_EXtoMEM_address_is_io_EXtoMEM(MEM_io_EXtoMEM_address_is_io_EXtoMEM),
    .io_EXtoMEM_alu_result_EXtoMEM(MEM_io_EXtoMEM_alu_result_EXtoMEM),
    .io_EXtoMEM_memory_write_data_EXtoMEM(MEM_io_EXtoMEM_memory_write_data_EXtoMEM),
    .io_EXtoMEM_data_memory_write_enable_EXtoMEM(MEM_io_EXtoMEM_data_memory_write_enable_EXtoMEM),
    .io_EXtoMEM_alu_operation_select_EXtoMEM(MEM_io_EXtoMEM_alu_operation_select_EXtoMEM),
    .io_EXtoMEM_io_memory_write_enable_EXtoMEM(MEM_io_EXtoMEM_io_memory_write_enable_EXtoMEM),
    .io_MEMtoIFD_branch_address_MEMtoIFD(MEM_io_MEMtoIFD_branch_address_MEMtoIFD),
    .io_MEMtoIFD_take_branch_MEMtoIFD(MEM_io_MEMtoIFD_take_branch_MEMtoIFD),
    .io_MEMtoWB_alu_result_MEMtoWB(MEM_io_MEMtoWB_alu_result_MEMtoWB),
    .io_MEMtoWB_register_write_enable_MEMtoWB(MEM_io_MEMtoWB_register_write_enable_MEMtoWB),
    .io_MEMtoWB_write_back_select_MEMtoWB(MEM_io_MEMtoWB_write_back_select_MEMtoWB),
    .io_MEMtoWB_rd_MEMtoWB(MEM_io_MEMtoWB_rd_MEMtoWB),
    .io_MEMtoWB_address_is_io_MEMtoWB(MEM_io_MEMtoWB_address_is_io_MEMtoWB),
    .io_MEMtoWB_data_memory_read_MEMtoWB(MEM_io_MEMtoWB_data_memory_read_MEMtoWB),
    .io_MEMtoWB_io_memory_read_MEMtoWB(MEM_io_MEMtoWB_io_memory_read_MEMtoWB),
    .io_leds(MEM_io_leds)
  );
  WBStage WB ( // @[ProcessorTopLevel.scala 19:19]
    .clock(WB_clock),
    .io_MEMtoWB_alu_result_MEMtoWB(WB_io_MEMtoWB_alu_result_MEMtoWB),
    .io_MEMtoWB_register_write_enable_MEMtoWB(WB_io_MEMtoWB_register_write_enable_MEMtoWB),
    .io_MEMtoWB_write_back_select_MEMtoWB(WB_io_MEMtoWB_write_back_select_MEMtoWB),
    .io_MEMtoWB_rd_MEMtoWB(WB_io_MEMtoWB_rd_MEMtoWB),
    .io_MEMtoWB_address_is_io_MEMtoWB(WB_io_MEMtoWB_address_is_io_MEMtoWB),
    .io_MEMtoWB_data_memory_read_MEMtoWB(WB_io_MEMtoWB_data_memory_read_MEMtoWB),
    .io_MEMtoWB_io_memory_read_MEMtoWB(WB_io_MEMtoWB_io_memory_read_MEMtoWB),
    .io_WBtoEX_regfile_write_data_WBtoEX(WB_io_WBtoEX_regfile_write_data_WBtoEX),
    .io_WBtoEX_regfile_write_enable_WBtoEX(WB_io_WBtoEX_regfile_write_enable_WBtoEX),
    .io_WBtoEX_rd_WBtoEX(WB_io_WBtoEX_rd_WBtoEX)
  );
  assign io_LEDs = MEM_io_leds | io_sw; // @[ProcessorTopLevel.scala 61:26]
  assign IFD_clock = clock;
  assign IFD_reset = reset;
  assign IFD_io_MEMtoIFD_take_branch_MEMtoIFD = MEM_io_MEMtoIFD_take_branch_MEMtoIFD; // @[ProcessorTopLevel.scala 65:19]
  assign IFD_io_MEMtoIFD_branch_address_MEMtoIFD = MEM_io_MEMtoIFD_branch_address_MEMtoIFD; // @[ProcessorTopLevel.scala 65:19]
  assign EX_clock = clock;
  assign EX_reset = reset;
  assign EX_io_decoded_instruction_IFDtoEX_rs1 = IFD_io_decoded_instruction_IFDtoEX_rs1; // @[ProcessorTopLevel.scala 64:38]
  assign EX_io_decoded_instruction_IFDtoEX_rs2 = IFD_io_decoded_instruction_IFDtoEX_rs2; // @[ProcessorTopLevel.scala 64:38]
  assign EX_io_decoded_instruction_IFDtoEX_rd = IFD_io_decoded_instruction_IFDtoEX_rd; // @[ProcessorTopLevel.scala 64:38]
  assign EX_io_decoded_instruction_IFDtoEX_funct3 = IFD_io_decoded_instruction_IFDtoEX_funct3; // @[ProcessorTopLevel.scala 64:38]
  assign EX_io_decoded_instruction_IFDtoEX_funct7 = IFD_io_decoded_instruction_IFDtoEX_funct7; // @[ProcessorTopLevel.scala 64:38]
  assign EX_io_decoded_instruction_IFDtoEX_instrType = IFD_io_decoded_instruction_IFDtoEX_instrType; // @[ProcessorTopLevel.scala 64:38]
  assign EX_io_decoded_instruction_IFDtoEX_opcode = IFD_io_decoded_instruction_IFDtoEX_opcode; // @[ProcessorTopLevel.scala 64:38]
  assign EX_io_IFDtoEX_pc_IFDtoEX = IFD_io_IFDtoEX_pc_IFDtoEX; // @[ProcessorTopLevel.scala 63:18]
  assign EX_io_IFDtoEX_instruction_IFDtoEX = IFD_io_IFDtoEX_instruction_IFDtoEX; // @[ProcessorTopLevel.scala 63:18]
  assign EX_io_WBtoEX_regfile_write_data_WBtoEX = WB_io_WBtoEX_regfile_write_data_WBtoEX; // @[ProcessorTopLevel.scala 67:16]
  assign EX_io_WBtoEX_regfile_write_enable_WBtoEX = WB_io_WBtoEX_regfile_write_enable_WBtoEX; // @[ProcessorTopLevel.scala 67:16]
  assign EX_io_WBtoEX_rd_WBtoEX = WB_io_WBtoEX_rd_WBtoEX; // @[ProcessorTopLevel.scala 67:16]
  assign MEM_clock = clock;
  assign MEM_reset = reset;
  assign MEM_io_EXtoMEM_branch_address_EXtoMEM = EX_io_EXtoMEM_branch_address_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_take_branch_EXtoMEM = EX_io_EXtoMEM_take_branch_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_register_write_enable_EXtoMEM = EX_io_EXtoMEM_register_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_write_back_select_EXtoMEM = EX_io_EXtoMEM_write_back_select_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_rd_EXtoMEM = EX_io_EXtoMEM_rd_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_address_is_io_EXtoMEM = EX_io_EXtoMEM_address_is_io_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_alu_result_EXtoMEM = EX_io_EXtoMEM_alu_result_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_memory_write_data_EXtoMEM = EX_io_EXtoMEM_memory_write_data_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_data_memory_write_enable_EXtoMEM = EX_io_EXtoMEM_data_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_alu_operation_select_EXtoMEM = EX_io_EXtoMEM_alu_operation_select_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign MEM_io_EXtoMEM_io_memory_write_enable_EXtoMEM = EX_io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 66:17]
  assign WB_clock = clock;
  assign WB_io_MEMtoWB_alu_result_MEMtoWB = MEM_io_MEMtoWB_alu_result_MEMtoWB; // @[ProcessorTopLevel.scala 68:18]
  assign WB_io_MEMtoWB_register_write_enable_MEMtoWB = MEM_io_MEMtoWB_register_write_enable_MEMtoWB; // @[ProcessorTopLevel.scala 68:18]
  assign WB_io_MEMtoWB_write_back_select_MEMtoWB = MEM_io_MEMtoWB_write_back_select_MEMtoWB; // @[ProcessorTopLevel.scala 68:18]
  assign WB_io_MEMtoWB_rd_MEMtoWB = MEM_io_MEMtoWB_rd_MEMtoWB; // @[ProcessorTopLevel.scala 68:18]
  assign WB_io_MEMtoWB_address_is_io_MEMtoWB = MEM_io_MEMtoWB_address_is_io_MEMtoWB; // @[ProcessorTopLevel.scala 68:18]
  assign WB_io_MEMtoWB_data_memory_read_MEMtoWB = MEM_io_MEMtoWB_data_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 68:18]
  assign WB_io_MEMtoWB_io_memory_read_MEMtoWB = MEM_io_MEMtoWB_io_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 68:18]
endmodule
