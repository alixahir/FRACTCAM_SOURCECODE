`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2019 05:19:47 PM
// Design Name: 
// Module Name: andD3
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


module andD3 #(D=64)(
    input [D-1:0] a,
    input [D-1:0] b,
    input [D-1:0] c,
    output [D-1:0] o
    );
    parameter n_andD6slice = D/4; // number of andD6 slices
    genvar i;
    generate
    for (i=0; i< n_andD6slice;i=i+1)
    begin: andD3slice 
    (* dont_touch = "true" *) andD3slice andD3slice_init(a[i*4+3:i*4],b[i*4+3:i*4],c[i*4+3:i*4],o[i*4+3:i*4]);
    end
    endgenerate
endmodule