//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Tue Aug 25 00:11:34 2026
//Host        : OCPCBench running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (clk_100MHz,
    matched_out,
    rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET rst, CLK_DOMAIN design_2_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  output [63:0]matched_out;
  input rst;

  wire [31:0]blk_mem_gen_0_douta;
  wire [31:0]blk_mem_gen_1_douta;
  wire clk_100MHz;
  wire [10:0]controller_0_addr_signal_1;
  wire [10:0]controller_0_addr_signal_2;
  wire controller_0_start;
  wire [63:0]matched_out;
  wire mult_unit_0_out_done;
  wire [63:0]mult_unit_0_out_res;
  wire rst;

  design_2_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(controller_0_addr_signal_2),
        .clka(clk_100MHz),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .douta(blk_mem_gen_0_douta),
        .wea(1'b0));
  design_2_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(controller_0_addr_signal_1),
        .clka(clk_100MHz),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .douta(blk_mem_gen_1_douta),
        .wea(1'b0));
  design_2_controller_0_0 controller_0
       (.addr_signal_1(controller_0_addr_signal_1),
        .addr_signal_2(controller_0_addr_signal_2),
        .clk(clk_100MHz),
        .rst(rst),
        .start(controller_0_start));
  design_2_mult_unit_0_0 mult_unit_0
       (.clk(clk_100MHz),
        .in_1(blk_mem_gen_1_douta),
        .in_2(blk_mem_gen_0_douta),
        .out_done(mult_unit_0_out_done),
        .out_res(mult_unit_0_out_res),
        .rst(rst),
        .start(controller_0_start));
  design_2_sum_unit_0_0 sum_unit_0
       (.clk(clk_100MHz),
        .in_data(mult_unit_0_out_res),
        .out_res(matched_out),
        .rst(rst),
        .start(mult_unit_0_out_done));
endmodule
