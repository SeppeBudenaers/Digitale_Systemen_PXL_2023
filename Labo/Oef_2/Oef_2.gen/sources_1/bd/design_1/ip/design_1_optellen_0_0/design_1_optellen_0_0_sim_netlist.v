// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Feb 16 10:20:54 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/02_PXL/01_Digitale_Systemen/Labo/Oef_2/Oef_2.gen/sources_1/bd/design_1/ip/design_1_optellen_0_0/design_1_optellen_0_0_sim_netlist.v
// Design      : design_1_optellen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_optellen_0_0,optellen,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "optellen,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_optellen_0_0
   (Getal_1,
    Getal_2,
    Resultaat);
  input [3:0]Getal_1;
  input [3:0]Getal_2;
  output [3:0]Resultaat;

  wire [3:0]Getal_1;
  wire [3:0]Getal_2;
  wire [3:0]Resultaat;

  design_1_optellen_0_0_optellen U0
       (.Getal_1(Getal_1),
        .Getal_2(Getal_2),
        .Resultaat(Resultaat));
endmodule

(* ORIG_REF_NAME = "optellen" *) 
module design_1_optellen_0_0_optellen
   (Resultaat,
    Getal_1,
    Getal_2);
  output [3:0]Resultaat;
  input [3:0]Getal_1;
  input [3:0]Getal_2;

  wire [3:0]Getal_1;
  wire [3:0]Getal_2;
  wire [3:0]Resultaat;
  wire \Resultaat[3]_INST_0_i_1_n_0 ;

  LUT2 #(
    .INIT(4'h6)) 
    \Resultaat[0]_INST_0 
       (.I0(Getal_1[0]),
        .I1(Getal_2[0]),
        .O(Resultaat[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Resultaat[1]_INST_0 
       (.I0(Getal_1[0]),
        .I1(Getal_2[0]),
        .I2(Getal_2[1]),
        .I3(Getal_1[1]),
        .O(Resultaat[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \Resultaat[2]_INST_0 
       (.I0(Getal_2[0]),
        .I1(Getal_1[0]),
        .I2(Getal_1[1]),
        .I3(Getal_2[1]),
        .I4(Getal_2[2]),
        .I5(Getal_1[2]),
        .O(Resultaat[2]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \Resultaat[3]_INST_0 
       (.I0(\Resultaat[3]_INST_0_i_1_n_0 ),
        .I1(Getal_1[2]),
        .I2(Getal_2[2]),
        .I3(Getal_2[3]),
        .I4(Getal_1[3]),
        .O(Resultaat[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \Resultaat[3]_INST_0_i_1 
       (.I0(Getal_2[1]),
        .I1(Getal_1[1]),
        .I2(Getal_1[0]),
        .I3(Getal_2[0]),
        .O(\Resultaat[3]_INST_0_i_1_n_0 ));
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
