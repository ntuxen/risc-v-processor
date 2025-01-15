module BindsTo_0_InstrMemory(
  input         clock,
  input  [9:0]  io_addr,
  output [31:0] io_dataOut
);

initial begin
  $readmemh("src/test/TestPrograms/BlinkingLEDsFast.hex", InstrMemory.mem);
end
                      endmodule

bind InstrMemory BindsTo_0_InstrMemory BindsTo_0_InstrMemory_Inst(.*);