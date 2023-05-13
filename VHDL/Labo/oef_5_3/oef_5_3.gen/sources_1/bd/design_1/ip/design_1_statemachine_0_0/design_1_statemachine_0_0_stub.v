// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Mar 14 12:12:50 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/02_PXL/01_Digitale_Systemen/Labo/Labo_3_oef_1/Labo_3_oef_1.gen/sources_1/bd/design_1/ip/design_1_statemachine_0_0/design_1_statemachine_0_0_stub.v
// Design      : design_1_statemachine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "statemachine,Vivado 2022.1" *)
module design_1_statemachine_0_0(X1, X2, CLK, Z, case_out)
/* synthesis syn_black_box black_box_pad_pin="X1,X2,CLK,Z,case_out[1:0]" */;
  input X1;
  input X2;
  input CLK;
  output Z;
  output [1:0]case_out;
endmodule
