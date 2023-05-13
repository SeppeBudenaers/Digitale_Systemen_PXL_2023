// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Mar 14 13:53:21 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/02_PXL/01_Digitale_Systemen/Labo/Oef_5_7/Oef_5_7.gen/sources_1/bd/design_1/ip/design_1_Statemachine_0_0/design_1_Statemachine_0_0_stub.v
// Design      : design_1_Statemachine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Statemachine,Vivado 2022.1" *)
module design_1_Statemachine_0_0(X, CLK, Z_out, State_out)
/* synthesis syn_black_box black_box_pad_pin="X,CLK,Z_out[1:0],State_out[2:0]" */;
  input X;
  input CLK;
  output [1:0]Z_out;
  output [2:0]State_out;
endmodule
