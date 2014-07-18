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
//    clk,
//    data_in3,
//    data_in2,
//    data_in1,
//    data_in,
//    data_out,
//    data_out1,
//    data_out2,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wuser,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    axi_c2c_m2s_intr_in,
    axi_c2c_s2m_intr_out,
    idelay_ref_clk,
    axi_c2c_phy_clk,
    axi_c2c_selio_tx_clk_out,
    axi_c2c_selio_tx_data_out,
    axi_c2c_selio_rx_clk_in,
    axi_c2c_selio_rx_data_in,
    axi_c2c_link_status_out,
    axi_c2c_multi_bit_error_out,
    axi_c2c_link_error_out
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
//  input clk;
//  input data_in3;
//  input [15:0]data_in2;
//  input [3:0]data_in1;
//  input [15:0]data_in;
//  output [24:0]data_out;
//  output data_out1;
//  output data_out2;

// AXI Chip to Chip IO  
  input s_aclk;
  input s_aresetn;
  input [5:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wuser;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [5:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [5:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [5:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input [3:0]axi_c2c_m2s_intr_in;
  output [3:0]axi_c2c_s2m_intr_out;
  input idelay_ref_clk;
  input axi_c2c_phy_clk;
  output axi_c2c_selio_tx_clk_out;
  output [8:0]axi_c2c_selio_tx_data_out;
  input axi_c2c_selio_rx_clk_in;
  input [8:0]axi_c2c_selio_rx_data_in;
  output axi_c2c_link_status_out;
  output axi_c2c_multi_bit_error_out;
  output axi_c2c_link_error_out;

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

zynq_1 zynqInst
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
//module_1 sysGenInst
//            (.clk(clk),
//            .data_in3(data_in3),
//            .data_in2(data_in2),
//            .data_in1(data_in1),
//            .data_in(data_in),
//            .data_out(data_out),
//            .data_out1(data_out1),
//            .data_out2(data_out2)
//          );
          
axi_chip2chip_0 axiChipInst (
            .s_aclk(s_aclk),                                            // input wire s_aclk
            .s_aresetn(s_aresetn),                                      // input wire s_aresetn
            .s_axi_awid(s_axi_awid),                                    // input wire [5 : 0] s_axi_awid
            .s_axi_awaddr(s_axi_awaddr),                                // input wire [31 : 0] s_axi_awaddr
            .s_axi_awlen(s_axi_awlen),                                  // input wire [7 : 0] s_axi_awlen
            .s_axi_awsize(s_axi_awsize),                                // input wire [2 : 0] s_axi_awsize
            .s_axi_awburst(s_axi_awburst),                              // input wire [1 : 0] s_axi_awburst
            .s_axi_awvalid(s_axi_awvalid),                              // input wire s_axi_awvalid
            .s_axi_awready(s_axi_awready),                              // output wire s_axi_awready
            .s_axi_wuser(s_axi_wuser),                                  // input wire [3 : 0] s_axi_wuser
            .s_axi_wdata(s_axi_wdata),                                  // input wire [31 : 0] s_axi_wdata
            .s_axi_wstrb(s_axi_wstrb),                                  // input wire [3 : 0] s_axi_wstrb
            .s_axi_wlast(s_axi_wlast),                                  // input wire s_axi_wlast
            .s_axi_wvalid(s_axi_wvalid),                                // input wire s_axi_wvalid
            .s_axi_wready(s_axi_wready),                                // output wire s_axi_wready
            .s_axi_bid(s_axi_bid),                                      // output wire [5 : 0] s_axi_bid
            .s_axi_bresp(s_axi_bresp),                                  // output wire [1 : 0] s_axi_bresp
            .s_axi_bvalid(s_axi_bvalid),                                // output wire s_axi_bvalid
            .s_axi_bready(s_axi_bready),                                // input wire s_axi_bready
            .s_axi_arid(s_axi_arid),                                    // input wire [5 : 0] s_axi_arid
            .s_axi_araddr(s_axi_araddr),                                // input wire [31 : 0] s_axi_araddr
            .s_axi_arlen(s_axi_arlen),                                  // input wire [7 : 0] s_axi_arlen
            .s_axi_arsize(s_axi_arsize),                                // input wire [2 : 0] s_axi_arsize
            .s_axi_arburst(s_axi_arburst),                              // input wire [1 : 0] s_axi_arburst
            .s_axi_arvalid(s_axi_arvalid),                              // input wire s_axi_arvalid
            .s_axi_arready(s_axi_arready),                              // output wire s_axi_arready
            .s_axi_rid(s_axi_rid),                                      // output wire [5 : 0] s_axi_rid
            .s_axi_rdata(s_axi_rdata),                                  // output wire [31 : 0] s_axi_rdata
            .s_axi_rresp(s_axi_rresp),                                  // output wire [1 : 0] s_axi_rresp
            .s_axi_rlast(s_axi_rlast),                                  // output wire s_axi_rlast
            .s_axi_rvalid(s_axi_rvalid),                                // output wire s_axi_rvalid
            .s_axi_rready(s_axi_rready),                                // input wire s_axi_rready
            .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),                  // input wire [3 : 0] axi_c2c_m2s_intr_in
            .axi_c2c_s2m_intr_out(axi_c2c_s2m_intr_out),                // output wire [3 : 0] axi_c2c_s2m_intr_out
            .idelay_ref_clk(idelay_ref_clk),                            // input wire idelay_ref_clk
            .axi_c2c_phy_clk(axi_c2c_phy_clk),                          // input wire axi_c2c_phy_clk
            .axi_c2c_selio_tx_clk_out(axi_c2c_selio_tx_clk_out),        // output wire axi_c2c_selio_tx_clk_out
            .axi_c2c_selio_tx_data_out(axi_c2c_selio_tx_data_out),      // output wire [8 : 0] axi_c2c_selio_tx_data_out
            .axi_c2c_selio_rx_clk_in(axi_c2c_selio_rx_clk_in),          // input wire axi_c2c_selio_rx_clk_in
            .axi_c2c_selio_rx_data_in(axi_c2c_selio_rx_data_in),        // input wire [8 : 0] axi_c2c_selio_rx_data_in
            .axi_c2c_link_status_out(axi_c2c_link_status_out),          // output wire axi_c2c_link_status_out
            .axi_c2c_multi_bit_error_out(axi_c2c_multi_bit_error_out),  // output wire axi_c2c_multi_bit_error_out
            .axi_c2c_link_error_out(axi_c2c_link_error_out)            // output wire axi_c2c_link_error_out
          );
endmodule
