`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2019 10:11:05 AM
// Design Name: 
// Module Name: register
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


module register #(parameter width=48)(in,clk,reset,out);
input clk;
input reset;
input[width-1:0] in;
output reg[width-1:0] out;
always@(posedge clk)
if(reset)
    out <= 0;
else 
    out <= in;
endmodule
