//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Aug 21 15:04:59 2026
//Host        : LAPTOP-AIEGP4RS running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (clk_100MHz,
    matched_out,
    rst);
  input clk_100MHz;
  output [63:0]matched_out;
  input rst;

  wire clk_100MHz;
  wire [63:0]matched_out;
  wire rst;

  design_2 design_2_i
       (.clk_100MHz(clk_100MHz),
        .matched_out(matched_out),
        .rst(rst));
endmodule
