module InstrMemory(
  input         clock,
  input         reset,
  input  [10:0] io_addr,
  output [31:0] io_dataOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] io_dataOut_REG; // @[InstrMemory.scala 43:24]
  wire [31:0] _GEN_1 = 9'h1 == io_addr[8:0] ? 32'h13 : 32'h49001d83; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_2 = 9'h2 == io_addr[8:0] ? 32'h13 : _GEN_1; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_3 = 9'h3 == io_addr[8:0] ? 32'h13 : _GEN_2; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_4 = 9'h4 == io_addr[8:0] ? 32'h293 : _GEN_3; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_5 = 9'h5 == io_addr[8:0] ? 32'h313 : _GEN_4; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_6 = 9'h6 == io_addr[8:0] ? 32'h1df293 : _GEN_5; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_7 = 9'h7 == io_addr[8:0] ? 32'h504e63 : _GEN_6; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_8 = 9'h8 == io_addr[8:0] ? 32'h13 : _GEN_7; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_9 = 9'h9 == io_addr[8:0] ? 32'h2df313 : _GEN_8; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_10 = 9'ha == io_addr[8:0] ? 32'h8604c63 : _GEN_9; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_11 = 9'hb == io_addr[8:0] ? 32'h13 : _GEN_10; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_12 = 9'hc == io_addr[8:0] ? 32'h2240006f : _GEN_11; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_13 = 9'hd == io_addr[8:0] ? 32'h13 : _GEN_12; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_14 = 9'he == io_addr[8:0] ? 32'h1f79437 : _GEN_13; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_15 = 9'hf == io_addr[8:0] ? 32'h493 : _GEN_14; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_16 = 9'h10 == io_addr[8:0] ? 32'h10937 : _GEN_15; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_17 = 9'h11 == io_addr[8:0] ? 32'h13 : _GEN_16; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_18 = 9'h12 == io_addr[8:0] ? 32'h293 : _GEN_17; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_19 = 9'h13 == io_addr[8:0] ? 32'h42501823 : _GEN_18; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_20 = 9'h14 == io_addr[8:0] ? 32'h40000ef : _GEN_19; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_21 = 9'h15 == io_addr[8:0] ? 32'h100313 : _GEN_20; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_22 = 9'h16 == io_addr[8:0] ? 32'h42501823 : _GEN_21; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_23 = 9'h17 == io_addr[8:0] ? 32'h34000ef : _GEN_22; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_24 = 9'h18 == io_addr[8:0] ? 32'h6283b3 : _GEN_23; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_25 = 9'h19 == io_addr[8:0] ? 32'h42701823 : _GEN_24; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_26 = 9'h1a == io_addr[8:0] ? 32'h28000ef : _GEN_25; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_27 = 9'h1b == io_addr[8:0] ? 32'h7302b3 : _GEN_26; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_28 = 9'h1c == io_addr[8:0] ? 32'h42501823 : _GEN_27; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_29 = 9'h1d == io_addr[8:0] ? 32'h1c000ef : _GEN_28; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_30 = 9'h1e == io_addr[8:0] ? 32'h728333 : _GEN_29; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_31 = 9'h1f == io_addr[8:0] ? 32'h42601823 : _GEN_30; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_32 = 9'h20 == io_addr[8:0] ? 32'h10000ef : _GEN_31; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_33 = 9'h21 == io_addr[8:0] ? 32'hfb235ae3 : _GEN_32; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_34 = 9'h22 == io_addr[8:0] ? 32'h13 : _GEN_33; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_35 = 9'h23 == io_addr[8:0] ? 32'hfd5ff06f : _GEN_34; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_36 = 9'h24 == io_addr[8:0] ? 32'h148493 : _GEN_35; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_37 = 9'h25 == io_addr[8:0] ? 32'hfe84cee3 : _GEN_36; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_38 = 9'h26 == io_addr[8:0] ? 32'h13 : _GEN_37; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_39 = 9'h27 == io_addr[8:0] ? 32'h493 : _GEN_38; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_40 = 9'h28 == io_addr[8:0] ? 32'h49001d03 : _GEN_39; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_41 = 9'h29 == io_addr[8:0] ? 32'h13 : _GEN_40; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_42 = 9'h2a == io_addr[8:0] ? 32'h13 : _GEN_41; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_43 = 9'h2b == io_addr[8:0] ? 32'h13 : _GEN_42; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_44 = 9'h2c == io_addr[8:0] ? 32'h15ad9463 : _GEN_43; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_45 = 9'h2d == io_addr[8:0] ? 32'h13 : _GEN_44; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_46 = 9'h2e == io_addr[8:0] ? 32'h80e7 : _GEN_45; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_47 = 9'h2f == io_addr[8:0] ? 32'h13 : _GEN_46; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_48 = 9'h30 == io_addr[8:0] ? 32'h43000293 : _GEN_47; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_49 = 9'h31 == io_addr[8:0] ? 32'h10fb7 : _GEN_48; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_50 = 9'h32 == io_addr[8:0] ? 32'hffff8f93 : _GEN_49; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_51 = 9'h33 == io_addr[8:0] ? 32'h1f2a023 : _GEN_50; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_52 = 9'h34 == io_addr[8:0] ? 32'hfef00293 : _GEN_51; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_53 = 9'h35 == io_addr[8:0] ? 32'h44000313 : _GEN_52; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_54 = 9'h36 == io_addr[8:0] ? 32'h393 : _GEN_53; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_55 = 9'h37 == io_addr[8:0] ? 32'h413 : _GEN_54; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_56 = 9'h38 == io_addr[8:0] ? 32'h600493 : _GEN_55; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_57 = 9'h39 == io_addr[8:0] ? 32'h1e00913 : _GEN_56; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_58 = 9'h3a == io_addr[8:0] ? 32'hff00993 : _GEN_57; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_59 = 9'h3b == io_addr[8:0] ? 32'hff00a13 : _GEN_58; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_60 = 9'h3c == io_addr[8:0] ? 32'h1e00a93 : _GEN_59; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_61 = 9'h3d == io_addr[8:0] ? 32'h600b13 : _GEN_60; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_62 = 9'h3e == io_addr[8:0] ? 32'hb93 : _GEN_61; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_63 = 9'h3f == io_addr[8:0] ? 32'h638fb3 : _GEN_62; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_64 = 9'h40 == io_addr[8:0] ? 32'h8f8023 : _GEN_63; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_65 = 9'h41 == io_addr[8:0] ? 32'h1f8f93 : _GEN_64; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_66 = 9'h42 == io_addr[8:0] ? 32'h5fffb3 : _GEN_65; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_67 = 9'h43 == io_addr[8:0] ? 32'h9f8023 : _GEN_66; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_68 = 9'h44 == io_addr[8:0] ? 32'h1f8f93 : _GEN_67; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_69 = 9'h45 == io_addr[8:0] ? 32'h5fffb3 : _GEN_68; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_70 = 9'h46 == io_addr[8:0] ? 32'h12f8023 : _GEN_69; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_71 = 9'h47 == io_addr[8:0] ? 32'h1f8f93 : _GEN_70; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_72 = 9'h48 == io_addr[8:0] ? 32'h5fffb3 : _GEN_71; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_73 = 9'h49 == io_addr[8:0] ? 32'h13f8023 : _GEN_72; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_74 = 9'h4a == io_addr[8:0] ? 32'h1f8f93 : _GEN_73; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_75 = 9'h4b == io_addr[8:0] ? 32'h5fffb3 : _GEN_74; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_76 = 9'h4c == io_addr[8:0] ? 32'h14f8023 : _GEN_75; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_77 = 9'h4d == io_addr[8:0] ? 32'h1f8f93 : _GEN_76; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_78 = 9'h4e == io_addr[8:0] ? 32'h5fffb3 : _GEN_77; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_79 = 9'h4f == io_addr[8:0] ? 32'h15f8023 : _GEN_78; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_80 = 9'h50 == io_addr[8:0] ? 32'h1f8f93 : _GEN_79; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_81 = 9'h51 == io_addr[8:0] ? 32'h5fffb3 : _GEN_80; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_82 = 9'h52 == io_addr[8:0] ? 32'h16f8023 : _GEN_81; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_83 = 9'h53 == io_addr[8:0] ? 32'h1f8f93 : _GEN_82; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_84 = 9'h54 == io_addr[8:0] ? 32'h5fffb3 : _GEN_83; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_85 = 9'h55 == io_addr[8:0] ? 32'h17f8023 : _GEN_84; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_86 = 9'h56 == io_addr[8:0] ? 32'h1f8f93 : _GEN_85; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_87 = 9'h57 == io_addr[8:0] ? 32'h5fffb3 : _GEN_86; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_88 = 9'h58 == io_addr[8:0] ? 32'h17f8023 : _GEN_87; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_89 = 9'h59 == io_addr[8:0] ? 32'h1f8f93 : _GEN_88; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_90 = 9'h5a == io_addr[8:0] ? 32'h5fffb3 : _GEN_89; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_91 = 9'h5b == io_addr[8:0] ? 32'h17f8023 : _GEN_90; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_92 = 9'h5c == io_addr[8:0] ? 32'h1f8f93 : _GEN_91; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_93 = 9'h5d == io_addr[8:0] ? 32'h5fffb3 : _GEN_92; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_94 = 9'h5e == io_addr[8:0] ? 32'h17f8023 : _GEN_93; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_95 = 9'h5f == io_addr[8:0] ? 32'h1f8f93 : _GEN_94; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_96 = 9'h60 == io_addr[8:0] ? 32'h5fffb3 : _GEN_95; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_97 = 9'h61 == io_addr[8:0] ? 32'h17f8023 : _GEN_96; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_98 = 9'h62 == io_addr[8:0] ? 32'h1f8f93 : _GEN_97; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_99 = 9'h63 == io_addr[8:0] ? 32'h5fffb3 : _GEN_98; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_100 = 9'h64 == io_addr[8:0] ? 32'h17f8023 : _GEN_99; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_101 = 9'h65 == io_addr[8:0] ? 32'h1f8f93 : _GEN_100; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_102 = 9'h66 == io_addr[8:0] ? 32'h5fffb3 : _GEN_101; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_103 = 9'h67 == io_addr[8:0] ? 32'h17f8023 : _GEN_102; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_104 = 9'h68 == io_addr[8:0] ? 32'h1f8f93 : _GEN_103; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_105 = 9'h69 == io_addr[8:0] ? 32'h5fffb3 : _GEN_104; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_106 = 9'h6a == io_addr[8:0] ? 32'h17f8023 : _GEN_105; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_107 = 9'h6b == io_addr[8:0] ? 32'h1f8f93 : _GEN_106; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_108 = 9'h6c == io_addr[8:0] ? 32'h5fffb3 : _GEN_107; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_109 = 9'h6d == io_addr[8:0] ? 32'h17f8023 : _GEN_108; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_110 = 9'h6e == io_addr[8:0] ? 32'h138393 : _GEN_109; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_111 = 9'h6f == io_addr[8:0] ? 32'hf3f393 : _GEN_110; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_112 = 9'h70 == io_addr[8:0] ? 32'he93 : _GEN_111; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_113 = 9'h71 == io_addr[8:0] ? 32'h100f13 : _GEN_112; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_114 = 9'h72 == io_addr[8:0] ? 32'h16f1f13 : _GEN_113; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_115 = 9'h73 == io_addr[8:0] ? 32'h1e8e93 : _GEN_114; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_116 = 9'h74 == io_addr[8:0] ? 32'hffeecee3 : _GEN_115; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_117 = 9'h75 == io_addr[8:0] ? 32'h13 : _GEN_116; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_118 = 9'h76 == io_addr[8:0] ? 32'h49001d03 : _GEN_117; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_119 = 9'h77 == io_addr[8:0] ? 32'h13 : _GEN_118; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_120 = 9'h78 == io_addr[8:0] ? 32'h13 : _GEN_119; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_121 = 9'h79 == io_addr[8:0] ? 32'h13 : _GEN_120; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_122 = 9'h7a == io_addr[8:0] ? 32'h1ad9863 : _GEN_121; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_123 = 9'h7b == io_addr[8:0] ? 32'h13 : _GEN_122; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_124 = 9'h7c == io_addr[8:0] ? 32'hf0dff06f : _GEN_123; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_125 = 9'h7d == io_addr[8:0] ? 32'h13 : _GEN_124; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_126 = 9'h7e == io_addr[8:0] ? 32'hff00293 : _GEN_125; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_127 = 9'h7f == io_addr[8:0] ? 32'h530023 : _GEN_126; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_128 = 9'h80 == io_addr[8:0] ? 32'h5300a3 : _GEN_127; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_129 = 9'h81 == io_addr[8:0] ? 32'h530123 : _GEN_128; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_130 = 9'h82 == io_addr[8:0] ? 32'h5301a3 : _GEN_129; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_131 = 9'h83 == io_addr[8:0] ? 32'h530223 : _GEN_130; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_132 = 9'h84 == io_addr[8:0] ? 32'h5302a3 : _GEN_131; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_133 = 9'h85 == io_addr[8:0] ? 32'h530323 : _GEN_132; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_134 = 9'h86 == io_addr[8:0] ? 32'h5303a3 : _GEN_133; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_135 = 9'h87 == io_addr[8:0] ? 32'h530423 : _GEN_134; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_136 = 9'h88 == io_addr[8:0] ? 32'h5304a3 : _GEN_135; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_137 = 9'h89 == io_addr[8:0] ? 32'h530523 : _GEN_136; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_138 = 9'h8a == io_addr[8:0] ? 32'h5305a3 : _GEN_137; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_139 = 9'h8b == io_addr[8:0] ? 32'h530623 : _GEN_138; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_140 = 9'h8c == io_addr[8:0] ? 32'h5306a3 : _GEN_139; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_141 = 9'h8d == io_addr[8:0] ? 32'h530723 : _GEN_140; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_142 = 9'h8e == io_addr[8:0] ? 32'h5307a3 : _GEN_141; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_143 = 9'h8f == io_addr[8:0] ? 32'h293 : _GEN_142; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_144 = 9'h90 == io_addr[8:0] ? 32'h43000313 : _GEN_143; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_145 = 9'h91 == io_addr[8:0] ? 32'h531023 : _GEN_144; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_146 = 9'h92 == io_addr[8:0] ? 32'h13 : _GEN_145; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_147 = 9'h93 == io_addr[8:0] ? 32'hdb5ff06f : _GEN_146; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_148 = 9'h94 == io_addr[8:0] ? 32'h13 : _GEN_147; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_149 = 9'h95 == io_addr[8:0] ? 32'h41000513 : _GEN_148; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_150 = 9'h96 == io_addr[8:0] ? 32'h5200293 : _GEN_149; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_151 = 9'h97 == io_addr[8:0] ? 32'h4900313 : _GEN_150; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_152 = 9'h98 == io_addr[8:0] ? 32'h5300393 : _GEN_151; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_153 = 9'h99 == io_addr[8:0] ? 32'h4300e13 : _GEN_152; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_154 = 9'h9a == io_addr[8:0] ? 32'h5900e93 : _GEN_153; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_155 = 9'h9b == io_addr[8:0] ? 32'h7700f13 : _GEN_154; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_156 = 9'h9c == io_addr[8:0] ? 32'h550023 : _GEN_155; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_157 = 9'h9d == io_addr[8:0] ? 32'h6500a3 : _GEN_156; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_158 = 9'h9e == io_addr[8:0] ? 32'h750123 : _GEN_157; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_159 = 9'h9f == io_addr[8:0] ? 32'h1c501a3 : _GEN_158; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_160 = 9'ha0 == io_addr[8:0] ? 32'h1d50223 : _GEN_159; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_161 = 9'ha1 == io_addr[8:0] ? 32'h1e502a3 : _GEN_160; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_162 = 9'ha2 == io_addr[8:0] ? 32'h4200293 : _GEN_161; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_163 = 9'ha3 == io_addr[8:0] ? 32'h5500313 : _GEN_162; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_164 = 9'ha4 == io_addr[8:0] ? 32'h5300393 : _GEN_163; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_165 = 9'ha5 == io_addr[8:0] ? 32'h4900e13 : _GEN_164; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_166 = 9'ha6 == io_addr[8:0] ? 32'h4e00e93 : _GEN_165; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_167 = 9'ha7 == io_addr[8:0] ? 32'h4500f13 : _GEN_166; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_168 = 9'ha8 == io_addr[8:0] ? 32'h550323 : _GEN_167; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_169 = 9'ha9 == io_addr[8:0] ? 32'h6503a3 : _GEN_168; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_170 = 9'haa == io_addr[8:0] ? 32'h750423 : _GEN_169; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_171 = 9'hab == io_addr[8:0] ? 32'h1c504a3 : _GEN_170; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_172 = 9'hac == io_addr[8:0] ? 32'h1d50523 : _GEN_171; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_173 = 9'had == io_addr[8:0] ? 32'h1e505a3 : _GEN_172; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_174 = 9'hae == io_addr[8:0] ? 32'h5300293 : _GEN_173; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_175 = 9'haf == io_addr[8:0] ? 32'h5300313 : _GEN_174; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_176 = 9'hb0 == io_addr[8:0] ? 32'h13 : _GEN_175; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_177 = 9'hb1 == io_addr[8:0] ? 32'h13 : _GEN_176; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_178 = 9'hb2 == io_addr[8:0] ? 32'h550623 : _GEN_177; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_179 = 9'hb3 == io_addr[8:0] ? 32'h6506a3 : _GEN_178; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_180 = 9'hb4 == io_addr[8:0] ? 32'h13 : _GEN_179; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_181 = 9'hb5 == io_addr[8:0] ? 32'h49001d03 : _GEN_180; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_182 = 9'hb6 == io_addr[8:0] ? 32'h13 : _GEN_181; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_183 = 9'hb7 == io_addr[8:0] ? 32'h13 : _GEN_182; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_184 = 9'hb8 == io_addr[8:0] ? 32'h13 : _GEN_183; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_185 = 9'hb9 == io_addr[8:0] ? 32'h1ad9863 : _GEN_184; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_186 = 9'hba == io_addr[8:0] ? 32'h13 : _GEN_185; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_187 = 9'hbb == io_addr[8:0] ? 32'hfe9ff06f : _GEN_186; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_188 = 9'hbc == io_addr[8:0] ? 32'h13 : _GEN_187; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_189 = 9'hbd == io_addr[8:0] ? 32'h50023 : _GEN_188; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_190 = 9'hbe == io_addr[8:0] ? 32'h500a3 : _GEN_189; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_191 = 9'hbf == io_addr[8:0] ? 32'h50123 : _GEN_190; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_192 = 9'hc0 == io_addr[8:0] ? 32'h501a3 : _GEN_191; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_193 = 9'hc1 == io_addr[8:0] ? 32'h50223 : _GEN_192; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_194 = 9'hc2 == io_addr[8:0] ? 32'h502a3 : _GEN_193; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_195 = 9'hc3 == io_addr[8:0] ? 32'h50323 : _GEN_194; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_196 = 9'hc4 == io_addr[8:0] ? 32'h503a3 : _GEN_195; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_197 = 9'hc5 == io_addr[8:0] ? 32'h50423 : _GEN_196; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_198 = 9'hc6 == io_addr[8:0] ? 32'h504a3 : _GEN_197; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_199 = 9'hc7 == io_addr[8:0] ? 32'h50523 : _GEN_198; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_200 = 9'hc8 == io_addr[8:0] ? 32'h505a3 : _GEN_199; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_201 = 9'hc9 == io_addr[8:0] ? 32'h50623 : _GEN_200; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_202 = 9'hca == io_addr[8:0] ? 32'h506a3 : _GEN_201; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_203 = 9'hcb == io_addr[8:0] ? 32'h13 : _GEN_202; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_204 = 9'hcc == io_addr[8:0] ? 32'hcd1ff06f : _GEN_203; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_205 = 9'hcd == io_addr[8:0] ? 32'h13 : _GEN_204; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_206 = 9'hce == io_addr[8:0] ? 32'h13 : _GEN_205; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_207 = 9'hcf == io_addr[8:0] ? 32'h13 : _GEN_206; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_208 = 9'hd0 == io_addr[8:0] ? 32'h13 : _GEN_207; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_209 = 9'hd1 == io_addr[8:0] ? 32'h13 : _GEN_208; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_210 = 9'hd2 == io_addr[8:0] ? 32'h13 : _GEN_209; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_211 = 9'hd3 == io_addr[8:0] ? 32'h13 : _GEN_210; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_212 = 9'hd4 == io_addr[8:0] ? 32'h13 : _GEN_211; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_213 = 9'hd5 == io_addr[8:0] ? 32'h13 : _GEN_212; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_214 = 9'hd6 == io_addr[8:0] ? 32'h13 : _GEN_213; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_215 = 9'hd7 == io_addr[8:0] ? 32'h13 : _GEN_214; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_216 = 9'hd8 == io_addr[8:0] ? 32'h13 : _GEN_215; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_217 = 9'hd9 == io_addr[8:0] ? 32'h13 : _GEN_216; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_218 = 9'hda == io_addr[8:0] ? 32'h13 : _GEN_217; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_219 = 9'hdb == io_addr[8:0] ? 32'h13 : _GEN_218; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_220 = 9'hdc == io_addr[8:0] ? 32'h13 : _GEN_219; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_221 = 9'hdd == io_addr[8:0] ? 32'h13 : _GEN_220; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_222 = 9'hde == io_addr[8:0] ? 32'h13 : _GEN_221; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_223 = 9'hdf == io_addr[8:0] ? 32'h13 : _GEN_222; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_224 = 9'he0 == io_addr[8:0] ? 32'h13 : _GEN_223; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_225 = 9'he1 == io_addr[8:0] ? 32'h13 : _GEN_224; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_226 = 9'he2 == io_addr[8:0] ? 32'h13 : _GEN_225; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_227 = 9'he3 == io_addr[8:0] ? 32'h13 : _GEN_226; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_228 = 9'he4 == io_addr[8:0] ? 32'h13 : _GEN_227; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_229 = 9'he5 == io_addr[8:0] ? 32'h13 : _GEN_228; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_230 = 9'he6 == io_addr[8:0] ? 32'h13 : _GEN_229; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_231 = 9'he7 == io_addr[8:0] ? 32'h13 : _GEN_230; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_232 = 9'he8 == io_addr[8:0] ? 32'h13 : _GEN_231; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_233 = 9'he9 == io_addr[8:0] ? 32'h13 : _GEN_232; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_234 = 9'hea == io_addr[8:0] ? 32'h13 : _GEN_233; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_235 = 9'heb == io_addr[8:0] ? 32'h13 : _GEN_234; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_236 = 9'hec == io_addr[8:0] ? 32'h13 : _GEN_235; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_237 = 9'hed == io_addr[8:0] ? 32'h13 : _GEN_236; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_238 = 9'hee == io_addr[8:0] ? 32'h13 : _GEN_237; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_239 = 9'hef == io_addr[8:0] ? 32'h13 : _GEN_238; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_240 = 9'hf0 == io_addr[8:0] ? 32'h13 : _GEN_239; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_241 = 9'hf1 == io_addr[8:0] ? 32'h13 : _GEN_240; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_242 = 9'hf2 == io_addr[8:0] ? 32'h13 : _GEN_241; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_243 = 9'hf3 == io_addr[8:0] ? 32'h13 : _GEN_242; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_244 = 9'hf4 == io_addr[8:0] ? 32'h13 : _GEN_243; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_245 = 9'hf5 == io_addr[8:0] ? 32'h13 : _GEN_244; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_246 = 9'hf6 == io_addr[8:0] ? 32'h13 : _GEN_245; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_247 = 9'hf7 == io_addr[8:0] ? 32'h13 : _GEN_246; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_248 = 9'hf8 == io_addr[8:0] ? 32'h13 : _GEN_247; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_249 = 9'hf9 == io_addr[8:0] ? 32'h13 : _GEN_248; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_250 = 9'hfa == io_addr[8:0] ? 32'h13 : _GEN_249; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_251 = 9'hfb == io_addr[8:0] ? 32'h13 : _GEN_250; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_252 = 9'hfc == io_addr[8:0] ? 32'h13 : _GEN_251; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_253 = 9'hfd == io_addr[8:0] ? 32'h13 : _GEN_252; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_254 = 9'hfe == io_addr[8:0] ? 32'h13 : _GEN_253; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_255 = 9'hff == io_addr[8:0] ? 32'h13 : _GEN_254; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_256 = 9'h100 == io_addr[8:0] ? 32'h13 : _GEN_255; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_257 = 9'h101 == io_addr[8:0] ? 32'h13 : _GEN_256; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_258 = 9'h102 == io_addr[8:0] ? 32'h13 : _GEN_257; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_259 = 9'h103 == io_addr[8:0] ? 32'h13 : _GEN_258; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_260 = 9'h104 == io_addr[8:0] ? 32'h13 : _GEN_259; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_261 = 9'h105 == io_addr[8:0] ? 32'h13 : _GEN_260; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_262 = 9'h106 == io_addr[8:0] ? 32'h13 : _GEN_261; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_263 = 9'h107 == io_addr[8:0] ? 32'h13 : _GEN_262; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_264 = 9'h108 == io_addr[8:0] ? 32'h13 : _GEN_263; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_265 = 9'h109 == io_addr[8:0] ? 32'h13 : _GEN_264; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_266 = 9'h10a == io_addr[8:0] ? 32'h13 : _GEN_265; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_267 = 9'h10b == io_addr[8:0] ? 32'h13 : _GEN_266; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_268 = 9'h10c == io_addr[8:0] ? 32'h13 : _GEN_267; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_269 = 9'h10d == io_addr[8:0] ? 32'h13 : _GEN_268; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_270 = 9'h10e == io_addr[8:0] ? 32'h13 : _GEN_269; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_271 = 9'h10f == io_addr[8:0] ? 32'h13 : _GEN_270; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_272 = 9'h110 == io_addr[8:0] ? 32'h13 : _GEN_271; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_273 = 9'h111 == io_addr[8:0] ? 32'h13 : _GEN_272; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_274 = 9'h112 == io_addr[8:0] ? 32'h13 : _GEN_273; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_275 = 9'h113 == io_addr[8:0] ? 32'h13 : _GEN_274; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_276 = 9'h114 == io_addr[8:0] ? 32'h13 : _GEN_275; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_277 = 9'h115 == io_addr[8:0] ? 32'h13 : _GEN_276; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_278 = 9'h116 == io_addr[8:0] ? 32'h13 : _GEN_277; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_279 = 9'h117 == io_addr[8:0] ? 32'h13 : _GEN_278; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_280 = 9'h118 == io_addr[8:0] ? 32'h13 : _GEN_279; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_281 = 9'h119 == io_addr[8:0] ? 32'h13 : _GEN_280; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_282 = 9'h11a == io_addr[8:0] ? 32'h13 : _GEN_281; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_283 = 9'h11b == io_addr[8:0] ? 32'h13 : _GEN_282; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_284 = 9'h11c == io_addr[8:0] ? 32'h13 : _GEN_283; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_285 = 9'h11d == io_addr[8:0] ? 32'h13 : _GEN_284; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_286 = 9'h11e == io_addr[8:0] ? 32'h13 : _GEN_285; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_287 = 9'h11f == io_addr[8:0] ? 32'h13 : _GEN_286; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_288 = 9'h120 == io_addr[8:0] ? 32'h13 : _GEN_287; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_289 = 9'h121 == io_addr[8:0] ? 32'h13 : _GEN_288; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_290 = 9'h122 == io_addr[8:0] ? 32'h13 : _GEN_289; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_291 = 9'h123 == io_addr[8:0] ? 32'h13 : _GEN_290; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_292 = 9'h124 == io_addr[8:0] ? 32'h13 : _GEN_291; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_293 = 9'h125 == io_addr[8:0] ? 32'h13 : _GEN_292; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_294 = 9'h126 == io_addr[8:0] ? 32'h13 : _GEN_293; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_295 = 9'h127 == io_addr[8:0] ? 32'h13 : _GEN_294; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_296 = 9'h128 == io_addr[8:0] ? 32'h13 : _GEN_295; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_297 = 9'h129 == io_addr[8:0] ? 32'h13 : _GEN_296; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_298 = 9'h12a == io_addr[8:0] ? 32'h13 : _GEN_297; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_299 = 9'h12b == io_addr[8:0] ? 32'h13 : _GEN_298; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_300 = 9'h12c == io_addr[8:0] ? 32'h13 : _GEN_299; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_301 = 9'h12d == io_addr[8:0] ? 32'h13 : _GEN_300; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_302 = 9'h12e == io_addr[8:0] ? 32'h13 : _GEN_301; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_303 = 9'h12f == io_addr[8:0] ? 32'h13 : _GEN_302; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_304 = 9'h130 == io_addr[8:0] ? 32'h13 : _GEN_303; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_305 = 9'h131 == io_addr[8:0] ? 32'h13 : _GEN_304; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_306 = 9'h132 == io_addr[8:0] ? 32'h13 : _GEN_305; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_307 = 9'h133 == io_addr[8:0] ? 32'h13 : _GEN_306; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_308 = 9'h134 == io_addr[8:0] ? 32'h13 : _GEN_307; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_309 = 9'h135 == io_addr[8:0] ? 32'h13 : _GEN_308; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_310 = 9'h136 == io_addr[8:0] ? 32'h13 : _GEN_309; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_311 = 9'h137 == io_addr[8:0] ? 32'h13 : _GEN_310; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_312 = 9'h138 == io_addr[8:0] ? 32'h13 : _GEN_311; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_313 = 9'h139 == io_addr[8:0] ? 32'h13 : _GEN_312; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_314 = 9'h13a == io_addr[8:0] ? 32'h13 : _GEN_313; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_315 = 9'h13b == io_addr[8:0] ? 32'h13 : _GEN_314; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_316 = 9'h13c == io_addr[8:0] ? 32'h13 : _GEN_315; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_317 = 9'h13d == io_addr[8:0] ? 32'h13 : _GEN_316; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_318 = 9'h13e == io_addr[8:0] ? 32'h13 : _GEN_317; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_319 = 9'h13f == io_addr[8:0] ? 32'h13 : _GEN_318; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_320 = 9'h140 == io_addr[8:0] ? 32'h13 : _GEN_319; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_321 = 9'h141 == io_addr[8:0] ? 32'h13 : _GEN_320; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_322 = 9'h142 == io_addr[8:0] ? 32'h13 : _GEN_321; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_323 = 9'h143 == io_addr[8:0] ? 32'h13 : _GEN_322; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_324 = 9'h144 == io_addr[8:0] ? 32'h13 : _GEN_323; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_325 = 9'h145 == io_addr[8:0] ? 32'h13 : _GEN_324; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_326 = 9'h146 == io_addr[8:0] ? 32'h13 : _GEN_325; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_327 = 9'h147 == io_addr[8:0] ? 32'h13 : _GEN_326; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_328 = 9'h148 == io_addr[8:0] ? 32'h13 : _GEN_327; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_329 = 9'h149 == io_addr[8:0] ? 32'h13 : _GEN_328; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_330 = 9'h14a == io_addr[8:0] ? 32'h13 : _GEN_329; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_331 = 9'h14b == io_addr[8:0] ? 32'h13 : _GEN_330; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_332 = 9'h14c == io_addr[8:0] ? 32'h13 : _GEN_331; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_333 = 9'h14d == io_addr[8:0] ? 32'h13 : _GEN_332; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_334 = 9'h14e == io_addr[8:0] ? 32'h13 : _GEN_333; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_335 = 9'h14f == io_addr[8:0] ? 32'h13 : _GEN_334; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_336 = 9'h150 == io_addr[8:0] ? 32'h13 : _GEN_335; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_337 = 9'h151 == io_addr[8:0] ? 32'h13 : _GEN_336; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_338 = 9'h152 == io_addr[8:0] ? 32'h13 : _GEN_337; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_339 = 9'h153 == io_addr[8:0] ? 32'h13 : _GEN_338; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_340 = 9'h154 == io_addr[8:0] ? 32'h13 : _GEN_339; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_341 = 9'h155 == io_addr[8:0] ? 32'h13 : _GEN_340; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_342 = 9'h156 == io_addr[8:0] ? 32'h13 : _GEN_341; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_343 = 9'h157 == io_addr[8:0] ? 32'h13 : _GEN_342; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_344 = 9'h158 == io_addr[8:0] ? 32'h13 : _GEN_343; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_345 = 9'h159 == io_addr[8:0] ? 32'h13 : _GEN_344; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_346 = 9'h15a == io_addr[8:0] ? 32'h13 : _GEN_345; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_347 = 9'h15b == io_addr[8:0] ? 32'h13 : _GEN_346; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_348 = 9'h15c == io_addr[8:0] ? 32'h13 : _GEN_347; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_349 = 9'h15d == io_addr[8:0] ? 32'h13 : _GEN_348; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_350 = 9'h15e == io_addr[8:0] ? 32'h13 : _GEN_349; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_351 = 9'h15f == io_addr[8:0] ? 32'h13 : _GEN_350; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_352 = 9'h160 == io_addr[8:0] ? 32'h13 : _GEN_351; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_353 = 9'h161 == io_addr[8:0] ? 32'h13 : _GEN_352; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_354 = 9'h162 == io_addr[8:0] ? 32'h13 : _GEN_353; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_355 = 9'h163 == io_addr[8:0] ? 32'h13 : _GEN_354; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_356 = 9'h164 == io_addr[8:0] ? 32'h13 : _GEN_355; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_357 = 9'h165 == io_addr[8:0] ? 32'h13 : _GEN_356; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_358 = 9'h166 == io_addr[8:0] ? 32'h13 : _GEN_357; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_359 = 9'h167 == io_addr[8:0] ? 32'h13 : _GEN_358; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_360 = 9'h168 == io_addr[8:0] ? 32'h13 : _GEN_359; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_361 = 9'h169 == io_addr[8:0] ? 32'h13 : _GEN_360; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_362 = 9'h16a == io_addr[8:0] ? 32'h13 : _GEN_361; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_363 = 9'h16b == io_addr[8:0] ? 32'h13 : _GEN_362; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_364 = 9'h16c == io_addr[8:0] ? 32'h13 : _GEN_363; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_365 = 9'h16d == io_addr[8:0] ? 32'h13 : _GEN_364; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_366 = 9'h16e == io_addr[8:0] ? 32'h13 : _GEN_365; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_367 = 9'h16f == io_addr[8:0] ? 32'h13 : _GEN_366; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_368 = 9'h170 == io_addr[8:0] ? 32'h13 : _GEN_367; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_369 = 9'h171 == io_addr[8:0] ? 32'h13 : _GEN_368; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_370 = 9'h172 == io_addr[8:0] ? 32'h13 : _GEN_369; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_371 = 9'h173 == io_addr[8:0] ? 32'h13 : _GEN_370; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_372 = 9'h174 == io_addr[8:0] ? 32'h13 : _GEN_371; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_373 = 9'h175 == io_addr[8:0] ? 32'h13 : _GEN_372; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_374 = 9'h176 == io_addr[8:0] ? 32'h13 : _GEN_373; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_375 = 9'h177 == io_addr[8:0] ? 32'h13 : _GEN_374; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_376 = 9'h178 == io_addr[8:0] ? 32'h13 : _GEN_375; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_377 = 9'h179 == io_addr[8:0] ? 32'h13 : _GEN_376; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_378 = 9'h17a == io_addr[8:0] ? 32'h13 : _GEN_377; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_379 = 9'h17b == io_addr[8:0] ? 32'h13 : _GEN_378; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_380 = 9'h17c == io_addr[8:0] ? 32'h13 : _GEN_379; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_381 = 9'h17d == io_addr[8:0] ? 32'h13 : _GEN_380; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_382 = 9'h17e == io_addr[8:0] ? 32'h13 : _GEN_381; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_383 = 9'h17f == io_addr[8:0] ? 32'h13 : _GEN_382; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_384 = 9'h180 == io_addr[8:0] ? 32'h13 : _GEN_383; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_385 = 9'h181 == io_addr[8:0] ? 32'h13 : _GEN_384; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_386 = 9'h182 == io_addr[8:0] ? 32'h13 : _GEN_385; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_387 = 9'h183 == io_addr[8:0] ? 32'h13 : _GEN_386; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_388 = 9'h184 == io_addr[8:0] ? 32'h13 : _GEN_387; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_389 = 9'h185 == io_addr[8:0] ? 32'h13 : _GEN_388; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_390 = 9'h186 == io_addr[8:0] ? 32'h13 : _GEN_389; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_391 = 9'h187 == io_addr[8:0] ? 32'h13 : _GEN_390; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_392 = 9'h188 == io_addr[8:0] ? 32'h13 : _GEN_391; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_393 = 9'h189 == io_addr[8:0] ? 32'h13 : _GEN_392; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_394 = 9'h18a == io_addr[8:0] ? 32'h13 : _GEN_393; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_395 = 9'h18b == io_addr[8:0] ? 32'h13 : _GEN_394; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_396 = 9'h18c == io_addr[8:0] ? 32'h13 : _GEN_395; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_397 = 9'h18d == io_addr[8:0] ? 32'h13 : _GEN_396; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_398 = 9'h18e == io_addr[8:0] ? 32'h13 : _GEN_397; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_399 = 9'h18f == io_addr[8:0] ? 32'h13 : _GEN_398; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_400 = 9'h190 == io_addr[8:0] ? 32'h13 : _GEN_399; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_401 = 9'h191 == io_addr[8:0] ? 32'h13 : _GEN_400; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_402 = 9'h192 == io_addr[8:0] ? 32'h13 : _GEN_401; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_403 = 9'h193 == io_addr[8:0] ? 32'h13 : _GEN_402; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_404 = 9'h194 == io_addr[8:0] ? 32'h13 : _GEN_403; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_405 = 9'h195 == io_addr[8:0] ? 32'h13 : _GEN_404; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_406 = 9'h196 == io_addr[8:0] ? 32'h13 : _GEN_405; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_407 = 9'h197 == io_addr[8:0] ? 32'h13 : _GEN_406; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_408 = 9'h198 == io_addr[8:0] ? 32'h13 : _GEN_407; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_409 = 9'h199 == io_addr[8:0] ? 32'h13 : _GEN_408; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_410 = 9'h19a == io_addr[8:0] ? 32'h13 : _GEN_409; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_411 = 9'h19b == io_addr[8:0] ? 32'h13 : _GEN_410; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_412 = 9'h19c == io_addr[8:0] ? 32'h13 : _GEN_411; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_413 = 9'h19d == io_addr[8:0] ? 32'h13 : _GEN_412; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_414 = 9'h19e == io_addr[8:0] ? 32'h13 : _GEN_413; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_415 = 9'h19f == io_addr[8:0] ? 32'h13 : _GEN_414; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_416 = 9'h1a0 == io_addr[8:0] ? 32'h13 : _GEN_415; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_417 = 9'h1a1 == io_addr[8:0] ? 32'h13 : _GEN_416; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_418 = 9'h1a2 == io_addr[8:0] ? 32'h13 : _GEN_417; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_419 = 9'h1a3 == io_addr[8:0] ? 32'h13 : _GEN_418; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_420 = 9'h1a4 == io_addr[8:0] ? 32'h13 : _GEN_419; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_421 = 9'h1a5 == io_addr[8:0] ? 32'h13 : _GEN_420; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_422 = 9'h1a6 == io_addr[8:0] ? 32'h13 : _GEN_421; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_423 = 9'h1a7 == io_addr[8:0] ? 32'h13 : _GEN_422; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_424 = 9'h1a8 == io_addr[8:0] ? 32'h13 : _GEN_423; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_425 = 9'h1a9 == io_addr[8:0] ? 32'h13 : _GEN_424; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_426 = 9'h1aa == io_addr[8:0] ? 32'h13 : _GEN_425; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_427 = 9'h1ab == io_addr[8:0] ? 32'h13 : _GEN_426; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_428 = 9'h1ac == io_addr[8:0] ? 32'h13 : _GEN_427; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_429 = 9'h1ad == io_addr[8:0] ? 32'h13 : _GEN_428; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_430 = 9'h1ae == io_addr[8:0] ? 32'h13 : _GEN_429; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_431 = 9'h1af == io_addr[8:0] ? 32'h13 : _GEN_430; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_432 = 9'h1b0 == io_addr[8:0] ? 32'h13 : _GEN_431; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_433 = 9'h1b1 == io_addr[8:0] ? 32'h13 : _GEN_432; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_434 = 9'h1b2 == io_addr[8:0] ? 32'h13 : _GEN_433; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_435 = 9'h1b3 == io_addr[8:0] ? 32'h13 : _GEN_434; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_436 = 9'h1b4 == io_addr[8:0] ? 32'h13 : _GEN_435; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_437 = 9'h1b5 == io_addr[8:0] ? 32'h13 : _GEN_436; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_438 = 9'h1b6 == io_addr[8:0] ? 32'h13 : _GEN_437; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_439 = 9'h1b7 == io_addr[8:0] ? 32'h13 : _GEN_438; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_440 = 9'h1b8 == io_addr[8:0] ? 32'h13 : _GEN_439; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_441 = 9'h1b9 == io_addr[8:0] ? 32'h13 : _GEN_440; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_442 = 9'h1ba == io_addr[8:0] ? 32'h13 : _GEN_441; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_443 = 9'h1bb == io_addr[8:0] ? 32'h13 : _GEN_442; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_444 = 9'h1bc == io_addr[8:0] ? 32'h13 : _GEN_443; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_445 = 9'h1bd == io_addr[8:0] ? 32'h13 : _GEN_444; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_446 = 9'h1be == io_addr[8:0] ? 32'h13 : _GEN_445; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_447 = 9'h1bf == io_addr[8:0] ? 32'h13 : _GEN_446; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_448 = 9'h1c0 == io_addr[8:0] ? 32'h13 : _GEN_447; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_449 = 9'h1c1 == io_addr[8:0] ? 32'h13 : _GEN_448; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_450 = 9'h1c2 == io_addr[8:0] ? 32'h13 : _GEN_449; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_451 = 9'h1c3 == io_addr[8:0] ? 32'h13 : _GEN_450; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_452 = 9'h1c4 == io_addr[8:0] ? 32'h13 : _GEN_451; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_453 = 9'h1c5 == io_addr[8:0] ? 32'h13 : _GEN_452; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_454 = 9'h1c6 == io_addr[8:0] ? 32'h13 : _GEN_453; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_455 = 9'h1c7 == io_addr[8:0] ? 32'h13 : _GEN_454; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_456 = 9'h1c8 == io_addr[8:0] ? 32'h13 : _GEN_455; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_457 = 9'h1c9 == io_addr[8:0] ? 32'h13 : _GEN_456; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_458 = 9'h1ca == io_addr[8:0] ? 32'h13 : _GEN_457; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_459 = 9'h1cb == io_addr[8:0] ? 32'h13 : _GEN_458; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_460 = 9'h1cc == io_addr[8:0] ? 32'h13 : _GEN_459; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_461 = 9'h1cd == io_addr[8:0] ? 32'h13 : _GEN_460; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_462 = 9'h1ce == io_addr[8:0] ? 32'h13 : _GEN_461; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_463 = 9'h1cf == io_addr[8:0] ? 32'h13 : _GEN_462; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_464 = 9'h1d0 == io_addr[8:0] ? 32'h13 : _GEN_463; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_465 = 9'h1d1 == io_addr[8:0] ? 32'h13 : _GEN_464; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_466 = 9'h1d2 == io_addr[8:0] ? 32'h13 : _GEN_465; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_467 = 9'h1d3 == io_addr[8:0] ? 32'h13 : _GEN_466; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_468 = 9'h1d4 == io_addr[8:0] ? 32'h13 : _GEN_467; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_469 = 9'h1d5 == io_addr[8:0] ? 32'h13 : _GEN_468; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_470 = 9'h1d6 == io_addr[8:0] ? 32'h13 : _GEN_469; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_471 = 9'h1d7 == io_addr[8:0] ? 32'h13 : _GEN_470; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_472 = 9'h1d8 == io_addr[8:0] ? 32'h13 : _GEN_471; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_473 = 9'h1d9 == io_addr[8:0] ? 32'h13 : _GEN_472; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_474 = 9'h1da == io_addr[8:0] ? 32'h13 : _GEN_473; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_475 = 9'h1db == io_addr[8:0] ? 32'h13 : _GEN_474; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_476 = 9'h1dc == io_addr[8:0] ? 32'h13 : _GEN_475; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_477 = 9'h1dd == io_addr[8:0] ? 32'h13 : _GEN_476; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_478 = 9'h1de == io_addr[8:0] ? 32'h13 : _GEN_477; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_479 = 9'h1df == io_addr[8:0] ? 32'h13 : _GEN_478; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_480 = 9'h1e0 == io_addr[8:0] ? 32'h13 : _GEN_479; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_481 = 9'h1e1 == io_addr[8:0] ? 32'h13 : _GEN_480; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_482 = 9'h1e2 == io_addr[8:0] ? 32'h13 : _GEN_481; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_483 = 9'h1e3 == io_addr[8:0] ? 32'h13 : _GEN_482; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_484 = 9'h1e4 == io_addr[8:0] ? 32'h13 : _GEN_483; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_485 = 9'h1e5 == io_addr[8:0] ? 32'h13 : _GEN_484; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_486 = 9'h1e6 == io_addr[8:0] ? 32'h13 : _GEN_485; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_487 = 9'h1e7 == io_addr[8:0] ? 32'h13 : _GEN_486; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_488 = 9'h1e8 == io_addr[8:0] ? 32'h13 : _GEN_487; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_489 = 9'h1e9 == io_addr[8:0] ? 32'h13 : _GEN_488; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_490 = 9'h1ea == io_addr[8:0] ? 32'h13 : _GEN_489; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_491 = 9'h1eb == io_addr[8:0] ? 32'h13 : _GEN_490; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_492 = 9'h1ec == io_addr[8:0] ? 32'h13 : _GEN_491; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_493 = 9'h1ed == io_addr[8:0] ? 32'h13 : _GEN_492; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_494 = 9'h1ee == io_addr[8:0] ? 32'h13 : _GEN_493; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_495 = 9'h1ef == io_addr[8:0] ? 32'h13 : _GEN_494; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_496 = 9'h1f0 == io_addr[8:0] ? 32'h13 : _GEN_495; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_497 = 9'h1f1 == io_addr[8:0] ? 32'h13 : _GEN_496; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_498 = 9'h1f2 == io_addr[8:0] ? 32'h13 : _GEN_497; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_499 = 9'h1f3 == io_addr[8:0] ? 32'h13 : _GEN_498; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_500 = 9'h1f4 == io_addr[8:0] ? 32'h13 : _GEN_499; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_501 = 9'h1f5 == io_addr[8:0] ? 32'h13 : _GEN_500; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_502 = 9'h1f6 == io_addr[8:0] ? 32'h13 : _GEN_501; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_503 = 9'h1f7 == io_addr[8:0] ? 32'h13 : _GEN_502; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_504 = 9'h1f8 == io_addr[8:0] ? 32'h13 : _GEN_503; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_505 = 9'h1f9 == io_addr[8:0] ? 32'h13 : _GEN_504; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_506 = 9'h1fa == io_addr[8:0] ? 32'h13 : _GEN_505; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_507 = 9'h1fb == io_addr[8:0] ? 32'h13 : _GEN_506; // @[InstrMemory.scala 43:{24,24}]
  wire [31:0] _GEN_508 = 9'h1fc == io_addr[8:0] ? 32'h13 : _GEN_507; // @[InstrMemory.scala 43:{24,24}]
  assign io_dataOut = io_dataOut_REG; // @[InstrMemory.scala 43:14]
  always @(posedge clock) begin
    if (reset) begin // @[InstrMemory.scala 43:24]
      io_dataOut_REG <= 32'h13; // @[InstrMemory.scala 43:24]
    end else if (9'h1ff == io_addr[8:0]) begin // @[InstrMemory.scala 43:24]
      io_dataOut_REG <= 32'h13; // @[InstrMemory.scala 43:24]
    end else if (9'h1fe == io_addr[8:0]) begin // @[InstrMemory.scala 43:24]
      io_dataOut_REG <= 32'h13; // @[InstrMemory.scala 43:24]
    end else if (9'h1fd == io_addr[8:0]) begin // @[InstrMemory.scala 43:24]
      io_dataOut_REG <= 32'h13; // @[InstrMemory.scala 43:24]
    end else begin
      io_dataOut_REG <= _GEN_508;
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
  output [6:0]  io_decoded_instruction_IFDtoEX_opcode,
  output [2:0]  io_funct3,
  output [6:0]  io_funct7,
  output [2:0]  io_instrType
);
  wire [2:0] _GEN_0 = 7'h37 == io_decoded_instruction_IFDtoEX_opcode ? 3'h4 : 3'h0; // @[InstructionDecoder.scala 27:16 30:49 56:20]
  wire [2:0] _GEN_1 = 7'h17 == io_decoded_instruction_IFDtoEX_opcode ? 3'h4 : _GEN_0; // @[InstructionDecoder.scala 30:49 53:20]
  wire [2:0] _GEN_2 = 7'h67 == io_decoded_instruction_IFDtoEX_opcode ? 3'h1 : _GEN_1; // @[InstructionDecoder.scala 30:49 50:20]
  wire [2:0] _GEN_3 = 7'h6f == io_decoded_instruction_IFDtoEX_opcode ? 3'h5 : _GEN_2; // @[InstructionDecoder.scala 30:49 47:20]
  wire [2:0] _GEN_4 = 7'h63 == io_decoded_instruction_IFDtoEX_opcode ? 3'h3 : _GEN_3; // @[InstructionDecoder.scala 30:49 44:20]
  wire [2:0] _GEN_5 = 7'h23 == io_decoded_instruction_IFDtoEX_opcode ? 3'h2 : _GEN_4; // @[InstructionDecoder.scala 30:49 41:20]
  wire [2:0] _GEN_6 = 7'h3 == io_decoded_instruction_IFDtoEX_opcode ? 3'h1 : _GEN_5; // @[InstructionDecoder.scala 30:49 38:20]
  wire [2:0] _GEN_7 = 7'h13 == io_decoded_instruction_IFDtoEX_opcode ? 3'h1 : _GEN_6; // @[InstructionDecoder.scala 30:49 35:20]
  wire [6:0] _GEN_9 = io_funct3 == 3'h1 | io_funct3 == 3'h5 | io_funct3 == 3'h5 ? io_instruction[31:25] : 7'h0; // @[InstructionDecoder.scala 72:108 26:13 74:19]
  wire [4:0] _GEN_10 = 3'h4 == io_instrType ? io_instruction[11:7] : 5'h0; // @[InstructionDecoder.scala 60:24 24:37 91:41]
  wire [4:0] _GEN_11 = 3'h5 == io_instrType ? io_instruction[11:7] : _GEN_10; // @[InstructionDecoder.scala 60:24 88:41]
  wire [4:0] _GEN_12 = 3'h3 == io_instrType ? io_instruction[19:15] : 5'h0; // @[InstructionDecoder.scala 60:24 22:38 83:42]
  wire [4:0] _GEN_13 = 3'h3 == io_instrType ? io_instruction[24:20] : 5'h0; // @[InstructionDecoder.scala 60:24 23:38 84:42]
  wire [2:0] _GEN_14 = 3'h3 == io_instrType ? io_instruction[14:12] : 3'h0; // @[InstructionDecoder.scala 25:13 60:24 85:17]
  wire [4:0] _GEN_15 = 3'h3 == io_instrType ? 5'h0 : _GEN_11; // @[InstructionDecoder.scala 60:24 24:37]
  wire [4:0] _GEN_16 = 3'h2 == io_instrType ? io_instruction[19:15] : _GEN_12; // @[InstructionDecoder.scala 60:24 78:42]
  wire [4:0] _GEN_17 = 3'h2 == io_instrType ? io_instruction[24:20] : _GEN_13; // @[InstructionDecoder.scala 60:24 79:42]
  wire [2:0] _GEN_18 = 3'h2 == io_instrType ? io_instruction[14:12] : _GEN_14; // @[InstructionDecoder.scala 60:24 80:17]
  wire [4:0] _GEN_19 = 3'h2 == io_instrType ? 5'h0 : _GEN_15; // @[InstructionDecoder.scala 60:24 24:37]
  wire [4:0] _GEN_20 = 3'h1 == io_instrType ? io_instruction[19:15] : _GEN_16; // @[InstructionDecoder.scala 60:24 69:42]
  wire [2:0] _GEN_21 = 3'h1 == io_instrType ? io_instruction[14:12] : _GEN_18; // @[InstructionDecoder.scala 60:24 70:17]
  wire [4:0] _GEN_22 = 3'h1 == io_instrType ? io_instruction[11:7] : _GEN_19; // @[InstructionDecoder.scala 60:24 71:41]
  wire [6:0] _GEN_23 = 3'h1 == io_instrType ? _GEN_9 : 7'h0; // @[InstructionDecoder.scala 26:13 60:24]
  wire [4:0] _GEN_24 = 3'h1 == io_instrType ? 5'h0 : _GEN_17; // @[InstructionDecoder.scala 60:24 23:38]
  assign io_decoded_instruction_IFDtoEX_rs1 = 3'h0 == io_instrType ? io_instruction[19:15] : _GEN_20; // @[InstructionDecoder.scala 60:24 62:42]
  assign io_decoded_instruction_IFDtoEX_rs2 = 3'h0 == io_instrType ? io_instruction[24:20] : _GEN_24; // @[InstructionDecoder.scala 60:24 63:42]
  assign io_decoded_instruction_IFDtoEX_rd = 3'h0 == io_instrType ? io_instruction[11:7] : _GEN_22; // @[InstructionDecoder.scala 60:24 64:41]
  assign io_decoded_instruction_IFDtoEX_opcode = io_instruction[6:0]; // @[InstructionDecoder.scala 28:58]
  assign io_funct3 = 3'h0 == io_instrType ? io_instruction[14:12] : _GEN_21; // @[InstructionDecoder.scala 60:24 65:17]
  assign io_funct7 = 3'h0 == io_instrType ? io_instruction[31:25] : _GEN_23; // @[InstructionDecoder.scala 60:24 66:17]
  assign io_instrType = 7'h33 == io_decoded_instruction_IFDtoEX_opcode ? 3'h0 : _GEN_7; // @[InstructionDecoder.scala 30:49 32:20]
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
  input        io_take_branch,
  output       io_alu_op2mux_select,
  output [7:0] io_alu_operation_select,
  output       io_register_write_enable,
  output       io_write_back_select,
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
  wire  _GEN_2 = 7'h6f == io_opcode | 7'h67 == io_opcode; // @[ControlUnit.scala 50:21 98:32]
  wire [6:0] _GEN_3 = 7'h6f == io_opcode ? 7'h6f : _GEN_1; // @[ControlUnit.scala 50:21 99:31]
  wire  _GEN_4 = 7'h17 == io_opcode | _GEN_2; // @[ControlUnit.scala 50:21 95:32]
  wire [6:0] _GEN_5 = 7'h17 == io_opcode ? 7'h0 : _GEN_3; // @[ControlUnit.scala 50:21 27:27]
  wire  _GEN_6 = 7'h37 == io_opcode | _GEN_4; // @[ControlUnit.scala 50:21 92:32]
  wire [6:0] _GEN_7 = 7'h37 == io_opcode ? 7'h0 : _GEN_5; // @[ControlUnit.scala 50:21 27:27]
  wire  _GEN_9 = 7'h23 == io_opcode ? 1'h0 : _GEN_6; // @[ControlUnit.scala 50:21 84:32]
  wire [6:0] _GEN_10 = 7'h23 == io_opcode ? {{2'd0}, _io_alu_operation_select_T_57} : _GEN_7; // @[ControlUnit.scala 50:21 85:31]
  wire  _GEN_11 = 7'h3 == io_opcode | _GEN_9; // @[ControlUnit.scala 50:21 71:32]
  wire [6:0] _GEN_13 = 7'h3 == io_opcode ? {{2'd0}, _io_alu_operation_select_T_51} : _GEN_10; // @[ControlUnit.scala 50:21 73:31]
  wire  _GEN_14 = 7'h3 == io_opcode ? 1'h0 : 7'h23 == io_opcode; // @[ControlUnit.scala 50:21 23:26]
  wire  _GEN_15 = 7'h63 == io_opcode ? 1'h0 : _GEN_11; // @[ControlUnit.scala 50:21 58:32]
  wire  _GEN_16 = 7'h63 == io_opcode ? 1'h0 : 1'h1; // @[ControlUnit.scala 50:21 28:24 59:28]
  wire [6:0] _GEN_17 = 7'h63 == io_opcode ? {{3'd0}, _io_alu_operation_select_T_41} : _GEN_13; // @[ControlUnit.scala 50:21 60:31]
  wire  _GEN_18 = 7'h63 == io_opcode ? 1'h0 : 7'h3 == io_opcode; // @[ControlUnit.scala 50:21 26:24]
  wire  _GEN_19 = 7'h63 == io_opcode ? 1'h0 : _GEN_14; // @[ControlUnit.scala 50:21 23:26]
  wire  _GEN_20 = 7'h33 == io_opcode | 7'h13 == io_opcode | _GEN_15; // @[ControlUnit.scala 50:21 52:32]
  wire [6:0] _GEN_21 = 7'h33 == io_opcode | 7'h13 == io_opcode ? {{3'd0}, _io_alu_operation_select_T_29} : _GEN_17; // @[ControlUnit.scala 50:21 53:31]
  wire  _GEN_24 = 7'h33 == io_opcode | 7'h13 == io_opcode ? 1'h0 : _GEN_19; // @[ControlUnit.scala 50:21 23:26]
  wire [6:0] _GEN_27 = io_take_branch ? 7'h0 : _GEN_21; // @[ControlUnit.scala 110:23 113:29]
  assign io_alu_op2mux_select = 7'h33 == io_opcode | 7'h13 == io_opcode ? _io_alu_op2mux_select_T_1 : _GEN_16; // @[ControlUnit.scala 50:21 54:28]
  assign io_alu_operation_select = {{1'd0}, _GEN_27};
  assign io_register_write_enable = io_take_branch ? 1'h0 : _GEN_20; // @[ControlUnit.scala 110:23 112:30]
  assign io_write_back_select = 7'h33 == io_opcode | 7'h13 == io_opcode ? 1'h0 : _GEN_18; // @[ControlUnit.scala 50:21 26:24]
  assign io_write_memory_enable = io_take_branch ? 1'h0 : _GEN_24; // @[ControlUnit.scala 110:23 111:28]
endmodule
module IFDStage(
  input         clock,
  input         reset,
  input         io_EXtoIFD_take_branch_EXtoIFD,
  input  [31:0] io_EXtoIFD_branch_address_EXtoIFD,
  input  [4:0]  io_EXtoIFD_rd_EXtoIFD,
  input  [4:0]  io_MEMtoIFD_rd_MEMtoIFD,
  input  [6:0]  io_MEMtoIFD_opcode_MEMtoIFD,
  output [4:0]  io_decoded_instruction_IFDtoEX_rs1,
  output [4:0]  io_decoded_instruction_IFDtoEX_rs2,
  output [4:0]  io_decoded_instruction_IFDtoEX_rd,
  output [6:0]  io_decoded_instruction_IFDtoEX_opcode,
  output [31:0] io_IFDtoEX_pc_IFDtoEX,
  output [31:0] io_IFDtoEX_immediate_IFDtoEX,
  output        io_IFDtoEX_alu_op2mux_select_IFDtoEX,
  output [7:0]  io_IFDtoEX_alu_operation_select_IFDtoEX,
  output        io_IFDtoEX_register_write_enable_IFDtoEX,
  output        io_IFDtoEX_write_back_select_IFDtoEX,
  output        io_IFDtoEX_write_memory_enable_IFDtoEX,
  output [2:0]  io_IFDtoEX_forward_enable_rs1_IFDtoEX,
  output [2:0]  io_IFDtoEX_forward_enable_rs2_IFDtoEX,
  output [2:0]  io_IFDtoEX_forward_enable_memory_data_IFDtoEX,
  output [1:0]  io_IFDtoEX_forward_choose_data_IFDtoEX,
  input  [4:0]  io_WBtoIFD_rd_WBtoIFD,
  input  [6:0]  io_WBtoIFD_opcode_WBtoIFD
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  instrMem_clock; // @[IFDStage.scala 57:24]
  wire  instrMem_reset; // @[IFDStage.scala 57:24]
  wire [10:0] instrMem_io_addr; // @[IFDStage.scala 57:24]
  wire [31:0] instrMem_io_dataOut; // @[IFDStage.scala 57:24]
  wire [31:0] instructionDecoder_io_instruction; // @[IFDStage.scala 61:34]
  wire [4:0] instructionDecoder_io_decoded_instruction_IFDtoEX_rs1; // @[IFDStage.scala 61:34]
  wire [4:0] instructionDecoder_io_decoded_instruction_IFDtoEX_rs2; // @[IFDStage.scala 61:34]
  wire [4:0] instructionDecoder_io_decoded_instruction_IFDtoEX_rd; // @[IFDStage.scala 61:34]
  wire [6:0] instructionDecoder_io_decoded_instruction_IFDtoEX_opcode; // @[IFDStage.scala 61:34]
  wire [2:0] instructionDecoder_io_funct3; // @[IFDStage.scala 61:34]
  wire [6:0] instructionDecoder_io_funct7; // @[IFDStage.scala 61:34]
  wire [2:0] instructionDecoder_io_instrType; // @[IFDStage.scala 61:34]
  wire [2:0] immediateGenerator_io_instrType; // @[IFDStage.scala 65:34]
  wire [31:0] immediateGenerator_io_instruction; // @[IFDStage.scala 65:34]
  wire [31:0] immediateGenerator_io_immediate; // @[IFDStage.scala 65:34]
  wire [2:0] controlUnit_io_funct3; // @[IFDStage.scala 70:27]
  wire [6:0] controlUnit_io_funct7; // @[IFDStage.scala 70:27]
  wire [6:0] controlUnit_io_opcode; // @[IFDStage.scala 70:27]
  wire  controlUnit_io_take_branch; // @[IFDStage.scala 70:27]
  wire  controlUnit_io_alu_op2mux_select; // @[IFDStage.scala 70:27]
  wire [7:0] controlUnit_io_alu_operation_select; // @[IFDStage.scala 70:27]
  wire  controlUnit_io_register_write_enable; // @[IFDStage.scala 70:27]
  wire  controlUnit_io_write_back_select; // @[IFDStage.scala 70:27]
  wire  controlUnit_io_write_memory_enable; // @[IFDStage.scala 70:27]
  reg [31:0] PC; // @[IFDStage.scala 52:19]
  wire [31:0] _NextInstrAdd_T_1 = PC + 32'h4; // @[IFDStage.scala 53:108]
  wire [31:0] NextInstrAdd = io_EXtoIFD_take_branch_EXtoIFD ? io_EXtoIFD_branch_address_EXtoIFD : _NextInstrAdd_T_1; // @[IFDStage.scala 53:37]
  wire [31:0] _instrMem_io_addr_T = {{2'd0}, NextInstrAdd[31:2]}; // @[IFDStage.scala 58:36]
  reg [31:0] io_IFDtoEX_pc_IFDtoEX_REG; // @[IFDStage.scala 83:35]
  wire  _io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_1 = instructionDecoder_io_decoded_instruction_IFDtoEX_rs1 != 5'h0; // @[IFDStage.scala 103:44]
  wire  _io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_2 = io_EXtoIFD_rd_EXtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs1 & instructionDecoder_io_decoded_instruction_IFDtoEX_rs1 != 5'h0
    ; // @[IFDStage.scala 103:37]
  wire  _io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_5 = io_MEMtoIFD_rd_MEMtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs1 & _io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_1; // @[IFDStage.scala 104:39]
  wire  _io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_8 = io_WBtoIFD_rd_WBtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs1 & _io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_1; // @[IFDStage.scala 105:37]
  wire [1:0] io_IFDtoEX_forward_enable_rs1_IFDtoEX_hi = {_io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_2,
    _io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_5}; // @[Cat.scala 33:92]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_1 = instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 != 5'h0; // @[IFDStage.scala 109:44]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_2 = io_EXtoIFD_rd_EXtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 & instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 != 5'h0
    ; // @[IFDStage.scala 109:37]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_3 = instructionDecoder_io_decoded_instruction_IFDtoEX_opcode != 7'h3; // @[IFDStage.scala 109:62]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_5 = instructionDecoder_io_decoded_instruction_IFDtoEX_opcode != 7'h23; // @[IFDStage.scala 109:88]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_6 = io_EXtoIFD_rd_EXtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 & instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 != 5'h0
     & instructionDecoder_io_decoded_instruction_IFDtoEX_opcode != 7'h3 &
    instructionDecoder_io_decoded_instruction_IFDtoEX_opcode != 7'h23; // @[IFDStage.scala 109:78]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_9 = io_MEMtoIFD_rd_MEMtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 & _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_1; // @[IFDStage.scala 110:39]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_13 = io_MEMtoIFD_rd_MEMtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 & _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_1 &
    _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_3 & _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_5; // @[IFDStage.scala 110:80]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_16 = io_WBtoIFD_rd_WBtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 & _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_1; // @[IFDStage.scala 111:37]
  wire  _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_20 = io_WBtoIFD_rd_WBtoIFD ==
    instructionDecoder_io_decoded_instruction_IFDtoEX_rs2 & _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_1 &
    _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_3 & _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_5; // @[IFDStage.scala 111:78]
  wire [1:0] io_IFDtoEX_forward_enable_rs2_IFDtoEX_hi = {_io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_6,
    _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_13}; // @[Cat.scala 33:92]
  wire [1:0] io_IFDtoEX_forward_enable_memory_data_IFDtoEX_hi = {_io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_2,
    _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_9}; // @[Cat.scala 33:92]
  wire  _io_IFDtoEX_forward_choose_data_IFDtoEX_T = io_MEMtoIFD_opcode_MEMtoIFD == 7'h3; // @[IFDStage.scala 120:34]
  wire  _io_IFDtoEX_forward_choose_data_IFDtoEX_T_1 = io_WBtoIFD_opcode_WBtoIFD == 7'h3; // @[IFDStage.scala 121:32]
  InstrMemory instrMem ( // @[IFDStage.scala 57:24]
    .clock(instrMem_clock),
    .reset(instrMem_reset),
    .io_addr(instrMem_io_addr),
    .io_dataOut(instrMem_io_dataOut)
  );
  InstructionDecoder instructionDecoder ( // @[IFDStage.scala 61:34]
    .io_instruction(instructionDecoder_io_instruction),
    .io_decoded_instruction_IFDtoEX_rs1(instructionDecoder_io_decoded_instruction_IFDtoEX_rs1),
    .io_decoded_instruction_IFDtoEX_rs2(instructionDecoder_io_decoded_instruction_IFDtoEX_rs2),
    .io_decoded_instruction_IFDtoEX_rd(instructionDecoder_io_decoded_instruction_IFDtoEX_rd),
    .io_decoded_instruction_IFDtoEX_opcode(instructionDecoder_io_decoded_instruction_IFDtoEX_opcode),
    .io_funct3(instructionDecoder_io_funct3),
    .io_funct7(instructionDecoder_io_funct7),
    .io_instrType(instructionDecoder_io_instrType)
  );
  ImmediateGenerator immediateGenerator ( // @[IFDStage.scala 65:34]
    .io_instrType(immediateGenerator_io_instrType),
    .io_instruction(immediateGenerator_io_instruction),
    .io_immediate(immediateGenerator_io_immediate)
  );
  ControlUnit controlUnit ( // @[IFDStage.scala 70:27]
    .io_funct3(controlUnit_io_funct3),
    .io_funct7(controlUnit_io_funct7),
    .io_opcode(controlUnit_io_opcode),
    .io_take_branch(controlUnit_io_take_branch),
    .io_alu_op2mux_select(controlUnit_io_alu_op2mux_select),
    .io_alu_operation_select(controlUnit_io_alu_operation_select),
    .io_register_write_enable(controlUnit_io_register_write_enable),
    .io_write_back_select(controlUnit_io_write_back_select),
    .io_write_memory_enable(controlUnit_io_write_memory_enable)
  );
  assign io_decoded_instruction_IFDtoEX_rs1 = instructionDecoder_io_decoded_instruction_IFDtoEX_rs1; // @[IFDStage.scala 87:34]
  assign io_decoded_instruction_IFDtoEX_rs2 = instructionDecoder_io_decoded_instruction_IFDtoEX_rs2; // @[IFDStage.scala 87:34]
  assign io_decoded_instruction_IFDtoEX_rd = instructionDecoder_io_decoded_instruction_IFDtoEX_rd; // @[IFDStage.scala 87:34]
  assign io_decoded_instruction_IFDtoEX_opcode = instructionDecoder_io_decoded_instruction_IFDtoEX_opcode; // @[IFDStage.scala 87:34]
  assign io_IFDtoEX_pc_IFDtoEX = io_IFDtoEX_pc_IFDtoEX_REG; // @[IFDStage.scala 83:25]
  assign io_IFDtoEX_immediate_IFDtoEX = immediateGenerator_io_immediate; // @[IFDStage.scala 89:32]
  assign io_IFDtoEX_alu_op2mux_select_IFDtoEX = controlUnit_io_alu_op2mux_select; // @[IFDStage.scala 78:40]
  assign io_IFDtoEX_alu_operation_select_IFDtoEX = controlUnit_io_alu_operation_select; // @[IFDStage.scala 77:43]
  assign io_IFDtoEX_register_write_enable_IFDtoEX = controlUnit_io_register_write_enable; // @[IFDStage.scala 80:44]
  assign io_IFDtoEX_write_back_select_IFDtoEX = controlUnit_io_write_back_select; // @[IFDStage.scala 75:40]
  assign io_IFDtoEX_write_memory_enable_IFDtoEX = controlUnit_io_write_memory_enable; // @[IFDStage.scala 76:42]
  assign io_IFDtoEX_forward_enable_rs1_IFDtoEX = {io_IFDtoEX_forward_enable_rs1_IFDtoEX_hi,
    _io_IFDtoEX_forward_enable_rs1_IFDtoEX_T_8}; // @[Cat.scala 33:92]
  assign io_IFDtoEX_forward_enable_rs2_IFDtoEX = {io_IFDtoEX_forward_enable_rs2_IFDtoEX_hi,
    _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_20}; // @[Cat.scala 33:92]
  assign io_IFDtoEX_forward_enable_memory_data_IFDtoEX = {io_IFDtoEX_forward_enable_memory_data_IFDtoEX_hi,
    _io_IFDtoEX_forward_enable_rs2_IFDtoEX_T_16}; // @[Cat.scala 33:92]
  assign io_IFDtoEX_forward_choose_data_IFDtoEX = {_io_IFDtoEX_forward_choose_data_IFDtoEX_T,
    _io_IFDtoEX_forward_choose_data_IFDtoEX_T_1}; // @[Cat.scala 33:92]
  assign instrMem_clock = clock;
  assign instrMem_reset = reset;
  assign instrMem_io_addr = _instrMem_io_addr_T[10:0]; // @[IFDStage.scala 58:20]
  assign instructionDecoder_io_instruction = instrMem_io_dataOut; // @[IFDStage.scala 62:37]
  assign immediateGenerator_io_instrType = instructionDecoder_io_instrType; // @[IFDStage.scala 67:35]
  assign immediateGenerator_io_instruction = instrMem_io_dataOut; // @[IFDStage.scala 66:37]
  assign controlUnit_io_funct3 = instructionDecoder_io_funct3; // @[IFDStage.scala 71:25]
  assign controlUnit_io_funct7 = instructionDecoder_io_funct7; // @[IFDStage.scala 72:25]
  assign controlUnit_io_opcode = instructionDecoder_io_decoded_instruction_IFDtoEX_opcode; // @[IFDStage.scala 73:25]
  assign controlUnit_io_take_branch = io_EXtoIFD_take_branch_EXtoIFD; // @[IFDStage.scala 74:30]
  always @(posedge clock) begin
    if (reset) begin // @[IFDStage.scala 52:19]
      PC <= 32'hfffffffc; // @[IFDStage.scala 52:19]
    end else if (io_EXtoIFD_take_branch_EXtoIFD) begin // @[IFDStage.scala 53:37]
      PC <= io_EXtoIFD_branch_address_EXtoIFD;
    end else begin
      PC <= _NextInstrAdd_T_1;
    end
    if (io_EXtoIFD_take_branch_EXtoIFD) begin // @[IFDStage.scala 53:37]
      io_IFDtoEX_pc_IFDtoEX_REG <= io_EXtoIFD_branch_address_EXtoIFD;
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
  wire [31:0] _GEN_0 = 5'h0 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_0; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_1 = 5'h1 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_1; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_2 = 5'h2 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_2; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_3 = 5'h3 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_3; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_4 = 5'h4 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_4; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_5 = 5'h5 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_5; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_6 = 5'h6 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_6; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_7 = 5'h7 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_7; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_8 = 5'h8 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_8; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_9 = 5'h9 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_9; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_10 = 5'ha == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_10; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_11 = 5'hb == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_11; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_12 = 5'hc == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_12; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_13 = 5'hd == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_13; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_14 = 5'he == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_14; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_15 = 5'hf == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_15; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_16 = 5'h10 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_16; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_17 = 5'h11 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_17; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_18 = 5'h12 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_18; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_19 = 5'h13 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_19; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_20 = 5'h14 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_20; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_21 = 5'h15 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_21; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_22 = 5'h16 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_22; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_23 = 5'h17 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_23; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_24 = 5'h18 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_24; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_25 = 5'h19 == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_25; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_26 = 5'h1a == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_26; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_27 = 5'h1b == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_27; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_28 = 5'h1c == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_28; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_29 = 5'h1d == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_29; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_30 = 5'h1e == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_30; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire [31:0] _GEN_31 = 5'h1f == io_rd_WBtoEX ? io_regfile_write_data_WBtoEX : RegFile_31; // @[RegisterFile.scala 19:25 23:{27,27}]
  wire  _T = io_rd_WBtoEX == 5'h0; // @[RegisterFile.scala 24:23]
  wire [31:0] _GEN_129 = 5'h1 == io_rd_WBtoEX ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_130 = 5'h2 == io_rd_WBtoEX ? RegFile_2 : _GEN_129; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_131 = 5'h3 == io_rd_WBtoEX ? RegFile_3 : _GEN_130; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_132 = 5'h4 == io_rd_WBtoEX ? RegFile_4 : _GEN_131; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_133 = 5'h5 == io_rd_WBtoEX ? RegFile_5 : _GEN_132; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_134 = 5'h6 == io_rd_WBtoEX ? RegFile_6 : _GEN_133; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_135 = 5'h7 == io_rd_WBtoEX ? RegFile_7 : _GEN_134; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_136 = 5'h8 == io_rd_WBtoEX ? RegFile_8 : _GEN_135; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_137 = 5'h9 == io_rd_WBtoEX ? RegFile_9 : _GEN_136; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_138 = 5'ha == io_rd_WBtoEX ? RegFile_10 : _GEN_137; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_139 = 5'hb == io_rd_WBtoEX ? RegFile_11 : _GEN_138; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_140 = 5'hc == io_rd_WBtoEX ? RegFile_12 : _GEN_139; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_141 = 5'hd == io_rd_WBtoEX ? RegFile_13 : _GEN_140; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_142 = 5'he == io_rd_WBtoEX ? RegFile_14 : _GEN_141; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_143 = 5'hf == io_rd_WBtoEX ? RegFile_15 : _GEN_142; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_144 = 5'h10 == io_rd_WBtoEX ? RegFile_16 : _GEN_143; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_145 = 5'h11 == io_rd_WBtoEX ? RegFile_17 : _GEN_144; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_146 = 5'h12 == io_rd_WBtoEX ? RegFile_18 : _GEN_145; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_147 = 5'h13 == io_rd_WBtoEX ? RegFile_19 : _GEN_146; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_148 = 5'h14 == io_rd_WBtoEX ? RegFile_20 : _GEN_147; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_149 = 5'h15 == io_rd_WBtoEX ? RegFile_21 : _GEN_148; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_150 = 5'h16 == io_rd_WBtoEX ? RegFile_22 : _GEN_149; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_151 = 5'h17 == io_rd_WBtoEX ? RegFile_23 : _GEN_150; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_152 = 5'h18 == io_rd_WBtoEX ? RegFile_24 : _GEN_151; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_153 = 5'h19 == io_rd_WBtoEX ? RegFile_25 : _GEN_152; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_154 = 5'h1a == io_rd_WBtoEX ? RegFile_26 : _GEN_153; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_155 = 5'h1b == io_rd_WBtoEX ? RegFile_27 : _GEN_154; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_156 = 5'h1c == io_rd_WBtoEX ? RegFile_28 : _GEN_155; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_157 = 5'h1d == io_rd_WBtoEX ? RegFile_29 : _GEN_156; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_158 = 5'h1e == io_rd_WBtoEX ? RegFile_30 : _GEN_157; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_159 = 5'h1f == io_rd_WBtoEX ? RegFile_31 : _GEN_158; // @[RegisterFile.scala 28:{27,27}]
  wire [31:0] _GEN_96 = 5'h0 == io_rd_WBtoEX ? _GEN_159 : RegFile_0; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_97 = 5'h1 == io_rd_WBtoEX ? _GEN_159 : RegFile_1; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_98 = 5'h2 == io_rd_WBtoEX ? _GEN_159 : RegFile_2; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_99 = 5'h3 == io_rd_WBtoEX ? _GEN_159 : RegFile_3; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_100 = 5'h4 == io_rd_WBtoEX ? _GEN_159 : RegFile_4; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_101 = 5'h5 == io_rd_WBtoEX ? _GEN_159 : RegFile_5; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_102 = 5'h6 == io_rd_WBtoEX ? _GEN_159 : RegFile_6; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_103 = 5'h7 == io_rd_WBtoEX ? _GEN_159 : RegFile_7; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_104 = 5'h8 == io_rd_WBtoEX ? _GEN_159 : RegFile_8; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_105 = 5'h9 == io_rd_WBtoEX ? _GEN_159 : RegFile_9; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_106 = 5'ha == io_rd_WBtoEX ? _GEN_159 : RegFile_10; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_107 = 5'hb == io_rd_WBtoEX ? _GEN_159 : RegFile_11; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_108 = 5'hc == io_rd_WBtoEX ? _GEN_159 : RegFile_12; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_109 = 5'hd == io_rd_WBtoEX ? _GEN_159 : RegFile_13; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_110 = 5'he == io_rd_WBtoEX ? _GEN_159 : RegFile_14; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_111 = 5'hf == io_rd_WBtoEX ? _GEN_159 : RegFile_15; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_112 = 5'h10 == io_rd_WBtoEX ? _GEN_159 : RegFile_16; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_113 = 5'h11 == io_rd_WBtoEX ? _GEN_159 : RegFile_17; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_114 = 5'h12 == io_rd_WBtoEX ? _GEN_159 : RegFile_18; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_115 = 5'h13 == io_rd_WBtoEX ? _GEN_159 : RegFile_19; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_116 = 5'h14 == io_rd_WBtoEX ? _GEN_159 : RegFile_20; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_117 = 5'h15 == io_rd_WBtoEX ? _GEN_159 : RegFile_21; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_118 = 5'h16 == io_rd_WBtoEX ? _GEN_159 : RegFile_22; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_119 = 5'h17 == io_rd_WBtoEX ? _GEN_159 : RegFile_23; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_120 = 5'h18 == io_rd_WBtoEX ? _GEN_159 : RegFile_24; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_121 = 5'h19 == io_rd_WBtoEX ? _GEN_159 : RegFile_25; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_122 = 5'h1a == io_rd_WBtoEX ? _GEN_159 : RegFile_26; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_123 = 5'h1b == io_rd_WBtoEX ? _GEN_159 : RegFile_27; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_124 = 5'h1c == io_rd_WBtoEX ? _GEN_159 : RegFile_28; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_125 = 5'h1d == io_rd_WBtoEX ? _GEN_159 : RegFile_29; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_126 = 5'h1e == io_rd_WBtoEX ? _GEN_159 : RegFile_30; // @[RegisterFile.scala 19:25 28:{27,27}]
  wire [31:0] _GEN_127 = 5'h1f == io_rd_WBtoEX ? _GEN_159 : RegFile_31; // @[RegisterFile.scala 19:25 28:{27,27}]
  reg [31:0] io_alu_operand_1_REG; // @[RegisterFile.scala 35:30]
  wire [31:0] _GEN_257 = 5'h1 == io_rs1 ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_258 = 5'h2 == io_rs1 ? RegFile_2 : _GEN_257; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_259 = 5'h3 == io_rs1 ? RegFile_3 : _GEN_258; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_260 = 5'h4 == io_rs1 ? RegFile_4 : _GEN_259; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_261 = 5'h5 == io_rs1 ? RegFile_5 : _GEN_260; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_262 = 5'h6 == io_rs1 ? RegFile_6 : _GEN_261; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_263 = 5'h7 == io_rs1 ? RegFile_7 : _GEN_262; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_264 = 5'h8 == io_rs1 ? RegFile_8 : _GEN_263; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_265 = 5'h9 == io_rs1 ? RegFile_9 : _GEN_264; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_266 = 5'ha == io_rs1 ? RegFile_10 : _GEN_265; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_267 = 5'hb == io_rs1 ? RegFile_11 : _GEN_266; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_268 = 5'hc == io_rs1 ? RegFile_12 : _GEN_267; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_269 = 5'hd == io_rs1 ? RegFile_13 : _GEN_268; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_270 = 5'he == io_rs1 ? RegFile_14 : _GEN_269; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_271 = 5'hf == io_rs1 ? RegFile_15 : _GEN_270; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_272 = 5'h10 == io_rs1 ? RegFile_16 : _GEN_271; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_273 = 5'h11 == io_rs1 ? RegFile_17 : _GEN_272; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_274 = 5'h12 == io_rs1 ? RegFile_18 : _GEN_273; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_275 = 5'h13 == io_rs1 ? RegFile_19 : _GEN_274; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_276 = 5'h14 == io_rs1 ? RegFile_20 : _GEN_275; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_277 = 5'h15 == io_rs1 ? RegFile_21 : _GEN_276; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_278 = 5'h16 == io_rs1 ? RegFile_22 : _GEN_277; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_279 = 5'h17 == io_rs1 ? RegFile_23 : _GEN_278; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_280 = 5'h18 == io_rs1 ? RegFile_24 : _GEN_279; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_281 = 5'h19 == io_rs1 ? RegFile_25 : _GEN_280; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_282 = 5'h1a == io_rs1 ? RegFile_26 : _GEN_281; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_283 = 5'h1b == io_rs1 ? RegFile_27 : _GEN_282; // @[RegisterFile.scala 35:{30,30}]
  wire [31:0] _GEN_284 = 5'h1c == io_rs1 ? RegFile_28 : _GEN_283; // @[RegisterFile.scala 35:{30,30}]
  reg [31:0] io_reg_data_2_REG; // @[RegisterFile.scala 36:27]
  wire [31:0] _GEN_289 = 5'h1 == io_rs2 ? RegFile_1 : RegFile_0; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_290 = 5'h2 == io_rs2 ? RegFile_2 : _GEN_289; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_291 = 5'h3 == io_rs2 ? RegFile_3 : _GEN_290; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_292 = 5'h4 == io_rs2 ? RegFile_4 : _GEN_291; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_293 = 5'h5 == io_rs2 ? RegFile_5 : _GEN_292; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_294 = 5'h6 == io_rs2 ? RegFile_6 : _GEN_293; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_295 = 5'h7 == io_rs2 ? RegFile_7 : _GEN_294; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_296 = 5'h8 == io_rs2 ? RegFile_8 : _GEN_295; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_297 = 5'h9 == io_rs2 ? RegFile_9 : _GEN_296; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_298 = 5'ha == io_rs2 ? RegFile_10 : _GEN_297; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_299 = 5'hb == io_rs2 ? RegFile_11 : _GEN_298; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_300 = 5'hc == io_rs2 ? RegFile_12 : _GEN_299; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_301 = 5'hd == io_rs2 ? RegFile_13 : _GEN_300; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_302 = 5'he == io_rs2 ? RegFile_14 : _GEN_301; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_303 = 5'hf == io_rs2 ? RegFile_15 : _GEN_302; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_304 = 5'h10 == io_rs2 ? RegFile_16 : _GEN_303; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_305 = 5'h11 == io_rs2 ? RegFile_17 : _GEN_304; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_306 = 5'h12 == io_rs2 ? RegFile_18 : _GEN_305; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_307 = 5'h13 == io_rs2 ? RegFile_19 : _GEN_306; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_308 = 5'h14 == io_rs2 ? RegFile_20 : _GEN_307; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_309 = 5'h15 == io_rs2 ? RegFile_21 : _GEN_308; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_310 = 5'h16 == io_rs2 ? RegFile_22 : _GEN_309; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_311 = 5'h17 == io_rs2 ? RegFile_23 : _GEN_310; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_312 = 5'h18 == io_rs2 ? RegFile_24 : _GEN_311; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_313 = 5'h19 == io_rs2 ? RegFile_25 : _GEN_312; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_314 = 5'h1a == io_rs2 ? RegFile_26 : _GEN_313; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_315 = 5'h1b == io_rs2 ? RegFile_27 : _GEN_314; // @[RegisterFile.scala 36:{27,27}]
  wire [31:0] _GEN_316 = 5'h1c == io_rs2 ? RegFile_28 : _GEN_315; // @[RegisterFile.scala 36:{27,27}]
  assign io_alu_operand_1 = io_alu_operand_1_REG; // @[RegisterFile.scala 35:20]
  assign io_reg_data_2 = io_reg_data_2_REG; // @[RegisterFile.scala 36:17]
  always @(posedge clock) begin
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_0 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h0 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_0 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_0 <= _GEN_0;
        end
      end else begin
        RegFile_0 <= _GEN_0;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h0 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_0 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_0 <= _GEN_96;
      end
    end else begin
      RegFile_0 <= _GEN_96;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_1 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h1 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_1 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_1 <= _GEN_1;
        end
      end else begin
        RegFile_1 <= _GEN_1;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h1 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_1 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_1 <= _GEN_97;
      end
    end else begin
      RegFile_1 <= _GEN_97;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_2 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h2 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_2 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_2 <= _GEN_2;
        end
      end else begin
        RegFile_2 <= _GEN_2;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h2 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_2 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_2 <= _GEN_98;
      end
    end else begin
      RegFile_2 <= _GEN_98;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_3 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h3 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_3 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_3 <= _GEN_3;
        end
      end else begin
        RegFile_3 <= _GEN_3;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h3 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_3 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_3 <= _GEN_99;
      end
    end else begin
      RegFile_3 <= _GEN_99;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_4 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h4 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_4 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_4 <= _GEN_4;
        end
      end else begin
        RegFile_4 <= _GEN_4;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h4 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_4 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_4 <= _GEN_100;
      end
    end else begin
      RegFile_4 <= _GEN_100;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_5 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h5 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_5 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_5 <= _GEN_5;
        end
      end else begin
        RegFile_5 <= _GEN_5;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h5 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_5 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_5 <= _GEN_101;
      end
    end else begin
      RegFile_5 <= _GEN_101;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_6 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h6 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_6 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_6 <= _GEN_6;
        end
      end else begin
        RegFile_6 <= _GEN_6;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h6 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_6 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_6 <= _GEN_102;
      end
    end else begin
      RegFile_6 <= _GEN_102;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_7 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h7 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_7 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_7 <= _GEN_7;
        end
      end else begin
        RegFile_7 <= _GEN_7;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h7 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_7 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_7 <= _GEN_103;
      end
    end else begin
      RegFile_7 <= _GEN_103;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_8 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h8 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_8 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_8 <= _GEN_8;
        end
      end else begin
        RegFile_8 <= _GEN_8;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h8 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_8 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_8 <= _GEN_104;
      end
    end else begin
      RegFile_8 <= _GEN_104;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_9 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h9 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_9 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_9 <= _GEN_9;
        end
      end else begin
        RegFile_9 <= _GEN_9;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h9 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_9 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_9 <= _GEN_105;
      end
    end else begin
      RegFile_9 <= _GEN_105;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_10 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'ha == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_10 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_10 <= _GEN_10;
        end
      end else begin
        RegFile_10 <= _GEN_10;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'ha == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_10 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_10 <= _GEN_106;
      end
    end else begin
      RegFile_10 <= _GEN_106;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_11 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'hb == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_11 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_11 <= _GEN_11;
        end
      end else begin
        RegFile_11 <= _GEN_11;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'hb == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_11 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_11 <= _GEN_107;
      end
    end else begin
      RegFile_11 <= _GEN_107;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_12 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'hc == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_12 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_12 <= _GEN_12;
        end
      end else begin
        RegFile_12 <= _GEN_12;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'hc == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_12 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_12 <= _GEN_108;
      end
    end else begin
      RegFile_12 <= _GEN_108;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_13 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'hd == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_13 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_13 <= _GEN_13;
        end
      end else begin
        RegFile_13 <= _GEN_13;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'hd == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_13 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_13 <= _GEN_109;
      end
    end else begin
      RegFile_13 <= _GEN_109;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_14 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'he == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_14 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_14 <= _GEN_14;
        end
      end else begin
        RegFile_14 <= _GEN_14;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'he == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_14 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_14 <= _GEN_110;
      end
    end else begin
      RegFile_14 <= _GEN_110;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_15 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'hf == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_15 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_15 <= _GEN_15;
        end
      end else begin
        RegFile_15 <= _GEN_15;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'hf == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_15 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_15 <= _GEN_111;
      end
    end else begin
      RegFile_15 <= _GEN_111;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_16 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h10 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_16 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_16 <= _GEN_16;
        end
      end else begin
        RegFile_16 <= _GEN_16;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h10 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_16 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_16 <= _GEN_112;
      end
    end else begin
      RegFile_16 <= _GEN_112;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_17 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h11 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_17 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_17 <= _GEN_17;
        end
      end else begin
        RegFile_17 <= _GEN_17;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h11 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_17 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_17 <= _GEN_113;
      end
    end else begin
      RegFile_17 <= _GEN_113;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_18 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h12 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_18 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_18 <= _GEN_18;
        end
      end else begin
        RegFile_18 <= _GEN_18;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h12 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_18 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_18 <= _GEN_114;
      end
    end else begin
      RegFile_18 <= _GEN_114;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_19 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h13 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_19 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_19 <= _GEN_19;
        end
      end else begin
        RegFile_19 <= _GEN_19;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h13 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_19 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_19 <= _GEN_115;
      end
    end else begin
      RegFile_19 <= _GEN_115;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_20 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h14 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_20 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_20 <= _GEN_20;
        end
      end else begin
        RegFile_20 <= _GEN_20;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h14 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_20 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_20 <= _GEN_116;
      end
    end else begin
      RegFile_20 <= _GEN_116;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_21 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h15 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_21 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_21 <= _GEN_21;
        end
      end else begin
        RegFile_21 <= _GEN_21;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h15 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_21 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_21 <= _GEN_117;
      end
    end else begin
      RegFile_21 <= _GEN_117;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_22 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h16 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_22 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_22 <= _GEN_22;
        end
      end else begin
        RegFile_22 <= _GEN_22;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h16 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_22 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_22 <= _GEN_118;
      end
    end else begin
      RegFile_22 <= _GEN_118;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_23 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h17 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_23 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_23 <= _GEN_23;
        end
      end else begin
        RegFile_23 <= _GEN_23;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h17 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_23 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_23 <= _GEN_119;
      end
    end else begin
      RegFile_23 <= _GEN_119;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_24 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h18 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_24 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_24 <= _GEN_24;
        end
      end else begin
        RegFile_24 <= _GEN_24;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h18 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_24 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_24 <= _GEN_120;
      end
    end else begin
      RegFile_24 <= _GEN_120;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_25 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h19 == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_25 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_25 <= _GEN_25;
        end
      end else begin
        RegFile_25 <= _GEN_25;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h19 == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_25 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_25 <= _GEN_121;
      end
    end else begin
      RegFile_25 <= _GEN_121;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_26 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h1a == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_26 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_26 <= _GEN_26;
        end
      end else begin
        RegFile_26 <= _GEN_26;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h1a == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_26 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_26 <= _GEN_122;
      end
    end else begin
      RegFile_26 <= _GEN_122;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_27 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h1b == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_27 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_27 <= _GEN_27;
        end
      end else begin
        RegFile_27 <= _GEN_27;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h1b == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_27 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_27 <= _GEN_123;
      end
    end else begin
      RegFile_27 <= _GEN_123;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_28 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h1c == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_28 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_28 <= _GEN_28;
        end
      end else begin
        RegFile_28 <= _GEN_28;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h1c == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_28 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_28 <= _GEN_124;
      end
    end else begin
      RegFile_28 <= _GEN_124;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_29 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h1d == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_29 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_29 <= _GEN_29;
        end
      end else begin
        RegFile_29 <= _GEN_29;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h1d == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_29 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_29 <= _GEN_125;
      end
    end else begin
      RegFile_29 <= _GEN_125;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_30 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h1e == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_30 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_30 <= _GEN_30;
        end
      end else begin
        RegFile_30 <= _GEN_30;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h1e == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_30 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_30 <= _GEN_126;
      end
    end else begin
      RegFile_30 <= _GEN_126;
    end
    if (reset) begin // @[RegisterFile.scala 19:25]
      RegFile_31 <= 32'h0; // @[RegisterFile.scala 19:25]
    end else if (io_regfile_write_enable_WBtoEX) begin // @[RegisterFile.scala 22:39]
      if (io_rd_WBtoEX == 5'h0) begin // @[RegisterFile.scala 24:31]
        if (5'h1f == io_rd_WBtoEX) begin // @[RegisterFile.scala 25:29]
          RegFile_31 <= 32'h0; // @[RegisterFile.scala 25:29]
        end else begin
          RegFile_31 <= _GEN_31;
        end
      end else begin
        RegFile_31 <= _GEN_31;
      end
    end else if (_T) begin // @[RegisterFile.scala 29:32]
      if (5'h1f == io_rd_WBtoEX) begin // @[RegisterFile.scala 30:29]
        RegFile_31 <= 32'h0; // @[RegisterFile.scala 30:29]
      end else begin
        RegFile_31 <= _GEN_127;
      end
    end else begin
      RegFile_31 <= _GEN_127;
    end
    if (reset) begin // @[RegisterFile.scala 35:30]
      io_alu_operand_1_REG <= 32'h0; // @[RegisterFile.scala 35:30]
    end else if (5'h1f == io_rs1) begin // @[RegisterFile.scala 35:30]
      io_alu_operand_1_REG <= RegFile_31; // @[RegisterFile.scala 35:30]
    end else if (5'h1e == io_rs1) begin // @[RegisterFile.scala 35:30]
      io_alu_operand_1_REG <= RegFile_30; // @[RegisterFile.scala 35:30]
    end else if (5'h1d == io_rs1) begin // @[RegisterFile.scala 35:30]
      io_alu_operand_1_REG <= RegFile_29; // @[RegisterFile.scala 35:30]
    end else begin
      io_alu_operand_1_REG <= _GEN_284;
    end
    if (reset) begin // @[RegisterFile.scala 36:27]
      io_reg_data_2_REG <= 32'h0; // @[RegisterFile.scala 36:27]
    end else if (5'h1f == io_rs2) begin // @[RegisterFile.scala 36:27]
      io_reg_data_2_REG <= RegFile_31; // @[RegisterFile.scala 36:27]
    end else if (5'h1e == io_rs2) begin // @[RegisterFile.scala 36:27]
      io_reg_data_2_REG <= RegFile_30; // @[RegisterFile.scala 36:27]
    end else if (5'h1d == io_rs2) begin // @[RegisterFile.scala 36:27]
      io_reg_data_2_REG <= RegFile_29; // @[RegisterFile.scala 36:27]
    end else begin
      io_reg_data_2_REG <= _GEN_316;
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
module ALU(
  input  [7:0]  io_alu_operation_select,
  input  [31:0] io_alu_operand_1,
  input  [31:0] io_alu_operand_2,
  output [31:0] io_alu_result,
  output        io_take_branch_EXtoIFD
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
  assign io_take_branch_EXtoIFD = 8'h0 == io_alu_operation_select ? 1'h0 : _GEN_40; // @[ALU.scala 22:26 23:35]
endmodule
module EXStage(
  input         clock,
  input         reset,
  input  [4:0]  io_decoded_instruction_IFDtoEX_rs1,
  input  [4:0]  io_decoded_instruction_IFDtoEX_rs2,
  input  [4:0]  io_decoded_instruction_IFDtoEX_rd,
  input  [6:0]  io_decoded_instruction_IFDtoEX_opcode,
  input  [31:0] io_IFDtoEX_pc_IFDtoEX,
  input  [31:0] io_IFDtoEX_immediate_IFDtoEX,
  input         io_IFDtoEX_alu_op2mux_select_IFDtoEX,
  input  [7:0]  io_IFDtoEX_alu_operation_select_IFDtoEX,
  input         io_IFDtoEX_register_write_enable_IFDtoEX,
  input         io_IFDtoEX_write_back_select_IFDtoEX,
  input         io_IFDtoEX_write_memory_enable_IFDtoEX,
  input  [2:0]  io_IFDtoEX_forward_enable_rs1_IFDtoEX,
  input  [2:0]  io_IFDtoEX_forward_enable_rs2_IFDtoEX,
  input  [2:0]  io_IFDtoEX_forward_enable_memory_data_IFDtoEX,
  input  [1:0]  io_IFDtoEX_forward_choose_data_IFDtoEX,
  input  [31:0] io_WBtoEX_regfile_write_data_WBtoEX,
  input         io_WBtoEX_regfile_write_enable_WBtoEX,
  input  [4:0]  io_WBtoEX_rd_WBtoEX,
  input  [31:0] io_WBtoEX_alu_result_WBtoEX,
  output [31:0] io_EXtoMEM_alu_result_EXtoMEM,
  output [31:0] io_EXtoMEM_memory_write_data_EXtoMEM,
  output [4:0]  io_EXtoMEM_rd_EXtoMEM,
  output        io_EXtoMEM_register_write_enable_EXtoMEM,
  output        io_EXtoMEM_write_back_select_EXtoMEM,
  output        io_EXtoMEM_data_memory_write_enable_EXtoMEM,
  output        io_EXtoMEM_io_memory_write_enable_EXtoMEM,
  output        io_EXtoMEM_address_is_io_EXtoMEM,
  output [7:0]  io_EXtoMEM_alu_operation_select_EXtoMEM,
  output [6:0]  io_EXtoMEM_opcode_EXtoMEM,
  output [31:0] io_EXtoIFD_branch_address_EXtoIFD,
  output        io_EXtoIFD_take_branch_EXtoIFD,
  output [4:0]  io_EXtoIFD_rd_EXtoIFD,
  input  [31:0] io_MEMtoEX_alu_result_MEMtoEX,
  input  [31:0] io_MEMtoEX_memory_data_MEMtoEX
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
`endif // RANDOMIZE_REG_INIT
  wire  RegFile_clock; // @[EXStage.scala 66:23]
  wire  RegFile_reset; // @[EXStage.scala 66:23]
  wire [4:0] RegFile_io_rs1; // @[EXStage.scala 66:23]
  wire [4:0] RegFile_io_rs2; // @[EXStage.scala 66:23]
  wire [31:0] RegFile_io_regfile_write_data_WBtoEX; // @[EXStage.scala 66:23]
  wire [4:0] RegFile_io_rd_WBtoEX; // @[EXStage.scala 66:23]
  wire  RegFile_io_regfile_write_enable_WBtoEX; // @[EXStage.scala 66:23]
  wire [31:0] RegFile_io_alu_operand_1; // @[EXStage.scala 66:23]
  wire [31:0] RegFile_io_reg_data_2; // @[EXStage.scala 66:23]
  wire [7:0] ALU_io_alu_operation_select; // @[EXStage.scala 69:19]
  wire [31:0] ALU_io_alu_operand_1; // @[EXStage.scala 69:19]
  wire [31:0] ALU_io_alu_operand_2; // @[EXStage.scala 69:19]
  wire [31:0] ALU_io_alu_result; // @[EXStage.scala 69:19]
  wire  ALU_io_take_branch_EXtoIFD; // @[EXStage.scala 69:19]
  reg [31:0] immediateReg; // @[EXStage.scala 72:29]
  reg [6:0] opcodeReg; // @[EXStage.scala 75:26]
  reg [4:0] rdReg; // @[EXStage.scala 76:22]
  reg [31:0] branchAddrReg; // @[EXStage.scala 77:30]
  reg [7:0] alu_operation_Reg; // @[EXStage.scala 78:34]
  reg  register_write_Reg; // @[EXStage.scala 79:35]
  reg  write_back_Reg; // @[EXStage.scala 80:31]
  reg  write_memory_Reg; // @[EXStage.scala 81:33]
  reg  alu_op2mux_Reg; // @[EXStage.scala 82:31]
  reg [2:0] forward_enable_rs1_Reg; // @[EXStage.scala 83:39]
  reg [2:0] forward_enable_rs2_Reg; // @[EXStage.scala 84:39]
  reg [2:0] forward_enable_memory_data_Reg; // @[EXStage.scala 85:47]
  reg [1:0] forward_choose_data_Reg; // @[EXStage.scala 86:40]
  reg [31:0] alu_result_WBtoEX_Reg; // @[EXStage.scala 87:38]
  reg [31:0] memory_data_MEMtoEX_Reg; // @[EXStage.scala 88:40]
  wire [31:0] _io_EXtoIFD_branch_address_EXtoIFD_T_1 = branchAddrReg + immediateReg; // @[EXStage.scala 100:54]
  wire  _io_EXtoMEM_memory_write_data_EXtoMEM_T_1 = forward_enable_memory_data_Reg == 3'h4; // @[EXStage.scala 111:39]
  wire  _io_EXtoMEM_memory_write_data_EXtoMEM_T_3 = forward_enable_memory_data_Reg == 3'h2; // @[EXStage.scala 112:39]
  wire  _io_EXtoMEM_memory_write_data_EXtoMEM_T_5 = forward_enable_memory_data_Reg == 3'h1; // @[EXStage.scala 113:39]
  wire  _io_EXtoMEM_memory_write_data_EXtoMEM_T_7 = forward_enable_memory_data_Reg == 3'h6; // @[EXStage.scala 114:39]
  wire  _io_EXtoMEM_memory_write_data_EXtoMEM_T_9 = forward_enable_memory_data_Reg == 3'h7; // @[EXStage.scala 115:39]
  wire  _io_EXtoMEM_memory_write_data_EXtoMEM_T_11 = forward_enable_memory_data_Reg == 3'h3; // @[EXStage.scala 116:39]
  wire  _io_EXtoMEM_memory_write_data_EXtoMEM_T_13 = forward_enable_memory_data_Reg == 3'h5; // @[EXStage.scala 117:39]
  wire [31:0] _io_EXtoMEM_memory_write_data_EXtoMEM_T_14 = _io_EXtoMEM_memory_write_data_EXtoMEM_T_13 ?
    io_MEMtoEX_alu_result_MEMtoEX : RegFile_io_reg_data_2; // @[Mux.scala 101:16]
  wire [31:0] _io_EXtoMEM_memory_write_data_EXtoMEM_T_15 = _io_EXtoMEM_memory_write_data_EXtoMEM_T_11 ?
    io_WBtoEX_alu_result_WBtoEX : _io_EXtoMEM_memory_write_data_EXtoMEM_T_14; // @[Mux.scala 101:16]
  wire [31:0] _io_EXtoMEM_memory_write_data_EXtoMEM_T_16 = _io_EXtoMEM_memory_write_data_EXtoMEM_T_9 ?
    io_MEMtoEX_alu_result_MEMtoEX : _io_EXtoMEM_memory_write_data_EXtoMEM_T_15; // @[Mux.scala 101:16]
  wire [31:0] _io_EXtoMEM_memory_write_data_EXtoMEM_T_17 = _io_EXtoMEM_memory_write_data_EXtoMEM_T_7 ?
    io_MEMtoEX_alu_result_MEMtoEX : _io_EXtoMEM_memory_write_data_EXtoMEM_T_16; // @[Mux.scala 101:16]
  wire [31:0] _io_EXtoMEM_memory_write_data_EXtoMEM_T_18 = _io_EXtoMEM_memory_write_data_EXtoMEM_T_5 ?
    alu_result_WBtoEX_Reg : _io_EXtoMEM_memory_write_data_EXtoMEM_T_17; // @[Mux.scala 101:16]
  wire [31:0] _io_EXtoMEM_memory_write_data_EXtoMEM_T_19 = _io_EXtoMEM_memory_write_data_EXtoMEM_T_3 ?
    io_WBtoEX_alu_result_WBtoEX : _io_EXtoMEM_memory_write_data_EXtoMEM_T_18; // @[Mux.scala 101:16]
  wire  _ALU_io_alu_operand_1_T_1 = forward_enable_rs1_Reg == 3'h4; // @[EXStage.scala 124:31]
  wire  _ALU_io_alu_operand_1_T_3 = forward_enable_rs1_Reg == 3'h2; // @[EXStage.scala 125:31]
  wire [31:0] _ALU_io_alu_operand_1_T_6 = forward_choose_data_Reg[1] ? io_MEMtoEX_memory_data_MEMtoEX :
    io_WBtoEX_alu_result_WBtoEX; // @[EXStage.scala 125:61]
  wire  _ALU_io_alu_operand_1_T_8 = forward_enable_rs1_Reg == 3'h1; // @[EXStage.scala 126:31]
  wire [31:0] _ALU_io_alu_operand_1_T_11 = forward_choose_data_Reg[0] ? memory_data_MEMtoEX_Reg : alu_result_WBtoEX_Reg; // @[EXStage.scala 126:61]
  wire  _ALU_io_alu_operand_1_T_13 = forward_enable_rs1_Reg == 3'h6; // @[EXStage.scala 127:31]
  wire  _ALU_io_alu_operand_1_T_15 = forward_enable_rs1_Reg == 3'h7; // @[EXStage.scala 128:31]
  wire  _ALU_io_alu_operand_1_T_17 = forward_enable_rs1_Reg == 3'h3; // @[EXStage.scala 129:31]
  wire  _ALU_io_alu_operand_1_T_22 = forward_enable_rs1_Reg == 3'h5; // @[EXStage.scala 130:31]
  wire [31:0] _ALU_io_alu_operand_1_T_23 = _ALU_io_alu_operand_1_T_22 ? io_MEMtoEX_alu_result_MEMtoEX :
    RegFile_io_alu_operand_1; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_1_T_24 = _ALU_io_alu_operand_1_T_17 ? _ALU_io_alu_operand_1_T_6 :
    _ALU_io_alu_operand_1_T_23; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_1_T_25 = _ALU_io_alu_operand_1_T_15 ? io_MEMtoEX_alu_result_MEMtoEX :
    _ALU_io_alu_operand_1_T_24; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_1_T_26 = _ALU_io_alu_operand_1_T_13 ? io_MEMtoEX_alu_result_MEMtoEX :
    _ALU_io_alu_operand_1_T_25; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_1_T_27 = _ALU_io_alu_operand_1_T_8 ? _ALU_io_alu_operand_1_T_11 :
    _ALU_io_alu_operand_1_T_26; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_1_T_28 = _ALU_io_alu_operand_1_T_3 ? _ALU_io_alu_operand_1_T_6 :
    _ALU_io_alu_operand_1_T_27; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_2_T_1 = alu_op2mux_Reg ? immediateReg : RegFile_io_reg_data_2; // @[EXStage.scala 134:8]
  wire  _ALU_io_alu_operand_2_T_3 = forward_enable_rs2_Reg == 3'h4; // @[EXStage.scala 136:31]
  wire  _ALU_io_alu_operand_2_T_5 = forward_enable_rs2_Reg == 3'h2; // @[EXStage.scala 137:31]
  wire  _ALU_io_alu_operand_2_T_10 = forward_enable_rs2_Reg == 3'h1; // @[EXStage.scala 138:31]
  wire  _ALU_io_alu_operand_2_T_15 = forward_enable_rs2_Reg == 3'h6; // @[EXStage.scala 139:31]
  wire  _ALU_io_alu_operand_2_T_17 = forward_enable_rs2_Reg == 3'h7; // @[EXStage.scala 140:31]
  wire  _ALU_io_alu_operand_2_T_19 = forward_enable_rs2_Reg == 3'h3; // @[EXStage.scala 141:31]
  wire  _ALU_io_alu_operand_2_T_24 = forward_enable_rs2_Reg == 3'h5; // @[EXStage.scala 142:31]
  wire [31:0] _ALU_io_alu_operand_2_T_25 = _ALU_io_alu_operand_2_T_24 ? io_MEMtoEX_alu_result_MEMtoEX :
    _ALU_io_alu_operand_2_T_1; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_2_T_26 = _ALU_io_alu_operand_2_T_19 ? _ALU_io_alu_operand_1_T_6 :
    _ALU_io_alu_operand_2_T_25; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_2_T_27 = _ALU_io_alu_operand_2_T_17 ? io_MEMtoEX_alu_result_MEMtoEX :
    _ALU_io_alu_operand_2_T_26; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_2_T_28 = _ALU_io_alu_operand_2_T_15 ? io_MEMtoEX_alu_result_MEMtoEX :
    _ALU_io_alu_operand_2_T_27; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_2_T_29 = _ALU_io_alu_operand_2_T_10 ? _ALU_io_alu_operand_1_T_11 :
    _ALU_io_alu_operand_2_T_28; // @[Mux.scala 101:16]
  wire [31:0] _ALU_io_alu_operand_2_T_30 = _ALU_io_alu_operand_2_T_5 ? _ALU_io_alu_operand_1_T_6 :
    _ALU_io_alu_operand_2_T_29; // @[Mux.scala 101:16]
  wire [31:0] _io_EXtoMEM_alu_result_EXtoMEM_T_3 = branchAddrReg + 32'h4; // @[EXStage.scala 188:54]
  wire [31:0] _io_EXtoIFD_branch_address_EXtoIFD_T_5 = RegFile_io_alu_operand_1 + immediateReg; // @[EXStage.scala 191:69]
  wire [31:0] _GEN_3 = 7'h67 == opcodeReg ? _io_EXtoIFD_branch_address_EXtoIFD_T_5 :
    _io_EXtoIFD_branch_address_EXtoIFD_T_1; // @[EXStage.scala 179:21 100:37 191:41]
  wire [31:0] _GEN_4 = 7'h67 == opcodeReg ? _io_EXtoMEM_alu_result_EXtoMEM_T_3 : ALU_io_alu_result; // @[EXStage.scala 179:21 146:33 192:37]
  wire [31:0] _GEN_5 = 7'h6f == opcodeReg ? _io_EXtoIFD_branch_address_EXtoIFD_T_1 : _GEN_3; // @[EXStage.scala 179:21 187:41]
  wire [31:0] _GEN_6 = 7'h6f == opcodeReg ? _io_EXtoMEM_alu_result_EXtoMEM_T_3 : _GEN_4; // @[EXStage.scala 179:21 188:37]
  wire [31:0] _GEN_7 = 7'h17 == opcodeReg ? _io_EXtoIFD_branch_address_EXtoIFD_T_1 : _GEN_6; // @[EXStage.scala 179:21 184:37]
  wire [31:0] _GEN_8 = 7'h17 == opcodeReg ? _io_EXtoIFD_branch_address_EXtoIFD_T_1 : _GEN_5; // @[EXStage.scala 179:21 100:37]
  RegisterFile RegFile ( // @[EXStage.scala 66:23]
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
  ALU ALU ( // @[EXStage.scala 69:19]
    .io_alu_operation_select(ALU_io_alu_operation_select),
    .io_alu_operand_1(ALU_io_alu_operand_1),
    .io_alu_operand_2(ALU_io_alu_operand_2),
    .io_alu_result(ALU_io_alu_result),
    .io_take_branch_EXtoIFD(ALU_io_take_branch_EXtoIFD)
  );
  assign io_EXtoMEM_alu_result_EXtoMEM = 7'h37 == opcodeReg ? immediateReg : _GEN_7; // @[EXStage.scala 179:21 181:37]
  assign io_EXtoMEM_memory_write_data_EXtoMEM = _io_EXtoMEM_memory_write_data_EXtoMEM_T_1 ?
    io_MEMtoEX_alu_result_MEMtoEX : _io_EXtoMEM_memory_write_data_EXtoMEM_T_19; // @[Mux.scala 101:16]
  assign io_EXtoMEM_rd_EXtoMEM = rdReg; // @[EXStage.scala 176:25]
  assign io_EXtoMEM_register_write_enable_EXtoMEM = register_write_Reg; // @[EXStage.scala 160:44]
  assign io_EXtoMEM_write_back_select_EXtoMEM = write_back_Reg; // @[EXStage.scala 161:40]
  assign io_EXtoMEM_data_memory_write_enable_EXtoMEM = ALU_io_alu_result >= 32'h400 ? 1'h0 : write_memory_Reg; // @[EXStage.scala 162:47 168:99 169:49]
  assign io_EXtoMEM_io_memory_write_enable_EXtoMEM = ALU_io_alu_result >= 32'h400 & write_memory_Reg; // @[EXStage.scala 168:99 171:47 97:45]
  assign io_EXtoMEM_address_is_io_EXtoMEM = ALU_io_alu_result >= 32'h400; // @[EXStage.scala 168:26]
  assign io_EXtoMEM_alu_operation_select_EXtoMEM = alu_operation_Reg; // @[EXStage.scala 164:43]
  assign io_EXtoMEM_opcode_EXtoMEM = opcodeReg; // @[EXStage.scala 166:29]
  assign io_EXtoIFD_branch_address_EXtoIFD = 7'h37 == opcodeReg ? _io_EXtoIFD_branch_address_EXtoIFD_T_1 : _GEN_8; // @[EXStage.scala 179:21 100:37]
  assign io_EXtoIFD_take_branch_EXtoIFD = ALU_io_take_branch_EXtoIFD; // @[EXStage.scala 147:34]
  assign io_EXtoIFD_rd_EXtoIFD = rdReg; // @[EXStage.scala 165:25]
  assign RegFile_clock = clock;
  assign RegFile_reset = reset;
  assign RegFile_io_rs1 = io_decoded_instruction_IFDtoEX_rs1; // @[EXStage.scala 104:18]
  assign RegFile_io_rs2 = io_decoded_instruction_IFDtoEX_rs2; // @[EXStage.scala 105:18]
  assign RegFile_io_regfile_write_data_WBtoEX = io_WBtoEX_regfile_write_data_WBtoEX; // @[EXStage.scala 107:40]
  assign RegFile_io_rd_WBtoEX = io_WBtoEX_rd_WBtoEX; // @[EXStage.scala 106:24]
  assign RegFile_io_regfile_write_enable_WBtoEX = io_WBtoEX_regfile_write_enable_WBtoEX; // @[EXStage.scala 108:42]
  assign ALU_io_alu_operation_select = alu_operation_Reg; // @[EXStage.scala 163:31]
  assign ALU_io_alu_operand_1 = _ALU_io_alu_operand_1_T_1 ? io_MEMtoEX_alu_result_MEMtoEX : _ALU_io_alu_operand_1_T_28; // @[Mux.scala 101:16]
  assign ALU_io_alu_operand_2 = _ALU_io_alu_operand_2_T_3 ? io_MEMtoEX_alu_result_MEMtoEX : _ALU_io_alu_operand_2_T_30; // @[Mux.scala 101:16]
  always @(posedge clock) begin
    if (reset) begin // @[EXStage.scala 72:29]
      immediateReg <= 32'h0; // @[EXStage.scala 72:29]
    end else begin
      immediateReg <= io_IFDtoEX_immediate_IFDtoEX; // @[EXStage.scala 72:29]
    end
    if (reset) begin // @[EXStage.scala 75:26]
      opcodeReg <= 7'h0; // @[EXStage.scala 75:26]
    end else begin
      opcodeReg <= io_decoded_instruction_IFDtoEX_opcode; // @[EXStage.scala 75:26]
    end
    if (reset) begin // @[EXStage.scala 76:22]
      rdReg <= 5'h0; // @[EXStage.scala 76:22]
    end else begin
      rdReg <= io_decoded_instruction_IFDtoEX_rd; // @[EXStage.scala 76:22]
    end
    if (reset) begin // @[EXStage.scala 77:30]
      branchAddrReg <= 32'h0; // @[EXStage.scala 77:30]
    end else begin
      branchAddrReg <= io_IFDtoEX_pc_IFDtoEX; // @[EXStage.scala 77:30]
    end
    if (reset) begin // @[EXStage.scala 78:34]
      alu_operation_Reg <= 8'h0; // @[EXStage.scala 78:34]
    end else begin
      alu_operation_Reg <= io_IFDtoEX_alu_operation_select_IFDtoEX; // @[EXStage.scala 78:34]
    end
    if (reset) begin // @[EXStage.scala 79:35]
      register_write_Reg <= 1'h0; // @[EXStage.scala 79:35]
    end else begin
      register_write_Reg <= io_IFDtoEX_register_write_enable_IFDtoEX; // @[EXStage.scala 79:35]
    end
    if (reset) begin // @[EXStage.scala 80:31]
      write_back_Reg <= 1'h0; // @[EXStage.scala 80:31]
    end else begin
      write_back_Reg <= io_IFDtoEX_write_back_select_IFDtoEX; // @[EXStage.scala 80:31]
    end
    if (reset) begin // @[EXStage.scala 81:33]
      write_memory_Reg <= 1'h0; // @[EXStage.scala 81:33]
    end else begin
      write_memory_Reg <= io_IFDtoEX_write_memory_enable_IFDtoEX; // @[EXStage.scala 81:33]
    end
    if (reset) begin // @[EXStage.scala 82:31]
      alu_op2mux_Reg <= 1'h0; // @[EXStage.scala 82:31]
    end else begin
      alu_op2mux_Reg <= io_IFDtoEX_alu_op2mux_select_IFDtoEX; // @[EXStage.scala 82:31]
    end
    if (reset) begin // @[EXStage.scala 83:39]
      forward_enable_rs1_Reg <= 3'h0; // @[EXStage.scala 83:39]
    end else begin
      forward_enable_rs1_Reg <= io_IFDtoEX_forward_enable_rs1_IFDtoEX; // @[EXStage.scala 83:39]
    end
    if (reset) begin // @[EXStage.scala 84:39]
      forward_enable_rs2_Reg <= 3'h0; // @[EXStage.scala 84:39]
    end else begin
      forward_enable_rs2_Reg <= io_IFDtoEX_forward_enable_rs2_IFDtoEX; // @[EXStage.scala 84:39]
    end
    if (reset) begin // @[EXStage.scala 85:47]
      forward_enable_memory_data_Reg <= 3'h0; // @[EXStage.scala 85:47]
    end else begin
      forward_enable_memory_data_Reg <= io_IFDtoEX_forward_enable_memory_data_IFDtoEX; // @[EXStage.scala 85:47]
    end
    if (reset) begin // @[EXStage.scala 86:40]
      forward_choose_data_Reg <= 2'h0; // @[EXStage.scala 86:40]
    end else begin
      forward_choose_data_Reg <= io_IFDtoEX_forward_choose_data_IFDtoEX; // @[EXStage.scala 86:40]
    end
    if (reset) begin // @[EXStage.scala 87:38]
      alu_result_WBtoEX_Reg <= 32'h0; // @[EXStage.scala 87:38]
    end else begin
      alu_result_WBtoEX_Reg <= io_WBtoEX_alu_result_WBtoEX; // @[EXStage.scala 87:38]
    end
    if (reset) begin // @[EXStage.scala 88:40]
      memory_data_MEMtoEX_Reg <= 32'h0; // @[EXStage.scala 88:40]
    end else begin
      memory_data_MEMtoEX_Reg <= io_MEMtoEX_memory_data_MEMtoEX; // @[EXStage.scala 88:40]
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
  immediateReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  opcodeReg = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  rdReg = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  branchAddrReg = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  alu_operation_Reg = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  register_write_Reg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  write_back_Reg = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  write_memory_Reg = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  alu_op2mux_Reg = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  forward_enable_rs1_Reg = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  forward_enable_rs2_Reg = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  forward_enable_memory_data_Reg = _RAND_11[2:0];
  _RAND_12 = {1{`RANDOM}};
  forward_choose_data_Reg = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  alu_result_WBtoEX_Reg = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  memory_data_MEMtoEX_Reg = _RAND_14[31:0];
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
  input         reset,
  input  [14:0] io_addr,
  input         io_enableWrite,
  input  [31:0] io_dataIn,
  input  [7:0]  io_alu_operation_select_EXtoMEM,
  output [31:0] io_dataOut
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
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
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem0 [0:8191]; // @[DataMemory.scala 23:25]
  wire  mem0_load0_MPORT_en; // @[DataMemory.scala 23:25]
  wire [12:0] mem0_load0_MPORT_addr; // @[DataMemory.scala 23:25]
  wire [7:0] mem0_load0_MPORT_data; // @[DataMemory.scala 23:25]
  wire [7:0] mem0_MPORT_data; // @[DataMemory.scala 23:25]
  wire [12:0] mem0_MPORT_addr; // @[DataMemory.scala 23:25]
  wire  mem0_MPORT_mask; // @[DataMemory.scala 23:25]
  wire  mem0_MPORT_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem0_MPORT_4_data; // @[DataMemory.scala 23:25]
  wire [12:0] mem0_MPORT_4_addr; // @[DataMemory.scala 23:25]
  wire  mem0_MPORT_4_mask; // @[DataMemory.scala 23:25]
  wire  mem0_MPORT_4_en; // @[DataMemory.scala 23:25]
  wire [7:0] mem0_MPORT_8_data; // @[DataMemory.scala 23:25]
  wire [12:0] mem0_MPORT_8_addr; // @[DataMemory.scala 23:25]
  wire  mem0_MPORT_8_mask; // @[DataMemory.scala 23:25]
  wire  mem0_MPORT_8_en; // @[DataMemory.scala 23:25]
  reg  mem0_load0_MPORT_en_pipe_0;
  reg [12:0] mem0_load0_MPORT_addr_pipe_0;
  reg [7:0] mem1 [0:8191]; // @[DataMemory.scala 24:25]
  wire  mem1_load1_MPORT_en; // @[DataMemory.scala 24:25]
  wire [12:0] mem1_load1_MPORT_addr; // @[DataMemory.scala 24:25]
  wire [7:0] mem1_load1_MPORT_data; // @[DataMemory.scala 24:25]
  wire [7:0] mem1_MPORT_1_data; // @[DataMemory.scala 24:25]
  wire [12:0] mem1_MPORT_1_addr; // @[DataMemory.scala 24:25]
  wire  mem1_MPORT_1_mask; // @[DataMemory.scala 24:25]
  wire  mem1_MPORT_1_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem1_MPORT_5_data; // @[DataMemory.scala 24:25]
  wire [12:0] mem1_MPORT_5_addr; // @[DataMemory.scala 24:25]
  wire  mem1_MPORT_5_mask; // @[DataMemory.scala 24:25]
  wire  mem1_MPORT_5_en; // @[DataMemory.scala 24:25]
  wire [7:0] mem1_MPORT_9_data; // @[DataMemory.scala 24:25]
  wire [12:0] mem1_MPORT_9_addr; // @[DataMemory.scala 24:25]
  wire  mem1_MPORT_9_mask; // @[DataMemory.scala 24:25]
  wire  mem1_MPORT_9_en; // @[DataMemory.scala 24:25]
  reg  mem1_load1_MPORT_en_pipe_0;
  reg [12:0] mem1_load1_MPORT_addr_pipe_0;
  reg [7:0] mem2 [0:8191]; // @[DataMemory.scala 25:25]
  wire  mem2_load2_MPORT_en; // @[DataMemory.scala 25:25]
  wire [12:0] mem2_load2_MPORT_addr; // @[DataMemory.scala 25:25]
  wire [7:0] mem2_load2_MPORT_data; // @[DataMemory.scala 25:25]
  wire [7:0] mem2_MPORT_2_data; // @[DataMemory.scala 25:25]
  wire [12:0] mem2_MPORT_2_addr; // @[DataMemory.scala 25:25]
  wire  mem2_MPORT_2_mask; // @[DataMemory.scala 25:25]
  wire  mem2_MPORT_2_en; // @[DataMemory.scala 25:25]
  wire [7:0] mem2_MPORT_6_data; // @[DataMemory.scala 25:25]
  wire [12:0] mem2_MPORT_6_addr; // @[DataMemory.scala 25:25]
  wire  mem2_MPORT_6_mask; // @[DataMemory.scala 25:25]
  wire  mem2_MPORT_6_en; // @[DataMemory.scala 25:25]
  wire [7:0] mem2_MPORT_10_data; // @[DataMemory.scala 25:25]
  wire [12:0] mem2_MPORT_10_addr; // @[DataMemory.scala 25:25]
  wire  mem2_MPORT_10_mask; // @[DataMemory.scala 25:25]
  wire  mem2_MPORT_10_en; // @[DataMemory.scala 25:25]
  reg  mem2_load2_MPORT_en_pipe_0;
  reg [12:0] mem2_load2_MPORT_addr_pipe_0;
  reg [7:0] mem3 [0:8191]; // @[DataMemory.scala 26:25]
  wire  mem3_load3_MPORT_en; // @[DataMemory.scala 26:25]
  wire [12:0] mem3_load3_MPORT_addr; // @[DataMemory.scala 26:25]
  wire [7:0] mem3_load3_MPORT_data; // @[DataMemory.scala 26:25]
  wire [7:0] mem3_MPORT_3_data; // @[DataMemory.scala 26:25]
  wire [12:0] mem3_MPORT_3_addr; // @[DataMemory.scala 26:25]
  wire  mem3_MPORT_3_mask; // @[DataMemory.scala 26:25]
  wire  mem3_MPORT_3_en; // @[DataMemory.scala 26:25]
  wire [7:0] mem3_MPORT_7_data; // @[DataMemory.scala 26:25]
  wire [12:0] mem3_MPORT_7_addr; // @[DataMemory.scala 26:25]
  wire  mem3_MPORT_7_mask; // @[DataMemory.scala 26:25]
  wire  mem3_MPORT_7_en; // @[DataMemory.scala 26:25]
  wire [7:0] mem3_MPORT_11_data; // @[DataMemory.scala 26:25]
  wire [12:0] mem3_MPORT_11_addr; // @[DataMemory.scala 26:25]
  wire  mem3_MPORT_11_mask; // @[DataMemory.scala 26:25]
  wire  mem3_MPORT_11_en; // @[DataMemory.scala 26:25]
  reg  mem3_load3_MPORT_en_pipe_0;
  reg [12:0] mem3_load3_MPORT_addr_pipe_0;
  wire [1:0] specAddr = io_addr[1:0]; // @[DataMemory.scala 17:25]
  reg [7:0] delayed_alu_operation_select_REG; // @[DataMemory.scala 19:53]
  reg [7:0] delayed_alu_operation_select; // @[DataMemory.scala 19:45]
  reg [1:0] delayed_specAddr_REG; // @[DataMemory.scala 20:41]
  reg [1:0] delayed_specAddr; // @[DataMemory.scala 20:33]
  reg [7:0] load0; // @[DataMemory.scala 29:22]
  reg [7:0] load1; // @[DataMemory.scala 30:22]
  reg [7:0] load2; // @[DataMemory.scala 31:22]
  reg [7:0] load3; // @[DataMemory.scala 32:22]
  wire  _T_1 = 2'h0 == delayed_specAddr; // @[DataMemory.scala 37:31]
  wire [23:0] _dataOut_T_2 = load0[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_3 = {_dataOut_T_2,load0}; // @[Cat.scala 33:92]
  wire  _T_2 = 2'h1 == delayed_specAddr; // @[DataMemory.scala 37:31]
  wire [23:0] _dataOut_T_6 = load1[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_7 = {_dataOut_T_6,load1}; // @[Cat.scala 33:92]
  wire  _T_3 = 2'h2 == delayed_specAddr; // @[DataMemory.scala 37:31]
  wire [23:0] _dataOut_T_10 = load2[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_11 = {_dataOut_T_10,load2}; // @[Cat.scala 33:92]
  wire  _T_4 = 2'h3 == delayed_specAddr; // @[DataMemory.scala 37:31]
  wire [23:0] _dataOut_T_14 = load3[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_15 = {_dataOut_T_14,load3}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_16 = 2'h3 == delayed_specAddr ? _dataOut_T_15 : 32'h0; // @[DataMemory.scala 37:31 48:19 18:28]
  wire [31:0] _GEN_17 = 2'h2 == delayed_specAddr ? _dataOut_T_11 : _GEN_16; // @[DataMemory.scala 37:31 45:19]
  wire [31:0] _GEN_18 = 2'h1 == delayed_specAddr ? _dataOut_T_7 : _GEN_17; // @[DataMemory.scala 37:31 42:19]
  wire [31:0] _GEN_19 = 2'h0 == delayed_specAddr ? _dataOut_T_3 : _GEN_18; // @[DataMemory.scala 37:31 39:19]
  wire [31:0] _dataOut_T_17 = {24'h0,load0}; // @[Cat.scala 33:92]
  wire [31:0] _dataOut_T_19 = {24'h0,load1}; // @[Cat.scala 33:92]
  wire [31:0] _dataOut_T_21 = {24'h0,load2}; // @[Cat.scala 33:92]
  wire [31:0] _dataOut_T_23 = {24'h0,load3}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_20 = _T_4 ? _dataOut_T_23 : 32'h0; // @[DataMemory.scala 53:31 64:19 18:28]
  wire [31:0] _GEN_21 = _T_3 ? _dataOut_T_21 : _GEN_20; // @[DataMemory.scala 53:31 61:19]
  wire [31:0] _GEN_22 = _T_2 ? _dataOut_T_19 : _GEN_21; // @[DataMemory.scala 53:31 58:19]
  wire [31:0] _GEN_23 = _T_1 ? _dataOut_T_17 : _GEN_22; // @[DataMemory.scala 53:31 55:19]
  wire [15:0] _dataOut_T_26 = load1[7] ? 16'hffff : 16'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_27 = {_dataOut_T_26,load1,load0}; // @[Cat.scala 33:92]
  wire [15:0] _dataOut_T_30 = load3[7] ? 16'hffff : 16'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _dataOut_T_31 = {_dataOut_T_30,load3,load2}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_24 = _T_3 ? _dataOut_T_31 : 32'h0; // @[DataMemory.scala 69:31 74:19 18:28]
  wire [31:0] _GEN_25 = _T_1 ? _dataOut_T_27 : _GEN_24; // @[DataMemory.scala 69:31 71:19]
  wire [31:0] _dataOut_T_33 = {16'h0,load1,load0}; // @[Cat.scala 33:92]
  wire [31:0] _dataOut_T_35 = {16'h0,load3,load2}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_26 = _T_3 ? _dataOut_T_35 : 32'h0; // @[DataMemory.scala 79:31 84:19 18:28]
  wire [31:0] _GEN_27 = _T_1 ? _dataOut_T_33 : _GEN_26; // @[DataMemory.scala 79:31 81:19]
  wire [31:0] _dataOut_T_36 = {load3,load2,load1,load0}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_28 = _T_1 ? _dataOut_T_36 : 32'h0; // @[DataMemory.scala 89:31 91:19 18:28]
  wire [31:0] _GEN_29 = 8'h12 == delayed_alu_operation_select ? _GEN_28 : 32'h0; // @[DataMemory.scala 18:28 35:39]
  wire [31:0] _GEN_30 = 8'h14 == delayed_alu_operation_select ? _GEN_27 : _GEN_29; // @[DataMemory.scala 35:39]
  wire [31:0] _GEN_31 = 8'h11 == delayed_alu_operation_select ? _GEN_25 : _GEN_30; // @[DataMemory.scala 35:39]
  wire [31:0] _GEN_32 = 8'h13 == delayed_alu_operation_select ? _GEN_23 : _GEN_31; // @[DataMemory.scala 35:39]
  wire  _T_18 = 8'h15 == io_alu_operation_select_EXtoMEM; // @[DataMemory.scala 98:43]
  wire  _T_19 = 2'h0 == specAddr; // @[DataMemory.scala 100:24]
  wire  _GEN_49 = 2'h2 == specAddr & io_enableWrite; // @[DataMemory.scala 100:24 25:25]
  wire  _GEN_54 = 2'h2 == specAddr ? 1'h0 : 2'h3 == specAddr & io_enableWrite; // @[DataMemory.scala 100:24 26:25]
  wire  _GEN_64 = 2'h1 == specAddr ? 1'h0 : 2'h2 == specAddr & io_enableWrite; // @[DataMemory.scala 100:24 25:25]
  wire  _GEN_69 = 2'h1 == specAddr ? 1'h0 : _GEN_54; // @[DataMemory.scala 100:24 26:25]
  wire  _GEN_74 = 2'h0 == specAddr & io_enableWrite; // @[DataMemory.scala 100:24 23:25]
  wire  _GEN_79 = 2'h0 == specAddr ? 1'h0 : 2'h1 == specAddr & io_enableWrite; // @[DataMemory.scala 100:24 24:25]
  wire  _GEN_84 = 2'h0 == specAddr ? 1'h0 : _GEN_64; // @[DataMemory.scala 100:24 25:25]
  wire  _GEN_89 = 2'h0 == specAddr ? 1'h0 : _GEN_69; // @[DataMemory.scala 100:24 26:25]
  wire  _GEN_110 = _T_19 ? 1'h0 : _GEN_49; // @[DataMemory.scala 124:24 25:25]
  wire  _GEN_136 = 8'h16 == io_alu_operation_select_EXtoMEM & _GEN_74; // @[DataMemory.scala 23:25 98:43]
  wire  _GEN_142 = 8'h16 == io_alu_operation_select_EXtoMEM & _GEN_110; // @[DataMemory.scala 25:25 98:43]
  wire  _GEN_148 = 8'h16 == io_alu_operation_select_EXtoMEM ? 1'h0 : 8'h17 == io_alu_operation_select_EXtoMEM & _GEN_74; // @[DataMemory.scala 23:25 98:43]
  assign mem0_load0_MPORT_en = mem0_load0_MPORT_en_pipe_0;
  assign mem0_load0_MPORT_addr = mem0_load0_MPORT_addr_pipe_0;
  assign mem0_load0_MPORT_data = mem0[mem0_load0_MPORT_addr]; // @[DataMemory.scala 23:25]
  assign mem0_MPORT_data = io_dataIn[7:0];
  assign mem0_MPORT_addr = io_addr[14:2];
  assign mem0_MPORT_mask = 1'h1;
  assign mem0_MPORT_en = _T_18 & _GEN_74;
  assign mem0_MPORT_4_data = io_dataIn[7:0];
  assign mem0_MPORT_4_addr = io_addr[14:2];
  assign mem0_MPORT_4_mask = 1'h1;
  assign mem0_MPORT_4_en = _T_18 ? 1'h0 : _GEN_136;
  assign mem0_MPORT_8_data = io_dataIn[7:0];
  assign mem0_MPORT_8_addr = io_addr[14:2];
  assign mem0_MPORT_8_mask = 1'h1;
  assign mem0_MPORT_8_en = _T_18 ? 1'h0 : _GEN_148;
  assign mem1_load1_MPORT_en = mem1_load1_MPORT_en_pipe_0;
  assign mem1_load1_MPORT_addr = mem1_load1_MPORT_addr_pipe_0;
  assign mem1_load1_MPORT_data = mem1[mem1_load1_MPORT_addr]; // @[DataMemory.scala 24:25]
  assign mem1_MPORT_1_data = io_dataIn[7:0];
  assign mem1_MPORT_1_addr = io_addr[14:2];
  assign mem1_MPORT_1_mask = 1'h1;
  assign mem1_MPORT_1_en = _T_18 & _GEN_79;
  assign mem1_MPORT_5_data = io_dataIn[15:8];
  assign mem1_MPORT_5_addr = io_addr[14:2];
  assign mem1_MPORT_5_mask = 1'h1;
  assign mem1_MPORT_5_en = _T_18 ? 1'h0 : _GEN_136;
  assign mem1_MPORT_9_data = io_dataIn[15:8];
  assign mem1_MPORT_9_addr = io_addr[14:2];
  assign mem1_MPORT_9_mask = 1'h1;
  assign mem1_MPORT_9_en = _T_18 ? 1'h0 : _GEN_148;
  assign mem2_load2_MPORT_en = mem2_load2_MPORT_en_pipe_0;
  assign mem2_load2_MPORT_addr = mem2_load2_MPORT_addr_pipe_0;
  assign mem2_load2_MPORT_data = mem2[mem2_load2_MPORT_addr]; // @[DataMemory.scala 25:25]
  assign mem2_MPORT_2_data = io_dataIn[7:0];
  assign mem2_MPORT_2_addr = io_addr[14:2];
  assign mem2_MPORT_2_mask = 1'h1;
  assign mem2_MPORT_2_en = _T_18 & _GEN_84;
  assign mem2_MPORT_6_data = io_dataIn[7:0];
  assign mem2_MPORT_6_addr = io_addr[14:2];
  assign mem2_MPORT_6_mask = 1'h1;
  assign mem2_MPORT_6_en = _T_18 ? 1'h0 : _GEN_142;
  assign mem2_MPORT_10_data = io_dataIn[23:16];
  assign mem2_MPORT_10_addr = io_addr[14:2];
  assign mem2_MPORT_10_mask = 1'h1;
  assign mem2_MPORT_10_en = _T_18 ? 1'h0 : _GEN_148;
  assign mem3_load3_MPORT_en = mem3_load3_MPORT_en_pipe_0;
  assign mem3_load3_MPORT_addr = mem3_load3_MPORT_addr_pipe_0;
  assign mem3_load3_MPORT_data = mem3[mem3_load3_MPORT_addr]; // @[DataMemory.scala 26:25]
  assign mem3_MPORT_3_data = io_dataIn[7:0];
  assign mem3_MPORT_3_addr = io_addr[14:2];
  assign mem3_MPORT_3_mask = 1'h1;
  assign mem3_MPORT_3_en = _T_18 & _GEN_89;
  assign mem3_MPORT_7_data = io_dataIn[15:8];
  assign mem3_MPORT_7_addr = io_addr[14:2];
  assign mem3_MPORT_7_mask = 1'h1;
  assign mem3_MPORT_7_en = _T_18 ? 1'h0 : _GEN_142;
  assign mem3_MPORT_11_data = io_dataIn[31:24];
  assign mem3_MPORT_11_addr = io_addr[14:2];
  assign mem3_MPORT_11_mask = 1'h1;
  assign mem3_MPORT_11_en = _T_18 ? 1'h0 : _GEN_148;
  assign io_dataOut = 8'h10 == delayed_alu_operation_select ? _GEN_19 : _GEN_32; // @[DataMemory.scala 35:39]
  always @(posedge clock) begin
    if (mem0_MPORT_en & mem0_MPORT_mask) begin
      mem0[mem0_MPORT_addr] <= mem0_MPORT_data; // @[DataMemory.scala 23:25]
    end
    if (mem0_MPORT_4_en & mem0_MPORT_4_mask) begin
      mem0[mem0_MPORT_4_addr] <= mem0_MPORT_4_data; // @[DataMemory.scala 23:25]
    end
    if (mem0_MPORT_8_en & mem0_MPORT_8_mask) begin
      mem0[mem0_MPORT_8_addr] <= mem0_MPORT_8_data; // @[DataMemory.scala 23:25]
    end
    mem0_load0_MPORT_en_pipe_0 <= ~io_enableWrite;
    if (~io_enableWrite) begin
      mem0_load0_MPORT_addr_pipe_0 <= io_addr[14:2];
    end
    if (mem1_MPORT_1_en & mem1_MPORT_1_mask) begin
      mem1[mem1_MPORT_1_addr] <= mem1_MPORT_1_data; // @[DataMemory.scala 24:25]
    end
    if (mem1_MPORT_5_en & mem1_MPORT_5_mask) begin
      mem1[mem1_MPORT_5_addr] <= mem1_MPORT_5_data; // @[DataMemory.scala 24:25]
    end
    if (mem1_MPORT_9_en & mem1_MPORT_9_mask) begin
      mem1[mem1_MPORT_9_addr] <= mem1_MPORT_9_data; // @[DataMemory.scala 24:25]
    end
    mem1_load1_MPORT_en_pipe_0 <= ~io_enableWrite;
    if (~io_enableWrite) begin
      mem1_load1_MPORT_addr_pipe_0 <= io_addr[14:2];
    end
    if (mem2_MPORT_2_en & mem2_MPORT_2_mask) begin
      mem2[mem2_MPORT_2_addr] <= mem2_MPORT_2_data; // @[DataMemory.scala 25:25]
    end
    if (mem2_MPORT_6_en & mem2_MPORT_6_mask) begin
      mem2[mem2_MPORT_6_addr] <= mem2_MPORT_6_data; // @[DataMemory.scala 25:25]
    end
    if (mem2_MPORT_10_en & mem2_MPORT_10_mask) begin
      mem2[mem2_MPORT_10_addr] <= mem2_MPORT_10_data; // @[DataMemory.scala 25:25]
    end
    mem2_load2_MPORT_en_pipe_0 <= ~io_enableWrite;
    if (~io_enableWrite) begin
      mem2_load2_MPORT_addr_pipe_0 <= io_addr[14:2];
    end
    if (mem3_MPORT_3_en & mem3_MPORT_3_mask) begin
      mem3[mem3_MPORT_3_addr] <= mem3_MPORT_3_data; // @[DataMemory.scala 26:25]
    end
    if (mem3_MPORT_7_en & mem3_MPORT_7_mask) begin
      mem3[mem3_MPORT_7_addr] <= mem3_MPORT_7_data; // @[DataMemory.scala 26:25]
    end
    if (mem3_MPORT_11_en & mem3_MPORT_11_mask) begin
      mem3[mem3_MPORT_11_addr] <= mem3_MPORT_11_data; // @[DataMemory.scala 26:25]
    end
    mem3_load3_MPORT_en_pipe_0 <= ~io_enableWrite;
    if (~io_enableWrite) begin
      mem3_load3_MPORT_addr_pipe_0 <= io_addr[14:2];
    end
    if (reset) begin // @[DataMemory.scala 19:53]
      delayed_alu_operation_select_REG <= 8'h0; // @[DataMemory.scala 19:53]
    end else begin
      delayed_alu_operation_select_REG <= io_alu_operation_select_EXtoMEM; // @[DataMemory.scala 19:53]
    end
    if (reset) begin // @[DataMemory.scala 19:45]
      delayed_alu_operation_select <= 8'h0; // @[DataMemory.scala 19:45]
    end else begin
      delayed_alu_operation_select <= delayed_alu_operation_select_REG; // @[DataMemory.scala 19:45]
    end
    if (reset) begin // @[DataMemory.scala 20:41]
      delayed_specAddr_REG <= 2'h0; // @[DataMemory.scala 20:41]
    end else begin
      delayed_specAddr_REG <= specAddr; // @[DataMemory.scala 20:41]
    end
    if (reset) begin // @[DataMemory.scala 20:33]
      delayed_specAddr <= 2'h0; // @[DataMemory.scala 20:33]
    end else begin
      delayed_specAddr <= delayed_specAddr_REG; // @[DataMemory.scala 20:33]
    end
    if (reset) begin // @[DataMemory.scala 29:22]
      load0 <= 8'h0; // @[DataMemory.scala 29:22]
    end else begin
      load0 <= mem0_load0_MPORT_data; // @[DataMemory.scala 29:22]
    end
    if (reset) begin // @[DataMemory.scala 30:22]
      load1 <= 8'h0; // @[DataMemory.scala 30:22]
    end else begin
      load1 <= mem1_load1_MPORT_data; // @[DataMemory.scala 30:22]
    end
    if (reset) begin // @[DataMemory.scala 31:22]
      load2 <= 8'h0; // @[DataMemory.scala 31:22]
    end else begin
      load2 <= mem2_load2_MPORT_data; // @[DataMemory.scala 31:22]
    end
    if (reset) begin // @[DataMemory.scala 32:22]
      load3 <= 8'h0; // @[DataMemory.scala 32:22]
    end else begin
      load3 <= mem3_load3_MPORT_data; // @[DataMemory.scala 32:22]
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
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem0[initvar] = _RAND_0[7:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem1[initvar] = _RAND_3[7:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem2[initvar] = _RAND_6[7:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem3[initvar] = _RAND_9[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem0_load0_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem0_load0_MPORT_addr_pipe_0 = _RAND_2[12:0];
  _RAND_4 = {1{`RANDOM}};
  mem1_load1_MPORT_en_pipe_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  mem1_load1_MPORT_addr_pipe_0 = _RAND_5[12:0];
  _RAND_7 = {1{`RANDOM}};
  mem2_load2_MPORT_en_pipe_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  mem2_load2_MPORT_addr_pipe_0 = _RAND_8[12:0];
  _RAND_10 = {1{`RANDOM}};
  mem3_load3_MPORT_en_pipe_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  mem3_load3_MPORT_addr_pipe_0 = _RAND_11[12:0];
  _RAND_12 = {1{`RANDOM}};
  delayed_alu_operation_select_REG = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  delayed_alu_operation_select = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  delayed_specAddr_REG = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  delayed_specAddr = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  load0 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  load1 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  load2 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  load3 = _RAND_19[7:0];
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
  input  [31:0] io_port_addr,
  input  [31:0] io_port_wrData,
  output [31:0] io_port_rdData,
  output [15:0] io_pins
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
`endif // RANDOMIZE_REG_INIT
  reg [15:0] led_reg; // @[MemoryMappedLeds.scala 28:24]
  reg [7:0] pwm_reg_0; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_1; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_2; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_3; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_4; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_5; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_6; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_7; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_8; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_9; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_10; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_11; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_12; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_13; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_14; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_reg_15; // @[MemoryMappedLeds.scala 30:24]
  reg [7:0] pwm_counter; // @[MemoryMappedLeds.scala 31:28]
  reg [11:0] clk_prescaler; // @[MemoryMappedLeds.scala 32:30]
  wire [11:0] _clk_prescaler_T_1 = clk_prescaler + 12'h1; // @[MemoryMappedLeds.scala 34:34]
  wire [31:0] pwm_addr = io_port_addr - 32'h40; // @[MemoryMappedLeds.scala 37:31]
  wire  _T = io_port_addr == 32'h30; // @[MemoryMappedLeds.scala 39:23]
  wire [7:0] _GEN_0 = 4'h0 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_0; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_1 = 4'h1 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_1; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_2 = 4'h2 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_2; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_3 = 4'h3 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_3; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_4 = 4'h4 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_4; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_5 = 4'h5 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_5; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_6 = 4'h6 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_6; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_7 = 4'h7 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_7; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_8 = 4'h8 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_8; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_9 = 4'h9 == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_9; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_10 = 4'ha == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_10; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_11 = 4'hb == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_11; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_12 = 4'hc == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_12; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_13 = 4'hd == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_13; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_14 = 4'he == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_14; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [7:0] _GEN_15 = 4'hf == pwm_addr[3:0] ? io_port_wrData[7:0] : pwm_reg_15; // @[MemoryMappedLeds.scala 30:24 42:{25,25}]
  wire [31:0] _GEN_32 = io_port_addr == 32'h30 ? io_port_wrData : {{16'd0}, led_reg}; // @[MemoryMappedLeds.scala 39:46 40:15 28:24]
  wire [31:0] _GEN_49 = io_port_write ? _GEN_32 : {{16'd0}, led_reg}; // @[MemoryMappedLeds.scala 38:23 28:24]
  reg [15:0] rdData; // @[MemoryMappedLeds.scala 47:23]
  wire [7:0] _GEN_67 = 4'h1 == pwm_addr[3:0] ? pwm_reg_1 : pwm_reg_0; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_68 = 4'h2 == pwm_addr[3:0] ? pwm_reg_2 : _GEN_67; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_69 = 4'h3 == pwm_addr[3:0] ? pwm_reg_3 : _GEN_68; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_70 = 4'h4 == pwm_addr[3:0] ? pwm_reg_4 : _GEN_69; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_71 = 4'h5 == pwm_addr[3:0] ? pwm_reg_5 : _GEN_70; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_72 = 4'h6 == pwm_addr[3:0] ? pwm_reg_6 : _GEN_71; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_73 = 4'h7 == pwm_addr[3:0] ? pwm_reg_7 : _GEN_72; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_74 = 4'h8 == pwm_addr[3:0] ? pwm_reg_8 : _GEN_73; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_75 = 4'h9 == pwm_addr[3:0] ? pwm_reg_9 : _GEN_74; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_76 = 4'ha == pwm_addr[3:0] ? pwm_reg_10 : _GEN_75; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_77 = 4'hb == pwm_addr[3:0] ? pwm_reg_11 : _GEN_76; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_78 = 4'hc == pwm_addr[3:0] ? pwm_reg_12 : _GEN_77; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_79 = 4'hd == pwm_addr[3:0] ? pwm_reg_13 : _GEN_78; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_80 = 4'he == pwm_addr[3:0] ? pwm_reg_14 : _GEN_79; // @[MemoryMappedLeds.scala 53:{14,14}]
  wire [7:0] _GEN_81 = 4'hf == pwm_addr[3:0] ? pwm_reg_15 : _GEN_80; // @[MemoryMappedLeds.scala 53:{14,14}]
  reg [15:0] io_port_rdData_REG; // @[MemoryMappedLeds.scala 56:28]
  wire [7:0] _pwm_counter_T_1 = pwm_counter + 8'h1; // @[MemoryMappedLeds.scala 60:32]
  wire  led_state_0 = pwm_reg_0 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_1 = pwm_reg_1 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_2 = pwm_reg_2 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_3 = pwm_reg_3 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_4 = pwm_reg_4 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_5 = pwm_reg_5 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_6 = pwm_reg_6 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_7 = pwm_reg_7 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_8 = pwm_reg_8 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_9 = pwm_reg_9 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_10 = pwm_reg_10 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_11 = pwm_reg_11 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_12 = pwm_reg_12 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_13 = pwm_reg_13 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_14 = pwm_reg_14 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire  led_state_15 = pwm_reg_15 > pwm_counter; // @[MemoryMappedLeds.scala 64:32]
  wire [7:0] cat_led_state_lo = {led_state_7,led_state_6,led_state_5,led_state_4,led_state_3,led_state_2,led_state_1,
    led_state_0}; // @[Cat.scala 33:92]
  wire [15:0] cat_led_state = {led_state_15,led_state_14,led_state_13,led_state_12,led_state_11,led_state_10,led_state_9
    ,led_state_8,cat_led_state_lo}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_85 = reset ? 32'h0 : _GEN_49; // @[MemoryMappedLeds.scala 28:{24,24}]
  assign io_port_rdData = {{16'd0}, io_port_rdData_REG}; // @[MemoryMappedLeds.scala 56:18]
  assign io_pins = cat_led_state & led_reg; // @[MemoryMappedLeds.scala 67:28]
  always @(posedge clock) begin
    led_reg <= _GEN_85[15:0]; // @[MemoryMappedLeds.scala 28:{24,24}]
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_0 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_0 <= _GEN_0;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_1 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_1 <= _GEN_1;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_2 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_2 <= _GEN_2;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_3 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_3 <= _GEN_3;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_4 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_4 <= _GEN_4;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_5 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_5 <= _GEN_5;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_6 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_6 <= _GEN_6;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_7 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_7 <= _GEN_7;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_8 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_8 <= _GEN_8;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_9 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_9 <= _GEN_9;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_10 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_10 <= _GEN_10;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_11 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_11 <= _GEN_11;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_12 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_12 <= _GEN_12;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_13 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_13 <= _GEN_13;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_14 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_14 <= _GEN_14;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 30:24]
      pwm_reg_15 <= 8'hff; // @[MemoryMappedLeds.scala 30:24]
    end else if (io_port_write) begin // @[MemoryMappedLeds.scala 38:23]
      if (!(io_port_addr == 32'h30)) begin // @[MemoryMappedLeds.scala 39:46]
        if (pwm_addr < 32'h10) begin // @[MemoryMappedLeds.scala 41:37]
          pwm_reg_15 <= _GEN_15;
        end
      end
    end
    if (reset) begin // @[MemoryMappedLeds.scala 31:28]
      pwm_counter <= 8'h0; // @[MemoryMappedLeds.scala 31:28]
    end else if (clk_prescaler == 12'h0) begin // @[MemoryMappedLeds.scala 59:31]
      pwm_counter <= _pwm_counter_T_1; // @[MemoryMappedLeds.scala 60:17]
    end
    if (reset) begin // @[MemoryMappedLeds.scala 32:30]
      clk_prescaler <= 12'h0; // @[MemoryMappedLeds.scala 32:30]
    end else begin
      clk_prescaler <= _clk_prescaler_T_1; // @[MemoryMappedLeds.scala 34:17]
    end
    if (reset) begin // @[MemoryMappedLeds.scala 47:23]
      rdData <= 16'h0; // @[MemoryMappedLeds.scala 47:23]
    end else if (_T) begin // @[MemoryMappedLeds.scala 50:46]
      rdData <= led_reg; // @[MemoryMappedLeds.scala 51:14]
    end else begin
      rdData <= {{8'd0}, _GEN_81}; // @[MemoryMappedLeds.scala 53:14]
    end
    io_port_rdData_REG <= rdData; // @[MemoryMappedLeds.scala 56:28]
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
  led_reg = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  pwm_reg_0 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  pwm_reg_1 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  pwm_reg_2 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  pwm_reg_3 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  pwm_reg_4 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  pwm_reg_5 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  pwm_reg_6 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  pwm_reg_7 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  pwm_reg_8 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  pwm_reg_9 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  pwm_reg_10 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  pwm_reg_11 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  pwm_reg_12 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  pwm_reg_13 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  pwm_reg_14 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  pwm_reg_15 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  pwm_counter = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  clk_prescaler = _RAND_18[11:0];
  _RAND_19 = {1{`RANDOM}};
  rdData = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  io_port_rdData_REG = _RAND_20[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module MemoryMappedSwitches(
  input         clock,
  output [31:0] io_port_rdData,
  input  [15:0] io_pins
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] io_port_rdData_REG; // @[MemoryMappedSwitches.scala 20:28]
  assign io_port_rdData = {{16'd0}, io_port_rdData_REG}; // @[MemoryMappedSwitches.scala 20:18]
  always @(posedge clock) begin
    io_port_rdData_REG <= io_pins; // @[MemoryMappedSwitches.scala 20:28]
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
  io_port_rdData_REG = _RAND_0[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SevenSegmentDecoder(
  input  [7:0] io_in,
  output [6:0] io_out
);
  wire [7:0] _io_out_T_1 = io_in - 8'h20; // @[SevenSegmentDecoder.scala 118:32]
  wire [7:0] _GEN_1 = 7'h1 == _io_out_T_1[6:0] ? 8'h86 : 8'h0; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_2 = 7'h2 == _io_out_T_1[6:0] ? 8'h22 : _GEN_1; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_3 = 7'h3 == _io_out_T_1[6:0] ? 8'h7e : _GEN_2; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_4 = 7'h4 == _io_out_T_1[6:0] ? 8'h6d : _GEN_3; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_5 = 7'h5 == _io_out_T_1[6:0] ? 8'hd2 : _GEN_4; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_6 = 7'h6 == _io_out_T_1[6:0] ? 8'h46 : _GEN_5; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_7 = 7'h7 == _io_out_T_1[6:0] ? 8'h20 : _GEN_6; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_8 = 7'h8 == _io_out_T_1[6:0] ? 8'h29 : _GEN_7; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_9 = 7'h9 == _io_out_T_1[6:0] ? 8'hb : _GEN_8; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_10 = 7'ha == _io_out_T_1[6:0] ? 8'h21 : _GEN_9; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_11 = 7'hb == _io_out_T_1[6:0] ? 8'h70 : _GEN_10; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_12 = 7'hc == _io_out_T_1[6:0] ? 8'h10 : _GEN_11; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_13 = 7'hd == _io_out_T_1[6:0] ? 8'h40 : _GEN_12; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_14 = 7'he == _io_out_T_1[6:0] ? 8'h80 : _GEN_13; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_15 = 7'hf == _io_out_T_1[6:0] ? 8'h52 : _GEN_14; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_16 = 7'h10 == _io_out_T_1[6:0] ? 8'h3f : _GEN_15; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_17 = 7'h11 == _io_out_T_1[6:0] ? 8'h6 : _GEN_16; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_18 = 7'h12 == _io_out_T_1[6:0] ? 8'h5b : _GEN_17; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_19 = 7'h13 == _io_out_T_1[6:0] ? 8'h4f : _GEN_18; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_20 = 7'h14 == _io_out_T_1[6:0] ? 8'h66 : _GEN_19; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_21 = 7'h15 == _io_out_T_1[6:0] ? 8'h6d : _GEN_20; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_22 = 7'h16 == _io_out_T_1[6:0] ? 8'h7d : _GEN_21; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_23 = 7'h17 == _io_out_T_1[6:0] ? 8'h7 : _GEN_22; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_24 = 7'h18 == _io_out_T_1[6:0] ? 8'h7f : _GEN_23; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_25 = 7'h19 == _io_out_T_1[6:0] ? 8'h6f : _GEN_24; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_26 = 7'h1a == _io_out_T_1[6:0] ? 8'h9 : _GEN_25; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_27 = 7'h1b == _io_out_T_1[6:0] ? 8'hd : _GEN_26; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_28 = 7'h1c == _io_out_T_1[6:0] ? 8'h61 : _GEN_27; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_29 = 7'h1d == _io_out_T_1[6:0] ? 8'h48 : _GEN_28; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_30 = 7'h1e == _io_out_T_1[6:0] ? 8'h43 : _GEN_29; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_31 = 7'h1f == _io_out_T_1[6:0] ? 8'hd3 : _GEN_30; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_32 = 7'h20 == _io_out_T_1[6:0] ? 8'h5f : _GEN_31; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_33 = 7'h21 == _io_out_T_1[6:0] ? 8'h77 : _GEN_32; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_34 = 7'h22 == _io_out_T_1[6:0] ? 8'h7c : _GEN_33; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_35 = 7'h23 == _io_out_T_1[6:0] ? 8'h39 : _GEN_34; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_36 = 7'h24 == _io_out_T_1[6:0] ? 8'h5e : _GEN_35; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_37 = 7'h25 == _io_out_T_1[6:0] ? 8'h79 : _GEN_36; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_38 = 7'h26 == _io_out_T_1[6:0] ? 8'h71 : _GEN_37; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_39 = 7'h27 == _io_out_T_1[6:0] ? 8'h3d : _GEN_38; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_40 = 7'h28 == _io_out_T_1[6:0] ? 8'h76 : _GEN_39; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_41 = 7'h29 == _io_out_T_1[6:0] ? 8'h30 : _GEN_40; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_42 = 7'h2a == _io_out_T_1[6:0] ? 8'h1e : _GEN_41; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_43 = 7'h2b == _io_out_T_1[6:0] ? 8'h75 : _GEN_42; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_44 = 7'h2c == _io_out_T_1[6:0] ? 8'h38 : _GEN_43; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_45 = 7'h2d == _io_out_T_1[6:0] ? 8'h15 : _GEN_44; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_46 = 7'h2e == _io_out_T_1[6:0] ? 8'h37 : _GEN_45; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_47 = 7'h2f == _io_out_T_1[6:0] ? 8'h3f : _GEN_46; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_48 = 7'h30 == _io_out_T_1[6:0] ? 8'h73 : _GEN_47; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_49 = 7'h31 == _io_out_T_1[6:0] ? 8'h6b : _GEN_48; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_50 = 7'h32 == _io_out_T_1[6:0] ? 8'h33 : _GEN_49; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_51 = 7'h33 == _io_out_T_1[6:0] ? 8'h6d : _GEN_50; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_52 = 7'h34 == _io_out_T_1[6:0] ? 8'h78 : _GEN_51; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_53 = 7'h35 == _io_out_T_1[6:0] ? 8'h3e : _GEN_52; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_54 = 7'h36 == _io_out_T_1[6:0] ? 8'h3e : _GEN_53; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_55 = 7'h37 == _io_out_T_1[6:0] ? 8'h2a : _GEN_54; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_56 = 7'h38 == _io_out_T_1[6:0] ? 8'h76 : _GEN_55; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_57 = 7'h39 == _io_out_T_1[6:0] ? 8'h6e : _GEN_56; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_58 = 7'h3a == _io_out_T_1[6:0] ? 8'h5b : _GEN_57; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_59 = 7'h3b == _io_out_T_1[6:0] ? 8'h39 : _GEN_58; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_60 = 7'h3c == _io_out_T_1[6:0] ? 8'h64 : _GEN_59; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_61 = 7'h3d == _io_out_T_1[6:0] ? 8'hf : _GEN_60; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_62 = 7'h3e == _io_out_T_1[6:0] ? 8'h23 : _GEN_61; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_63 = 7'h3f == _io_out_T_1[6:0] ? 8'h8 : _GEN_62; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_64 = 7'h40 == _io_out_T_1[6:0] ? 8'h2 : _GEN_63; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_65 = 7'h41 == _io_out_T_1[6:0] ? 8'h5f : _GEN_64; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_66 = 7'h42 == _io_out_T_1[6:0] ? 8'h7c : _GEN_65; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_67 = 7'h43 == _io_out_T_1[6:0] ? 8'h58 : _GEN_66; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_68 = 7'h44 == _io_out_T_1[6:0] ? 8'h5e : _GEN_67; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_69 = 7'h45 == _io_out_T_1[6:0] ? 8'h7b : _GEN_68; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_70 = 7'h46 == _io_out_T_1[6:0] ? 8'h71 : _GEN_69; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_71 = 7'h47 == _io_out_T_1[6:0] ? 8'h6f : _GEN_70; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_72 = 7'h48 == _io_out_T_1[6:0] ? 8'h74 : _GEN_71; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_73 = 7'h49 == _io_out_T_1[6:0] ? 8'h10 : _GEN_72; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_74 = 7'h4a == _io_out_T_1[6:0] ? 8'hc : _GEN_73; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_75 = 7'h4b == _io_out_T_1[6:0] ? 8'h75 : _GEN_74; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_76 = 7'h4c == _io_out_T_1[6:0] ? 8'h30 : _GEN_75; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_77 = 7'h4d == _io_out_T_1[6:0] ? 8'h14 : _GEN_76; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_78 = 7'h4e == _io_out_T_1[6:0] ? 8'h54 : _GEN_77; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_79 = 7'h4f == _io_out_T_1[6:0] ? 8'h5c : _GEN_78; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_80 = 7'h50 == _io_out_T_1[6:0] ? 8'h73 : _GEN_79; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_81 = 7'h51 == _io_out_T_1[6:0] ? 8'h67 : _GEN_80; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_82 = 7'h52 == _io_out_T_1[6:0] ? 8'h50 : _GEN_81; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_83 = 7'h53 == _io_out_T_1[6:0] ? 8'h6d : _GEN_82; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_84 = 7'h54 == _io_out_T_1[6:0] ? 8'h78 : _GEN_83; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_85 = 7'h55 == _io_out_T_1[6:0] ? 8'h1c : _GEN_84; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_86 = 7'h56 == _io_out_T_1[6:0] ? 8'h1c : _GEN_85; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_87 = 7'h57 == _io_out_T_1[6:0] ? 8'h14 : _GEN_86; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_88 = 7'h58 == _io_out_T_1[6:0] ? 8'h76 : _GEN_87; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_89 = 7'h59 == _io_out_T_1[6:0] ? 8'h6e : _GEN_88; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_90 = 7'h5a == _io_out_T_1[6:0] ? 8'h5b : _GEN_89; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_91 = 7'h5b == _io_out_T_1[6:0] ? 8'h46 : _GEN_90; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_92 = 7'h5c == _io_out_T_1[6:0] ? 8'h30 : _GEN_91; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_93 = 7'h5d == _io_out_T_1[6:0] ? 8'h70 : _GEN_92; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_94 = 7'h5e == _io_out_T_1[6:0] ? 8'h1 : _GEN_93; // @[SevenSegmentDecoder.scala 118:{8,8}]
  wire [7:0] _GEN_95 = 7'h5f == _io_out_T_1[6:0] ? 8'h0 : _GEN_94; // @[SevenSegmentDecoder.scala 118:{8,8}]
  assign io_out = _GEN_95[6:0]; // @[SevenSegmentDecoder.scala 118:8]
endmodule
module MemoryMappedDisplay(
  input         clock,
  input         reset,
  input         io_port_write,
  input  [31:0] io_port_addr,
  input  [31:0] io_port_wrData,
  output [6:0]  io_display_seg,
  output [3:0]  io_display_an
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
`endif // RANDOMIZE_REG_INIT
  wire [7:0] sevSegDecoder_io_in; // @[MemoryMappedDisplay.scala 20:29]
  wire [6:0] sevSegDecoder_io_out; // @[MemoryMappedDisplay.scala 20:29]
  wire [31:0] relative_address = io_port_addr - 32'h10; // @[MemoryMappedDisplay.scala 19:39]
  reg [3:0] select; // @[MemoryMappedDisplay.scala 21:23]
  reg [7:0] display_reg_0; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_1; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_2; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_3; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_4; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_5; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_6; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_7; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_8; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_9; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_10; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_11; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_12; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_13; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_14; // @[MemoryMappedDisplay.scala 25:28]
  reg [7:0] display_reg_15; // @[MemoryMappedDisplay.scala 25:28]
  reg [3:0] display_shift_reg; // @[MemoryMappedDisplay.scala 27:34]
  reg [31:0] tick_counter_multiplex_reg; // @[MemoryMappedDisplay.scala 38:43]
  wire [31:0] _tick_counter_multiplex_reg_T_1 = tick_counter_multiplex_reg + 32'h1; // @[MemoryMappedDisplay.scala 39:60]
  wire  tick_multiplexing = tick_counter_multiplex_reg == 32'h1869f; // @[MemoryMappedDisplay.scala 42:54]
  wire [3:0] _select_T_2 = {select[0],select[3:1]}; // @[MemoryMappedDisplay.scala 46:25]
  reg [31:0] tick_counter_shift_reg; // @[MemoryMappedDisplay.scala 50:39]
  wire [31:0] _tick_counter_shift_reg_T_1 = tick_counter_shift_reg + 32'h1; // @[MemoryMappedDisplay.scala 51:52]
  wire  tick_shift = tick_counter_shift_reg == 32'h17d783f; // @[MemoryMappedDisplay.scala 54:43]
  wire [3:0] _display_shift_reg_T_1 = display_shift_reg + 4'h1; // @[MemoryMappedDisplay.scala 61:46]
  wire [4:0] _sevSegDecoder_io_in_T = {{1'd0}, display_shift_reg}; // @[MemoryMappedDisplay.scala 81:75]
  wire [7:0] _GEN_55 = 4'h1 == _sevSegDecoder_io_in_T[3:0] ? display_reg_1 : display_reg_0; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_56 = 4'h2 == _sevSegDecoder_io_in_T[3:0] ? display_reg_2 : _GEN_55; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_57 = 4'h3 == _sevSegDecoder_io_in_T[3:0] ? display_reg_3 : _GEN_56; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_58 = 4'h4 == _sevSegDecoder_io_in_T[3:0] ? display_reg_4 : _GEN_57; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_59 = 4'h5 == _sevSegDecoder_io_in_T[3:0] ? display_reg_5 : _GEN_58; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_60 = 4'h6 == _sevSegDecoder_io_in_T[3:0] ? display_reg_6 : _GEN_59; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_61 = 4'h7 == _sevSegDecoder_io_in_T[3:0] ? display_reg_7 : _GEN_60; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_62 = 4'h8 == _sevSegDecoder_io_in_T[3:0] ? display_reg_8 : _GEN_61; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_63 = 4'h9 == _sevSegDecoder_io_in_T[3:0] ? display_reg_9 : _GEN_62; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_64 = 4'ha == _sevSegDecoder_io_in_T[3:0] ? display_reg_10 : _GEN_63; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_65 = 4'hb == _sevSegDecoder_io_in_T[3:0] ? display_reg_11 : _GEN_64; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_66 = 4'hc == _sevSegDecoder_io_in_T[3:0] ? display_reg_12 : _GEN_65; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_67 = 4'hd == _sevSegDecoder_io_in_T[3:0] ? display_reg_13 : _GEN_66; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_68 = 4'he == _sevSegDecoder_io_in_T[3:0] ? display_reg_14 : _GEN_67; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_69 = 4'hf == _sevSegDecoder_io_in_T[3:0] ? display_reg_15 : _GEN_68; // @[MemoryMappedDisplay.scala 81:{41,41}]
  wire [7:0] _GEN_71 = 4'h1 == _display_shift_reg_T_1 ? display_reg_1 : display_reg_0; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_72 = 4'h2 == _display_shift_reg_T_1 ? display_reg_2 : _GEN_71; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_73 = 4'h3 == _display_shift_reg_T_1 ? display_reg_3 : _GEN_72; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_74 = 4'h4 == _display_shift_reg_T_1 ? display_reg_4 : _GEN_73; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_75 = 4'h5 == _display_shift_reg_T_1 ? display_reg_5 : _GEN_74; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_76 = 4'h6 == _display_shift_reg_T_1 ? display_reg_6 : _GEN_75; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_77 = 4'h7 == _display_shift_reg_T_1 ? display_reg_7 : _GEN_76; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_78 = 4'h8 == _display_shift_reg_T_1 ? display_reg_8 : _GEN_77; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_79 = 4'h9 == _display_shift_reg_T_1 ? display_reg_9 : _GEN_78; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_80 = 4'ha == _display_shift_reg_T_1 ? display_reg_10 : _GEN_79; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_81 = 4'hb == _display_shift_reg_T_1 ? display_reg_11 : _GEN_80; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_82 = 4'hc == _display_shift_reg_T_1 ? display_reg_12 : _GEN_81; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_83 = 4'hd == _display_shift_reg_T_1 ? display_reg_13 : _GEN_82; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_84 = 4'he == _display_shift_reg_T_1 ? display_reg_14 : _GEN_83; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [7:0] _GEN_85 = 4'hf == _display_shift_reg_T_1 ? display_reg_15 : _GEN_84; // @[MemoryMappedDisplay.scala 82:{41,41}]
  wire [3:0] _sevSegDecoder_io_in_T_7 = display_shift_reg + 4'h2; // @[MemoryMappedDisplay.scala 83:75]
  wire [7:0] _GEN_87 = 4'h1 == _sevSegDecoder_io_in_T_7 ? display_reg_1 : display_reg_0; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_88 = 4'h2 == _sevSegDecoder_io_in_T_7 ? display_reg_2 : _GEN_87; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_89 = 4'h3 == _sevSegDecoder_io_in_T_7 ? display_reg_3 : _GEN_88; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_90 = 4'h4 == _sevSegDecoder_io_in_T_7 ? display_reg_4 : _GEN_89; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_91 = 4'h5 == _sevSegDecoder_io_in_T_7 ? display_reg_5 : _GEN_90; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_92 = 4'h6 == _sevSegDecoder_io_in_T_7 ? display_reg_6 : _GEN_91; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_93 = 4'h7 == _sevSegDecoder_io_in_T_7 ? display_reg_7 : _GEN_92; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_94 = 4'h8 == _sevSegDecoder_io_in_T_7 ? display_reg_8 : _GEN_93; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_95 = 4'h9 == _sevSegDecoder_io_in_T_7 ? display_reg_9 : _GEN_94; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_96 = 4'ha == _sevSegDecoder_io_in_T_7 ? display_reg_10 : _GEN_95; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_97 = 4'hb == _sevSegDecoder_io_in_T_7 ? display_reg_11 : _GEN_96; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_98 = 4'hc == _sevSegDecoder_io_in_T_7 ? display_reg_12 : _GEN_97; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_99 = 4'hd == _sevSegDecoder_io_in_T_7 ? display_reg_13 : _GEN_98; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_100 = 4'he == _sevSegDecoder_io_in_T_7 ? display_reg_14 : _GEN_99; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [7:0] _GEN_101 = 4'hf == _sevSegDecoder_io_in_T_7 ? display_reg_15 : _GEN_100; // @[MemoryMappedDisplay.scala 83:{41,41}]
  wire [3:0] _sevSegDecoder_io_in_T_10 = display_shift_reg + 4'h3; // @[MemoryMappedDisplay.scala 84:75]
  wire [7:0] _GEN_103 = 4'h1 == _sevSegDecoder_io_in_T_10 ? display_reg_1 : display_reg_0; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_104 = 4'h2 == _sevSegDecoder_io_in_T_10 ? display_reg_2 : _GEN_103; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_105 = 4'h3 == _sevSegDecoder_io_in_T_10 ? display_reg_3 : _GEN_104; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_106 = 4'h4 == _sevSegDecoder_io_in_T_10 ? display_reg_4 : _GEN_105; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_107 = 4'h5 == _sevSegDecoder_io_in_T_10 ? display_reg_5 : _GEN_106; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_108 = 4'h6 == _sevSegDecoder_io_in_T_10 ? display_reg_6 : _GEN_107; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_109 = 4'h7 == _sevSegDecoder_io_in_T_10 ? display_reg_7 : _GEN_108; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_110 = 4'h8 == _sevSegDecoder_io_in_T_10 ? display_reg_8 : _GEN_109; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_111 = 4'h9 == _sevSegDecoder_io_in_T_10 ? display_reg_9 : _GEN_110; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_112 = 4'ha == _sevSegDecoder_io_in_T_10 ? display_reg_10 : _GEN_111; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_113 = 4'hb == _sevSegDecoder_io_in_T_10 ? display_reg_11 : _GEN_112; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_114 = 4'hc == _sevSegDecoder_io_in_T_10 ? display_reg_12 : _GEN_113; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_115 = 4'hd == _sevSegDecoder_io_in_T_10 ? display_reg_13 : _GEN_114; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_116 = 4'he == _sevSegDecoder_io_in_T_10 ? display_reg_14 : _GEN_115; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_117 = 4'hf == _sevSegDecoder_io_in_T_10 ? display_reg_15 : _GEN_116; // @[MemoryMappedDisplay.scala 84:{41,41}]
  wire [7:0] _GEN_118 = 4'h1 == select ? _GEN_117 : 8'h0; // @[MemoryMappedDisplay.scala 80:18 79:23 84:41]
  wire [7:0] _GEN_119 = 4'h2 == select ? _GEN_101 : _GEN_118; // @[MemoryMappedDisplay.scala 80:18 83:41]
  wire [7:0] _GEN_120 = 4'h4 == select ? _GEN_85 : _GEN_119; // @[MemoryMappedDisplay.scala 80:18 82:41]
  SevenSegmentDecoder sevSegDecoder ( // @[MemoryMappedDisplay.scala 20:29]
    .io_in(sevSegDecoder_io_in),
    .io_out(sevSegDecoder_io_out)
  );
  assign io_display_seg = ~sevSegDecoder_io_out; // @[MemoryMappedDisplay.scala 88:21]
  assign io_display_an = ~select; // @[MemoryMappedDisplay.scala 89:20]
  assign sevSegDecoder_io_in = 4'h8 == select ? _GEN_69 : _GEN_120; // @[MemoryMappedDisplay.scala 80:18 81:41]
  always @(posedge clock) begin
    if (reset) begin // @[MemoryMappedDisplay.scala 21:23]
      select <= 4'h1; // @[MemoryMappedDisplay.scala 21:23]
    end else if (tick_multiplexing) begin // @[MemoryMappedDisplay.scala 44:27]
      select <= _select_T_2; // @[MemoryMappedDisplay.scala 46:12]
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_0 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h0 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_0 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_1 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h1 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_1 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_2 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h2 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_2 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_3 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h3 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_3 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_4 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h4 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_4 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_5 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h5 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_5 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_6 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h6 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_6 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_7 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h7 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_7 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_8 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h8 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_8 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_9 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'h9 == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_9 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_10 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'ha == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_10 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_11 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'hb == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_11 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_12 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'hc == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_12 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_13 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'hd == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_13 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_14 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'he == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_14 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 25:28]
      display_reg_15 <= 8'h0; // @[MemoryMappedDisplay.scala 25:28]
    end else if (io_port_write & relative_address < 32'h10) begin // @[MemoryMappedDisplay.scala 66:54]
      if (4'hf == relative_address[3:0]) begin // @[MemoryMappedDisplay.scala 67:35]
        display_reg_15 <= io_port_wrData[7:0]; // @[MemoryMappedDisplay.scala 67:35]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 27:34]
      display_shift_reg <= 4'h0; // @[MemoryMappedDisplay.scala 27:34]
    end else if (tick_shift) begin // @[MemoryMappedDisplay.scala 56:20]
      if (display_shift_reg == 4'hf) begin // @[MemoryMappedDisplay.scala 58:38]
        display_shift_reg <= 4'h0; // @[MemoryMappedDisplay.scala 59:25]
      end else begin
        display_shift_reg <= _display_shift_reg_T_1; // @[MemoryMappedDisplay.scala 61:25]
      end
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 38:43]
      tick_counter_multiplex_reg <= 32'h0; // @[MemoryMappedDisplay.scala 38:43]
    end else if (tick_multiplexing) begin // @[MemoryMappedDisplay.scala 44:27]
      tick_counter_multiplex_reg <= 32'h0; // @[MemoryMappedDisplay.scala 45:32]
    end else begin
      tick_counter_multiplex_reg <= _tick_counter_multiplex_reg_T_1; // @[MemoryMappedDisplay.scala 39:30]
    end
    if (reset) begin // @[MemoryMappedDisplay.scala 50:39]
      tick_counter_shift_reg <= 32'h0; // @[MemoryMappedDisplay.scala 50:39]
    end else if (tick_shift) begin // @[MemoryMappedDisplay.scala 56:20]
      tick_counter_shift_reg <= 32'h0; // @[MemoryMappedDisplay.scala 57:28]
    end else begin
      tick_counter_shift_reg <= _tick_counter_shift_reg_T_1; // @[MemoryMappedDisplay.scala 51:26]
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
  select = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  display_reg_0 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  display_reg_1 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  display_reg_2 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  display_reg_3 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  display_reg_4 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  display_reg_5 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  display_reg_6 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  display_reg_7 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  display_reg_8 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  display_reg_9 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  display_reg_10 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  display_reg_11 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  display_reg_12 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  display_reg_13 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  display_reg_14 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  display_reg_15 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  display_shift_reg = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  tick_counter_multiplex_reg = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  tick_counter_shift_reg = _RAND_19[31:0];
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
  input         io_readEnable,
  input  [15:0] io_switches,
  output [31:0] io_dataOut,
  output [15:0] io_leds,
  output [6:0]  io_display_seg,
  output [3:0]  io_display_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  leds_clock; // @[MemoryMappedIO.scala 37:20]
  wire  leds_reset; // @[MemoryMappedIO.scala 37:20]
  wire  leds_io_port_write; // @[MemoryMappedIO.scala 37:20]
  wire [31:0] leds_io_port_addr; // @[MemoryMappedIO.scala 37:20]
  wire [31:0] leds_io_port_wrData; // @[MemoryMappedIO.scala 37:20]
  wire [31:0] leds_io_port_rdData; // @[MemoryMappedIO.scala 37:20]
  wire [15:0] leds_io_pins; // @[MemoryMappedIO.scala 37:20]
  wire  sw_clock; // @[MemoryMappedIO.scala 38:18]
  wire [31:0] sw_io_port_rdData; // @[MemoryMappedIO.scala 38:18]
  wire [15:0] sw_io_pins; // @[MemoryMappedIO.scala 38:18]
  wire  display_clock; // @[MemoryMappedIO.scala 44:23]
  wire  display_reset; // @[MemoryMappedIO.scala 44:23]
  wire  display_io_port_write; // @[MemoryMappedIO.scala 44:23]
  wire [31:0] display_io_port_addr; // @[MemoryMappedIO.scala 44:23]
  wire [31:0] display_io_port_wrData; // @[MemoryMappedIO.scala 44:23]
  wire [6:0] display_io_display_seg; // @[MemoryMappedIO.scala 44:23]
  wire [3:0] display_io_display_an; // @[MemoryMappedIO.scala 44:23]
  wire [31:0] _address_io_T_1 = io_address - 32'h400; // @[MemoryMappedIO.scala 47:32]
  wire [7:0] address_io = _address_io_T_1[7:0]; // @[MemoryMappedIO.scala 47:53]
  wire  is_led = address_io == 8'h30 | 8'h40 <= address_io & address_io < 8'h50; // @[MemoryMappedIO.scala 51:49]
  wire  is_display = 8'h10 <= address_io & address_io < 8'h20; // @[MemoryMappedIO.scala 74:57]
  reg [7:0] REG; // @[MemoryMappedIO.scala 84:25]
  reg [7:0] REG_1; // @[MemoryMappedIO.scala 84:17]
  wire [31:0] _GEN_0 = 8'h90 == REG_1 ? sw_io_port_rdData : 32'h0; // @[MemoryMappedIO.scala 84:40 89:15 83:28]
  wire [31:0] dataOut = 8'h30 == REG_1 | 8'h40 == REG_1 ? leds_io_port_rdData : _GEN_0; // @[MemoryMappedIO.scala 84:40 86:15]
  reg  REG_2; // @[MemoryMappedIO.scala 95:23]
  reg  REG_3; // @[MemoryMappedIO.scala 95:15]
  MemoryMappedLeds leds ( // @[MemoryMappedIO.scala 37:20]
    .clock(leds_clock),
    .reset(leds_reset),
    .io_port_write(leds_io_port_write),
    .io_port_addr(leds_io_port_addr),
    .io_port_wrData(leds_io_port_wrData),
    .io_port_rdData(leds_io_port_rdData),
    .io_pins(leds_io_pins)
  );
  MemoryMappedSwitches sw ( // @[MemoryMappedIO.scala 38:18]
    .clock(sw_clock),
    .io_port_rdData(sw_io_port_rdData),
    .io_pins(sw_io_pins)
  );
  MemoryMappedDisplay display ( // @[MemoryMappedIO.scala 44:23]
    .clock(display_clock),
    .reset(display_reset),
    .io_port_write(display_io_port_write),
    .io_port_addr(display_io_port_addr),
    .io_port_wrData(display_io_port_wrData),
    .io_display_seg(display_io_display_seg),
    .io_display_an(display_io_display_an)
  );
  assign io_dataOut = REG_3 ? dataOut : 32'h0; // @[MemoryMappedIO.scala 95:41 96:16 98:16]
  assign io_leds = leds_io_pins; // @[MemoryMappedIO.scala 56:11]
  assign io_display_seg = display_io_display_seg; // @[MemoryMappedIO.scala 79:18]
  assign io_display_an = display_io_display_an; // @[MemoryMappedIO.scala 80:17]
  assign leds_clock = clock;
  assign leds_reset = reset;
  assign leds_io_port_write = io_writeEnable & is_led; // @[MemoryMappedIO.scala 52:40]
  assign leds_io_port_addr = {{24'd0}, address_io}; // @[MemoryMappedIO.scala 54:21]
  assign leds_io_port_wrData = {{16'd0}, io_dataIn[15:0]}; // @[MemoryMappedIO.scala 55:23]
  assign sw_clock = clock;
  assign sw_io_pins = io_switches; // @[MemoryMappedIO.scala 63:14]
  assign display_clock = clock;
  assign display_reset = reset;
  assign display_io_port_write = io_writeEnable & is_display; // @[MemoryMappedIO.scala 75:43]
  assign display_io_port_addr = {{24'd0}, address_io}; // @[MemoryMappedIO.scala 77:24]
  assign display_io_port_wrData = io_dataIn; // @[MemoryMappedIO.scala 78:26]
  always @(posedge clock) begin
    REG <= _address_io_T_1[7:0]; // @[MemoryMappedIO.scala 47:53]
    REG_1 <= REG; // @[MemoryMappedIO.scala 84:17]
    REG_2 <= io_readEnable; // @[MemoryMappedIO.scala 95:23]
    REG_3 <= REG_2; // @[MemoryMappedIO.scala 95:15]
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
  REG = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  REG_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  REG_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_3 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module MEMStage(
  input         clock,
  input         reset,
  input         io_EXtoMEM_register_write_enable_EXtoMEM,
  input         io_EXtoMEM_write_back_select_EXtoMEM,
  input  [4:0]  io_EXtoMEM_rd_EXtoMEM,
  input         io_EXtoMEM_address_is_io_EXtoMEM,
  input  [31:0] io_EXtoMEM_alu_result_EXtoMEM,
  input  [31:0] io_EXtoMEM_memory_write_data_EXtoMEM,
  input         io_EXtoMEM_data_memory_write_enable_EXtoMEM,
  input  [7:0]  io_EXtoMEM_alu_operation_select_EXtoMEM,
  input         io_EXtoMEM_io_memory_write_enable_EXtoMEM,
  input  [6:0]  io_EXtoMEM_opcode_EXtoMEM,
  output [31:0] io_MEMtoWB_alu_result_MEMtoWB,
  output        io_MEMtoWB_register_write_enable_MEMtoWB,
  output        io_MEMtoWB_write_back_select_MEMtoWB,
  output [4:0]  io_MEMtoWB_rd_MEMtoWB,
  output        io_MEMtoWB_address_is_io_MEMtoWB,
  output [6:0]  io_MEMtoWB_opcode_MEMtoWB,
  output [31:0] io_MEMtoWB_data_memory_read_MEMtoWB,
  output [31:0] io_MEMtoWB_io_memory_read_MEMtoWB,
  output [31:0] io_MEMtoEX_alu_result_MEMtoEX,
  output [31:0] io_MEMtoEX_memory_data_MEMtoEX,
  output [4:0]  io_MEMtoIFD_rd_MEMtoIFD,
  output [6:0]  io_MEMtoIFD_opcode_MEMtoIFD,
  input  [15:0] io_switches,
  output [15:0] io_leds,
  output [6:0]  io_display_seg,
  output [3:0]  io_display_an
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
`endif // RANDOMIZE_REG_INIT
  wire  dataMem_clock; // @[MEMStage.scala 62:23]
  wire  dataMem_reset; // @[MEMStage.scala 62:23]
  wire [14:0] dataMem_io_addr; // @[MEMStage.scala 62:23]
  wire  dataMem_io_enableWrite; // @[MEMStage.scala 62:23]
  wire [31:0] dataMem_io_dataIn; // @[MEMStage.scala 62:23]
  wire [7:0] dataMem_io_alu_operation_select_EXtoMEM; // @[MEMStage.scala 62:23]
  wire [31:0] dataMem_io_dataOut; // @[MEMStage.scala 62:23]
  wire  MemoryMappedIO_clock; // @[MEMStage.scala 65:30]
  wire  MemoryMappedIO_reset; // @[MEMStage.scala 65:30]
  wire [31:0] MemoryMappedIO_io_address; // @[MEMStage.scala 65:30]
  wire [31:0] MemoryMappedIO_io_dataIn; // @[MEMStage.scala 65:30]
  wire  MemoryMappedIO_io_writeEnable; // @[MEMStage.scala 65:30]
  wire  MemoryMappedIO_io_readEnable; // @[MEMStage.scala 65:30]
  wire [15:0] MemoryMappedIO_io_switches; // @[MEMStage.scala 65:30]
  wire [31:0] MemoryMappedIO_io_dataOut; // @[MEMStage.scala 65:30]
  wire [15:0] MemoryMappedIO_io_leds; // @[MEMStage.scala 65:30]
  wire [6:0] MemoryMappedIO_io_display_seg; // @[MEMStage.scala 65:30]
  wire [3:0] MemoryMappedIO_io_display_an; // @[MEMStage.scala 65:30]
  reg [31:0] io_MEMtoWB_alu_result_MEMtoWB_REG; // @[MEMStage.scala 79:53]
  reg  io_MEMtoWB_register_write_enable_MEMtoWB_REG; // @[MEMStage.scala 80:53]
  reg  io_MEMtoWB_write_back_select_MEMtoWB_REG; // @[MEMStage.scala 81:53]
  reg [4:0] io_MEMtoWB_rd_MEMtoWB_REG; // @[MEMStage.scala 82:53]
  reg  io_MEMtoWB_address_is_io_MEMtoWB_REG; // @[MEMStage.scala 83:53]
  reg [31:0] io_MEMtoEX_alu_result_MEMtoEX_REG; // @[MEMStage.scala 92:43]
  reg [4:0] io_MEMtoIFD_rd_MEMtoIFD_REG; // @[MEMStage.scala 94:37]
  reg [6:0] io_MEMtoIFD_opcode_MEMtoIFD_REG; // @[MEMStage.scala 95:41]
  reg [6:0] io_MEMtoWB_opcode_MEMtoWB_REG; // @[MEMStage.scala 96:39]
  DataMemory dataMem ( // @[MEMStage.scala 62:23]
    .clock(dataMem_clock),
    .reset(dataMem_reset),
    .io_addr(dataMem_io_addr),
    .io_enableWrite(dataMem_io_enableWrite),
    .io_dataIn(dataMem_io_dataIn),
    .io_alu_operation_select_EXtoMEM(dataMem_io_alu_operation_select_EXtoMEM),
    .io_dataOut(dataMem_io_dataOut)
  );
  MemoryMappedIO MemoryMappedIO ( // @[MEMStage.scala 65:30]
    .clock(MemoryMappedIO_clock),
    .reset(MemoryMappedIO_reset),
    .io_address(MemoryMappedIO_io_address),
    .io_dataIn(MemoryMappedIO_io_dataIn),
    .io_writeEnable(MemoryMappedIO_io_writeEnable),
    .io_readEnable(MemoryMappedIO_io_readEnable),
    .io_switches(MemoryMappedIO_io_switches),
    .io_dataOut(MemoryMappedIO_io_dataOut),
    .io_leds(MemoryMappedIO_io_leds),
    .io_display_seg(MemoryMappedIO_io_display_seg),
    .io_display_an(MemoryMappedIO_io_display_an)
  );
  assign io_MEMtoWB_alu_result_MEMtoWB = io_MEMtoWB_alu_result_MEMtoWB_REG; // @[MEMStage.scala 79:43]
  assign io_MEMtoWB_register_write_enable_MEMtoWB = io_MEMtoWB_register_write_enable_MEMtoWB_REG; // @[MEMStage.scala 80:43]
  assign io_MEMtoWB_write_back_select_MEMtoWB = io_MEMtoWB_write_back_select_MEMtoWB_REG; // @[MEMStage.scala 81:43]
  assign io_MEMtoWB_rd_MEMtoWB = io_MEMtoWB_rd_MEMtoWB_REG; // @[MEMStage.scala 82:43]
  assign io_MEMtoWB_address_is_io_MEMtoWB = io_MEMtoWB_address_is_io_MEMtoWB_REG; // @[MEMStage.scala 83:43]
  assign io_MEMtoWB_opcode_MEMtoWB = io_MEMtoWB_opcode_MEMtoWB_REG; // @[MEMStage.scala 96:29]
  assign io_MEMtoWB_data_memory_read_MEMtoWB = dataMem_io_dataOut; // @[MEMStage.scala 90:39]
  assign io_MEMtoWB_io_memory_read_MEMtoWB = MemoryMappedIO_io_dataOut; // @[MEMStage.scala 70:37]
  assign io_MEMtoEX_alu_result_MEMtoEX = io_MEMtoEX_alu_result_MEMtoEX_REG; // @[MEMStage.scala 92:33]
  assign io_MEMtoEX_memory_data_MEMtoEX = dataMem_io_dataOut; // @[MEMStage.scala 93:34]
  assign io_MEMtoIFD_rd_MEMtoIFD = io_MEMtoIFD_rd_MEMtoIFD_REG; // @[MEMStage.scala 94:27]
  assign io_MEMtoIFD_opcode_MEMtoIFD = io_MEMtoIFD_opcode_MEMtoIFD_REG; // @[MEMStage.scala 95:31]
  assign io_leds = MemoryMappedIO_io_leds; // @[MEMStage.scala 72:11]
  assign io_display_seg = MemoryMappedIO_io_display_seg; // @[MEMStage.scala 74:18]
  assign io_display_an = MemoryMappedIO_io_display_an; // @[MEMStage.scala 75:17]
  assign dataMem_clock = clock;
  assign dataMem_reset = reset;
  assign dataMem_io_addr = io_EXtoMEM_alu_result_EXtoMEM[14:0]; // @[MEMStage.scala 86:19]
  assign dataMem_io_enableWrite = io_EXtoMEM_data_memory_write_enable_EXtoMEM; // @[MEMStage.scala 88:26]
  assign dataMem_io_dataIn = io_EXtoMEM_memory_write_data_EXtoMEM; // @[MEMStage.scala 87:21]
  assign dataMem_io_alu_operation_select_EXtoMEM = io_EXtoMEM_alu_operation_select_EXtoMEM; // @[MEMStage.scala 89:43]
  assign MemoryMappedIO_clock = clock;
  assign MemoryMappedIO_reset = reset;
  assign MemoryMappedIO_io_address = io_EXtoMEM_alu_result_EXtoMEM; // @[MEMStage.scala 68:29]
  assign MemoryMappedIO_io_dataIn = io_EXtoMEM_memory_write_data_EXtoMEM; // @[MEMStage.scala 67:28]
  assign MemoryMappedIO_io_writeEnable = io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[MEMStage.scala 66:33]
  assign MemoryMappedIO_io_readEnable = ~io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[MEMStage.scala 69:35]
  assign MemoryMappedIO_io_switches = io_switches; // @[MEMStage.scala 73:30]
  always @(posedge clock) begin
    io_MEMtoWB_alu_result_MEMtoWB_REG <= io_EXtoMEM_alu_result_EXtoMEM; // @[MEMStage.scala 79:53]
    io_MEMtoWB_register_write_enable_MEMtoWB_REG <= io_EXtoMEM_register_write_enable_EXtoMEM; // @[MEMStage.scala 80:53]
    io_MEMtoWB_write_back_select_MEMtoWB_REG <= io_EXtoMEM_write_back_select_EXtoMEM; // @[MEMStage.scala 81:53]
    io_MEMtoWB_rd_MEMtoWB_REG <= io_EXtoMEM_rd_EXtoMEM; // @[MEMStage.scala 82:53]
    io_MEMtoWB_address_is_io_MEMtoWB_REG <= io_EXtoMEM_address_is_io_EXtoMEM; // @[MEMStage.scala 83:53]
    io_MEMtoEX_alu_result_MEMtoEX_REG <= io_EXtoMEM_alu_result_EXtoMEM; // @[MEMStage.scala 92:43]
    io_MEMtoIFD_rd_MEMtoIFD_REG <= io_EXtoMEM_rd_EXtoMEM; // @[MEMStage.scala 94:37]
    io_MEMtoIFD_opcode_MEMtoIFD_REG <= io_EXtoMEM_opcode_EXtoMEM; // @[MEMStage.scala 95:41]
    io_MEMtoWB_opcode_MEMtoWB_REG <= io_EXtoMEM_opcode_EXtoMEM; // @[MEMStage.scala 96:39]
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
  io_MEMtoWB_address_is_io_MEMtoWB_REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  io_MEMtoEX_alu_result_MEMtoEX_REG = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  io_MEMtoIFD_rd_MEMtoIFD_REG = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  io_MEMtoIFD_opcode_MEMtoIFD_REG = _RAND_7[6:0];
  _RAND_8 = {1{`RANDOM}};
  io_MEMtoWB_opcode_MEMtoWB_REG = _RAND_8[6:0];
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
  input  [6:0]  io_MEMtoWB_opcode_MEMtoWB,
  input  [31:0] io_MEMtoWB_data_memory_read_MEMtoWB,
  input  [31:0] io_MEMtoWB_io_memory_read_MEMtoWB,
  output [31:0] io_WBtoEX_regfile_write_data_WBtoEX,
  output        io_WBtoEX_regfile_write_enable_WBtoEX,
  output [4:0]  io_WBtoEX_rd_WBtoEX,
  output [31:0] io_WBtoEX_alu_result_WBtoEX,
  output [4:0]  io_WBtoIFD_rd_WBtoIFD,
  output [6:0]  io_WBtoIFD_opcode_WBtoIFD
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
  reg [31:0] alu_result; // @[WBStage.scala 35:45]
  reg  write_back_select; // @[WBStage.scala 36:45]
  reg  address_is_io; // @[WBStage.scala 37:45]
  reg  io_WBtoEX_regfile_write_enable_WBtoEX_REG; // @[WBStage.scala 38:51]
  reg [4:0] io_WBtoEX_rd_WBtoEX_REG; // @[WBStage.scala 39:51]
  wire [31:0] _io_WBtoEX_regfile_write_data_WBtoEX_T = address_is_io ? io_MEMtoWB_io_memory_read_MEMtoWB :
    io_MEMtoWB_data_memory_read_MEMtoWB; // @[WBStage.scala 43:47]
  reg [4:0] io_WBtoIFD_rd_WBtoIFD_REG; // @[WBStage.scala 49:35]
  reg [6:0] io_WBtoIFD_opcode_WBtoIFD_REG; // @[WBStage.scala 50:39]
  assign io_WBtoEX_regfile_write_data_WBtoEX = write_back_select ? _io_WBtoEX_regfile_write_data_WBtoEX_T : alu_result; // @[WBStage.scala 42:26 43:41 45:41]
  assign io_WBtoEX_regfile_write_enable_WBtoEX = io_WBtoEX_regfile_write_enable_WBtoEX_REG; // @[WBStage.scala 38:41]
  assign io_WBtoEX_rd_WBtoEX = io_WBtoEX_rd_WBtoEX_REG; // @[WBStage.scala 39:41]
  assign io_WBtoEX_alu_result_WBtoEX = alu_result; // @[WBStage.scala 48:31]
  assign io_WBtoIFD_rd_WBtoIFD = io_WBtoIFD_rd_WBtoIFD_REG; // @[WBStage.scala 49:25]
  assign io_WBtoIFD_opcode_WBtoIFD = io_WBtoIFD_opcode_WBtoIFD_REG; // @[WBStage.scala 50:29]
  always @(posedge clock) begin
    alu_result <= io_MEMtoWB_alu_result_MEMtoWB; // @[WBStage.scala 35:45]
    write_back_select <= io_MEMtoWB_write_back_select_MEMtoWB; // @[WBStage.scala 36:45]
    address_is_io <= io_MEMtoWB_address_is_io_MEMtoWB; // @[WBStage.scala 37:45]
    io_WBtoEX_regfile_write_enable_WBtoEX_REG <= io_MEMtoWB_register_write_enable_MEMtoWB; // @[WBStage.scala 38:51]
    io_WBtoEX_rd_WBtoEX_REG <= io_MEMtoWB_rd_MEMtoWB; // @[WBStage.scala 39:51]
    io_WBtoIFD_rd_WBtoIFD_REG <= io_MEMtoWB_rd_MEMtoWB; // @[WBStage.scala 49:35]
    io_WBtoIFD_opcode_WBtoIFD_REG <= io_MEMtoWB_opcode_MEMtoWB; // @[WBStage.scala 50:39]
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
  _RAND_5 = {1{`RANDOM}};
  io_WBtoIFD_rd_WBtoIFD_REG = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  io_WBtoIFD_opcode_WBtoIFD_REG = _RAND_6[6:0];
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
  output [15:0] io_LEDs,
  output [6:0]  io_display_seg,
  output [3:0]  io_display_an,
  output        io_display_dp
);
  wire  IFD_clock; // @[ProcessorTopLevel.scala 21:19]
  wire  IFD_reset; // @[ProcessorTopLevel.scala 21:19]
  wire  IFD_io_EXtoIFD_take_branch_EXtoIFD; // @[ProcessorTopLevel.scala 21:19]
  wire [31:0] IFD_io_EXtoIFD_branch_address_EXtoIFD; // @[ProcessorTopLevel.scala 21:19]
  wire [4:0] IFD_io_EXtoIFD_rd_EXtoIFD; // @[ProcessorTopLevel.scala 21:19]
  wire [4:0] IFD_io_MEMtoIFD_rd_MEMtoIFD; // @[ProcessorTopLevel.scala 21:19]
  wire [6:0] IFD_io_MEMtoIFD_opcode_MEMtoIFD; // @[ProcessorTopLevel.scala 21:19]
  wire [4:0] IFD_io_decoded_instruction_IFDtoEX_rs1; // @[ProcessorTopLevel.scala 21:19]
  wire [4:0] IFD_io_decoded_instruction_IFDtoEX_rs2; // @[ProcessorTopLevel.scala 21:19]
  wire [4:0] IFD_io_decoded_instruction_IFDtoEX_rd; // @[ProcessorTopLevel.scala 21:19]
  wire [6:0] IFD_io_decoded_instruction_IFDtoEX_opcode; // @[ProcessorTopLevel.scala 21:19]
  wire [31:0] IFD_io_IFDtoEX_pc_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire [31:0] IFD_io_IFDtoEX_immediate_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire  IFD_io_IFDtoEX_alu_op2mux_select_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire [7:0] IFD_io_IFDtoEX_alu_operation_select_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire  IFD_io_IFDtoEX_register_write_enable_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire  IFD_io_IFDtoEX_write_back_select_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire  IFD_io_IFDtoEX_write_memory_enable_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire [2:0] IFD_io_IFDtoEX_forward_enable_rs1_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire [2:0] IFD_io_IFDtoEX_forward_enable_rs2_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire [2:0] IFD_io_IFDtoEX_forward_enable_memory_data_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire [1:0] IFD_io_IFDtoEX_forward_choose_data_IFDtoEX; // @[ProcessorTopLevel.scala 21:19]
  wire [4:0] IFD_io_WBtoIFD_rd_WBtoIFD; // @[ProcessorTopLevel.scala 21:19]
  wire [6:0] IFD_io_WBtoIFD_opcode_WBtoIFD; // @[ProcessorTopLevel.scala 21:19]
  wire  EX_clock; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_reset; // @[ProcessorTopLevel.scala 22:18]
  wire [4:0] EX_io_decoded_instruction_IFDtoEX_rs1; // @[ProcessorTopLevel.scala 22:18]
  wire [4:0] EX_io_decoded_instruction_IFDtoEX_rs2; // @[ProcessorTopLevel.scala 22:18]
  wire [4:0] EX_io_decoded_instruction_IFDtoEX_rd; // @[ProcessorTopLevel.scala 22:18]
  wire [6:0] EX_io_decoded_instruction_IFDtoEX_opcode; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_IFDtoEX_pc_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_IFDtoEX_immediate_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_IFDtoEX_alu_op2mux_select_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [7:0] EX_io_IFDtoEX_alu_operation_select_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_IFDtoEX_register_write_enable_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_IFDtoEX_write_back_select_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_IFDtoEX_write_memory_enable_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [2:0] EX_io_IFDtoEX_forward_enable_rs1_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [2:0] EX_io_IFDtoEX_forward_enable_rs2_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [2:0] EX_io_IFDtoEX_forward_enable_memory_data_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [1:0] EX_io_IFDtoEX_forward_choose_data_IFDtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_WBtoEX_regfile_write_data_WBtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_WBtoEX_regfile_write_enable_WBtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [4:0] EX_io_WBtoEX_rd_WBtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_WBtoEX_alu_result_WBtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_EXtoMEM_alu_result_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_EXtoMEM_memory_write_data_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire [4:0] EX_io_EXtoMEM_rd_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_EXtoMEM_register_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_EXtoMEM_write_back_select_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_EXtoMEM_data_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_EXtoMEM_address_is_io_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire [7:0] EX_io_EXtoMEM_alu_operation_select_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire [6:0] EX_io_EXtoMEM_opcode_EXtoMEM; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_EXtoIFD_branch_address_EXtoIFD; // @[ProcessorTopLevel.scala 22:18]
  wire  EX_io_EXtoIFD_take_branch_EXtoIFD; // @[ProcessorTopLevel.scala 22:18]
  wire [4:0] EX_io_EXtoIFD_rd_EXtoIFD; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_MEMtoEX_alu_result_MEMtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire [31:0] EX_io_MEMtoEX_memory_data_MEMtoEX; // @[ProcessorTopLevel.scala 22:18]
  wire  MEM_clock; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_reset; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_io_EXtoMEM_register_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_io_EXtoMEM_write_back_select_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire [4:0] MEM_io_EXtoMEM_rd_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_io_EXtoMEM_address_is_io_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire [31:0] MEM_io_EXtoMEM_alu_result_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire [31:0] MEM_io_EXtoMEM_memory_write_data_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_io_EXtoMEM_data_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire [7:0] MEM_io_EXtoMEM_alu_operation_select_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire [6:0] MEM_io_EXtoMEM_opcode_EXtoMEM; // @[ProcessorTopLevel.scala 23:20]
  wire [31:0] MEM_io_MEMtoWB_alu_result_MEMtoWB; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_io_MEMtoWB_register_write_enable_MEMtoWB; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_io_MEMtoWB_write_back_select_MEMtoWB; // @[ProcessorTopLevel.scala 23:20]
  wire [4:0] MEM_io_MEMtoWB_rd_MEMtoWB; // @[ProcessorTopLevel.scala 23:20]
  wire  MEM_io_MEMtoWB_address_is_io_MEMtoWB; // @[ProcessorTopLevel.scala 23:20]
  wire [6:0] MEM_io_MEMtoWB_opcode_MEMtoWB; // @[ProcessorTopLevel.scala 23:20]
  wire [31:0] MEM_io_MEMtoWB_data_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 23:20]
  wire [31:0] MEM_io_MEMtoWB_io_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 23:20]
  wire [31:0] MEM_io_MEMtoEX_alu_result_MEMtoEX; // @[ProcessorTopLevel.scala 23:20]
  wire [31:0] MEM_io_MEMtoEX_memory_data_MEMtoEX; // @[ProcessorTopLevel.scala 23:20]
  wire [4:0] MEM_io_MEMtoIFD_rd_MEMtoIFD; // @[ProcessorTopLevel.scala 23:20]
  wire [6:0] MEM_io_MEMtoIFD_opcode_MEMtoIFD; // @[ProcessorTopLevel.scala 23:20]
  wire [15:0] MEM_io_switches; // @[ProcessorTopLevel.scala 23:20]
  wire [15:0] MEM_io_leds; // @[ProcessorTopLevel.scala 23:20]
  wire [6:0] MEM_io_display_seg; // @[ProcessorTopLevel.scala 23:20]
  wire [3:0] MEM_io_display_an; // @[ProcessorTopLevel.scala 23:20]
  wire  WB_clock; // @[ProcessorTopLevel.scala 24:19]
  wire [31:0] WB_io_MEMtoWB_alu_result_MEMtoWB; // @[ProcessorTopLevel.scala 24:19]
  wire  WB_io_MEMtoWB_register_write_enable_MEMtoWB; // @[ProcessorTopLevel.scala 24:19]
  wire  WB_io_MEMtoWB_write_back_select_MEMtoWB; // @[ProcessorTopLevel.scala 24:19]
  wire [4:0] WB_io_MEMtoWB_rd_MEMtoWB; // @[ProcessorTopLevel.scala 24:19]
  wire  WB_io_MEMtoWB_address_is_io_MEMtoWB; // @[ProcessorTopLevel.scala 24:19]
  wire [6:0] WB_io_MEMtoWB_opcode_MEMtoWB; // @[ProcessorTopLevel.scala 24:19]
  wire [31:0] WB_io_MEMtoWB_data_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 24:19]
  wire [31:0] WB_io_MEMtoWB_io_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 24:19]
  wire [31:0] WB_io_WBtoEX_regfile_write_data_WBtoEX; // @[ProcessorTopLevel.scala 24:19]
  wire  WB_io_WBtoEX_regfile_write_enable_WBtoEX; // @[ProcessorTopLevel.scala 24:19]
  wire [4:0] WB_io_WBtoEX_rd_WBtoEX; // @[ProcessorTopLevel.scala 24:19]
  wire [31:0] WB_io_WBtoEX_alu_result_WBtoEX; // @[ProcessorTopLevel.scala 24:19]
  wire [4:0] WB_io_WBtoIFD_rd_WBtoIFD; // @[ProcessorTopLevel.scala 24:19]
  wire [6:0] WB_io_WBtoIFD_opcode_WBtoIFD; // @[ProcessorTopLevel.scala 24:19]
  IFDStage IFD ( // @[ProcessorTopLevel.scala 21:19]
    .clock(IFD_clock),
    .reset(IFD_reset),
    .io_EXtoIFD_take_branch_EXtoIFD(IFD_io_EXtoIFD_take_branch_EXtoIFD),
    .io_EXtoIFD_branch_address_EXtoIFD(IFD_io_EXtoIFD_branch_address_EXtoIFD),
    .io_EXtoIFD_rd_EXtoIFD(IFD_io_EXtoIFD_rd_EXtoIFD),
    .io_MEMtoIFD_rd_MEMtoIFD(IFD_io_MEMtoIFD_rd_MEMtoIFD),
    .io_MEMtoIFD_opcode_MEMtoIFD(IFD_io_MEMtoIFD_opcode_MEMtoIFD),
    .io_decoded_instruction_IFDtoEX_rs1(IFD_io_decoded_instruction_IFDtoEX_rs1),
    .io_decoded_instruction_IFDtoEX_rs2(IFD_io_decoded_instruction_IFDtoEX_rs2),
    .io_decoded_instruction_IFDtoEX_rd(IFD_io_decoded_instruction_IFDtoEX_rd),
    .io_decoded_instruction_IFDtoEX_opcode(IFD_io_decoded_instruction_IFDtoEX_opcode),
    .io_IFDtoEX_pc_IFDtoEX(IFD_io_IFDtoEX_pc_IFDtoEX),
    .io_IFDtoEX_immediate_IFDtoEX(IFD_io_IFDtoEX_immediate_IFDtoEX),
    .io_IFDtoEX_alu_op2mux_select_IFDtoEX(IFD_io_IFDtoEX_alu_op2mux_select_IFDtoEX),
    .io_IFDtoEX_alu_operation_select_IFDtoEX(IFD_io_IFDtoEX_alu_operation_select_IFDtoEX),
    .io_IFDtoEX_register_write_enable_IFDtoEX(IFD_io_IFDtoEX_register_write_enable_IFDtoEX),
    .io_IFDtoEX_write_back_select_IFDtoEX(IFD_io_IFDtoEX_write_back_select_IFDtoEX),
    .io_IFDtoEX_write_memory_enable_IFDtoEX(IFD_io_IFDtoEX_write_memory_enable_IFDtoEX),
    .io_IFDtoEX_forward_enable_rs1_IFDtoEX(IFD_io_IFDtoEX_forward_enable_rs1_IFDtoEX),
    .io_IFDtoEX_forward_enable_rs2_IFDtoEX(IFD_io_IFDtoEX_forward_enable_rs2_IFDtoEX),
    .io_IFDtoEX_forward_enable_memory_data_IFDtoEX(IFD_io_IFDtoEX_forward_enable_memory_data_IFDtoEX),
    .io_IFDtoEX_forward_choose_data_IFDtoEX(IFD_io_IFDtoEX_forward_choose_data_IFDtoEX),
    .io_WBtoIFD_rd_WBtoIFD(IFD_io_WBtoIFD_rd_WBtoIFD),
    .io_WBtoIFD_opcode_WBtoIFD(IFD_io_WBtoIFD_opcode_WBtoIFD)
  );
  EXStage EX ( // @[ProcessorTopLevel.scala 22:18]
    .clock(EX_clock),
    .reset(EX_reset),
    .io_decoded_instruction_IFDtoEX_rs1(EX_io_decoded_instruction_IFDtoEX_rs1),
    .io_decoded_instruction_IFDtoEX_rs2(EX_io_decoded_instruction_IFDtoEX_rs2),
    .io_decoded_instruction_IFDtoEX_rd(EX_io_decoded_instruction_IFDtoEX_rd),
    .io_decoded_instruction_IFDtoEX_opcode(EX_io_decoded_instruction_IFDtoEX_opcode),
    .io_IFDtoEX_pc_IFDtoEX(EX_io_IFDtoEX_pc_IFDtoEX),
    .io_IFDtoEX_immediate_IFDtoEX(EX_io_IFDtoEX_immediate_IFDtoEX),
    .io_IFDtoEX_alu_op2mux_select_IFDtoEX(EX_io_IFDtoEX_alu_op2mux_select_IFDtoEX),
    .io_IFDtoEX_alu_operation_select_IFDtoEX(EX_io_IFDtoEX_alu_operation_select_IFDtoEX),
    .io_IFDtoEX_register_write_enable_IFDtoEX(EX_io_IFDtoEX_register_write_enable_IFDtoEX),
    .io_IFDtoEX_write_back_select_IFDtoEX(EX_io_IFDtoEX_write_back_select_IFDtoEX),
    .io_IFDtoEX_write_memory_enable_IFDtoEX(EX_io_IFDtoEX_write_memory_enable_IFDtoEX),
    .io_IFDtoEX_forward_enable_rs1_IFDtoEX(EX_io_IFDtoEX_forward_enable_rs1_IFDtoEX),
    .io_IFDtoEX_forward_enable_rs2_IFDtoEX(EX_io_IFDtoEX_forward_enable_rs2_IFDtoEX),
    .io_IFDtoEX_forward_enable_memory_data_IFDtoEX(EX_io_IFDtoEX_forward_enable_memory_data_IFDtoEX),
    .io_IFDtoEX_forward_choose_data_IFDtoEX(EX_io_IFDtoEX_forward_choose_data_IFDtoEX),
    .io_WBtoEX_regfile_write_data_WBtoEX(EX_io_WBtoEX_regfile_write_data_WBtoEX),
    .io_WBtoEX_regfile_write_enable_WBtoEX(EX_io_WBtoEX_regfile_write_enable_WBtoEX),
    .io_WBtoEX_rd_WBtoEX(EX_io_WBtoEX_rd_WBtoEX),
    .io_WBtoEX_alu_result_WBtoEX(EX_io_WBtoEX_alu_result_WBtoEX),
    .io_EXtoMEM_alu_result_EXtoMEM(EX_io_EXtoMEM_alu_result_EXtoMEM),
    .io_EXtoMEM_memory_write_data_EXtoMEM(EX_io_EXtoMEM_memory_write_data_EXtoMEM),
    .io_EXtoMEM_rd_EXtoMEM(EX_io_EXtoMEM_rd_EXtoMEM),
    .io_EXtoMEM_register_write_enable_EXtoMEM(EX_io_EXtoMEM_register_write_enable_EXtoMEM),
    .io_EXtoMEM_write_back_select_EXtoMEM(EX_io_EXtoMEM_write_back_select_EXtoMEM),
    .io_EXtoMEM_data_memory_write_enable_EXtoMEM(EX_io_EXtoMEM_data_memory_write_enable_EXtoMEM),
    .io_EXtoMEM_io_memory_write_enable_EXtoMEM(EX_io_EXtoMEM_io_memory_write_enable_EXtoMEM),
    .io_EXtoMEM_address_is_io_EXtoMEM(EX_io_EXtoMEM_address_is_io_EXtoMEM),
    .io_EXtoMEM_alu_operation_select_EXtoMEM(EX_io_EXtoMEM_alu_operation_select_EXtoMEM),
    .io_EXtoMEM_opcode_EXtoMEM(EX_io_EXtoMEM_opcode_EXtoMEM),
    .io_EXtoIFD_branch_address_EXtoIFD(EX_io_EXtoIFD_branch_address_EXtoIFD),
    .io_EXtoIFD_take_branch_EXtoIFD(EX_io_EXtoIFD_take_branch_EXtoIFD),
    .io_EXtoIFD_rd_EXtoIFD(EX_io_EXtoIFD_rd_EXtoIFD),
    .io_MEMtoEX_alu_result_MEMtoEX(EX_io_MEMtoEX_alu_result_MEMtoEX),
    .io_MEMtoEX_memory_data_MEMtoEX(EX_io_MEMtoEX_memory_data_MEMtoEX)
  );
  MEMStage MEM ( // @[ProcessorTopLevel.scala 23:20]
    .clock(MEM_clock),
    .reset(MEM_reset),
    .io_EXtoMEM_register_write_enable_EXtoMEM(MEM_io_EXtoMEM_register_write_enable_EXtoMEM),
    .io_EXtoMEM_write_back_select_EXtoMEM(MEM_io_EXtoMEM_write_back_select_EXtoMEM),
    .io_EXtoMEM_rd_EXtoMEM(MEM_io_EXtoMEM_rd_EXtoMEM),
    .io_EXtoMEM_address_is_io_EXtoMEM(MEM_io_EXtoMEM_address_is_io_EXtoMEM),
    .io_EXtoMEM_alu_result_EXtoMEM(MEM_io_EXtoMEM_alu_result_EXtoMEM),
    .io_EXtoMEM_memory_write_data_EXtoMEM(MEM_io_EXtoMEM_memory_write_data_EXtoMEM),
    .io_EXtoMEM_data_memory_write_enable_EXtoMEM(MEM_io_EXtoMEM_data_memory_write_enable_EXtoMEM),
    .io_EXtoMEM_alu_operation_select_EXtoMEM(MEM_io_EXtoMEM_alu_operation_select_EXtoMEM),
    .io_EXtoMEM_io_memory_write_enable_EXtoMEM(MEM_io_EXtoMEM_io_memory_write_enable_EXtoMEM),
    .io_EXtoMEM_opcode_EXtoMEM(MEM_io_EXtoMEM_opcode_EXtoMEM),
    .io_MEMtoWB_alu_result_MEMtoWB(MEM_io_MEMtoWB_alu_result_MEMtoWB),
    .io_MEMtoWB_register_write_enable_MEMtoWB(MEM_io_MEMtoWB_register_write_enable_MEMtoWB),
    .io_MEMtoWB_write_back_select_MEMtoWB(MEM_io_MEMtoWB_write_back_select_MEMtoWB),
    .io_MEMtoWB_rd_MEMtoWB(MEM_io_MEMtoWB_rd_MEMtoWB),
    .io_MEMtoWB_address_is_io_MEMtoWB(MEM_io_MEMtoWB_address_is_io_MEMtoWB),
    .io_MEMtoWB_opcode_MEMtoWB(MEM_io_MEMtoWB_opcode_MEMtoWB),
    .io_MEMtoWB_data_memory_read_MEMtoWB(MEM_io_MEMtoWB_data_memory_read_MEMtoWB),
    .io_MEMtoWB_io_memory_read_MEMtoWB(MEM_io_MEMtoWB_io_memory_read_MEMtoWB),
    .io_MEMtoEX_alu_result_MEMtoEX(MEM_io_MEMtoEX_alu_result_MEMtoEX),
    .io_MEMtoEX_memory_data_MEMtoEX(MEM_io_MEMtoEX_memory_data_MEMtoEX),
    .io_MEMtoIFD_rd_MEMtoIFD(MEM_io_MEMtoIFD_rd_MEMtoIFD),
    .io_MEMtoIFD_opcode_MEMtoIFD(MEM_io_MEMtoIFD_opcode_MEMtoIFD),
    .io_switches(MEM_io_switches),
    .io_leds(MEM_io_leds),
    .io_display_seg(MEM_io_display_seg),
    .io_display_an(MEM_io_display_an)
  );
  WBStage WB ( // @[ProcessorTopLevel.scala 24:19]
    .clock(WB_clock),
    .io_MEMtoWB_alu_result_MEMtoWB(WB_io_MEMtoWB_alu_result_MEMtoWB),
    .io_MEMtoWB_register_write_enable_MEMtoWB(WB_io_MEMtoWB_register_write_enable_MEMtoWB),
    .io_MEMtoWB_write_back_select_MEMtoWB(WB_io_MEMtoWB_write_back_select_MEMtoWB),
    .io_MEMtoWB_rd_MEMtoWB(WB_io_MEMtoWB_rd_MEMtoWB),
    .io_MEMtoWB_address_is_io_MEMtoWB(WB_io_MEMtoWB_address_is_io_MEMtoWB),
    .io_MEMtoWB_opcode_MEMtoWB(WB_io_MEMtoWB_opcode_MEMtoWB),
    .io_MEMtoWB_data_memory_read_MEMtoWB(WB_io_MEMtoWB_data_memory_read_MEMtoWB),
    .io_MEMtoWB_io_memory_read_MEMtoWB(WB_io_MEMtoWB_io_memory_read_MEMtoWB),
    .io_WBtoEX_regfile_write_data_WBtoEX(WB_io_WBtoEX_regfile_write_data_WBtoEX),
    .io_WBtoEX_regfile_write_enable_WBtoEX(WB_io_WBtoEX_regfile_write_enable_WBtoEX),
    .io_WBtoEX_rd_WBtoEX(WB_io_WBtoEX_rd_WBtoEX),
    .io_WBtoEX_alu_result_WBtoEX(WB_io_WBtoEX_alu_result_WBtoEX),
    .io_WBtoIFD_rd_WBtoIFD(WB_io_WBtoIFD_rd_WBtoIFD),
    .io_WBtoIFD_opcode_WBtoIFD(WB_io_WBtoIFD_opcode_WBtoIFD)
  );
  assign io_LEDs = MEM_io_leds; // @[ProcessorTopLevel.scala 38:11]
  assign io_display_seg = MEM_io_display_seg; // @[ProcessorTopLevel.scala 40:18]
  assign io_display_an = MEM_io_display_an; // @[ProcessorTopLevel.scala 41:17]
  assign io_display_dp = 1'h1; // @[ProcessorTopLevel.scala 42:17]
  assign IFD_clock = clock;
  assign IFD_reset = reset;
  assign IFD_io_EXtoIFD_take_branch_EXtoIFD = EX_io_EXtoIFD_take_branch_EXtoIFD; // @[ProcessorTopLevel.scala 29:18]
  assign IFD_io_EXtoIFD_branch_address_EXtoIFD = EX_io_EXtoIFD_branch_address_EXtoIFD; // @[ProcessorTopLevel.scala 29:18]
  assign IFD_io_EXtoIFD_rd_EXtoIFD = EX_io_EXtoIFD_rd_EXtoIFD; // @[ProcessorTopLevel.scala 29:18]
  assign IFD_io_MEMtoIFD_rd_MEMtoIFD = MEM_io_MEMtoIFD_rd_MEMtoIFD; // @[ProcessorTopLevel.scala 34:19]
  assign IFD_io_MEMtoIFD_opcode_MEMtoIFD = MEM_io_MEMtoIFD_opcode_MEMtoIFD; // @[ProcessorTopLevel.scala 34:19]
  assign IFD_io_WBtoIFD_rd_WBtoIFD = WB_io_WBtoIFD_rd_WBtoIFD; // @[ProcessorTopLevel.scala 35:18]
  assign IFD_io_WBtoIFD_opcode_WBtoIFD = WB_io_WBtoIFD_opcode_WBtoIFD; // @[ProcessorTopLevel.scala 35:18]
  assign EX_clock = clock;
  assign EX_reset = reset;
  assign EX_io_decoded_instruction_IFDtoEX_rs1 = IFD_io_decoded_instruction_IFDtoEX_rs1; // @[ProcessorTopLevel.scala 28:38]
  assign EX_io_decoded_instruction_IFDtoEX_rs2 = IFD_io_decoded_instruction_IFDtoEX_rs2; // @[ProcessorTopLevel.scala 28:38]
  assign EX_io_decoded_instruction_IFDtoEX_rd = IFD_io_decoded_instruction_IFDtoEX_rd; // @[ProcessorTopLevel.scala 28:38]
  assign EX_io_decoded_instruction_IFDtoEX_opcode = IFD_io_decoded_instruction_IFDtoEX_opcode; // @[ProcessorTopLevel.scala 28:38]
  assign EX_io_IFDtoEX_pc_IFDtoEX = IFD_io_IFDtoEX_pc_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_immediate_IFDtoEX = IFD_io_IFDtoEX_immediate_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_alu_op2mux_select_IFDtoEX = IFD_io_IFDtoEX_alu_op2mux_select_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_alu_operation_select_IFDtoEX = IFD_io_IFDtoEX_alu_operation_select_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_register_write_enable_IFDtoEX = IFD_io_IFDtoEX_register_write_enable_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_write_back_select_IFDtoEX = IFD_io_IFDtoEX_write_back_select_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_write_memory_enable_IFDtoEX = IFD_io_IFDtoEX_write_memory_enable_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_forward_enable_rs1_IFDtoEX = IFD_io_IFDtoEX_forward_enable_rs1_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_forward_enable_rs2_IFDtoEX = IFD_io_IFDtoEX_forward_enable_rs2_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_forward_enable_memory_data_IFDtoEX = IFD_io_IFDtoEX_forward_enable_memory_data_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_IFDtoEX_forward_choose_data_IFDtoEX = IFD_io_IFDtoEX_forward_choose_data_IFDtoEX; // @[ProcessorTopLevel.scala 27:18]
  assign EX_io_WBtoEX_regfile_write_data_WBtoEX = WB_io_WBtoEX_regfile_write_data_WBtoEX; // @[ProcessorTopLevel.scala 31:16]
  assign EX_io_WBtoEX_regfile_write_enable_WBtoEX = WB_io_WBtoEX_regfile_write_enable_WBtoEX; // @[ProcessorTopLevel.scala 31:16]
  assign EX_io_WBtoEX_rd_WBtoEX = WB_io_WBtoEX_rd_WBtoEX; // @[ProcessorTopLevel.scala 31:16]
  assign EX_io_WBtoEX_alu_result_WBtoEX = WB_io_WBtoEX_alu_result_WBtoEX; // @[ProcessorTopLevel.scala 31:16]
  assign EX_io_MEMtoEX_alu_result_MEMtoEX = MEM_io_MEMtoEX_alu_result_MEMtoEX; // @[ProcessorTopLevel.scala 33:17]
  assign EX_io_MEMtoEX_memory_data_MEMtoEX = MEM_io_MEMtoEX_memory_data_MEMtoEX; // @[ProcessorTopLevel.scala 33:17]
  assign MEM_clock = clock;
  assign MEM_reset = reset;
  assign MEM_io_EXtoMEM_register_write_enable_EXtoMEM = EX_io_EXtoMEM_register_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_write_back_select_EXtoMEM = EX_io_EXtoMEM_write_back_select_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_rd_EXtoMEM = EX_io_EXtoMEM_rd_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_address_is_io_EXtoMEM = EX_io_EXtoMEM_address_is_io_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_alu_result_EXtoMEM = EX_io_EXtoMEM_alu_result_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_memory_write_data_EXtoMEM = EX_io_EXtoMEM_memory_write_data_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_data_memory_write_enable_EXtoMEM = EX_io_EXtoMEM_data_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_alu_operation_select_EXtoMEM = EX_io_EXtoMEM_alu_operation_select_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_io_memory_write_enable_EXtoMEM = EX_io_EXtoMEM_io_memory_write_enable_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_EXtoMEM_opcode_EXtoMEM = EX_io_EXtoMEM_opcode_EXtoMEM; // @[ProcessorTopLevel.scala 30:17]
  assign MEM_io_switches = io_sw; // @[ProcessorTopLevel.scala 39:19]
  assign WB_clock = clock;
  assign WB_io_MEMtoWB_alu_result_MEMtoWB = MEM_io_MEMtoWB_alu_result_MEMtoWB; // @[ProcessorTopLevel.scala 32:18]
  assign WB_io_MEMtoWB_register_write_enable_MEMtoWB = MEM_io_MEMtoWB_register_write_enable_MEMtoWB; // @[ProcessorTopLevel.scala 32:18]
  assign WB_io_MEMtoWB_write_back_select_MEMtoWB = MEM_io_MEMtoWB_write_back_select_MEMtoWB; // @[ProcessorTopLevel.scala 32:18]
  assign WB_io_MEMtoWB_rd_MEMtoWB = MEM_io_MEMtoWB_rd_MEMtoWB; // @[ProcessorTopLevel.scala 32:18]
  assign WB_io_MEMtoWB_address_is_io_MEMtoWB = MEM_io_MEMtoWB_address_is_io_MEMtoWB; // @[ProcessorTopLevel.scala 32:18]
  assign WB_io_MEMtoWB_opcode_MEMtoWB = MEM_io_MEMtoWB_opcode_MEMtoWB; // @[ProcessorTopLevel.scala 32:18]
  assign WB_io_MEMtoWB_data_memory_read_MEMtoWB = MEM_io_MEMtoWB_data_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 32:18]
  assign WB_io_MEMtoWB_io_memory_read_MEMtoWB = MEM_io_MEMtoWB_io_memory_read_MEMtoWB; // @[ProcessorTopLevel.scala 32:18]
endmodule
