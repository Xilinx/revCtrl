`timescale 1 ps / 1 ps

module top
   (in,
    out, 
    clk,
    rst,
    shiftr
    );

// Serial data in/out
   input in;
   input shiftr;
   input rst;
   output out;    
    
  input clk;


  wire chain;

threeFlop threeFlopInst (.in(in), .out(chain), .clk(clk), .rst(rst) );

iicWrapper iicInst (.in(chain), .out(out), .clk(clk), .shiftr(shiftr) );

endmodule
