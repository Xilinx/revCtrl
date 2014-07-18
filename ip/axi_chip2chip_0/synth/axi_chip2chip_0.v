// (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:axi_chip2chip:4.2
// IP Revision: 1

(* X_CORE_INFO = "axi_chip2chip_v4_2,Vivado 2014.2" *)
(* CHECK_LICENSE_TYPE = "axi_chip2chip_0,axi_chip2chip_v4_2,{}" *)
(* CORE_GENERATION_INFO = "axi_chip2chip_0,axi_chip2chip_v4_2,{x_ipProduct=Vivado 2014.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_chip2chip,x_ipVersion=4.2,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=zynq,C_INSTANCE=axi_c2c,C_SIMULATION=0,C_MASTER_FPGA=1,C_AXI_BUS_TYPE=0,C_COMMON_CLK=0,C_INTERFACE_TYPE=1,C_INTERFACE_MODE=2,C_NUM_OF_IO=20,C_SELECTIO_PHY_CLK=100,C_INCLUDE_AXILITE=0,C_AXI_DATA_WIDTH=32,C_AXI_ID_WIDTH=6,C_AXI_WUSER_WIDTH=4,C_DISABLE_DESKEW=0,C_DISABLE_CLK_SHIFT=0,C_USE_DIFF_CLK=0,C_USE_DIFF_IO=0,C_AURORA_WIDTH=64,C_ECC_ENABLE=1,C_AXI_STB_WIDTH=4,C_AXI_ADDR_WIDTH=32,C_AXI_LEN_WIDTH=8,C_AXI_SIZE_WIDTH=3,C_AXI_BRST_WIDTH=2,C_AXI_RESP_WIDTH=2,C_INTERRUPT_WIDTH=4,C_AXI_LITE_ADDR_WIDTH=32,C_AXI_LITE_PROT_WIDTH=2,C_AXI_LITE_DATA_WIDTH=32,C_AXI_LITE_STB_WIDTH=4,C_AXI_LITE_RESP_WIDTH=2}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_chip2chip_0 (
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

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_aclk CLK" *)
input wire s_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_aresetn RST" *)
input wire s_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *)
input wire [5 : 0] s_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *)
input wire [7 : 0] s_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *)
input wire [2 : 0] s_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *)
input wire [1 : 0] s_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WUSER" *)
input wire [3 : 0] s_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *)
input wire s_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *)
output wire [5 : 0] s_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARID" *)
input wire [5 : 0] s_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [31 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *)
input wire [7 : 0] s_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *)
input wire [2 : 0] s_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *)
input wire [1 : 0] s_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RID" *)
output wire [5 : 0] s_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *)
output wire s_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
input wire [3 : 0] axi_c2c_m2s_intr_in;
output wire [3 : 0] axi_c2c_s2m_intr_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_ref_clk CLK" *)
input wire idelay_ref_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_phy_clk CLK" *)
input wire axi_c2c_phy_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_selio_tx_clk_out CLK" *)
output wire axi_c2c_selio_tx_clk_out;
output wire [8 : 0] axi_c2c_selio_tx_data_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_selio_rx_clk_in CLK" *)
input wire axi_c2c_selio_rx_clk_in;
input wire [8 : 0] axi_c2c_selio_rx_data_in;
output wire axi_c2c_link_status_out;
output wire axi_c2c_multi_bit_error_out;
output wire axi_c2c_link_error_out;

  axi_chip2chip_v4_2 #(
    .C_FAMILY("zynq"),
    .C_INSTANCE("axi_c2c"),
    .C_SIMULATION(0),
    .C_MASTER_FPGA(1),
    .C_AXI_BUS_TYPE(0),
    .C_COMMON_CLK(0),
    .C_INTERFACE_TYPE(1),
    .C_INTERFACE_MODE(2),
    .C_NUM_OF_IO(20),
    .C_SELECTIO_PHY_CLK(100),
    .C_INCLUDE_AXILITE(0),
    .C_AXI_DATA_WIDTH(32),
    .C_AXI_ID_WIDTH(6),
    .C_AXI_WUSER_WIDTH(4),
    .C_DISABLE_DESKEW(0),
    .C_DISABLE_CLK_SHIFT(0),
    .C_USE_DIFF_CLK(0),
    .C_USE_DIFF_IO(0),
    .C_AURORA_WIDTH(64),
    .C_ECC_ENABLE(1),
    .C_AXI_STB_WIDTH(4),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_SIZE_WIDTH(3),
    .C_AXI_BRST_WIDTH(2),
    .C_AXI_RESP_WIDTH(2),
    .C_INTERRUPT_WIDTH(4),
    .C_AXI_LITE_ADDR_WIDTH(32),
    .C_AXI_LITE_PROT_WIDTH(2),
    .C_AXI_LITE_DATA_WIDTH(32),
    .C_AXI_LITE_STB_WIDTH(4),
    .C_AXI_LITE_RESP_WIDTH(2)
  ) inst (
    .s_aclk(s_aclk),
    .s_aresetn(s_aresetn),
    .s_axi_awid(s_axi_awid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awlen(s_axi_awlen),
    .s_axi_awsize(s_axi_awsize),
    .s_axi_awburst(s_axi_awburst),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wuser(s_axi_wuser),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wlast(s_axi_wlast),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bid(s_axi_bid),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_arid(s_axi_arid),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arlen(s_axi_arlen),
    .s_axi_arsize(s_axi_arsize),
    .s_axi_arburst(s_axi_arburst),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rid(s_axi_rid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rlast(s_axi_rlast),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),
    .axi_c2c_s2m_intr_out(axi_c2c_s2m_intr_out),
    .m_aclk(1'B0),
    .m_aresetn(1'B1),
    .m_axi_awid(),
    .m_axi_awaddr(),
    .m_axi_awlen(),
    .m_axi_awsize(),
    .m_axi_awburst(),
    .m_axi_awvalid(),
    .m_axi_awready(1'B0),
    .m_axi_wuser(),
    .m_axi_wdata(),
    .m_axi_wstrb(),
    .m_axi_wlast(),
    .m_axi_wvalid(),
    .m_axi_wready(1'B0),
    .m_axi_bid(6'B0),
    .m_axi_bresp(2'B0),
    .m_axi_bvalid(1'B0),
    .m_axi_bready(),
    .m_axi_arid(),
    .m_axi_araddr(),
    .m_axi_arlen(),
    .m_axi_arsize(),
    .m_axi_arburst(),
    .m_axi_arvalid(),
    .m_axi_arready(1'B0),
    .m_axi_rid(6'B0),
    .m_axi_rdata(32'B0),
    .m_axi_rresp(2'B0),
    .m_axi_rlast(1'B0),
    .m_axi_rvalid(1'B0),
    .m_axi_rready(),
    .axi_c2c_s2m_intr_in(4'B0),
    .axi_c2c_m2s_intr_out(),
    .idelay_ref_clk(idelay_ref_clk),
    .axi_c2c_phy_clk(axi_c2c_phy_clk),
    .axi_c2c_selio_tx_clk_out(axi_c2c_selio_tx_clk_out),
    .axi_c2c_selio_tx_data_out(axi_c2c_selio_tx_data_out),
    .axi_c2c_selio_rx_clk_in(axi_c2c_selio_rx_clk_in),
    .axi_c2c_selio_rx_data_in(axi_c2c_selio_rx_data_in),
    .axi_c2c_selio_tx_diff_clk_out_p(),
    .axi_c2c_selio_tx_diff_clk_out_n(),
    .axi_c2c_selio_tx_diff_data_out_p(),
    .axi_c2c_selio_tx_diff_data_out_n(),
    .axi_c2c_selio_rx_diff_clk_in_p(1'B0),
    .axi_c2c_selio_rx_diff_clk_in_n(1'B0),
    .axi_c2c_selio_rx_diff_data_in_p(9'B0),
    .axi_c2c_selio_rx_diff_data_in_n(9'B0),
    .axi_c2c_aurora_channel_up(1'B0),
    .axi_c2c_aurora_tx_tready(1'B0),
    .axi_c2c_aurora_tx_tdata(),
    .axi_c2c_aurora_tx_tvalid(),
    .axi_c2c_aurora_rx_tdata(64'B0),
    .axi_c2c_aurora_rx_tvalid(1'B0),
    .aurora_do_cc(),
    .aurora_pma_init_in(1'B0),
    .aurora_init_clk(1'B0),
    .aurora_pma_init_out(),
    .aurora_mmcm_not_locked(1'B0),
    .aurora_reset_pb(),
    .axi_c2c_config_error_out(),
    .axi_c2c_link_status_out(axi_c2c_link_status_out),
    .axi_c2c_multi_bit_error_out(axi_c2c_multi_bit_error_out),
    .axi_c2c_link_error_out(axi_c2c_link_error_out),
    .m_aclk_out(),
    .s_axi_lite_aclk(1'B0),
    .s_axi_lite_awaddr(32'B0),
    .s_axi_lite_awprot(2'B0),
    .s_axi_lite_awvalid(1'B0),
    .s_axi_lite_awready(),
    .s_axi_lite_wdata(32'B0),
    .s_axi_lite_wstrb(4'B0),
    .s_axi_lite_wvalid(1'B0),
    .s_axi_lite_wready(),
    .s_axi_lite_bresp(),
    .s_axi_lite_bvalid(),
    .s_axi_lite_bready(1'B0),
    .s_axi_lite_araddr(32'B0),
    .s_axi_lite_arprot(2'B0),
    .s_axi_lite_arvalid(1'B0),
    .s_axi_lite_arready(),
    .s_axi_lite_rdata(),
    .s_axi_lite_rresp(),
    .s_axi_lite_rvalid(),
    .s_axi_lite_rready(1'B0),
    .m_axi_lite_aclk(1'B0),
    .m_axi_lite_awaddr(),
    .m_axi_lite_awprot(),
    .m_axi_lite_awvalid(),
    .m_axi_lite_awready(1'B0),
    .m_axi_lite_wdata(),
    .m_axi_lite_wstrb(),
    .m_axi_lite_wvalid(),
    .m_axi_lite_wready(1'B0),
    .m_axi_lite_bresp(2'B0),
    .m_axi_lite_bvalid(1'B0),
    .m_axi_lite_bready(),
    .m_axi_lite_araddr(),
    .m_axi_lite_arprot(),
    .m_axi_lite_arvalid(),
    .m_axi_lite_arready(1'B0),
    .m_axi_lite_rdata(32'B0),
    .m_axi_lite_rresp(2'B0),
    .m_axi_lite_rvalid(1'B0),
    .m_axi_lite_rready()
  );
endmodule
