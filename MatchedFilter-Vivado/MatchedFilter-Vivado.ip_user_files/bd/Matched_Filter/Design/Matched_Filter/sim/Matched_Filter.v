//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Thu Aug 27 23:53:38 2026
//Host        : OCPCBench running 64-bit major release  (build 9200)
//Command     : generate_target Matched_Filter.bd
//Design      : Matched_Filter
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Matched_Filter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Matched_Filter,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Matched_Filter.hwdef" *) 
module Matched_Filter
   (clk_100MHz,
    matched_out,
    rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET rst, CLK_DOMAIN Matched_Filter_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  output [63:0]matched_out;
  input rst;

  wire [15:0]blk_mem_gen_0_douta;
  wire [15:0]blk_mem_gen_1_douta;
  wire clk_100MHz;
  wire [63:0]matched_out;
  wire [10:0]mem_interface_0_addr;
  wire [10:0]mem_interface_1_addr;
  wire rst;

  Matched_Filter_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(mem_interface_0_addr),
        .clka(clk_100MHz),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .douta(blk_mem_gen_0_douta),
        .wea(1'b0));
  Matched_Filter_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(mem_interface_1_addr),
        .clka(clk_100MHz),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .douta(blk_mem_gen_1_douta),
        .wea(1'b0));
  Matched_Filter_matchedfilter_0_0 matchedfilter_0
       (.clk(clk_100MHz),
        .in_signal_1(blk_mem_gen_0_douta),
        .in_signal_2(blk_mem_gen_1_douta),
        .out_signal(matched_out),
        .rst(rst));
  Matched_Filter_mem_interface_0_0 mem_interface_0
       (.addr(mem_interface_0_addr),
        .clk(clk_100MHz));
  Matched_Filter_mem_interface_1_0 mem_interface_1
       (.addr(mem_interface_1_addr),
        .clk(clk_100MHz));
endmodule
