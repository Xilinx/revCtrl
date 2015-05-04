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
    input shiftr
    );
    
    parameter size = 109;
    wire [size-1:0] f;
    wire [size-1:0] s_f;
    
    genvar n;
    generate
       for (n=0; n < size; n=n+1) 
       begin : flops
          if (n == 0) begin
             shift s (.in(s_f[n]), .s_in(in), .out(f[n]), .clk(clk), .shiftr(shiftr) );
          end else begin
             shift s (.in(s_f[n]), .s_in(f[n-1]), .out(f[n]), .clk(clk), .shiftr(shiftr) );
          end
       end
    endgenerate
             
    axi_iic_0 iic (
      .s_axi_aclk(clk),        // input wire s_axi_aclk
      .s_axi_aresetn(f[0]),  // input wire s_axi_aresetn
      .iic2intc_irpt(s_f[1]),  // output wire iic2intc_irpt
      .s_axi_awaddr(f[10:2]),    // input wire [8 : 0] s_axi_awaddr
      .s_axi_awvalid(f[11]),  // input wire s_axi_awvalid
      .s_axi_awready(s_f[12]),  // output wire s_axi_awready
      .s_axi_wdata(f[44:13]),      // input wire [31 : 0] s_axi_wdata
      .s_axi_wstrb(f[48:45]),      // input wire [3 : 0] s_axi_wstrb
      .s_axi_wvalid(f[49]),    // input wire s_axi_wvalid
      .s_axi_wready(s_f[50]),    // output wire s_axi_wready
      .s_axi_bresp(s_f[52:51]),      // output wire [1 : 0] s_axi_bresp
      .s_axi_bvalid(s_f[53]),    // output wire s_axi_bvalid
      .s_axi_bready(f[54]),    // input wire s_axi_bready
      .s_axi_araddr(f[63:55]),    // input wire [8 : 0] s_axi_araddr
      .s_axi_arvalid(f[64]),  // input wire s_axi_arvalid
      .s_axi_arready(s_f[65]),  // output wire s_axi_arready
      .s_axi_rdata(s_f[97:66]),      // output wire [31 : 0] s_axi_rdata
      .s_axi_rresp(s_f[99:98]),      // output wire [1 : 0] s_axi_rresp
      .s_axi_rvalid(s_f[100]),    // output wire s_axi_rvalid
      .s_axi_rready(f[101]),    // input wire s_axi_rready
      .sda_i(f[102]),                  // input wire sda_i
      .sda_o(s_f[103]),                  // output wire sda_o
      .sda_t(s_f[104]),                  // output wire sda_t
      .scl_i(f[105]),                  // input wire scl_i
      .scl_o(s_f[106]),                  // output wire scl_o
      .scl_t(s_f[107]),                  // output wire scl_t
      .gpo(s_f[108])                      // output wire [0 : 0] gpo
    );

    assign out = s_f[size - 1];

endmodule
