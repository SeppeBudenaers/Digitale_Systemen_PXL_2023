// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Mar 14 12:12:50 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/02_PXL/01_Digitale_Systemen/Labo/Labo_3_oef_1/Labo_3_oef_1.gen/sources_1/bd/design_1/ip/design_1_statemachine_0_0/design_1_statemachine_0_0_sim_netlist.v
// Design      : design_1_statemachine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_statemachine_0_0,statemachine,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "statemachine,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_statemachine_0_0
   (X1,
    X2,
    CLK,
    Z,
    case_out);
  input X1;
  input X2;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK_0, INSERT_VIP 0" *) input CLK;
  output Z;
  output [1:0]case_out;

  wire CLK;
  wire X1;
  wire X2;
  wire Z;
  wire [1:0]case_out;

  design_1_statemachine_0_0_statemachine U0
       (.CLK(CLK),
        .X1(X1),
        .X2(X2),
        .Z(Z),
        .case_out(case_out));
endmodule

(* ORIG_REF_NAME = "statemachine" *) 
module design_1_statemachine_0_0_statemachine
   (Z,
    case_out,
    X2,
    CLK,
    X1);
  output Z;
  output [1:0]case_out;
  input X2;
  input CLK;
  input X1;

  wire CLK;
  wire \FSM_onehot_NS_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_NS_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_NS_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_NS_reg_n_0_[0] ;
  wire \FSM_onehot_NS_reg_n_0_[1] ;
  wire \FSM_onehot_NS_reg_n_0_[2] ;
  wire \FSM_onehot_PS_reg_n_0_[0] ;
  wire \FSM_onehot_PS_reg_n_0_[1] ;
  wire \FSM_onehot_PS_reg_n_0_[2] ;
  wire NS;
  wire X1;
  wire X2;
  wire Z;
  wire Z_reg_i_1_n_0;
  wire [1:0]case_out;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_NS_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NS_reg[0]_i_1_n_0 ),
        .G(NS),
        .GE(1'b1),
        .Q(\FSM_onehot_NS_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0C0CFFAE)) 
    \FSM_onehot_NS_reg[0]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[1] ),
        .I1(\FSM_onehot_PS_reg_n_0_[0] ),
        .I2(X1),
        .I3(\FSM_onehot_PS_reg_n_0_[2] ),
        .I4(X2),
        .O(\FSM_onehot_NS_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_NS_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NS_reg[1]_i_1_n_0 ),
        .G(NS),
        .GE(1'b1),
        .Q(\FSM_onehot_NS_reg_n_0_[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_NS_reg[1]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[0] ),
        .I1(X1),
        .O(\FSM_onehot_NS_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_NS_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_NS_reg[2]_i_1_n_0 ),
        .G(NS),
        .GE(1'b1),
        .Q(\FSM_onehot_NS_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_NS_reg[2]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[1] ),
        .I1(X2),
        .I2(\FSM_onehot_PS_reg_n_0_[2] ),
        .O(\FSM_onehot_NS_reg[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "c:010,a:001,b:100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_PS_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NS_reg_n_0_[0] ),
        .Q(\FSM_onehot_PS_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:010,a:001,b:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NS_reg_n_0_[1] ),
        .Q(\FSM_onehot_PS_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "c:010,a:001,b:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_NS_reg_n_0_[2] ),
        .Q(\FSM_onehot_PS_reg_n_0_[2] ),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    Z_reg
       (.CLR(1'b0),
        .D(Z_reg_i_1_n_0),
        .G(NS),
        .GE(1'b1),
        .Q(Z));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    Z_reg_i_1
       (.I0(\FSM_onehot_PS_reg_n_0_[2] ),
        .I1(\FSM_onehot_PS_reg_n_0_[1] ),
        .I2(X2),
        .O(Z_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    Z_reg_i_2
       (.I0(\FSM_onehot_PS_reg_n_0_[1] ),
        .I1(\FSM_onehot_PS_reg_n_0_[0] ),
        .I2(\FSM_onehot_PS_reg_n_0_[2] ),
        .O(NS));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \case_out[0]_INST_0 
       (.I0(X1),
        .I1(\FSM_onehot_PS_reg_n_0_[0] ),
        .I2(\FSM_onehot_PS_reg_n_0_[1] ),
        .I3(\FSM_onehot_PS_reg_n_0_[2] ),
        .I4(X2),
        .O(case_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \case_out[1]_INST_0 
       (.I0(\FSM_onehot_PS_reg_n_0_[2] ),
        .I1(\FSM_onehot_PS_reg_n_0_[0] ),
        .I2(X1),
        .I3(\FSM_onehot_PS_reg_n_0_[1] ),
        .O(case_out[1]));
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
