// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Feb 16 10:55:09 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/02_PXL/01_Digitale_Systemen/Labo/Labo_week_1_Oef_1/Labo_week_1_Oef_1.gen/sources_1/bd/design_1/ip/design_1_boolean_sevensegment_0_0/design_1_boolean_sevensegment_0_0_stub.v
// Design      : design_1_boolean_sevensegment_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "boolean_sevensegment,Vivado 2022.1" *)
module design_1_boolean_sevensegment_0_0(ingang, uitgang)
/* synthesis syn_black_box black_box_pad_pin="ingang[3:0],uitgang[6:0]" */;
  input [3:0]ingang;
  output [6:0]uitgang;
endmodule