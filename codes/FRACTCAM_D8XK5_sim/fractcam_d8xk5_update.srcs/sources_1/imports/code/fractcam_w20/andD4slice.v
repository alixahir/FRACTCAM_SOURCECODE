`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2019 03:02:12 PM
// Design Name: 
// Module Name: andD4slice
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


module andD4slice(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    output [3:0] o
    );
    
   (* H_SET = "uset0", RLOC = "X0Y0" *) (* dont_touch = "true" *)  LUT6 #(
          .INIT(64'h8000800080008000)  // Specify LUT Contents
       ) LUT6_inst (
          .O(o[0]),   // LUT general output
          .I0(a[0]), // LUT input
          .I1(b[0]), // LUT input
          .I2(c[0]), // LUT input
          .I3(d[0]), // LUT input
          .I4(1), // LUT input
          .I5(1)  // LUT input
       );
       
    
   (* H_SET = "uset0", RLOC = "X0Y0" *) (* dont_touch = "true" *)  LUT6 #(
          .INIT(64'h8000800080008000)  // Specify LUT Contents
       ) LUT6_inst1 (
          .O(o[1]),   // LUT general output
          .I0(a[1]), // LUT input
          .I1(b[1]), // LUT input
          .I2(c[1]), // LUT input
          .I3(d[1]), // LUT input
          .I4(1), // LUT input
          .I5(1)  // LUT input
       );
          
 (* H_SET = "uset0", RLOC = "X0Y0" *) (* dont_touch = "true" *)  LUT6 #(
         .INIT(64'h8000800080008000)  // Specify LUT Contents
       ) LUT6_inst2 (
         .O(o[2]),   // LUT general output
         .I0(a[2]), // LUT input
         .I1(b[2]), // LUT input
         .I2(c[2]), // LUT input
         .I3(d[2]), // LUT input
         .I4(1), // LUT input
         .I5(1)  // LUT input
      );
              
           
 (* H_SET = "uset0", RLOC = "X0Y0" *) (* dont_touch = "true" *)  LUT6 #(
        .INIT(64'h8000800080008000)  // Specify LUT Contents
      ) LUT6_inst3 (
        .O(o[3]),   // LUT general output
        .I0(a[3]), // LUT input
        .I1(b[3]), // LUT input
        .I2(c[3]), // LUT input
        .I3(d[3]), // LUT input
        .I4(1), // LUT input
        .I5(1)  // LUT input
    );
        
endmodule
