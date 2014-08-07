`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:38:31 06/05/2007 
// Design Name: 
// Module Name:    threeFlop 
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
module threeFlop (clk, in, out);
   input clk,in;
   output out;

   wire data;
   reg dataIn, middle, dataOut;

   assign out = dataOut;

   always @(posedge clk)
   begin
      dataIn <= in;
      middle <= dataIn;
      dataOut <= middle;
   end
endmodule
