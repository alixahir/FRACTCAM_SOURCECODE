`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2018 08:04:56 AM
// Design Name: 
// Module Name: top
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
//In dure rule_size is equaivalent to D and key to W

module top(sk,clk,reset,wr,we_sel,match_reduced);
input [4:0] sk;
input reset, clk;
input wr;
input we_sel;
output match_reduced;

parameter D=8;
parameter W=5;
parameter N=D/8;
parameter SN = 1; 
parameter rb=W*8/5;
wire[D-1:0] match; // match lines
//(*max_fanout=50*) wire[D-1:0] match_reg; // match line registers
//(*max_fanout=50*) wire[W-1:0] sk_reg;   // search key registers
wire[W*8/5-1:0] DI ;
wire[W-1:0] addr;
wire[D/8-1:0] we;

//=======================================================================//
//key =40, rules = 64 for unprotected version 
//(* dont_touch = "true" *)dummy_key_rules #(W,SN) dummy_inst(clk,reset,sk,we_sel);
//(* dont_touch = "true" *)register #(W) key_register(sk,clk,reset,sk_reg);

//=======================================================================//
//COMPLETE FRACTTCAM WITH UPDATTE LOGIC

(* dont_touch = "true" *) update_logic #(D,W,SN)update_inst (sk,clk,reset,wr,we_sel,DI,addr,we);
(* dont_touch = "true" *)frac_tcam #(W,D,rb) frac_tcam_inst(addr,reset,we,DI,clk,match);
//(* dont_touch = "true" *)register #(D) match_register(match,clk2,reset,match_reg);
(* dont_touch = "true" *)match_reduction #(D) match_reduction_inst(match,match_reduced);

// // // // ======================================================== // // // //

//function integer clog2 (input integer n); 
//integer j; 
//begin 
//    n = n - 1;
//    for (j = 0; n > 0; j = j + 1)        
//        n = n >> 1;
//    clog2 = j;
//end
//endfunction

endmodule
