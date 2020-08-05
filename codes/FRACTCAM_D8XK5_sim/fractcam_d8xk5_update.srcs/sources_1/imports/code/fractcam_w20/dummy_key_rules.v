`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2018 08:13:52 AM
// Design Name: 
// Module Name: dummy_key_rules
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


module dummy_key_rules #(parameter key_size=40,SN=4)(clk,reset,key,sel);
input clk;
input reset;
output reg[key_size-1:0] key;
output reg[SN-1:0] sel;
always@(posedge clk)
begin    
    if(reset) 
        begin 
            key <= 0;
            sel<=0;
        end
        else
        begin
            key =reset;
            sel<=reset;
        end
end      
      
endmodule