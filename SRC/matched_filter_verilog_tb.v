`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2026 11:49:30 PM
// Design Name: 
// Module Name: matched_filter_verilog_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module matched_filter_verilog_tb;
    // DUT Parameter
    localparam ADDR_SIZE    = 11;
    localparam DATA_SIZE    = 16;
    localparam REF_LENGTH   = 501;
    localparam RET_LENGTH   = 501;
    
    // Test Bench Parameters
    localparam CLK_PERIOD       = 10;       //100 Mhz
    localparam TB_RUNTIME       = 100_000;  //100 us 
    
    reg clk;
    reg rst;
    reg signed [DATA_SIZE-1:0] ref_signal;
    reg signed [DATA_SIZE-1:0] ret_signal;
    wire signed [63:0] out_signal;
    
//    reg signed [DATA_SIZE-1:0] ref_rom [0:REF_LENGTH-1];
//    reg signed [DATA_SIZE-1:0] ret_rom [0:RET_LENGTH-1];
    
    integer file_ref, file_ret;
    integer status_ref, status_ret;
    reg signed [DATA_SIZE-1:0] temp_ref, temp_ret;

//    integer i, j = 0;

    matchedfilter_verilog#(
        .ADDR_SIZE(ADDR_SIZE),
        .DATA_SIZE(DATA_SIZE),
        .REF_LENGTH(REF_LENGTH),
        .RET_LENGTH(RET_LENGTH)    
    )dut(
        .clk(clk),
        .rst(rst),
        .ref_signal(ref_signal),
        .ret_signal(ret_signal),
        .out_signal(out_signal)
    );
    
    always begin
        clk = 1'b0;
        #(CLK_PERIOD/2);
        clk = 1'b1;
        #(CLK_PERIOD/2);

    end
    
    initial begin
        file_ref = $fopen("Signal_ref.hex", "r");
        file_ret = $fopen("Signal_ret_noisy.hex", "r");
        
        rst = 1'b1;
        ref_signal = {DATA_SIZE-1{1'b0}};
        ret_signal = {DATA_SIZE-1{1'b0}};
        
        @(negedge clk);
        rst = 1'b0;
              
        forever begin
            @(posedge clk);
            
            // Read 1 hex value from ref file; output 0 when EOF reached
            if (!$feof(file_ref)) begin
                status_ref = $fscanf(file_ref, "%h\n", temp_ref);
                ref_signal <= (status_ref == 1) ? temp_ref : {DATA_SIZE{1'b0}};
            end else begin
                ref_signal <= {DATA_SIZE{1'b0}};
            end

            // Read 1 hex value from ret file; output 0 when EOF reached
            if (!$feof(file_ret)) begin
                status_ret = $fscanf(file_ret, "%h\n", temp_ret);
                ret_signal <= (status_ret == 1) ? temp_ret : {DATA_SIZE{1'b0}};
            end else begin
                ret_signal <= {DATA_SIZE{1'b0}};
            end
        end
    end
    
    initial begin
        #TB_RUNTIME;
        $display("Simulation complete after %0t.", $time);
        $finish;
    end
endmodule
