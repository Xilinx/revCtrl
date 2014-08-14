`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:31 06/05/2007 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top (clk, rst, in, out);
   input clk,rst,in;
   output out;

   // Our top design begins with just a single 3-flop chain
   threeFlop threeFlop_inst (clk, rst, in, out);

endmodule
