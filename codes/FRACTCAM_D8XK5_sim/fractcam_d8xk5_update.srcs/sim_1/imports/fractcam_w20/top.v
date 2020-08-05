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

module top_tb;
reg clk,wr;
reg reset;
wire  match_reduced;
reg [4:0] sk; //search key                                                
reg  we_sel=0;
//wire[D-1:0] match; // match lines
//(*max_fanout=50*) wire[D-1:0] match_reg; // match line registers
//(*max_fanout=50*) wire[W-1:0] sk_reg;   // search key registers
//wire[W*8/5-1:0] DI ;
//wire[W-1:0] addr;
//wire[D/8-1:0] we;
//key =40, rules = 64 for unprotected version 
(* dont_touch = "true" *) top top_inst (sk,clk,reset,wr,we_sel,match_reduced);

// // // // ======================================================== // // // //

initial begin 
clk=0;
forever #1 clk=~clk;
end


initial begin
reset=1;
#100;
reset=0;
wr = 0;
we_sel = 0;

// reading of Fractcam 
 // #2 is the clock periode
 
        sk = 5'd00; #2;
        sk = 5'd03; #2;
        sk = 5'd20; #2;
        sk = 5'd30; #2;
        sk = 5'd17; #2;
//     end
     
// Writng the srl of update logic
// I want to check the functionality of the update. For that reason i kept the sk=17 for all SRLs. 
//i know it may wrong for real but just want to check the functionality
// As SRLs are initiated by 00 so the location at sk=17 should be 1 for all 8 srls. and the rest contents of SRLs should be 0. 
     
     wr = 1; #576; // 576 is equal to clock_period(2)x number of clock cycles required for update (32 x8 + 32)
     
// reading the FRACTCAM again
// the same location are read again. if the update logic works fine the we should get match_reduced 0 for all other location except sk=17 
     
        wr = 0;    
        sk = 5'd00; #2;
        sk = 5'd03; #2;
        sk = 5'd20; #2;
        sk = 5'd30; #2;
        sk = 5'd17; #2;

end


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
