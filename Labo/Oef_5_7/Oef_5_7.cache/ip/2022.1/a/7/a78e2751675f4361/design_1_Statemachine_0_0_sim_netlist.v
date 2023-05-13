// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Mar 14 13:53:20 2023
// Host        : DESKTOP-55K0DUP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Statemachine_0_0_sim_netlist.v
// Design      : design_1_Statemachine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Statemachine
   (State_out,
    Z_out,
    CLK,
    X);
  output [2:0]State_out;
  output [0:0]Z_out;
  input CLK;
  input X;

  wire CLK;
  wire \FSM_onehot_PS[0]_i_1_n_0 ;
  wire \FSM_onehot_PS[1]_i_1_n_0 ;
  wire \FSM_onehot_PS[2]_i_1_n_0 ;
  wire \FSM_onehot_PS[3]_i_1_n_0 ;
  wire \FSM_onehot_PS[4]_i_1_n_0 ;
  wire \FSM_onehot_PS[5]_i_1_n_0 ;
  wire \FSM_onehot_PS[6]_i_1_n_0 ;
  wire \FSM_onehot_PS[7]_i_1_n_0 ;
  wire \FSM_onehot_PS_reg_n_0_[0] ;
  wire \FSM_onehot_PS_reg_n_0_[1] ;
  wire \FSM_onehot_PS_reg_n_0_[2] ;
  wire \FSM_onehot_PS_reg_n_0_[3] ;
  wire \FSM_onehot_PS_reg_n_0_[4] ;
  wire \FSM_onehot_PS_reg_n_0_[5] ;
  wire \FSM_onehot_PS_reg_n_0_[6] ;
  wire \FSM_onehot_PS_reg_n_0_[7] ;
  wire [2:0]State_out;
  wire X;
  wire [0:0]Z_out;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE0E)) 
    \FSM_onehot_PS[0]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[4] ),
        .I1(\FSM_onehot_PS_reg_n_0_[0] ),
        .I2(X),
        .I3(\FSM_onehot_PS_reg_n_0_[7] ),
        .O(\FSM_onehot_PS[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_PS[1]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[0] ),
        .I1(X),
        .I2(\FSM_onehot_PS_reg_n_0_[1] ),
        .O(\FSM_onehot_PS[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_PS[2]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[1] ),
        .I1(X),
        .I2(\FSM_onehot_PS_reg_n_0_[2] ),
        .O(\FSM_onehot_PS[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_PS[3]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[2] ),
        .I1(X),
        .I2(\FSM_onehot_PS_reg_n_0_[3] ),
        .O(\FSM_onehot_PS[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_PS[4]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[3] ),
        .I1(X),
        .O(\FSM_onehot_PS[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_PS[5]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[4] ),
        .I1(X),
        .I2(\FSM_onehot_PS_reg_n_0_[5] ),
        .O(\FSM_onehot_PS[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_PS[6]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[5] ),
        .I1(X),
        .I2(\FSM_onehot_PS_reg_n_0_[6] ),
        .O(\FSM_onehot_PS[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_PS[7]_i_1 
       (.I0(\FSM_onehot_PS_reg_n_0_[6] ),
        .I1(X),
        .I2(\FSM_onehot_PS_reg_n_0_[7] ),
        .O(\FSM_onehot_PS[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_PS_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_PS[0]_i_1_n_0 ),
        .Q(\FSM_onehot_PS_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_PS[1]_i_1_n_0 ),
        .Q(\FSM_onehot_PS_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_PS[2]_i_1_n_0 ),
        .Q(\FSM_onehot_PS_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_PS[3]_i_1_n_0 ),
        .Q(\FSM_onehot_PS_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_PS[4]_i_1_n_0 ),
        .Q(\FSM_onehot_PS_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_PS[5]_i_1_n_0 ),
        .Q(\FSM_onehot_PS_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_PS[6]_i_1_n_0 ),
        .Q(\FSM_onehot_PS_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:00000010,iSTATE0:00000100,iSTATE1:00010000,iSTATE2:00001000,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00000001,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_PS_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_PS[7]_i_1_n_0 ),
        .Q(\FSM_onehot_PS_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \State_out[0]_INST_0 
       (.I0(\FSM_onehot_PS_reg_n_0_[7] ),
        .I1(\FSM_onehot_PS_reg_n_0_[5] ),
        .I2(\FSM_onehot_PS_reg_n_0_[1] ),
        .I3(\FSM_onehot_PS_reg_n_0_[3] ),
        .O(State_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \State_out[1]_INST_0 
       (.I0(\FSM_onehot_PS_reg_n_0_[7] ),
        .I1(\FSM_onehot_PS_reg_n_0_[6] ),
        .I2(\FSM_onehot_PS_reg_n_0_[2] ),
        .I3(\FSM_onehot_PS_reg_n_0_[3] ),
        .O(State_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \State_out[2]_INST_0 
       (.I0(\FSM_onehot_PS_reg_n_0_[7] ),
        .I1(\FSM_onehot_PS_reg_n_0_[6] ),
        .I2(\FSM_onehot_PS_reg_n_0_[4] ),
        .I3(\FSM_onehot_PS_reg_n_0_[5] ),
        .O(State_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Z_out__0
       (.I0(\FSM_onehot_PS_reg_n_0_[7] ),
        .I1(\FSM_onehot_PS_reg_n_0_[6] ),
        .I2(\FSM_onehot_PS_reg_n_0_[3] ),
        .I3(\FSM_onehot_PS_reg_n_0_[5] ),
        .O(Z_out));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Statemachine_0_0,Statemachine,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Statemachine,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (X,
    CLK,
    Z_out,
    State_out);
  input X;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_in1_0, INSERT_VIP 0" *) input CLK;
  output [1:0]Z_out;
  output [2:0]State_out;

  wire CLK;
  wire [1:0]\^State_out ;
  wire X;
  wire [1:0]Z_out;

  assign State_out[2] = Z_out[0];
  assign State_out[1:0] = \^State_out [1:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Statemachine U0
       (.CLK(CLK),
        .State_out({Z_out[0],\^State_out }),
        .X(X),
        .Z_out(Z_out[1]));
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
