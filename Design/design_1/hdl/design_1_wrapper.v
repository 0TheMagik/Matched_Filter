//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Sat Aug 15 20:37:08 2026
//Host        : OCPCBench running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_100MHz,
    matched_out);
  input clk_100MHz;
  output [63:0]matched_out;

  wire clk_100MHz;
  wire [63:0]matched_out;

  design_1 design_1_i
       (.clk_100MHz(clk_100MHz),
        .matched_out(matched_out));
endmodule
