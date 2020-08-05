`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2019 03:47:21 PM
// Design Name: 
// Module Name: frac_tcam
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


module frac_tcam #(parameter W=5,D=64,N=1) (sk,reset,we,rules,clk,match);

parameter n=W/5;      // number of slices
parameter kw_size=5;    // DBLOCK64x5 key width size
parameter b_depth = 64;     // block depth

input [W-1:0] sk;
input reset;
input [D/8-1:0] we;
input [W*8/5-1:0] rules;
input clk;
output [D-1:0] match;

wire [n*D-1:0] match_l;

genvar i;

generate 
    for (i=0; i<n; i=i+1)
    begin: W_BLOCK_8X5
        (* dont_touch = "true" *) DBLOCK8x5 #(kw_size,D) DBLOCK8x5_inst (sk[i*5+4:i*5],reset,we,rules[i*8+7:i*8],clk,match[i*D+D-1:i*D]);
    end
endgenerate


//(* dont_touch = "true" *) andD4 #(D) andD4(match_l[4*D-1:3*D],match_l[3*D-1:2*D],match_l[2*D-1:D],match_l[D-1:0],match);

endmodule
