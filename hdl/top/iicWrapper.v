`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2014 09:34:48 PM
// Design Name: 
// Module Name: iicWrapper
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


module iicWrapper(
    input in,
    input clk,
    input out
    );
    
    genvar n;
    generate
       for (n=0; n < 128; n=n+1) 
       begin:
          shift s ();
       end
    endgenerate
             
    
    axi_iic_0 iic (
      .s_axi_aclk(clk),        // input wire s_axi_aclk
      .s_axi_aresetn(in),  // input wire s_axi_aresetn
      .iic2intc_irpt(),  // output wire iic2intc_irpt
      .s_axi_awaddr(),    // input wire [8 : 0] s_axi_awaddr
      .s_axi_awvalid(),  // input wire s_axi_awvalid
      .s_axi_awready(),  // output wire s_axi_awready
      .s_axi_wdata(),      // input wire [31 : 0] s_axi_wdata
      .s_axi_wstrb(),      // input wire [3 : 0] s_axi_wstrb
      .s_axi_wvalid(),    // input wire s_axi_wvalid
      .s_axi_wready(),    // output wire s_axi_wready
      .s_axi_bresp(),      // output wire [1 : 0] s_axi_bresp
      .s_axi_bvalid(),    // output wire s_axi_bvalid
      .s_axi_bready(),    // input wire s_axi_bready
      .s_axi_araddr(),    // input wire [8 : 0] s_axi_araddr
      .s_axi_arvalid(),  // input wire s_axi_arvalid
      .s_axi_arready(),  // output wire s_axi_arready
      .s_axi_rdata(),      // output wire [31 : 0] s_axi_rdata
      .s_axi_rresp(),      // output wire [1 : 0] s_axi_rresp
      .s_axi_rvalid(),    // output wire s_axi_rvalid
      .s_axi_rready(),    // input wire s_axi_rready
      .sda_i(),                  // input wire sda_i
      .sda_o(),                  // output wire sda_o
      .sda_t(),                  // output wire sda_t
      .scl_i(),                  // input wire scl_i
      .scl_o(),                  // output wire scl_o
      .scl_t(),                  // output wire scl_t
      .gpo(out)                      // output wire [0 : 0] gpo
    );

endmodule
