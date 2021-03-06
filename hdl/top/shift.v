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
    input s_in,
    output reg out,
    input clk,
    input shiftr
    );
    
//    reg out = 1'b1;
//    reg out;
    
    always @(posedge clk)
    begin
       if (shiftr == 0)
       begin
          out <= in;
       end
       else
       begin
          out <= s_in;
       end
    end
endmodule
