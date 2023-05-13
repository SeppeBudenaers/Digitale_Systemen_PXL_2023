// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar 16 09:50:17 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/02_PXL/01_Digitale_Systemen/Labo/Oef_5_12/Oef_5_12.gen/sources_1/bd/design_1/ip/design_1_Neopixel_0_0/design_1_Neopixel_0_0_stub.v
// Design      : design_1_Neopixel_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Neopixel,Vivado 2022.1" *)
module design_1_Neopixel_0_0(clk, value, d_out)
/* synthesis syn_black_box black_box_pad_pin="clk,value[23:0],d_out" */;
  input clk;
  input [23:0]value;
  output d_out;
endmodule
