`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2019 09:41:35 PM
// Design Name: 
// Module Name: fractcam_32x5
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


module DBLOCK #(parameter kw_size=5,rd_size=32, we_size=1)(
    input [kw_size-1:0] sk,
    input clr,
    input [we_size-1:0] we,
    input [7:0] rules,
    input wclk,
    output [rd_size-1:0] match
    );
    
genvar i;
    generate 
    for (i=0; i<rd_size/8; i=i+1)
    begin:fracTCAM32x5
    fractcam8x5 fractcam8x5_inst (
    .sk(sk),
    .clr(clr),
    .we(we[i]),
    .rules(rules),
    .wclk(wclk),
    .match(match[((i+1)*8-1):8*i])
    );
    end
    endgenerate    
endmodule
