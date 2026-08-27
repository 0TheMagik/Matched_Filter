// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Aug 27 13:34:31 2026
// Host        : OCPCBench running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/VsCode_Files/Matched_Filter/Design/design_2/ip/design_2_mem_interface_1_0/design_2_mem_interface_1_0_sim_netlist.v
// Design      : design_2_mem_interface_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_mem_interface_1_0,mem_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mem_interface,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_2_mem_interface_1_0
   (clk,
    addr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_100MHz, INSERT_VIP 0" *) input clk;
  output [10:0]addr;

  wire [10:0]addr;
  wire clk;

  design_2_mem_interface_1_0_mem_interface inst
       (.addr(addr),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "mem_interface" *) 
module design_2_mem_interface_1_0_mem_interface
   (addr,
    clk);
  output [10:0]addr;
  input clk;

  wire [10:0]addr;
  wire clk;
  wire [10:0]plusOp;
  wire \read_addr[10]_i_3_n_0 ;
  wire \read_addr[10]_i_4_n_0 ;
  wire sel;

  LUT1 #(
    .INIT(2'h1)) 
    \read_addr[0]_i_1 
       (.I0(addr[0]),
        .O(plusOp[0]));
  LUT3 #(
    .INIT(8'h1F)) 
    \read_addr[10]_i_1 
       (.I0(addr[4]),
        .I1(addr[5]),
        .I2(\read_addr[10]_i_3_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_addr[10]_i_2 
       (.I0(addr[8]),
        .I1(addr[6]),
        .I2(\read_addr[10]_i_4_n_0 ),
        .I3(addr[7]),
        .I4(addr[9]),
        .I5(addr[10]),
        .O(plusOp[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \read_addr[10]_i_3 
       (.I0(addr[6]),
        .I1(addr[9]),
        .I2(addr[10]),
        .I3(addr[7]),
        .I4(addr[8]),
        .O(\read_addr[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \read_addr[10]_i_4 
       (.I0(addr[5]),
        .I1(addr[3]),
        .I2(addr[1]),
        .I3(addr[0]),
        .I4(addr[2]),
        .I5(addr[4]),
        .O(\read_addr[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_addr[1]_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_addr[2]_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(addr[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_addr[3]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(addr[2]),
        .I3(addr[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_addr[4]_i_1 
       (.I0(addr[2]),
        .I1(addr[0]),
        .I2(addr[1]),
        .I3(addr[3]),
        .I4(addr[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_addr[5]_i_1 
       (.I0(addr[3]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[2]),
        .I4(addr[4]),
        .I5(addr[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_addr[6]_i_1 
       (.I0(\read_addr[10]_i_4_n_0 ),
        .I1(addr[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_addr[7]_i_1 
       (.I0(\read_addr[10]_i_4_n_0 ),
        .I1(addr[6]),
        .I2(addr[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_addr[8]_i_1 
       (.I0(addr[6]),
        .I1(\read_addr[10]_i_4_n_0 ),
        .I2(addr[7]),
        .I3(addr[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_addr[9]_i_1 
       (.I0(addr[7]),
        .I1(\read_addr[10]_i_4_n_0 ),
        .I2(addr[6]),
        .I3(addr[8]),
        .I4(addr[9]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[0]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[10]),
        .Q(addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[1]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[2]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[3]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[4]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[5]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[6]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[7]),
        .Q(addr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[8]),
        .Q(addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(plusOp[9]),
        .Q(addr[9]),
        .R(1'b0));
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
