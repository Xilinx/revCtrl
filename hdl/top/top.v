`timescale 1 ps / 1 ps

module top
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    leds_4bits_tri_o,
    clk,
    data_in3,
    data_in2,
    data_in1,
    data_in,
    data_out,
    data_out1,
    data_out2
    );
    
// Zynq Subsystem IO    
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [3:0]leds_4bits_tri_o;
  
// System Generator IO  
  input clk;
  input data_in3;
  input [15:0]data_in2;
  input [3:0]data_in1;
  input [15:0]data_in;
  output [24:0]data_out;
  output data_out1;
  output data_out2;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]leds_4bits_tri_o;

zynq_bd zynqInst
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .LEDs_4Bits_tri_o(leds_4bits_tri_o));
        
//        entity module_1 is
//          port (
//            clk: in std_logic;
//            data_in3: in std_logic;
//            data_in2: in std_logic_vector(15 downto 0);
//            data_in1: in std_logic_vector(3 downto 0);
//            data_in: in std_logic_vector(15 downto 0);
//            data_out: out std_logic_vector(24 downto 0);
//            data_out1: out std_logic;
//            data_out2: out std_logic
//          );
//        end module_1;
module_1 sysGenInst
            (.clk(clk),
            .data_in3(data_in3),
            .data_in2(data_in2),
            .data_in1(data_in1),
            .data_in(data_in),
            .data_out(data_out),
            .data_out1(data_out1),
            .data_out2(data_out2)
          );
         
//axi_iic_0 iic (
//  .s_axi_aclk(s_axi_aclk),        // input wire s_axi_aclk
//  .s_axi_aresetn(s_axi_aresetn),  // input wire s_axi_aresetn
//  .iic2intc_irpt(iic2intc_irpt),  // output wire iic2intc_irpt
//  .s_axi_awaddr(s_axi_awaddr),    // input wire [8 : 0] s_axi_awaddr
//  .s_axi_awvalid(s_axi_awvalid),  // input wire s_axi_awvalid
//  .s_axi_awready(s_axi_awready),  // output wire s_axi_awready
//  .s_axi_wdata(s_axi_wdata),      // input wire [31 : 0] s_axi_wdata
//  .s_axi_wstrb(s_axi_wstrb),      // input wire [3 : 0] s_axi_wstrb
//  .s_axi_wvalid(s_axi_wvalid),    // input wire s_axi_wvalid
//  .s_axi_wready(s_axi_wready),    // output wire s_axi_wready
//  .s_axi_bresp(s_axi_bresp),      // output wire [1 : 0] s_axi_bresp
//  .s_axi_bvalid(s_axi_bvalid),    // output wire s_axi_bvalid
//  .s_axi_bready(s_axi_bready),    // input wire s_axi_bready
//  .s_axi_araddr(s_axi_araddr),    // input wire [8 : 0] s_axi_araddr
//  .s_axi_arvalid(s_axi_arvalid),  // input wire s_axi_arvalid
//  .s_axi_arready(s_axi_arready),  // output wire s_axi_arready
//  .s_axi_rdata(s_axi_rdata),      // output wire [31 : 0] s_axi_rdata
//  .s_axi_rresp(s_axi_rresp),      // output wire [1 : 0] s_axi_rresp
//  .s_axi_rvalid(s_axi_rvalid),    // output wire s_axi_rvalid
//  .s_axi_rready(s_axi_rready),    // input wire s_axi_rready
//  .sda_i(sda_i),                  // input wire sda_i
//  .sda_o(sda_o),                  // output wire sda_o
//  .sda_t(sda_t),                  // output wire sda_t
//  .scl_i(scl_i),                  // input wire scl_i
//  .scl_o(scl_o),                  // output wire scl_o
//  .scl_t(scl_t),                  // output wire scl_t
//  .gpo(gpo)                      // output wire [0 : 0] gpo
//);
endmodule
