`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2019 04:41:53 PM
// Design Name: 
// Module Name: and64
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


module andD4 #(D=64)(
    input [D-1:0] a,
    input [D-1:0] b,
    input [D-1:0] c,
    input [D-1:0] d,
    output [D-1:0] o
    );
    parameter n_andD4slice = D/4; // number of andD4 slices
    genvar i;
    generate
    for (i=0; i< n_andD4slice;i=i+1)
    begin: andD6slice 
    (* dont_touch = "true" *) andD4slice andD4slice_init(a[i*4+3:i*4],b[i*4+3:i*4],c[i*4+3:i*4],d[i*4+3:i*4],o[i*4+3:i*4]);
    end
    endgenerate
endmodule
