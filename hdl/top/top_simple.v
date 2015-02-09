`timescale 1 ps / 1 ps

module top
   (in,
    out, 
    clk
    );

   input in;
   output out;    
   input clk;

threeFlop threeFlopInst ( .in(in), .out(out), .clk(clk) );

endmodule
