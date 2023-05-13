// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Feb 16 10:20:54 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/02_PXL/01_Digitale_Systemen/Labo/Oef_2/Oef_2.gen/sources_1/bd/design_1/ip/design_1_optellen_0_0/design_1_optellen_0_0_stub.v
// Design      : design_1_optellen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "optellen,Vivado 2022.1" *)
module design_1_optellen_0_0(Getal_1, Getal_2, Resultaat)
/* synthesis syn_black_box black_box_pad_pin="Getal_1[3:0],Getal_2[3:0],Resultaat[3:0]" */;
  input [3:0]Getal_1;
  input [3:0]Getal_2;
  output [3:0]Resultaat;
endmodule
