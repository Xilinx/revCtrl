`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2014 09:07:29 PM
// Design Name: 
// Module Name: shift
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


module shift(
    input in,
    output out,
    input clk,
    input sel
    );
    
    always @(posedge clk)
    begin
       if (sel == 1)
       begin
          out <= in;
       end
       else
       begin
          out <= out;
       end
    end
endmodule
