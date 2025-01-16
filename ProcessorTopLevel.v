module InstrMemory(
  input         clock,
  input  [9:0]  io_addr,
  output [31:0] io_dataOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] io_dataOut_REG; // @[InstrMemory.scala 33:24]
  wire [31:0] _GEN_1 = 10'h1 == io_addr ? 32'h13 : 32'h513; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_2 = 10'h2 == io_addr ? 32'h13 : _GEN_1; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_3 = 10'h3 == io_addr ? 32'h13 : _GEN_2; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_4 = 10'h4 == io_addr ? 32'h9895b7 : _GEN_3; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_5 = 10'h5 == io_addr ? 32'h13 : _GEN_4; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_6 = 10'h6 == io_addr ? 32'h13 : _GEN_5; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_7 = 10'h7 == io_addr ? 32'h13 : _GEN_6; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_8 = 10'h8 == io_addr ? 32'h68058593 : _GEN_7; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_9 = 10'h9 == io_addr ? 32'h13 : _GEN_8; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_10 = 10'ha == io_addr ? 32'h13 : _GEN_9; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_11 = 10'hb == io_addr ? 32'h13 : _GEN_10; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_12 = 10'hc == io_addr ? 32'h10637 : _GEN_11; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_13 = 10'hd == io_addr ? 32'h13 : _GEN_12; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_14 = 10'he == io_addr ? 32'h13 : _GEN_13; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_15 = 10'hf == io_addr ? 32'h13 : _GEN_14; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_16 = 10'h10 == io_addr ? 32'hfff60613 : _GEN_15; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_17 = 10'h11 == io_addr ? 32'h13 : _GEN_16; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_18 = 10'h12 == io_addr ? 32'h13 : _GEN_17; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_19 = 10'h13 == io_addr ? 32'h13 : _GEN_18; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_20 = 10'h14 == io_addr ? 32'h693 : _GEN_19; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_21 = 10'h15 == io_addr ? 32'h13 : _GEN_20; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_22 = 10'h16 == io_addr ? 32'h13 : _GEN_21; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_23 = 10'h17 == io_addr ? 32'h13 : _GEN_22; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_24 = 10'h18 == io_addr ? 32'h40000713 : _GEN_23; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_25 = 10'h19 == io_addr ? 32'h13 : _GEN_24; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_26 = 10'h1a == io_addr ? 32'h13 : _GEN_25; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_27 = 10'h1b == io_addr ? 32'h13 : _GEN_26; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_28 = 10'h1c == io_addr ? 32'h150513 : _GEN_27; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_29 = 10'h1d == io_addr ? 32'h13 : _GEN_28; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_30 = 10'h1e == io_addr ? 32'h13 : _GEN_29; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_31 = 10'h1f == io_addr ? 32'h13 : _GEN_30; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_32 = 10'h20 == io_addr ? 32'hfeb548e3 : _GEN_31; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_33 = 10'h21 == io_addr ? 32'h13 : _GEN_32; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_34 = 10'h22 == io_addr ? 32'h13 : _GEN_33; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_35 = 10'h23 == io_addr ? 32'h13 : _GEN_34; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_36 = 10'h24 == io_addr ? 32'hc72023 : _GEN_35; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_37 = 10'h25 == io_addr ? 32'h13 : _GEN_36; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_38 = 10'h26 == io_addr ? 32'h13 : _GEN_37; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_39 = 10'h27 == io_addr ? 32'h13 : _GEN_38; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_40 = 10'h28 == io_addr ? 32'h513 : _GEN_39; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_41 = 10'h29 == io_addr ? 32'h13 : _GEN_40; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_42 = 10'h2a == io_addr ? 32'h13 : _GEN_41; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_43 = 10'h2b == io_addr ? 32'h13 : _GEN_42; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_44 = 10'h2c == io_addr ? 32'h150513 : _GEN_43; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_45 = 10'h2d == io_addr ? 32'h13 : _GEN_44; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_46 = 10'h2e == io_addr ? 32'h13 : _GEN_45; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_47 = 10'h2f == io_addr ? 32'h13 : _GEN_46; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_48 = 10'h30 == io_addr ? 32'hfeb548e3 : _GEN_47; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_49 = 10'h31 == io_addr ? 32'h13 : _GEN_48; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_50 = 10'h32 == io_addr ? 32'h13 : _GEN_49; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_51 = 10'h33 == io_addr ? 32'h13 : _GEN_50; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_52 = 10'h34 == io_addr ? 32'hd72023 : _GEN_51; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_53 = 10'h35 == io_addr ? 32'h13 : _GEN_52; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_54 = 10'h36 == io_addr ? 32'h13 : _GEN_53; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_55 = 10'h37 == io_addr ? 32'h13 : _GEN_54; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_56 = 10'h38 == io_addr ? 32'h513 : _GEN_55; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_57 = 10'h39 == io_addr ? 32'h13 : _GEN_56; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_58 = 10'h3a == io_addr ? 32'h13 : _GEN_57; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_59 = 10'h3b == io_addr ? 32'h13 : _GEN_58; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_60 = 10'h3c == io_addr ? 32'hf81ff06f : _GEN_59; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_61 = 10'h3d == io_addr ? 32'h13 : _GEN_60; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_62 = 10'h3e == io_addr ? 32'h13 : _GEN_61; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_63 = 10'h3f == io_addr ? 32'h13 : _GEN_62; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_64 = 10'h40 == io_addr ? 32'h13 : _GEN_63; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_65 = 10'h41 == io_addr ? 32'h13 : _GEN_64; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_66 = 10'h42 == io_addr ? 32'h13 : _GEN_65; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_67 = 10'h43 == io_addr ? 32'h13 : _GEN_66; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_68 = 10'h44 == io_addr ? 32'h13 : _GEN_67; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_69 = 10'h45 == io_addr ? 32'h13 : _GEN_68; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_70 = 10'h46 == io_addr ? 32'h13 : _GEN_69; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_71 = 10'h47 == io_addr ? 32'h13 : _GEN_70; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_72 = 10'h48 == io_addr ? 32'h13 : _GEN_71; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_73 = 10'h49 == io_addr ? 32'h13 : _GEN_72; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_74 = 10'h4a == io_addr ? 32'h13 : _GEN_73; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_75 = 10'h4b == io_addr ? 32'h13 : _GEN_74; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_76 = 10'h4c == io_addr ? 32'h13 : _GEN_75; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_77 = 10'h4d == io_addr ? 32'h13 : _GEN_76; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_78 = 10'h4e == io_addr ? 32'h13 : _GEN_77; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_79 = 10'h4f == io_addr ? 32'h13 : _GEN_78; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_80 = 10'h50 == io_addr ? 32'h13 : _GEN_79; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_81 = 10'h51 == io_addr ? 32'h13 : _GEN_80; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_82 = 10'h52 == io_addr ? 32'h13 : _GEN_81; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_83 = 10'h53 == io_addr ? 32'h13 : _GEN_82; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_84 = 10'h54 == io_addr ? 32'h13 : _GEN_83; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_85 = 10'h55 == io_addr ? 32'h13 : _GEN_84; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_86 = 10'h56 == io_addr ? 32'h13 : _GEN_85; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_87 = 10'h57 == io_addr ? 32'h13 : _GEN_86; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_88 = 10'h58 == io_addr ? 32'h13 : _GEN_87; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_89 = 10'h59 == io_addr ? 32'h13 : _GEN_88; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_90 = 10'h5a == io_addr ? 32'h13 : _GEN_89; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_91 = 10'h5b == io_addr ? 32'h13 : _GEN_90; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_92 = 10'h5c == io_addr ? 32'h13 : _GEN_91; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_93 = 10'h5d == io_addr ? 32'h13 : _GEN_92; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_94 = 10'h5e == io_addr ? 32'h13 : _GEN_93; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_95 = 10'h5f == io_addr ? 32'h13 : _GEN_94; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_96 = 10'h60 == io_addr ? 32'h13 : _GEN_95; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_97 = 10'h61 == io_addr ? 32'h13 : _GEN_96; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_98 = 10'h62 == io_addr ? 32'h13 : _GEN_97; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_99 = 10'h63 == io_addr ? 32'h13 : _GEN_98; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_100 = 10'h64 == io_addr ? 32'h13 : _GEN_99; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_101 = 10'h65 == io_addr ? 32'h13 : _GEN_100; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_102 = 10'h66 == io_addr ? 32'h13 : _GEN_101; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_103 = 10'h67 == io_addr ? 32'h13 : _GEN_102; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_104 = 10'h68 == io_addr ? 32'h13 : _GEN_103; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_105 = 10'h69 == io_addr ? 32'h13 : _GEN_104; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_106 = 10'h6a == io_addr ? 32'h13 : _GEN_105; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_107 = 10'h6b == io_addr ? 32'h13 : _GEN_106; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_108 = 10'h6c == io_addr ? 32'h13 : _GEN_107; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_109 = 10'h6d == io_addr ? 32'h13 : _GEN_108; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_110 = 10'h6e == io_addr ? 32'h13 : _GEN_109; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_111 = 10'h6f == io_addr ? 32'h13 : _GEN_110; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_112 = 10'h70 == io_addr ? 32'h13 : _GEN_111; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_113 = 10'h71 == io_addr ? 32'h13 : _GEN_112; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_114 = 10'h72 == io_addr ? 32'h13 : _GEN_113; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_115 = 10'h73 == io_addr ? 32'h13 : _GEN_114; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_116 = 10'h74 == io_addr ? 32'h13 : _GEN_115; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_117 = 10'h75 == io_addr ? 32'h13 : _GEN_116; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_118 = 10'h76 == io_addr ? 32'h13 : _GEN_117; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_119 = 10'h77 == io_addr ? 32'h13 : _GEN_118; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_120 = 10'h78 == io_addr ? 32'h13 : _GEN_119; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_121 = 10'h79 == io_addr ? 32'h13 : _GEN_120; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_122 = 10'h7a == io_addr ? 32'h13 : _GEN_121; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_123 = 10'h7b == io_addr ? 32'h13 : _GEN_122; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_124 = 10'h7c == io_addr ? 32'h13 : _GEN_123; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_125 = 10'h7d == io_addr ? 32'h13 : _GEN_124; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_126 = 10'h7e == io_addr ? 32'h13 : _GEN_125; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_127 = 10'h7f == io_addr ? 32'h13 : _GEN_126; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_128 = 10'h80 == io_addr ? 32'h13 : _GEN_127; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_129 = 10'h81 == io_addr ? 32'h13 : _GEN_128; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_130 = 10'h82 == io_addr ? 32'h13 : _GEN_129; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_131 = 10'h83 == io_addr ? 32'h13 : _GEN_130; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_132 = 10'h84 == io_addr ? 32'h13 : _GEN_131; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_133 = 10'h85 == io_addr ? 32'h13 : _GEN_132; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_134 = 10'h86 == io_addr ? 32'h13 : _GEN_133; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_135 = 10'h87 == io_addr ? 32'h13 : _GEN_134; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_136 = 10'h88 == io_addr ? 32'h13 : _GEN_135; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_137 = 10'h89 == io_addr ? 32'h13 : _GEN_136; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_138 = 10'h8a == io_addr ? 32'h13 : _GEN_137; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_139 = 10'h8b == io_addr ? 32'h13 : _GEN_138; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_140 = 10'h8c == io_addr ? 32'h13 : _GEN_139; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_141 = 10'h8d == io_addr ? 32'h13 : _GEN_140; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_142 = 10'h8e == io_addr ? 32'h13 : _GEN_141; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_143 = 10'h8f == io_addr ? 32'h13 : _GEN_142; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_144 = 10'h90 == io_addr ? 32'h13 : _GEN_143; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_145 = 10'h91 == io_addr ? 32'h13 : _GEN_144; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_146 = 10'h92 == io_addr ? 32'h13 : _GEN_145; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_147 = 10'h93 == io_addr ? 32'h13 : _GEN_146; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_148 = 10'h94 == io_addr ? 32'h13 : _GEN_147; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_149 = 10'h95 == io_addr ? 32'h13 : _GEN_148; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_150 = 10'h96 == io_addr ? 32'h13 : _GEN_149; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_151 = 10'h97 == io_addr ? 32'h13 : _GEN_150; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_152 = 10'h98 == io_addr ? 32'h13 : _GEN_151; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_153 = 10'h99 == io_addr ? 32'h13 : _GEN_152; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_154 = 10'h9a == io_addr ? 32'h13 : _GEN_153; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_155 = 10'h9b == io_addr ? 32'h13 : _GEN_154; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_156 = 10'h9c == io_addr ? 32'h13 : _GEN_155; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_157 = 10'h9d == io_addr ? 32'h13 : _GEN_156; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_158 = 10'h9e == io_addr ? 32'h13 : _GEN_157; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_159 = 10'h9f == io_addr ? 32'h13 : _GEN_158; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_160 = 10'ha0 == io_addr ? 32'h13 : _GEN_159; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_161 = 10'ha1 == io_addr ? 32'h13 : _GEN_160; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_162 = 10'ha2 == io_addr ? 32'h13 : _GEN_161; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_163 = 10'ha3 == io_addr ? 32'h13 : _GEN_162; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_164 = 10'ha4 == io_addr ? 32'h13 : _GEN_163; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_165 = 10'ha5 == io_addr ? 32'h13 : _GEN_164; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_166 = 10'ha6 == io_addr ? 32'h13 : _GEN_165; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_167 = 10'ha7 == io_addr ? 32'h13 : _GEN_166; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_168 = 10'ha8 == io_addr ? 32'h13 : _GEN_167; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_169 = 10'ha9 == io_addr ? 32'h13 : _GEN_168; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_170 = 10'haa == io_addr ? 32'h13 : _GEN_169; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_171 = 10'hab == io_addr ? 32'h13 : _GEN_170; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_172 = 10'hac == io_addr ? 32'h13 : _GEN_171; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_173 = 10'had == io_addr ? 32'h13 : _GEN_172; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_174 = 10'hae == io_addr ? 32'h13 : _GEN_173; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_175 = 10'haf == io_addr ? 32'h13 : _GEN_174; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_176 = 10'hb0 == io_addr ? 32'h13 : _GEN_175; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_177 = 10'hb1 == io_addr ? 32'h13 : _GEN_176; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_178 = 10'hb2 == io_addr ? 32'h13 : _GEN_177; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_179 = 10'hb3 == io_addr ? 32'h13 : _GEN_178; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_180 = 10'hb4 == io_addr ? 32'h13 : _GEN_179; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_181 = 10'hb5 == io_addr ? 32'h13 : _GEN_180; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_182 = 10'hb6 == io_addr ? 32'h13 : _GEN_181; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_183 = 10'hb7 == io_addr ? 32'h13 : _GEN_182; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_184 = 10'hb8 == io_addr ? 32'h13 : _GEN_183; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_185 = 10'hb9 == io_addr ? 32'h13 : _GEN_184; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_186 = 10'hba == io_addr ? 32'h13 : _GEN_185; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_187 = 10'hbb == io_addr ? 32'h13 : _GEN_186; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_188 = 10'hbc == io_addr ? 32'h13 : _GEN_187; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_189 = 10'hbd == io_addr ? 32'h13 : _GEN_188; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_190 = 10'hbe == io_addr ? 32'h13 : _GEN_189; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_191 = 10'hbf == io_addr ? 32'h13 : _GEN_190; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_192 = 10'hc0 == io_addr ? 32'h13 : _GEN_191; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_193 = 10'hc1 == io_addr ? 32'h13 : _GEN_192; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_194 = 10'hc2 == io_addr ? 32'h13 : _GEN_193; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_195 = 10'hc3 == io_addr ? 32'h13 : _GEN_194; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_196 = 10'hc4 == io_addr ? 32'h13 : _GEN_195; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_197 = 10'hc5 == io_addr ? 32'h13 : _GEN_196; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_198 = 10'hc6 == io_addr ? 32'h13 : _GEN_197; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_199 = 10'hc7 == io_addr ? 32'h13 : _GEN_198; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_200 = 10'hc8 == io_addr ? 32'h13 : _GEN_199; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_201 = 10'hc9 == io_addr ? 32'h13 : _GEN_200; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_202 = 10'hca == io_addr ? 32'h13 : _GEN_201; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_203 = 10'hcb == io_addr ? 32'h13 : _GEN_202; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_204 = 10'hcc == io_addr ? 32'h13 : _GEN_203; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_205 = 10'hcd == io_addr ? 32'h13 : _GEN_204; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_206 = 10'hce == io_addr ? 32'h13 : _GEN_205; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_207 = 10'hcf == io_addr ? 32'h13 : _GEN_206; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_208 = 10'hd0 == io_addr ? 32'h13 : _GEN_207; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_209 = 10'hd1 == io_addr ? 32'h13 : _GEN_208; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_210 = 10'hd2 == io_addr ? 32'h13 : _GEN_209; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_211 = 10'hd3 == io_addr ? 32'h13 : _GEN_210; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_212 = 10'hd4 == io_addr ? 32'h13 : _GEN_211; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_213 = 10'hd5 == io_addr ? 32'h13 : _GEN_212; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_214 = 10'hd6 == io_addr ? 32'h13 : _GEN_213; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_215 = 10'hd7 == io_addr ? 32'h13 : _GEN_214; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_216 = 10'hd8 == io_addr ? 32'h13 : _GEN_215; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_217 = 10'hd9 == io_addr ? 32'h13 : _GEN_216; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_218 = 10'hda == io_addr ? 32'h13 : _GEN_217; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_219 = 10'hdb == io_addr ? 32'h13 : _GEN_218; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_220 = 10'hdc == io_addr ? 32'h13 : _GEN_219; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_221 = 10'hdd == io_addr ? 32'h13 : _GEN_220; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_222 = 10'hde == io_addr ? 32'h13 : _GEN_221; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_223 = 10'hdf == io_addr ? 32'h13 : _GEN_222; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_224 = 10'he0 == io_addr ? 32'h13 : _GEN_223; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_225 = 10'he1 == io_addr ? 32'h13 : _GEN_224; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_226 = 10'he2 == io_addr ? 32'h13 : _GEN_225; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_227 = 10'he3 == io_addr ? 32'h13 : _GEN_226; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_228 = 10'he4 == io_addr ? 32'h13 : _GEN_227; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_229 = 10'he5 == io_addr ? 32'h13 : _GEN_228; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_230 = 10'he6 == io_addr ? 32'h13 : _GEN_229; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_231 = 10'he7 == io_addr ? 32'h13 : _GEN_230; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_232 = 10'he8 == io_addr ? 32'h13 : _GEN_231; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_233 = 10'he9 == io_addr ? 32'h13 : _GEN_232; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_234 = 10'hea == io_addr ? 32'h13 : _GEN_233; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_235 = 10'heb == io_addr ? 32'h13 : _GEN_234; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_236 = 10'hec == io_addr ? 32'h13 : _GEN_235; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_237 = 10'hed == io_addr ? 32'h13 : _GEN_236; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_238 = 10'hee == io_addr ? 32'h13 : _GEN_237; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_239 = 10'hef == io_addr ? 32'h13 : _GEN_238; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_240 = 10'hf0 == io_addr ? 32'h13 : _GEN_239; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_241 = 10'hf1 == io_addr ? 32'h13 : _GEN_240; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_242 = 10'hf2 == io_addr ? 32'h13 : _GEN_241; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_243 = 10'hf3 == io_addr ? 32'h13 : _GEN_242; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_244 = 10'hf4 == io_addr ? 32'h13 : _GEN_243; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_245 = 10'hf5 == io_addr ? 32'h13 : _GEN_244; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_246 = 10'hf6 == io_addr ? 32'h13 : _GEN_245; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_247 = 10'hf7 == io_addr ? 32'h13 : _GEN_246; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_248 = 10'hf8 == io_addr ? 32'h13 : _GEN_247; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_249 = 10'hf9 == io_addr ? 32'h13 : _GEN_248; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_250 = 10'hfa == io_addr ? 32'h13 : _GEN_249; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_251 = 10'hfb == io_addr ? 32'h13 : _GEN_250; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_252 = 10'hfc == io_addr ? 32'h13 : _GEN_251; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_253 = 10'hfd == io_addr ? 32'h13 : _GEN_252; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_254 = 10'hfe == io_addr ? 32'h13 : _GEN_253; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_255 = 10'hff == io_addr ? 32'h13 : _GEN_254; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_256 = 10'h100 == io_addr ? 32'h13 : _GEN_255; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_257 = 10'h101 == io_addr ? 32'h13 : _GEN_256; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_258 = 10'h102 == io_addr ? 32'h13 : _GEN_257; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_259 = 10'h103 == io_addr ? 32'h13 : _GEN_258; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_260 = 10'h104 == io_addr ? 32'h13 : _GEN_259; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_261 = 10'h105 == io_addr ? 32'h13 : _GEN_260; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_262 = 10'h106 == io_addr ? 32'h13 : _GEN_261; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_263 = 10'h107 == io_addr ? 32'h13 : _GEN_262; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_264 = 10'h108 == io_addr ? 32'h13 : _GEN_263; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_265 = 10'h109 == io_addr ? 32'h13 : _GEN_264; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_266 = 10'h10a == io_addr ? 32'h13 : _GEN_265; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_267 = 10'h10b == io_addr ? 32'h13 : _GEN_266; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_268 = 10'h10c == io_addr ? 32'h13 : _GEN_267; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_269 = 10'h10d == io_addr ? 32'h13 : _GEN_268; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_270 = 10'h10e == io_addr ? 32'h13 : _GEN_269; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_271 = 10'h10f == io_addr ? 32'h13 : _GEN_270; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_272 = 10'h110 == io_addr ? 32'h13 : _GEN_271; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_273 = 10'h111 == io_addr ? 32'h13 : _GEN_272; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_274 = 10'h112 == io_addr ? 32'h13 : _GEN_273; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_275 = 10'h113 == io_addr ? 32'h13 : _GEN_274; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_276 = 10'h114 == io_addr ? 32'h13 : _GEN_275; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_277 = 10'h115 == io_addr ? 32'h13 : _GEN_276; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_278 = 10'h116 == io_addr ? 32'h13 : _GEN_277; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_279 = 10'h117 == io_addr ? 32'h13 : _GEN_278; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_280 = 10'h118 == io_addr ? 32'h13 : _GEN_279; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_281 = 10'h119 == io_addr ? 32'h13 : _GEN_280; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_282 = 10'h11a == io_addr ? 32'h13 : _GEN_281; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_283 = 10'h11b == io_addr ? 32'h13 : _GEN_282; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_284 = 10'h11c == io_addr ? 32'h13 : _GEN_283; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_285 = 10'h11d == io_addr ? 32'h13 : _GEN_284; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_286 = 10'h11e == io_addr ? 32'h13 : _GEN_285; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_287 = 10'h11f == io_addr ? 32'h13 : _GEN_286; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_288 = 10'h120 == io_addr ? 32'h13 : _GEN_287; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_289 = 10'h121 == io_addr ? 32'h13 : _GEN_288; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_290 = 10'h122 == io_addr ? 32'h13 : _GEN_289; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_291 = 10'h123 == io_addr ? 32'h13 : _GEN_290; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_292 = 10'h124 == io_addr ? 32'h13 : _GEN_291; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_293 = 10'h125 == io_addr ? 32'h13 : _GEN_292; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_294 = 10'h126 == io_addr ? 32'h13 : _GEN_293; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_295 = 10'h127 == io_addr ? 32'h13 : _GEN_294; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_296 = 10'h128 == io_addr ? 32'h13 : _GEN_295; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_297 = 10'h129 == io_addr ? 32'h13 : _GEN_296; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_298 = 10'h12a == io_addr ? 32'h13 : _GEN_297; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_299 = 10'h12b == io_addr ? 32'h13 : _GEN_298; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_300 = 10'h12c == io_addr ? 32'h13 : _GEN_299; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_301 = 10'h12d == io_addr ? 32'h13 : _GEN_300; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_302 = 10'h12e == io_addr ? 32'h13 : _GEN_301; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_303 = 10'h12f == io_addr ? 32'h13 : _GEN_302; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_304 = 10'h130 == io_addr ? 32'h13 : _GEN_303; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_305 = 10'h131 == io_addr ? 32'h13 : _GEN_304; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_306 = 10'h132 == io_addr ? 32'h13 : _GEN_305; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_307 = 10'h133 == io_addr ? 32'h13 : _GEN_306; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_308 = 10'h134 == io_addr ? 32'h13 : _GEN_307; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_309 = 10'h135 == io_addr ? 32'h13 : _GEN_308; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_310 = 10'h136 == io_addr ? 32'h13 : _GEN_309; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_311 = 10'h137 == io_addr ? 32'h13 : _GEN_310; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_312 = 10'h138 == io_addr ? 32'h13 : _GEN_311; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_313 = 10'h139 == io_addr ? 32'h13 : _GEN_312; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_314 = 10'h13a == io_addr ? 32'h13 : _GEN_313; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_315 = 10'h13b == io_addr ? 32'h13 : _GEN_314; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_316 = 10'h13c == io_addr ? 32'h13 : _GEN_315; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_317 = 10'h13d == io_addr ? 32'h13 : _GEN_316; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_318 = 10'h13e == io_addr ? 32'h13 : _GEN_317; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_319 = 10'h13f == io_addr ? 32'h13 : _GEN_318; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_320 = 10'h140 == io_addr ? 32'h13 : _GEN_319; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_321 = 10'h141 == io_addr ? 32'h13 : _GEN_320; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_322 = 10'h142 == io_addr ? 32'h13 : _GEN_321; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_323 = 10'h143 == io_addr ? 32'h13 : _GEN_322; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_324 = 10'h144 == io_addr ? 32'h13 : _GEN_323; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_325 = 10'h145 == io_addr ? 32'h13 : _GEN_324; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_326 = 10'h146 == io_addr ? 32'h13 : _GEN_325; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_327 = 10'h147 == io_addr ? 32'h13 : _GEN_326; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_328 = 10'h148 == io_addr ? 32'h13 : _GEN_327; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_329 = 10'h149 == io_addr ? 32'h13 : _GEN_328; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_330 = 10'h14a == io_addr ? 32'h13 : _GEN_329; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_331 = 10'h14b == io_addr ? 32'h13 : _GEN_330; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_332 = 10'h14c == io_addr ? 32'h13 : _GEN_331; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_333 = 10'h14d == io_addr ? 32'h13 : _GEN_332; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_334 = 10'h14e == io_addr ? 32'h13 : _GEN_333; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_335 = 10'h14f == io_addr ? 32'h13 : _GEN_334; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_336 = 10'h150 == io_addr ? 32'h13 : _GEN_335; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_337 = 10'h151 == io_addr ? 32'h13 : _GEN_336; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_338 = 10'h152 == io_addr ? 32'h13 : _GEN_337; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_339 = 10'h153 == io_addr ? 32'h13 : _GEN_338; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_340 = 10'h154 == io_addr ? 32'h13 : _GEN_339; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_341 = 10'h155 == io_addr ? 32'h13 : _GEN_340; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_342 = 10'h156 == io_addr ? 32'h13 : _GEN_341; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_343 = 10'h157 == io_addr ? 32'h13 : _GEN_342; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_344 = 10'h158 == io_addr ? 32'h13 : _GEN_343; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_345 = 10'h159 == io_addr ? 32'h13 : _GEN_344; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_346 = 10'h15a == io_addr ? 32'h13 : _GEN_345; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_347 = 10'h15b == io_addr ? 32'h13 : _GEN_346; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_348 = 10'h15c == io_addr ? 32'h13 : _GEN_347; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_349 = 10'h15d == io_addr ? 32'h13 : _GEN_348; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_350 = 10'h15e == io_addr ? 32'h13 : _GEN_349; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_351 = 10'h15f == io_addr ? 32'h13 : _GEN_350; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_352 = 10'h160 == io_addr ? 32'h13 : _GEN_351; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_353 = 10'h161 == io_addr ? 32'h13 : _GEN_352; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_354 = 10'h162 == io_addr ? 32'h13 : _GEN_353; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_355 = 10'h163 == io_addr ? 32'h13 : _GEN_354; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_356 = 10'h164 == io_addr ? 32'h13 : _GEN_355; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_357 = 10'h165 == io_addr ? 32'h13 : _GEN_356; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_358 = 10'h166 == io_addr ? 32'h13 : _GEN_357; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_359 = 10'h167 == io_addr ? 32'h13 : _GEN_358; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_360 = 10'h168 == io_addr ? 32'h13 : _GEN_359; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_361 = 10'h169 == io_addr ? 32'h13 : _GEN_360; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_362 = 10'h16a == io_addr ? 32'h13 : _GEN_361; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_363 = 10'h16b == io_addr ? 32'h13 : _GEN_362; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_364 = 10'h16c == io_addr ? 32'h13 : _GEN_363; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_365 = 10'h16d == io_addr ? 32'h13 : _GEN_364; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_366 = 10'h16e == io_addr ? 32'h13 : _GEN_365; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_367 = 10'h16f == io_addr ? 32'h13 : _GEN_366; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_368 = 10'h170 == io_addr ? 32'h13 : _GEN_367; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_369 = 10'h171 == io_addr ? 32'h13 : _GEN_368; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_370 = 10'h172 == io_addr ? 32'h13 : _GEN_369; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_371 = 10'h173 == io_addr ? 32'h13 : _GEN_370; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_372 = 10'h174 == io_addr ? 32'h13 : _GEN_371; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_373 = 10'h175 == io_addr ? 32'h13 : _GEN_372; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_374 = 10'h176 == io_addr ? 32'h13 : _GEN_373; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_375 = 10'h177 == io_addr ? 32'h13 : _GEN_374; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_376 = 10'h178 == io_addr ? 32'h13 : _GEN_375; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_377 = 10'h179 == io_addr ? 32'h13 : _GEN_376; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_378 = 10'h17a == io_addr ? 32'h13 : _GEN_377; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_379 = 10'h17b == io_addr ? 32'h13 : _GEN_378; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_380 = 10'h17c == io_addr ? 32'h13 : _GEN_379; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_381 = 10'h17d == io_addr ? 32'h13 : _GEN_380; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_382 = 10'h17e == io_addr ? 32'h13 : _GEN_381; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_383 = 10'h17f == io_addr ? 32'h13 : _GEN_382; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_384 = 10'h180 == io_addr ? 32'h13 : _GEN_383; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_385 = 10'h181 == io_addr ? 32'h13 : _GEN_384; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_386 = 10'h182 == io_addr ? 32'h13 : _GEN_385; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_387 = 10'h183 == io_addr ? 32'h13 : _GEN_386; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_388 = 10'h184 == io_addr ? 32'h13 : _GEN_387; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_389 = 10'h185 == io_addr ? 32'h13 : _GEN_388; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_390 = 10'h186 == io_addr ? 32'h13 : _GEN_389; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_391 = 10'h187 == io_addr ? 32'h13 : _GEN_390; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_392 = 10'h188 == io_addr ? 32'h13 : _GEN_391; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_393 = 10'h189 == io_addr ? 32'h13 : _GEN_392; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_394 = 10'h18a == io_addr ? 32'h13 : _GEN_393; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_395 = 10'h18b == io_addr ? 32'h13 : _GEN_394; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_396 = 10'h18c == io_addr ? 32'h13 : _GEN_395; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_397 = 10'h18d == io_addr ? 32'h13 : _GEN_396; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_398 = 10'h18e == io_addr ? 32'h13 : _GEN_397; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_399 = 10'h18f == io_addr ? 32'h13 : _GEN_398; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_400 = 10'h190 == io_addr ? 32'h13 : _GEN_399; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_401 = 10'h191 == io_addr ? 32'h13 : _GEN_400; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_402 = 10'h192 == io_addr ? 32'h13 : _GEN_401; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_403 = 10'h193 == io_addr ? 32'h13 : _GEN_402; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_404 = 10'h194 == io_addr ? 32'h13 : _GEN_403; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_405 = 10'h195 == io_addr ? 32'h13 : _GEN_404; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_406 = 10'h196 == io_addr ? 32'h13 : _GEN_405; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_407 = 10'h197 == io_addr ? 32'h13 : _GEN_406; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_408 = 10'h198 == io_addr ? 32'h13 : _GEN_407; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_409 = 10'h199 == io_addr ? 32'h13 : _GEN_408; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_410 = 10'h19a == io_addr ? 32'h13 : _GEN_409; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_411 = 10'h19b == io_addr ? 32'h13 : _GEN_410; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_412 = 10'h19c == io_addr ? 32'h13 : _GEN_411; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_413 = 10'h19d == io_addr ? 32'h13 : _GEN_412; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_414 = 10'h19e == io_addr ? 32'h13 : _GEN_413; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_415 = 10'h19f == io_addr ? 32'h13 : _GEN_414; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_416 = 10'h1a0 == io_addr ? 32'h13 : _GEN_415; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_417 = 10'h1a1 == io_addr ? 32'h13 : _GEN_416; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_418 = 10'h1a2 == io_addr ? 32'h13 : _GEN_417; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_419 = 10'h1a3 == io_addr ? 32'h13 : _GEN_418; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_420 = 10'h1a4 == io_addr ? 32'h13 : _GEN_419; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_421 = 10'h1a5 == io_addr ? 32'h13 : _GEN_420; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_422 = 10'h1a6 == io_addr ? 32'h13 : _GEN_421; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_423 = 10'h1a7 == io_addr ? 32'h13 : _GEN_422; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_424 = 10'h1a8 == io_addr ? 32'h13 : _GEN_423; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_425 = 10'h1a9 == io_addr ? 32'h13 : _GEN_424; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_426 = 10'h1aa == io_addr ? 32'h13 : _GEN_425; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_427 = 10'h1ab == io_addr ? 32'h13 : _GEN_426; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_428 = 10'h1ac == io_addr ? 32'h13 : _GEN_427; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_429 = 10'h1ad == io_addr ? 32'h13 : _GEN_428; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_430 = 10'h1ae == io_addr ? 32'h13 : _GEN_429; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_431 = 10'h1af == io_addr ? 32'h13 : _GEN_430; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_432 = 10'h1b0 == io_addr ? 32'h13 : _GEN_431; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_433 = 10'h1b1 == io_addr ? 32'h13 : _GEN_432; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_434 = 10'h1b2 == io_addr ? 32'h13 : _GEN_433; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_435 = 10'h1b3 == io_addr ? 32'h13 : _GEN_434; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_436 = 10'h1b4 == io_addr ? 32'h13 : _GEN_435; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_437 = 10'h1b5 == io_addr ? 32'h13 : _GEN_436; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_438 = 10'h1b6 == io_addr ? 32'h13 : _GEN_437; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_439 = 10'h1b7 == io_addr ? 32'h13 : _GEN_438; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_440 = 10'h1b8 == io_addr ? 32'h13 : _GEN_439; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_441 = 10'h1b9 == io_addr ? 32'h13 : _GEN_440; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_442 = 10'h1ba == io_addr ? 32'h13 : _GEN_441; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_443 = 10'h1bb == io_addr ? 32'h13 : _GEN_442; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_444 = 10'h1bc == io_addr ? 32'h13 : _GEN_443; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_445 = 10'h1bd == io_addr ? 32'h13 : _GEN_444; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_446 = 10'h1be == io_addr ? 32'h13 : _GEN_445; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_447 = 10'h1bf == io_addr ? 32'h13 : _GEN_446; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_448 = 10'h1c0 == io_addr ? 32'h13 : _GEN_447; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_449 = 10'h1c1 == io_addr ? 32'h13 : _GEN_448; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_450 = 10'h1c2 == io_addr ? 32'h13 : _GEN_449; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_451 = 10'h1c3 == io_addr ? 32'h13 : _GEN_450; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_452 = 10'h1c4 == io_addr ? 32'h13 : _GEN_451; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_453 = 10'h1c5 == io_addr ? 32'h13 : _GEN_452; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_454 = 10'h1c6 == io_addr ? 32'h13 : _GEN_453; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_455 = 10'h1c7 == io_addr ? 32'h13 : _GEN_454; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_456 = 10'h1c8 == io_addr ? 32'h13 : _GEN_455; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_457 = 10'h1c9 == io_addr ? 32'h13 : _GEN_456; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_458 = 10'h1ca == io_addr ? 32'h13 : _GEN_457; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_459 = 10'h1cb == io_addr ? 32'h13 : _GEN_458; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_460 = 10'h1cc == io_addr ? 32'h13 : _GEN_459; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_461 = 10'h1cd == io_addr ? 32'h13 : _GEN_460; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_462 = 10'h1ce == io_addr ? 32'h13 : _GEN_461; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_463 = 10'h1cf == io_addr ? 32'h13 : _GEN_462; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_464 = 10'h1d0 == io_addr ? 32'h13 : _GEN_463; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_465 = 10'h1d1 == io_addr ? 32'h13 : _GEN_464; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_466 = 10'h1d2 == io_addr ? 32'h13 : _GEN_465; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_467 = 10'h1d3 == io_addr ? 32'h13 : _GEN_466; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_468 = 10'h1d4 == io_addr ? 32'h13 : _GEN_467; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_469 = 10'h1d5 == io_addr ? 32'h13 : _GEN_468; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_470 = 10'h1d6 == io_addr ? 32'h13 : _GEN_469; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_471 = 10'h1d7 == io_addr ? 32'h13 : _GEN_470; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_472 = 10'h1d8 == io_addr ? 32'h13 : _GEN_471; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_473 = 10'h1d9 == io_addr ? 32'h13 : _GEN_472; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_474 = 10'h1da == io_addr ? 32'h13 : _GEN_473; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_475 = 10'h1db == io_addr ? 32'h13 : _GEN_474; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_476 = 10'h1dc == io_addr ? 32'h13 : _GEN_475; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_477 = 10'h1dd == io_addr ? 32'h13 : _GEN_476; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_478 = 10'h1de == io_addr ? 32'h13 : _GEN_477; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_479 = 10'h1df == io_addr ? 32'h13 : _GEN_478; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_480 = 10'h1e0 == io_addr ? 32'h13 : _GEN_479; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_481 = 10'h1e1 == io_addr ? 32'h13 : _GEN_480; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_482 = 10'h1e2 == io_addr ? 32'h13 : _GEN_481; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_483 = 10'h1e3 == io_addr ? 32'h13 : _GEN_482; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_484 = 10'h1e4 == io_addr ? 32'h13 : _GEN_483; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_485 = 10'h1e5 == io_addr ? 32'h13 : _GEN_484; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_486 = 10'h1e6 == io_addr ? 32'h13 : _GEN_485; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_487 = 10'h1e7 == io_addr ? 32'h13 : _GEN_486; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_488 = 10'h1e8 == io_addr ? 32'h13 : _GEN_487; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_489 = 10'h1e9 == io_addr ? 32'h13 : _GEN_488; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_490 = 10'h1ea == io_addr ? 32'h13 : _GEN_489; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_491 = 10'h1eb == io_addr ? 32'h13 : _GEN_490; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_492 = 10'h1ec == io_addr ? 32'h13 : _GEN_491; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_493 = 10'h1ed == io_addr ? 32'h13 : _GEN_492; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_494 = 10'h1ee == io_addr ? 32'h13 : _GEN_493; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_495 = 10'h1ef == io_addr ? 32'h13 : _GEN_494; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_496 = 10'h1f0 == io_addr ? 32'h13 : _GEN_495; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_497 = 10'h1f1 == io_addr ? 32'h13 : _GEN_496; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_498 = 10'h1f2 == io_addr ? 32'h13 : _GEN_497; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_499 = 10'h1f3 == io_addr ? 32'h13 : _GEN_498; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_500 = 10'h1f4 == io_addr ? 32'h13 : _GEN_499; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_501 = 10'h1f5 == io_addr ? 32'h13 : _GEN_500; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_502 = 10'h1f6 == io_addr ? 32'h13 : _GEN_501; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_503 = 10'h1f7 == io_addr ? 32'h13 : _GEN_502; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_504 = 10'h1f8 == io_addr ? 32'h13 : _GEN_503; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_505 = 10'h1f9 == io_addr ? 32'h13 : _GEN_504; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_506 = 10'h1fa == io_addr ? 32'h13 : _GEN_505; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_507 = 10'h1fb == io_addr ? 32'h13 : _GEN_506; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_508 = 10'h1fc == io_addr ? 32'h13 : _GEN_507; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_509 = 10'h1fd == io_addr ? 32'h13 : _GEN_508; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_510 = 10'h1fe == io_addr ? 32'h13 : _GEN_509; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_511 = 10'h1ff == io_addr ? 32'h13 : _GEN_510; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_512 = 10'h200 == io_addr ? 32'h13 : _GEN_511; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_513 = 10'h201 == io_addr ? 32'h13 : _GEN_512; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_514 = 10'h202 == io_addr ? 32'h13 : _GEN_513; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_515 = 10'h203 == io_addr ? 32'h13 : _GEN_514; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_516 = 10'h204 == io_addr ? 32'h13 : _GEN_515; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_517 = 10'h205 == io_addr ? 32'h13 : _GEN_516; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_518 = 10'h206 == io_addr ? 32'h13 : _GEN_517; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_519 = 10'h207 == io_addr ? 32'h13 : _GEN_518; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_520 = 10'h208 == io_addr ? 32'h13 : _GEN_519; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_521 = 10'h209 == io_addr ? 32'h13 : _GEN_520; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_522 = 10'h20a == io_addr ? 32'h13 : _GEN_521; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_523 = 10'h20b == io_addr ? 32'h13 : _GEN_522; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_524 = 10'h20c == io_addr ? 32'h13 : _GEN_523; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_525 = 10'h20d == io_addr ? 32'h13 : _GEN_524; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_526 = 10'h20e == io_addr ? 32'h13 : _GEN_525; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_527 = 10'h20f == io_addr ? 32'h13 : _GEN_526; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_528 = 10'h210 == io_addr ? 32'h13 : _GEN_527; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_529 = 10'h211 == io_addr ? 32'h13 : _GEN_528; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_530 = 10'h212 == io_addr ? 32'h13 : _GEN_529; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_531 = 10'h213 == io_addr ? 32'h13 : _GEN_530; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_532 = 10'h214 == io_addr ? 32'h13 : _GEN_531; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_533 = 10'h215 == io_addr ? 32'h13 : _GEN_532; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_534 = 10'h216 == io_addr ? 32'h13 : _GEN_533; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_535 = 10'h217 == io_addr ? 32'h13 : _GEN_534; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_536 = 10'h218 == io_addr ? 32'h13 : _GEN_535; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_537 = 10'h219 == io_addr ? 32'h13 : _GEN_536; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_538 = 10'h21a == io_addr ? 32'h13 : _GEN_537; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_539 = 10'h21b == io_addr ? 32'h13 : _GEN_538; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_540 = 10'h21c == io_addr ? 32'h13 : _GEN_539; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_541 = 10'h21d == io_addr ? 32'h13 : _GEN_540; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_542 = 10'h21e == io_addr ? 32'h13 : _GEN_541; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_543 = 10'h21f == io_addr ? 32'h13 : _GEN_542; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_544 = 10'h220 == io_addr ? 32'h13 : _GEN_543; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_545 = 10'h221 == io_addr ? 32'h13 : _GEN_544; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_546 = 10'h222 == io_addr ? 32'h13 : _GEN_545; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_547 = 10'h223 == io_addr ? 32'h13 : _GEN_546; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_548 = 10'h224 == io_addr ? 32'h13 : _GEN_547; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_549 = 10'h225 == io_addr ? 32'h13 : _GEN_548; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_550 = 10'h226 == io_addr ? 32'h13 : _GEN_549; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_551 = 10'h227 == io_addr ? 32'h13 : _GEN_550; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_552 = 10'h228 == io_addr ? 32'h13 : _GEN_551; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_553 = 10'h229 == io_addr ? 32'h13 : _GEN_552; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_554 = 10'h22a == io_addr ? 32'h13 : _GEN_553; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_555 = 10'h22b == io_addr ? 32'h13 : _GEN_554; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_556 = 10'h22c == io_addr ? 32'h13 : _GEN_555; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_557 = 10'h22d == io_addr ? 32'h13 : _GEN_556; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_558 = 10'h22e == io_addr ? 32'h13 : _GEN_557; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_559 = 10'h22f == io_addr ? 32'h13 : _GEN_558; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_560 = 10'h230 == io_addr ? 32'h13 : _GEN_559; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_561 = 10'h231 == io_addr ? 32'h13 : _GEN_560; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_562 = 10'h232 == io_addr ? 32'h13 : _GEN_561; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_563 = 10'h233 == io_addr ? 32'h13 : _GEN_562; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_564 = 10'h234 == io_addr ? 32'h13 : _GEN_563; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_565 = 10'h235 == io_addr ? 32'h13 : _GEN_564; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_566 = 10'h236 == io_addr ? 32'h13 : _GEN_565; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_567 = 10'h237 == io_addr ? 32'h13 : _GEN_566; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_568 = 10'h238 == io_addr ? 32'h13 : _GEN_567; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_569 = 10'h239 == io_addr ? 32'h13 : _GEN_568; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_570 = 10'h23a == io_addr ? 32'h13 : _GEN_569; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_571 = 10'h23b == io_addr ? 32'h13 : _GEN_570; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_572 = 10'h23c == io_addr ? 32'h13 : _GEN_571; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_573 = 10'h23d == io_addr ? 32'h13 : _GEN_572; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_574 = 10'h23e == io_addr ? 32'h13 : _GEN_573; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_575 = 10'h23f == io_addr ? 32'h13 : _GEN_574; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_576 = 10'h240 == io_addr ? 32'h13 : _GEN_575; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_577 = 10'h241 == io_addr ? 32'h13 : _GEN_576; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_578 = 10'h242 == io_addr ? 32'h13 : _GEN_577; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_579 = 10'h243 == io_addr ? 32'h13 : _GEN_578; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_580 = 10'h244 == io_addr ? 32'h13 : _GEN_579; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_581 = 10'h245 == io_addr ? 32'h13 : _GEN_580; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_582 = 10'h246 == io_addr ? 32'h13 : _GEN_581; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_583 = 10'h247 == io_addr ? 32'h13 : _GEN_582; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_584 = 10'h248 == io_addr ? 32'h13 : _GEN_583; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_585 = 10'h249 == io_addr ? 32'h13 : _GEN_584; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_586 = 10'h24a == io_addr ? 32'h13 : _GEN_585; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_587 = 10'h24b == io_addr ? 32'h13 : _GEN_586; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_588 = 10'h24c == io_addr ? 32'h13 : _GEN_587; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_589 = 10'h24d == io_addr ? 32'h13 : _GEN_588; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_590 = 10'h24e == io_addr ? 32'h13 : _GEN_589; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_591 = 10'h24f == io_addr ? 32'h13 : _GEN_590; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_592 = 10'h250 == io_addr ? 32'h13 : _GEN_591; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_593 = 10'h251 == io_addr ? 32'h13 : _GEN_592; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_594 = 10'h252 == io_addr ? 32'h13 : _GEN_593; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_595 = 10'h253 == io_addr ? 32'h13 : _GEN_594; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_596 = 10'h254 == io_addr ? 32'h13 : _GEN_595; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_597 = 10'h255 == io_addr ? 32'h13 : _GEN_596; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_598 = 10'h256 == io_addr ? 32'h13 : _GEN_597; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_599 = 10'h257 == io_addr ? 32'h13 : _GEN_598; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_600 = 10'h258 == io_addr ? 32'h13 : _GEN_599; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_601 = 10'h259 == io_addr ? 32'h13 : _GEN_600; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_602 = 10'h25a == io_addr ? 32'h13 : _GEN_601; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_603 = 10'h25b == io_addr ? 32'h13 : _GEN_602; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_604 = 10'h25c == io_addr ? 32'h13 : _GEN_603; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_605 = 10'h25d == io_addr ? 32'h13 : _GEN_604; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_606 = 10'h25e == io_addr ? 32'h13 : _GEN_605; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_607 = 10'h25f == io_addr ? 32'h13 : _GEN_606; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_608 = 10'h260 == io_addr ? 32'h13 : _GEN_607; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_609 = 10'h261 == io_addr ? 32'h13 : _GEN_608; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_610 = 10'h262 == io_addr ? 32'h13 : _GEN_609; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_611 = 10'h263 == io_addr ? 32'h13 : _GEN_610; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_612 = 10'h264 == io_addr ? 32'h13 : _GEN_611; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_613 = 10'h265 == io_addr ? 32'h13 : _GEN_612; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_614 = 10'h266 == io_addr ? 32'h13 : _GEN_613; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_615 = 10'h267 == io_addr ? 32'h13 : _GEN_614; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_616 = 10'h268 == io_addr ? 32'h13 : _GEN_615; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_617 = 10'h269 == io_addr ? 32'h13 : _GEN_616; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_618 = 10'h26a == io_addr ? 32'h13 : _GEN_617; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_619 = 10'h26b == io_addr ? 32'h13 : _GEN_618; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_620 = 10'h26c == io_addr ? 32'h13 : _GEN_619; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_621 = 10'h26d == io_addr ? 32'h13 : _GEN_620; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_622 = 10'h26e == io_addr ? 32'h13 : _GEN_621; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_623 = 10'h26f == io_addr ? 32'h13 : _GEN_622; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_624 = 10'h270 == io_addr ? 32'h13 : _GEN_623; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_625 = 10'h271 == io_addr ? 32'h13 : _GEN_624; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_626 = 10'h272 == io_addr ? 32'h13 : _GEN_625; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_627 = 10'h273 == io_addr ? 32'h13 : _GEN_626; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_628 = 10'h274 == io_addr ? 32'h13 : _GEN_627; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_629 = 10'h275 == io_addr ? 32'h13 : _GEN_628; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_630 = 10'h276 == io_addr ? 32'h13 : _GEN_629; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_631 = 10'h277 == io_addr ? 32'h13 : _GEN_630; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_632 = 10'h278 == io_addr ? 32'h13 : _GEN_631; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_633 = 10'h279 == io_addr ? 32'h13 : _GEN_632; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_634 = 10'h27a == io_addr ? 32'h13 : _GEN_633; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_635 = 10'h27b == io_addr ? 32'h13 : _GEN_634; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_636 = 10'h27c == io_addr ? 32'h13 : _GEN_635; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_637 = 10'h27d == io_addr ? 32'h13 : _GEN_636; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_638 = 10'h27e == io_addr ? 32'h13 : _GEN_637; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_639 = 10'h27f == io_addr ? 32'h13 : _GEN_638; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_640 = 10'h280 == io_addr ? 32'h13 : _GEN_639; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_641 = 10'h281 == io_addr ? 32'h13 : _GEN_640; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_642 = 10'h282 == io_addr ? 32'h13 : _GEN_641; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_643 = 10'h283 == io_addr ? 32'h13 : _GEN_642; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_644 = 10'h284 == io_addr ? 32'h13 : _GEN_643; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_645 = 10'h285 == io_addr ? 32'h13 : _GEN_644; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_646 = 10'h286 == io_addr ? 32'h13 : _GEN_645; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_647 = 10'h287 == io_addr ? 32'h13 : _GEN_646; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_648 = 10'h288 == io_addr ? 32'h13 : _GEN_647; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_649 = 10'h289 == io_addr ? 32'h13 : _GEN_648; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_650 = 10'h28a == io_addr ? 32'h13 : _GEN_649; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_651 = 10'h28b == io_addr ? 32'h13 : _GEN_650; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_652 = 10'h28c == io_addr ? 32'h13 : _GEN_651; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_653 = 10'h28d == io_addr ? 32'h13 : _GEN_652; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_654 = 10'h28e == io_addr ? 32'h13 : _GEN_653; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_655 = 10'h28f == io_addr ? 32'h13 : _GEN_654; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_656 = 10'h290 == io_addr ? 32'h13 : _GEN_655; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_657 = 10'h291 == io_addr ? 32'h13 : _GEN_656; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_658 = 10'h292 == io_addr ? 32'h13 : _GEN_657; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_659 = 10'h293 == io_addr ? 32'h13 : _GEN_658; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_660 = 10'h294 == io_addr ? 32'h13 : _GEN_659; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_661 = 10'h295 == io_addr ? 32'h13 : _GEN_660; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_662 = 10'h296 == io_addr ? 32'h13 : _GEN_661; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_663 = 10'h297 == io_addr ? 32'h13 : _GEN_662; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_664 = 10'h298 == io_addr ? 32'h13 : _GEN_663; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_665 = 10'h299 == io_addr ? 32'h13 : _GEN_664; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_666 = 10'h29a == io_addr ? 32'h13 : _GEN_665; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_667 = 10'h29b == io_addr ? 32'h13 : _GEN_666; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_668 = 10'h29c == io_addr ? 32'h13 : _GEN_667; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_669 = 10'h29d == io_addr ? 32'h13 : _GEN_668; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_670 = 10'h29e == io_addr ? 32'h13 : _GEN_669; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_671 = 10'h29f == io_addr ? 32'h13 : _GEN_670; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_672 = 10'h2a0 == io_addr ? 32'h13 : _GEN_671; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_673 = 10'h2a1 == io_addr ? 32'h13 : _GEN_672; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_674 = 10'h2a2 == io_addr ? 32'h13 : _GEN_673; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_675 = 10'h2a3 == io_addr ? 32'h13 : _GEN_674; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_676 = 10'h2a4 == io_addr ? 32'h13 : _GEN_675; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_677 = 10'h2a5 == io_addr ? 32'h13 : _GEN_676; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_678 = 10'h2a6 == io_addr ? 32'h13 : _GEN_677; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_679 = 10'h2a7 == io_addr ? 32'h13 : _GEN_678; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_680 = 10'h2a8 == io_addr ? 32'h13 : _GEN_679; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_681 = 10'h2a9 == io_addr ? 32'h13 : _GEN_680; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_682 = 10'h2aa == io_addr ? 32'h13 : _GEN_681; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_683 = 10'h2ab == io_addr ? 32'h13 : _GEN_682; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_684 = 10'h2ac == io_addr ? 32'h13 : _GEN_683; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_685 = 10'h2ad == io_addr ? 32'h13 : _GEN_684; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_686 = 10'h2ae == io_addr ? 32'h13 : _GEN_685; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_687 = 10'h2af == io_addr ? 32'h13 : _GEN_686; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_688 = 10'h2b0 == io_addr ? 32'h13 : _GEN_687; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_689 = 10'h2b1 == io_addr ? 32'h13 : _GEN_688; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_690 = 10'h2b2 == io_addr ? 32'h13 : _GEN_689; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_691 = 10'h2b3 == io_addr ? 32'h13 : _GEN_690; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_692 = 10'h2b4 == io_addr ? 32'h13 : _GEN_691; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_693 = 10'h2b5 == io_addr ? 32'h13 : _GEN_692; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_694 = 10'h2b6 == io_addr ? 32'h13 : _GEN_693; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_695 = 10'h2b7 == io_addr ? 32'h13 : _GEN_694; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_696 = 10'h2b8 == io_addr ? 32'h13 : _GEN_695; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_697 = 10'h2b9 == io_addr ? 32'h13 : _GEN_696; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_698 = 10'h2ba == io_addr ? 32'h13 : _GEN_697; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_699 = 10'h2bb == io_addr ? 32'h13 : _GEN_698; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_700 = 10'h2bc == io_addr ? 32'h13 : _GEN_699; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_701 = 10'h2bd == io_addr ? 32'h13 : _GEN_700; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_702 = 10'h2be == io_addr ? 32'h13 : _GEN_701; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_703 = 10'h2bf == io_addr ? 32'h13 : _GEN_702; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_704 = 10'h2c0 == io_addr ? 32'h13 : _GEN_703; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_705 = 10'h2c1 == io_addr ? 32'h13 : _GEN_704; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_706 = 10'h2c2 == io_addr ? 32'h13 : _GEN_705; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_707 = 10'h2c3 == io_addr ? 32'h13 : _GEN_706; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_708 = 10'h2c4 == io_addr ? 32'h13 : _GEN_707; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_709 = 10'h2c5 == io_addr ? 32'h13 : _GEN_708; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_710 = 10'h2c6 == io_addr ? 32'h13 : _GEN_709; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_711 = 10'h2c7 == io_addr ? 32'h13 : _GEN_710; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_712 = 10'h2c8 == io_addr ? 32'h13 : _GEN_711; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_713 = 10'h2c9 == io_addr ? 32'h13 : _GEN_712; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_714 = 10'h2ca == io_addr ? 32'h13 : _GEN_713; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_715 = 10'h2cb == io_addr ? 32'h13 : _GEN_714; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_716 = 10'h2cc == io_addr ? 32'h13 : _GEN_715; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_717 = 10'h2cd == io_addr ? 32'h13 : _GEN_716; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_718 = 10'h2ce == io_addr ? 32'h13 : _GEN_717; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_719 = 10'h2cf == io_addr ? 32'h13 : _GEN_718; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_720 = 10'h2d0 == io_addr ? 32'h13 : _GEN_719; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_721 = 10'h2d1 == io_addr ? 32'h13 : _GEN_720; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_722 = 10'h2d2 == io_addr ? 32'h13 : _GEN_721; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_723 = 10'h2d3 == io_addr ? 32'h13 : _GEN_722; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_724 = 10'h2d4 == io_addr ? 32'h13 : _GEN_723; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_725 = 10'h2d5 == io_addr ? 32'h13 : _GEN_724; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_726 = 10'h2d6 == io_addr ? 32'h13 : _GEN_725; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_727 = 10'h2d7 == io_addr ? 32'h13 : _GEN_726; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_728 = 10'h2d8 == io_addr ? 32'h13 : _GEN_727; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_729 = 10'h2d9 == io_addr ? 32'h13 : _GEN_728; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_730 = 10'h2da == io_addr ? 32'h13 : _GEN_729; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_731 = 10'h2db == io_addr ? 32'h13 : _GEN_730; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_732 = 10'h2dc == io_addr ? 32'h13 : _GEN_731; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_733 = 10'h2dd == io_addr ? 32'h13 : _GEN_732; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_734 = 10'h2de == io_addr ? 32'h13 : _GEN_733; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_735 = 10'h2df == io_addr ? 32'h13 : _GEN_734; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_736 = 10'h2e0 == io_addr ? 32'h13 : _GEN_735; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_737 = 10'h2e1 == io_addr ? 32'h13 : _GEN_736; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_738 = 10'h2e2 == io_addr ? 32'h13 : _GEN_737; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_739 = 10'h2e3 == io_addr ? 32'h13 : _GEN_738; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_740 = 10'h2e4 == io_addr ? 32'h13 : _GEN_739; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_741 = 10'h2e5 == io_addr ? 32'h13 : _GEN_740; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_742 = 10'h2e6 == io_addr ? 32'h13 : _GEN_741; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_743 = 10'h2e7 == io_addr ? 32'h13 : _GEN_742; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_744 = 10'h2e8 == io_addr ? 32'h13 : _GEN_743; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_745 = 10'h2e9 == io_addr ? 32'h13 : _GEN_744; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_746 = 10'h2ea == io_addr ? 32'h13 : _GEN_745; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_747 = 10'h2eb == io_addr ? 32'h13 : _GEN_746; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_748 = 10'h2ec == io_addr ? 32'h13 : _GEN_747; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_749 = 10'h2ed == io_addr ? 32'h13 : _GEN_748; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_750 = 10'h2ee == io_addr ? 32'h13 : _GEN_749; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_751 = 10'h2ef == io_addr ? 32'h13 : _GEN_750; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_752 = 10'h2f0 == io_addr ? 32'h13 : _GEN_751; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_753 = 10'h2f1 == io_addr ? 32'h13 : _GEN_752; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_754 = 10'h2f2 == io_addr ? 32'h13 : _GEN_753; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_755 = 10'h2f3 == io_addr ? 32'h13 : _GEN_754; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_756 = 10'h2f4 == io_addr ? 32'h13 : _GEN_755; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_757 = 10'h2f5 == io_addr ? 32'h13 : _GEN_756; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_758 = 10'h2f6 == io_addr ? 32'h13 : _GEN_757; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_759 = 10'h2f7 == io_addr ? 32'h13 : _GEN_758; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_760 = 10'h2f8 == io_addr ? 32'h13 : _GEN_759; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_761 = 10'h2f9 == io_addr ? 32'h13 : _GEN_760; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_762 = 10'h2fa == io_addr ? 32'h13 : _GEN_761; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_763 = 10'h2fb == io_addr ? 32'h13 : _GEN_762; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_764 = 10'h2fc == io_addr ? 32'h13 : _GEN_763; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_765 = 10'h2fd == io_addr ? 32'h13 : _GEN_764; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_766 = 10'h2fe == io_addr ? 32'h13 : _GEN_765; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_767 = 10'h2ff == io_addr ? 32'h13 : _GEN_766; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_768 = 10'h300 == io_addr ? 32'h13 : _GEN_767; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_769 = 10'h301 == io_addr ? 32'h13 : _GEN_768; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_770 = 10'h302 == io_addr ? 32'h13 : _GEN_769; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_771 = 10'h303 == io_addr ? 32'h13 : _GEN_770; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_772 = 10'h304 == io_addr ? 32'h13 : _GEN_771; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_773 = 10'h305 == io_addr ? 32'h13 : _GEN_772; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_774 = 10'h306 == io_addr ? 32'h13 : _GEN_773; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_775 = 10'h307 == io_addr ? 32'h13 : _GEN_774; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_776 = 10'h308 == io_addr ? 32'h13 : _GEN_775; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_777 = 10'h309 == io_addr ? 32'h13 : _GEN_776; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_778 = 10'h30a == io_addr ? 32'h13 : _GEN_777; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_779 = 10'h30b == io_addr ? 32'h13 : _GEN_778; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_780 = 10'h30c == io_addr ? 32'h13 : _GEN_779; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_781 = 10'h30d == io_addr ? 32'h13 : _GEN_780; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_782 = 10'h30e == io_addr ? 32'h13 : _GEN_781; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_783 = 10'h30f == io_addr ? 32'h13 : _GEN_782; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_784 = 10'h310 == io_addr ? 32'h13 : _GEN_783; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_785 = 10'h311 == io_addr ? 32'h13 : _GEN_784; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_786 = 10'h312 == io_addr ? 32'h13 : _GEN_785; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_787 = 10'h313 == io_addr ? 32'h13 : _GEN_786; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_788 = 10'h314 == io_addr ? 32'h13 : _GEN_787; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_789 = 10'h315 == io_addr ? 32'h13 : _GEN_788; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_790 = 10'h316 == io_addr ? 32'h13 : _GEN_789; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_791 = 10'h317 == io_addr ? 32'h13 : _GEN_790; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_792 = 10'h318 == io_addr ? 32'h13 : _GEN_791; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_793 = 10'h319 == io_addr ? 32'h13 : _GEN_792; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_794 = 10'h31a == io_addr ? 32'h13 : _GEN_793; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_795 = 10'h31b == io_addr ? 32'h13 : _GEN_794; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_796 = 10'h31c == io_addr ? 32'h13 : _GEN_795; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_797 = 10'h31d == io_addr ? 32'h13 : _GEN_796; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_798 = 10'h31e == io_addr ? 32'h13 : _GEN_797; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_799 = 10'h31f == io_addr ? 32'h13 : _GEN_798; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_800 = 10'h320 == io_addr ? 32'h13 : _GEN_799; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_801 = 10'h321 == io_addr ? 32'h13 : _GEN_800; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_802 = 10'h322 == io_addr ? 32'h13 : _GEN_801; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_803 = 10'h323 == io_addr ? 32'h13 : _GEN_802; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_804 = 10'h324 == io_addr ? 32'h13 : _GEN_803; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_805 = 10'h325 == io_addr ? 32'h13 : _GEN_804; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_806 = 10'h326 == io_addr ? 32'h13 : _GEN_805; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_807 = 10'h327 == io_addr ? 32'h13 : _GEN_806; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_808 = 10'h328 == io_addr ? 32'h13 : _GEN_807; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_809 = 10'h329 == io_addr ? 32'h13 : _GEN_808; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_810 = 10'h32a == io_addr ? 32'h13 : _GEN_809; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_811 = 10'h32b == io_addr ? 32'h13 : _GEN_810; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_812 = 10'h32c == io_addr ? 32'h13 : _GEN_811; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_813 = 10'h32d == io_addr ? 32'h13 : _GEN_812; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_814 = 10'h32e == io_addr ? 32'h13 : _GEN_813; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_815 = 10'h32f == io_addr ? 32'h13 : _GEN_814; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_816 = 10'h330 == io_addr ? 32'h13 : _GEN_815; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_817 = 10'h331 == io_addr ? 32'h13 : _GEN_816; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_818 = 10'h332 == io_addr ? 32'h13 : _GEN_817; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_819 = 10'h333 == io_addr ? 32'h13 : _GEN_818; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_820 = 10'h334 == io_addr ? 32'h13 : _GEN_819; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_821 = 10'h335 == io_addr ? 32'h13 : _GEN_820; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_822 = 10'h336 == io_addr ? 32'h13 : _GEN_821; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_823 = 10'h337 == io_addr ? 32'h13 : _GEN_822; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_824 = 10'h338 == io_addr ? 32'h13 : _GEN_823; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_825 = 10'h339 == io_addr ? 32'h13 : _GEN_824; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_826 = 10'h33a == io_addr ? 32'h13 : _GEN_825; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_827 = 10'h33b == io_addr ? 32'h13 : _GEN_826; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_828 = 10'h33c == io_addr ? 32'h13 : _GEN_827; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_829 = 10'h33d == io_addr ? 32'h13 : _GEN_828; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_830 = 10'h33e == io_addr ? 32'h13 : _GEN_829; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_831 = 10'h33f == io_addr ? 32'h13 : _GEN_830; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_832 = 10'h340 == io_addr ? 32'h13 : _GEN_831; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_833 = 10'h341 == io_addr ? 32'h13 : _GEN_832; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_834 = 10'h342 == io_addr ? 32'h13 : _GEN_833; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_835 = 10'h343 == io_addr ? 32'h13 : _GEN_834; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_836 = 10'h344 == io_addr ? 32'h13 : _GEN_835; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_837 = 10'h345 == io_addr ? 32'h13 : _GEN_836; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_838 = 10'h346 == io_addr ? 32'h13 : _GEN_837; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_839 = 10'h347 == io_addr ? 32'h13 : _GEN_838; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_840 = 10'h348 == io_addr ? 32'h13 : _GEN_839; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_841 = 10'h349 == io_addr ? 32'h13 : _GEN_840; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_842 = 10'h34a == io_addr ? 32'h13 : _GEN_841; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_843 = 10'h34b == io_addr ? 32'h13 : _GEN_842; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_844 = 10'h34c == io_addr ? 32'h13 : _GEN_843; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_845 = 10'h34d == io_addr ? 32'h13 : _GEN_844; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_846 = 10'h34e == io_addr ? 32'h13 : _GEN_845; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_847 = 10'h34f == io_addr ? 32'h13 : _GEN_846; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_848 = 10'h350 == io_addr ? 32'h13 : _GEN_847; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_849 = 10'h351 == io_addr ? 32'h13 : _GEN_848; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_850 = 10'h352 == io_addr ? 32'h13 : _GEN_849; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_851 = 10'h353 == io_addr ? 32'h13 : _GEN_850; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_852 = 10'h354 == io_addr ? 32'h13 : _GEN_851; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_853 = 10'h355 == io_addr ? 32'h13 : _GEN_852; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_854 = 10'h356 == io_addr ? 32'h13 : _GEN_853; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_855 = 10'h357 == io_addr ? 32'h13 : _GEN_854; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_856 = 10'h358 == io_addr ? 32'h13 : _GEN_855; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_857 = 10'h359 == io_addr ? 32'h13 : _GEN_856; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_858 = 10'h35a == io_addr ? 32'h13 : _GEN_857; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_859 = 10'h35b == io_addr ? 32'h13 : _GEN_858; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_860 = 10'h35c == io_addr ? 32'h13 : _GEN_859; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_861 = 10'h35d == io_addr ? 32'h13 : _GEN_860; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_862 = 10'h35e == io_addr ? 32'h13 : _GEN_861; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_863 = 10'h35f == io_addr ? 32'h13 : _GEN_862; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_864 = 10'h360 == io_addr ? 32'h13 : _GEN_863; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_865 = 10'h361 == io_addr ? 32'h13 : _GEN_864; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_866 = 10'h362 == io_addr ? 32'h13 : _GEN_865; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_867 = 10'h363 == io_addr ? 32'h13 : _GEN_866; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_868 = 10'h364 == io_addr ? 32'h13 : _GEN_867; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_869 = 10'h365 == io_addr ? 32'h13 : _GEN_868; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_870 = 10'h366 == io_addr ? 32'h13 : _GEN_869; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_871 = 10'h367 == io_addr ? 32'h13 : _GEN_870; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_872 = 10'h368 == io_addr ? 32'h13 : _GEN_871; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_873 = 10'h369 == io_addr ? 32'h13 : _GEN_872; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_874 = 10'h36a == io_addr ? 32'h13 : _GEN_873; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_875 = 10'h36b == io_addr ? 32'h13 : _GEN_874; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_876 = 10'h36c == io_addr ? 32'h13 : _GEN_875; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_877 = 10'h36d == io_addr ? 32'h13 : _GEN_876; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_878 = 10'h36e == io_addr ? 32'h13 : _GEN_877; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_879 = 10'h36f == io_addr ? 32'h13 : _GEN_878; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_880 = 10'h370 == io_addr ? 32'h13 : _GEN_879; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_881 = 10'h371 == io_addr ? 32'h13 : _GEN_880; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_882 = 10'h372 == io_addr ? 32'h13 : _GEN_881; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_883 = 10'h373 == io_addr ? 32'h13 : _GEN_882; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_884 = 10'h374 == io_addr ? 32'h13 : _GEN_883; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_885 = 10'h375 == io_addr ? 32'h13 : _GEN_884; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_886 = 10'h376 == io_addr ? 32'h13 : _GEN_885; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_887 = 10'h377 == io_addr ? 32'h13 : _GEN_886; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_888 = 10'h378 == io_addr ? 32'h13 : _GEN_887; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_889 = 10'h379 == io_addr ? 32'h13 : _GEN_888; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_890 = 10'h37a == io_addr ? 32'h13 : _GEN_889; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_891 = 10'h37b == io_addr ? 32'h13 : _GEN_890; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_892 = 10'h37c == io_addr ? 32'h13 : _GEN_891; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_893 = 10'h37d == io_addr ? 32'h13 : _GEN_892; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_894 = 10'h37e == io_addr ? 32'h13 : _GEN_893; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_895 = 10'h37f == io_addr ? 32'h13 : _GEN_894; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_896 = 10'h380 == io_addr ? 32'h13 : _GEN_895; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_897 = 10'h381 == io_addr ? 32'h13 : _GEN_896; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_898 = 10'h382 == io_addr ? 32'h13 : _GEN_897; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_899 = 10'h383 == io_addr ? 32'h13 : _GEN_898; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_900 = 10'h384 == io_addr ? 32'h13 : _GEN_899; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_901 = 10'h385 == io_addr ? 32'h13 : _GEN_900; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_902 = 10'h386 == io_addr ? 32'h13 : _GEN_901; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_903 = 10'h387 == io_addr ? 32'h13 : _GEN_902; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_904 = 10'h388 == io_addr ? 32'h13 : _GEN_903; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_905 = 10'h389 == io_addr ? 32'h13 : _GEN_904; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_906 = 10'h38a == io_addr ? 32'h13 : _GEN_905; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_907 = 10'h38b == io_addr ? 32'h13 : _GEN_906; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_908 = 10'h38c == io_addr ? 32'h13 : _GEN_907; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_909 = 10'h38d == io_addr ? 32'h13 : _GEN_908; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_910 = 10'h38e == io_addr ? 32'h13 : _GEN_909; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_911 = 10'h38f == io_addr ? 32'h13 : _GEN_910; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_912 = 10'h390 == io_addr ? 32'h13 : _GEN_911; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_913 = 10'h391 == io_addr ? 32'h13 : _GEN_912; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_914 = 10'h392 == io_addr ? 32'h13 : _GEN_913; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_915 = 10'h393 == io_addr ? 32'h13 : _GEN_914; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_916 = 10'h394 == io_addr ? 32'h13 : _GEN_915; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_917 = 10'h395 == io_addr ? 32'h13 : _GEN_916; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_918 = 10'h396 == io_addr ? 32'h13 : _GEN_917; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_919 = 10'h397 == io_addr ? 32'h13 : _GEN_918; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_920 = 10'h398 == io_addr ? 32'h13 : _GEN_919; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_921 = 10'h399 == io_addr ? 32'h13 : _GEN_920; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_922 = 10'h39a == io_addr ? 32'h13 : _GEN_921; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_923 = 10'h39b == io_addr ? 32'h13 : _GEN_922; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_924 = 10'h39c == io_addr ? 32'h13 : _GEN_923; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_925 = 10'h39d == io_addr ? 32'h13 : _GEN_924; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_926 = 10'h39e == io_addr ? 32'h13 : _GEN_925; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_927 = 10'h39f == io_addr ? 32'h13 : _GEN_926; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_928 = 10'h3a0 == io_addr ? 32'h13 : _GEN_927; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_929 = 10'h3a1 == io_addr ? 32'h13 : _GEN_928; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_930 = 10'h3a2 == io_addr ? 32'h13 : _GEN_929; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_931 = 10'h3a3 == io_addr ? 32'h13 : _GEN_930; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_932 = 10'h3a4 == io_addr ? 32'h13 : _GEN_931; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_933 = 10'h3a5 == io_addr ? 32'h13 : _GEN_932; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_934 = 10'h3a6 == io_addr ? 32'h13 : _GEN_933; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_935 = 10'h3a7 == io_addr ? 32'h13 : _GEN_934; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_936 = 10'h3a8 == io_addr ? 32'h13 : _GEN_935; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_937 = 10'h3a9 == io_addr ? 32'h13 : _GEN_936; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_938 = 10'h3aa == io_addr ? 32'h13 : _GEN_937; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_939 = 10'h3ab == io_addr ? 32'h13 : _GEN_938; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_940 = 10'h3ac == io_addr ? 32'h13 : _GEN_939; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_941 = 10'h3ad == io_addr ? 32'h13 : _GEN_940; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_942 = 10'h3ae == io_addr ? 32'h13 : _GEN_941; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_943 = 10'h3af == io_addr ? 32'h13 : _GEN_942; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_944 = 10'h3b0 == io_addr ? 32'h13 : _GEN_943; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_945 = 10'h3b1 == io_addr ? 32'h13 : _GEN_944; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_946 = 10'h3b2 == io_addr ? 32'h13 : _GEN_945; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_947 = 10'h3b3 == io_addr ? 32'h13 : _GEN_946; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_948 = 10'h3b4 == io_addr ? 32'h13 : _GEN_947; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_949 = 10'h3b5 == io_addr ? 32'h13 : _GEN_948; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_950 = 10'h3b6 == io_addr ? 32'h13 : _GEN_949; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_951 = 10'h3b7 == io_addr ? 32'h13 : _GEN_950; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_952 = 10'h3b8 == io_addr ? 32'h13 : _GEN_951; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_953 = 10'h3b9 == io_addr ? 32'h13 : _GEN_952; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_954 = 10'h3ba == io_addr ? 32'h13 : _GEN_953; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_955 = 10'h3bb == io_addr ? 32'h13 : _GEN_954; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_956 = 10'h3bc == io_addr ? 32'h13 : _GEN_955; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_957 = 10'h3bd == io_addr ? 32'h13 : _GEN_956; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_958 = 10'h3be == io_addr ? 32'h13 : _GEN_957; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_959 = 10'h3bf == io_addr ? 32'h13 : _GEN_958; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_960 = 10'h3c0 == io_addr ? 32'h13 : _GEN_959; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_961 = 10'h3c1 == io_addr ? 32'h13 : _GEN_960; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_962 = 10'h3c2 == io_addr ? 32'h13 : _GEN_961; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_963 = 10'h3c3 == io_addr ? 32'h13 : _GEN_962; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_964 = 10'h3c4 == io_addr ? 32'h13 : _GEN_963; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_965 = 10'h3c5 == io_addr ? 32'h13 : _GEN_964; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_966 = 10'h3c6 == io_addr ? 32'h13 : _GEN_965; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_967 = 10'h3c7 == io_addr ? 32'h13 : _GEN_966; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_968 = 10'h3c8 == io_addr ? 32'h13 : _GEN_967; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_969 = 10'h3c9 == io_addr ? 32'h13 : _GEN_968; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_970 = 10'h3ca == io_addr ? 32'h13 : _GEN_969; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_971 = 10'h3cb == io_addr ? 32'h13 : _GEN_970; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_972 = 10'h3cc == io_addr ? 32'h13 : _GEN_971; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_973 = 10'h3cd == io_addr ? 32'h13 : _GEN_972; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_974 = 10'h3ce == io_addr ? 32'h13 : _GEN_973; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_975 = 10'h3cf == io_addr ? 32'h13 : _GEN_974; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_976 = 10'h3d0 == io_addr ? 32'h13 : _GEN_975; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_977 = 10'h3d1 == io_addr ? 32'h13 : _GEN_976; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_978 = 10'h3d2 == io_addr ? 32'h13 : _GEN_977; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_979 = 10'h3d3 == io_addr ? 32'h13 : _GEN_978; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_980 = 10'h3d4 == io_addr ? 32'h13 : _GEN_979; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_981 = 10'h3d5 == io_addr ? 32'h13 : _GEN_980; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_982 = 10'h3d6 == io_addr ? 32'h13 : _GEN_981; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_983 = 10'h3d7 == io_addr ? 32'h13 : _GEN_982; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_984 = 10'h3d8 == io_addr ? 32'h13 : _GEN_983; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_985 = 10'h3d9 == io_addr ? 32'h13 : _GEN_984; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_986 = 10'h3da == io_addr ? 32'h13 : _GEN_985; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_987 = 10'h3db == io_addr ? 32'h13 : _GEN_986; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_988 = 10'h3dc == io_addr ? 32'h13 : _GEN_987; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_989 = 10'h3dd == io_addr ? 32'h13 : _GEN_988; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_990 = 10'h3de == io_addr ? 32'h13 : _GEN_989; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_991 = 10'h3df == io_addr ? 32'h13 : _GEN_990; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_992 = 10'h3e0 == io_addr ? 32'h13 : _GEN_991; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_993 = 10'h3e1 == io_addr ? 32'h13 : _GEN_992; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_994 = 10'h3e2 == io_addr ? 32'h13 : _GEN_993; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_995 = 10'h3e3 == io_addr ? 32'h13 : _GEN_994; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_996 = 10'h3e4 == io_addr ? 32'h13 : _GEN_995; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_997 = 10'h3e5 == io_addr ? 32'h13 : _GEN_996; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_998 = 10'h3e6 == io_addr ? 32'h13 : _GEN_997; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_999 = 10'h3e7 == io_addr ? 32'h13 : _GEN_998; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1000 = 10'h3e8 == io_addr ? 32'h13 : _GEN_999; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1001 = 10'h3e9 == io_addr ? 32'h13 : _GEN_1000; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1002 = 10'h3ea == io_addr ? 32'h13 : _GEN_1001; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1003 = 10'h3eb == io_addr ? 32'h13 : _GEN_1002; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1004 = 10'h3ec == io_addr ? 32'h13 : _GEN_1003; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1005 = 10'h3ed == io_addr ? 32'h13 : _GEN_1004; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1006 = 10'h3ee == io_addr ? 32'h13 : _GEN_1005; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1007 = 10'h3ef == io_addr ? 32'h13 : _GEN_1006; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1008 = 10'h3f0 == io_addr ? 32'h13 : _GEN_1007; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1009 = 10'h3f1 == io_addr ? 32'h13 : _GEN_1008; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1010 = 10'h3f2 == io_addr ? 32'h13 : _GEN_1009; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1011 = 10'h3f3 == io_addr ? 32'h13 : _GEN_1010; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1012 = 10'h3f4 == io_addr ? 32'h13 : _GEN_1011; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1013 = 10'h3f5 == io_addr ? 32'h13 : _GEN_1012; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1014 = 10'h3f6 == io_addr ? 32'h13 : _GEN_1013; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1015 = 10'h3f7 == io_addr ? 32'h13 : _GEN_1014; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1016 = 10'h3f8 == io_addr ? 32'h13 : _GEN_1015; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1017 = 10'h3f9 == io_addr ? 32'h13 : _GEN_1016; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1018 = 10'h3fa == io_addr ? 32'h13 : _GEN_1017; // @[InstrMemory.scala 33:{24,24}]
  wire [31:0] _GEN_1019 = 10'h3fb == io_addr ? 32'h13 : _GEN_1018; // @[InstrMemory.scala 33:{24,24}]
  assign io_dataOut = io_dataOut_REG; // @[InstrMemory.scala 33:14]
  always @(posedge clock) begin
    if (10'h3ff == io_addr) begin // @[InstrMemory.scala 33:24]
      io_dataOut_REG <= 32'h13; // @[InstrMemory.scala 33:24]
    end else if (10'h3fe == io_addr) begin // @[InstrMemory.scala 33:24]
      io_dataOut_REG <= 32'h13; // @[InstrMemory.scala 33:24]
    end else if (10'h3fd == io_addr) begin // @[InstrMemory.scala 33:24]
      io_dataOut_REG <= 32'h13; // @[InstrMemory.scala 33:24]
    end else if (10'h3fc == io_addr) begin // @[InstrMemory.scala 33:24]
      io_dataOut_REG <= 32'h13; // @[InstrMemory.scala 33:24]
    end else begin
      io_dataOut_REG <= _GEN_1019;
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
  io_dataOut_REG = _RAND_0[31:0];
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
  assign io_LEDs = MEM_io_leds ^ io_sw; // @[ProcessorTopLevel.scala 61:26]
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
