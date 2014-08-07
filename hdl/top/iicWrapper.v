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
    output out, 
    input shift
    );
    
    parameter size = 110;
    wire [size-1:0] f;
    
    genvar n;
    generate
       for (n=0; n < size; n=n+1) 
       begin : flops
          if (n == 0) begin
             shift s (.in(in), .out(f[0]), .clk(clk), .shift(shift) );
          end else begin
             shift s (.in(f[n-1]), .out(f[n]), .clk(clk), .shift(shift) );
          end
       end
    endgenerate
             
    axi_iic_0 iic (
      .s_axi_aclk(clk),        // input wire s_axi_aclk
      .s_axi_aresetn(f[0]),  // input wire s_axi_aresetn
      .iic2intc_irpt(f[1]),  // output wire iic2intc_irpt
      .s_axi_awaddr(f[10:2]),    // input wire [8 : 0] s_axi_awaddr
      .s_axi_awvalid(f[11]),  // input wire s_axi_awvalid
      .s_axi_awready(f[12]),  // output wire s_axi_awready
      .s_axi_wdata(f[45:13]),      // input wire [31 : 0] s_axi_wdata
      .s_axi_wstrb(f[50:46]),      // input wire [3 : 0] s_axi_wstrb
      .s_axi_wvalid(f[51]),    // input wire s_axi_wvalid
      .s_axi_wready(f[52]),    // output wire s_axi_wready
      .s_axi_bresp(f[54:53]),      // output wire [1 : 0] s_axi_bresp
      .s_axi_bvalid(f[55]),    // output wire s_axi_bvalid
      .s_axi_bready(f[56]),    // input wire s_axi_bready
      .s_axi_araddr(f[65:57]),    // input wire [8 : 0] s_axi_araddr
      .s_axi_arvalid(f[66]),  // input wire s_axi_arvalid
      .s_axi_arready(f[67]),  // output wire s_axi_arready
      .s_axi_rdata(f[99:68]),      // output wire [31 : 0] s_axi_rdata
      .s_axi_rresp(f[101:100]),      // output wire [1 : 0] s_axi_rresp
      .s_axi_rvalid(f[102]),    // output wire s_axi_rvalid
      .s_axi_rready(f[103]),    // input wire s_axi_rready
      .sda_i(f[104]),                  // input wire sda_i
      .sda_o(f[105]),                  // output wire sda_o
      .sda_t(f[106]),                  // output wire sda_t
      .scl_i(f[107]),                  // input wire scl_i
      .scl_o(f[108]),                  // output wire scl_o
      .scl_t(f[109]),                  // output wire scl_t
      .gpo(f[110])                      // output wire [0 : 0] gpo
    );

endmodule
