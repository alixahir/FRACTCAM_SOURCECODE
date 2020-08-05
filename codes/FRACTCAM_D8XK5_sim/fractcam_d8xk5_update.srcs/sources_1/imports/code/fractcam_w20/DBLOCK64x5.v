`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2019 08:46:34 PM
// Design Name: 
// Module Name: DBLOCK_W
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


module DBLOCK8x5 #(parameter kw_size=5,D=64)(sk,clr,we,rules,clk,match);

parameter rd_size=8;   // DBLOCK rule depth size
parameter we_size=1;

input [kw_size-1:0] sk;
input clr;
input [D/8-1:0] we;
input [7:0] rules;
input clk;
output [D-1:0] match;

//genvar i;
//generate
//    for (i=0;i<n;i=i+1)
//        begin: depth_extension
//        DBLOCK #(kw_size,rd_size) DBLOCK_inst(sk[i*5+4:i*5],we,ce,clr,rule,clk,match);
//    end
//endgenerate
genvar i;
generate
for (i=0;i<D/rd_size;i=i+1)
begin:D_BLOCK_8X5
DBLOCK #(kw_size,rd_size,we_size) DBLOCK_inst0(sk,clr,we,rules,clk,match);
end
endgenerate

endmodule