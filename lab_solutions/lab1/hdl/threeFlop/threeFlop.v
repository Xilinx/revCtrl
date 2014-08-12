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
module threeFlop (clk, rst, in, out);
   input clk,rst,in;
   output out;

   wire data;
   reg dataIn, middle, dataOut;

   assign out = dataOut;

   always @(posedge clk)
   begin
      if(rst==1)
      begin
         dataIn <= 1'b0;
         middle <= 1'b0;
         dataOut <= 1'b0;
      end
      else
      begin
         dataIn <= in;
         middle <= dataIn;
         dataOut <= middle;
      end
   end
endmodule
