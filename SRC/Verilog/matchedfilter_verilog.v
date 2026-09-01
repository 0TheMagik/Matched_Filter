`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2026 10:28:38 PM
// Design Name: 
// Module Name: matchedfilter_verilog
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


module matchedfilter_verilog #(
    parameter DATA_SIZE     = 16,
    parameter REF_LENGTH    = 501,
    parameter RET_LENGTH    = 501
)(
    input clk,
    input rst,
    input [DATA_SIZE-1:0] ref_signal,    
    input [DATA_SIZE-1:0] ret_signal,    
    output [63:0] out_signal
);
    
    reg signed [DATA_SIZE-1:0] ref_signal_reg [0:REF_LENGTH-1];
    reg signed [DATA_SIZE-1:0] ret_signal_reg [0:RET_LENGTH-1];
    
//    reg signed [DATA_SIZE*2-1:0] mult_res;
    reg signed [63:0] temp_res;
    
    integer in_counter;
    reg ref_loaded;
    
    integer i, j, k;
    
    reg signed [DATA_SIZE*2-1:0] v_mult_res;
    reg signed [63:0] v_temp_res;
    
    always@(posedge clk)
    begin
        if(rst) begin
//            mult_res <= {DATA_SIZE*2-1{1'b0}};
            temp_res <= 64'sd0;
            in_counter <= 0;
            ref_loaded <= 1'b0;
            
            for (i = 0; i < RET_LENGTH; i = i+1) begin
                ret_signal_reg[i] <= {DATA_SIZE*2-1{1'b0}};
                ref_signal_reg[i] <= {DATA_SIZE*2-1{1'b0}};
                
            end
            
        end
        else begin
            if (!ref_loaded) begin
                ref_signal_reg[in_counter] <= ref_signal;
                if (in_counter < REF_LENGTH - 1) begin
                    in_counter <= in_counter + 1;
                end 
                else begin
                    in_counter <= 0;
                    ref_loaded <= 1'b1; // Reference is now fully stored and locked
                end
            end
            
            // Return signal shift
            ret_signal_reg[0] <= ret_signal;
            for(j = 1; j < RET_LENGTH-1; j = j+1) begin
                ret_signal_reg[j] <= ret_signal_reg[j-1];
            end
                
            v_temp_res = 64'sd0;
            for(k = 0; k < REF_LENGTH-1; k = k+1) begin
                v_mult_res = ref_signal_reg[k] * ret_signal_reg[k];
                v_temp_res = v_temp_res + v_mult_res;
            end    
            
//            mult_res <= v_mult_res;
            temp_res <= v_temp_res;       
        end
    end
    
    assign out_signal = temp_res;
    
endmodule
