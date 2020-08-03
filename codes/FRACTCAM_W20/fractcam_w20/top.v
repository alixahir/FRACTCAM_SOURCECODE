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

module top #(parameter D=512,W=20)(clk,clk2,wr,reset,match_reduced);
input clk,clk2,wr;
input reset;
output match_reduced;

parameter N=D/8;
parameter SN = clog2(D/8); 
parameter rb=W*8/5;
(*max_fanout=50*) wire[W-1:0] sk; //search key
//(*max_fanout=50*) wire[2:0] rule_id; //rules                                                
(*max_fanout=50*) wire[SN-1:0] we_sel;
(*max_fanout=50*) wire[D-1:0] match; // match lines
(*max_fanout=50*) wire[D-1:0] match_reg; // match line registers
(*max_fanout=50*) wire[W-1:0] sk_reg;   // search key registers
(*max_fanout=50*) wire[W*8/5-1:0] DI ;
(*max_fanout=50*) wire[W-1:0] addr;
(*max_fanout=50*) wire[D/8-1:0] we;
 //key =40, rules = 64 for unprotected version 
(* dont_touch = "true" *)dummy_key_rules #(W,SN) dummy_inst(clk,reset,sk,we_sel);
(* dont_touch = "true" *)register #(W) key_register(sk,clk,reset,sk_reg);
(* dont_touch = "true" *) update_logic #(D,W,SN)update_inst (sk_reg,clk,reset,wr,we_sel,DI,addr,we);
(* dont_touch = "true" *)frac_tcam #(W,D,rb) frac_tcam_inst(addr,reset,we,DI,clk2,match);
(* dont_touch = "true" *)register #(D) match_register(match,clk2,reset,match_reg);
(* dont_touch = "true" *)match_reduction #(D) match_reduction_inst(match_reg,match_reduced);

// // // // ======================================================== // // // //

function integer clog2 (input integer n); 
integer j; 
begin 
    n = n - 1;
    for (j = 0; n > 0; j = j + 1)        
        n = n >> 1;
    clog2 = j;
end
endfunction

endmodule
