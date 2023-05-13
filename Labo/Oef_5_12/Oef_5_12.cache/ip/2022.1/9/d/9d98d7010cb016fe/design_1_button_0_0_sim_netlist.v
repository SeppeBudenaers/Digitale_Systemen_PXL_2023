// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar 16 09:59:38 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_button_0_0_sim_netlist.v
// Design      : design_1_button_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button
   (Data_out,
    G,
    B,
    R);
  output [1:0]Data_out;
  input G;
  input B;
  input R;

  wire B;
  wire [1:0]Data_out;
  wire G;
  wire R;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Data_out[0]_INST_0 
       (.I0(G),
        .I1(B),
        .I2(R),
        .O(Data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Data_out[16]_INST_0 
       (.I0(G),
        .I1(R),
        .O(Data_out[1]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_button_0_0,button,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "button,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (R,
    G,
    B,
    Data_out);
  input R;
  input G;
  input B;
  output [23:0]Data_out;

  wire B;
  wire [23:7]\^Data_out ;
  wire G;
  wire R;

  assign Data_out[23] = \^Data_out [23];
  assign Data_out[22] = \^Data_out [23];
  assign Data_out[21] = \^Data_out [23];
  assign Data_out[20] = \^Data_out [23];
  assign Data_out[19] = \^Data_out [23];
  assign Data_out[18] = \^Data_out [23];
  assign Data_out[17] = \^Data_out [23];
  assign Data_out[16] = \^Data_out [23];
  assign Data_out[15] = R;
  assign Data_out[14] = R;
  assign Data_out[13] = R;
  assign Data_out[12] = R;
  assign Data_out[11] = R;
  assign Data_out[10] = R;
  assign Data_out[9] = R;
  assign Data_out[8] = R;
  assign Data_out[7] = \^Data_out [7];
  assign Data_out[6] = \^Data_out [7];
  assign Data_out[5] = \^Data_out [7];
  assign Data_out[4] = \^Data_out [7];
  assign Data_out[3] = \^Data_out [7];
  assign Data_out[2] = \^Data_out [7];
  assign Data_out[1] = \^Data_out [7];
  assign Data_out[0] = \^Data_out [7];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button U0
       (.B(B),
        .Data_out({\^Data_out [23],\^Data_out [7]}),
        .G(G),
        .R(R));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
