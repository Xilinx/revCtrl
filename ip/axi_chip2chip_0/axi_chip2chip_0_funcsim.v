// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win64) Build 928826 Thu Jun  5 18:17:50 MDT 2014
// Date        : Wed Jun 25 17:28:32 2014
// Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/vivado/TSC/2014/versionControl/fromNaveen/example_design_scripts_2014_2/ip/axi_chip2chip_0/axi_chip2chip_0_funcsim.v
// Design      : axi_chip2chip_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "axi_chip2chip_v4_2,Vivado 2014.2" *) (* CHECK_LICENSE_TYPE = "axi_chip2chip_0,axi_chip2chip_v4_2,{}" *) (* CORE_GENERATION_INFO = "axi_chip2chip_0,axi_chip2chip_v4_2,{x_ipProduct=Vivado 2014.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_chip2chip,x_ipVersion=4.2,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=zynq,C_INSTANCE=axi_c2c,C_SIMULATION=0,C_MASTER_FPGA=1,C_AXI_BUS_TYPE=0,C_COMMON_CLK=0,C_INTERFACE_TYPE=1,C_INTERFACE_MODE=2,C_NUM_OF_IO=20,C_SELECTIO_PHY_CLK=100,C_INCLUDE_AXILITE=0,C_AXI_DATA_WIDTH=32,C_AXI_ID_WIDTH=6,C_AXI_WUSER_WIDTH=4,C_DISABLE_DESKEW=0,C_DISABLE_CLK_SHIFT=0,C_USE_DIFF_CLK=0,C_USE_DIFF_IO=0,C_AURORA_WIDTH=64,C_ECC_ENABLE=1,C_AXI_STB_WIDTH=4,C_AXI_ADDR_WIDTH=32,C_AXI_LEN_WIDTH=8,C_AXI_SIZE_WIDTH=3,C_AXI_BRST_WIDTH=2,C_AXI_RESP_WIDTH=2,C_INTERRUPT_WIDTH=4,C_AXI_LITE_ADDR_WIDTH=32,C_AXI_LITE_PROT_WIDTH=2,C_AXI_LITE_DATA_WIDTH=32,C_AXI_LITE_STB_WIDTH=4,C_AXI_LITE_RESP_WIDTH=2}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module axi_chip2chip_0
   (s_aclk,
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
    axi_c2c_link_error_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_aclk CLK" *) input s_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_aresetn RST" *) input s_aresetn;
  input [5:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  input [3:0]s_axi_wuser;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  output [5:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  input [5:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  output [5:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  input [3:0]axi_c2c_m2s_intr_in;
  output [3:0]axi_c2c_s2m_intr_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_ref_clk CLK" *) input idelay_ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_phy_clk CLK" *) input axi_c2c_phy_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_selio_tx_clk_out CLK" *) output axi_c2c_selio_tx_clk_out;
  output [8:0]axi_c2c_selio_tx_data_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_selio_rx_clk_in CLK" *) input axi_c2c_selio_rx_clk_in;
  input [8:0]axi_c2c_selio_rx_data_in;
  output axi_c2c_link_status_out;
  output axi_c2c_multi_bit_error_out;
  output axi_c2c_link_error_out;

  wire axi_c2c_link_error_out;
  wire axi_c2c_link_status_out;
  wire [3:0]axi_c2c_m2s_intr_in;
  wire axi_c2c_multi_bit_error_out;
  wire axi_c2c_phy_clk;
  wire [3:0]axi_c2c_s2m_intr_out;
(* IBUF_LOW_PWR *)   wire axi_c2c_selio_rx_clk_in;
(* IBUF_LOW_PWR *)   wire [8:0]axi_c2c_selio_rx_data_in;
(* DRIVE = "12" *) (* SLEW = "SLOW" *)   wire axi_c2c_selio_tx_clk_out;
(* DRIVE = "12" *) (* SLEW = "SLOW" *)   wire [8:0]axi_c2c_selio_tx_data_out;
  wire idelay_ref_clk;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [5:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [5:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [5:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [5:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [3:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire NLW_inst_aurora_do_cc_UNCONNECTED;
  wire NLW_inst_aurora_pma_init_out_UNCONNECTED;
  wire NLW_inst_aurora_reset_pb_UNCONNECTED;
  wire NLW_inst_axi_c2c_aurora_tx_tvalid_UNCONNECTED;
  wire NLW_inst_axi_c2c_config_error_out_UNCONNECTED;
  wire NLW_inst_axi_c2c_selio_tx_diff_clk_out_n_UNCONNECTED;
  wire NLW_inst_axi_c2c_selio_tx_diff_clk_out_p_UNCONNECTED;
  wire NLW_inst_m_aclk_out_UNCONNECTED;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_bready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_rready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_wvalid_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axi_lite_arready_UNCONNECTED;
  wire NLW_inst_s_axi_lite_awready_UNCONNECTED;
  wire NLW_inst_s_axi_lite_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_lite_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_lite_wready_UNCONNECTED;
  wire [63:0]NLW_inst_axi_c2c_aurora_tx_tdata_UNCONNECTED;
  wire [3:0]NLW_inst_axi_c2c_m2s_intr_out_UNCONNECTED;
  wire [8:0]NLW_inst_axi_c2c_selio_tx_diff_data_out_n_UNCONNECTED;
  wire [8:0]NLW_inst_axi_c2c_selio_tx_diff_data_out_p_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_lite_arprot_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_lite_awprot_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_lite_wstrb_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_lite_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_lite_rdata_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_lite_rresp_UNCONNECTED;

(* ADDR_MUX_RATIO = "4" *) 
   (* AFIFO_DATA_SIZE = "50" *) 
   (* AFIFO_DATA_SIZE_M2 = "0" *) 
   (* AFIFO_DATA_SIZE_M3 = "2" *) 
   (* AFIFO_DATA_SIZE_M4 = "2" *) 
   (* AFIFO_TIE_WIDTH = "3" *) 
   (* AFIFO_WIDTH = "52" *) 
   (* AWB_FC_WIDTH = "2" *) 
   (* AXILITE_WIDTH = "20" *) 
   (* BFIFO_DATA_SIZE = "8" *) 
   (* BFIFO_WIDTH = "8" *) 
   (* C_AURORA_WIDTH = "64" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_BRST_WIDTH = "2" *) 
   (* C_AXI_BUS_TYPE = "0" *) 
   (* C_AXI_DATA_WIDTH = "32" *) 
   (* C_AXI_ID_WIDTH = "6" *) 
   (* C_AXI_LEN_WIDTH = "8" *) 
   (* C_AXI_LITE_ADDR_WIDTH = "32" *) 
   (* C_AXI_LITE_DATA_WIDTH = "32" *) 
   (* C_AXI_LITE_PROT_WIDTH = "2" *) 
   (* C_AXI_LITE_RESP_WIDTH = "2" *) 
   (* C_AXI_LITE_STB_WIDTH = "4" *) 
   (* C_AXI_RESP_WIDTH = "2" *) 
   (* C_AXI_SIZE_WIDTH = "3" *) 
   (* C_AXI_SIZE_WIDTH_INTERNAL = "2" *) 
   (* C_AXI_STB_WIDTH = "4" *) 
   (* C_AXI_WUSER_WIDTH = "4" *) 
   (* C_COMMON_CLK = "0" *) 
   (* C_DISABLE_CLK_SHIFT = "0" *) 
   (* C_DISABLE_DESKEW = "0" *) 
   (* C_ECC_ENABLE = "1" *) 
   (* C_FAMILY = "zynq" *) 
   (* C_INCLUDE_AXILITE = "0" *) 
   (* C_INSTANCE = "axi_c2c" *) 
   (* C_INTERFACE_MODE = "2" *) 
   (* C_INTERFACE_TYPE = "1" *) 
   (* C_INTERRUPT_WIDTH = "4" *) 
   (* C_MASTER_FPGA = "1" *) 
   (* C_NUM_OF_IO = "20" *) 
   (* C_PHY_SELECT = "0" *) 
   (* C_SELECTIO_DDR = "1" *) 
   (* C_SELECTIO_PHY_CLK = "100" *) 
   (* C_SELECTIO_WIDTH = "9" *) 
   (* C_SIMULATION = "0" *) 
   (* C_SYNC_STAGE = "3" *) 
   (* C_USE_DIFF_CLK = "0" *) 
   (* C_USE_DIFF_IO = "0" *) 
   (* C_WIDTH_CONVERSION = "4" *) 
   (* DATA_MUX_RATIO = "4" *) 
   (* DowngradeIPIdentifiedWarnings = "yes" *) 
   (* PHY_CTRL_WIDTH = "3" *) 
   (* PHY_DATA_WIDTH = "18" *) 
   (* RB_FC_WIDTH = "3" *) 
   (* RFIFO_DATA_SIZE = "41" *) 
   (* RFIFO_DATA_SIZE_M2 = "1" *) 
   (* RFIFO_DATA_SIZE_M3 = "2" *) 
   (* RFIFO_DATA_SIZE_M4 = "1" *) 
   (* RFIFO_TIE_WIDTH = "4" *) 
   (* RFIFO_WIDTH = "44" *) 
   (* TDM_ID_WIDTH = "2" *) 
   (* TDM_VAL_BITS = "1" *) 
   (* WFIFO_DATA_SIZE = "41" *) 
   (* WFIFO_DATA_SIZE_M2 = "1" *) 
   (* WFIFO_DATA_SIZE_M3 = "2" *) 
   (* WFIFO_DATA_SIZE_M4 = "1" *) 
   (* WFIFO_TIE_WIDTH = "4" *) 
   (* WFIFO_WIDTH = "44" *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) 
   axi_chip2chip_0_axi_chip2chip_v4_2 inst
       (.aurora_do_cc(NLW_inst_aurora_do_cc_UNCONNECTED),
        .aurora_init_clk(1'b0),
        .aurora_mmcm_not_locked(1'b0),
        .aurora_pma_init_in(1'b0),
        .aurora_pma_init_out(NLW_inst_aurora_pma_init_out_UNCONNECTED),
        .aurora_reset_pb(NLW_inst_aurora_reset_pb_UNCONNECTED),
        .axi_c2c_aurora_channel_up(1'b0),
        .axi_c2c_aurora_rx_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_c2c_aurora_rx_tvalid(1'b0),
        .axi_c2c_aurora_tx_tdata(NLW_inst_axi_c2c_aurora_tx_tdata_UNCONNECTED[63:0]),
        .axi_c2c_aurora_tx_tready(1'b0),
        .axi_c2c_aurora_tx_tvalid(NLW_inst_axi_c2c_aurora_tx_tvalid_UNCONNECTED),
        .axi_c2c_config_error_out(NLW_inst_axi_c2c_config_error_out_UNCONNECTED),
        .axi_c2c_link_error_out(axi_c2c_link_error_out),
        .axi_c2c_link_status_out(axi_c2c_link_status_out),
        .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),
        .axi_c2c_m2s_intr_out(NLW_inst_axi_c2c_m2s_intr_out_UNCONNECTED[3:0]),
        .axi_c2c_multi_bit_error_out(axi_c2c_multi_bit_error_out),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .axi_c2c_s2m_intr_in({1'b0,1'b0,1'b0,1'b0}),
        .axi_c2c_s2m_intr_out(axi_c2c_s2m_intr_out),
        .axi_c2c_selio_rx_clk_in(axi_c2c_selio_rx_clk_in),
        .axi_c2c_selio_rx_data_in(axi_c2c_selio_rx_data_in),
        .axi_c2c_selio_rx_diff_clk_in_n(1'b0),
        .axi_c2c_selio_rx_diff_clk_in_p(1'b0),
        .axi_c2c_selio_rx_diff_data_in_n({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_c2c_selio_rx_diff_data_in_p({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_c2c_selio_tx_clk_out(axi_c2c_selio_tx_clk_out),
        .axi_c2c_selio_tx_data_out(axi_c2c_selio_tx_data_out),
        .axi_c2c_selio_tx_diff_clk_out_n(NLW_inst_axi_c2c_selio_tx_diff_clk_out_n_UNCONNECTED),
        .axi_c2c_selio_tx_diff_clk_out_p(NLW_inst_axi_c2c_selio_tx_diff_clk_out_p_UNCONNECTED),
        .axi_c2c_selio_tx_diff_data_out_n(NLW_inst_axi_c2c_selio_tx_diff_data_out_n_UNCONNECTED[8:0]),
        .axi_c2c_selio_tx_diff_data_out_p(NLW_inst_axi_c2c_selio_tx_diff_data_out_p_UNCONNECTED[8:0]),
        .idelay_ref_clk(idelay_ref_clk),
        .m_aclk(1'b0),
        .m_aclk_out(NLW_inst_m_aclk_out_UNCONNECTED),
        .m_aresetn(1'b1),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[5:0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arready(1'b0),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[5:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awready(1'b0),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_lite_aclk(1'b0),
        .m_axi_lite_araddr(NLW_inst_m_axi_lite_araddr_UNCONNECTED[31:0]),
        .m_axi_lite_arprot(NLW_inst_m_axi_lite_arprot_UNCONNECTED[1:0]),
        .m_axi_lite_arready(1'b0),
        .m_axi_lite_arvalid(NLW_inst_m_axi_lite_arvalid_UNCONNECTED),
        .m_axi_lite_awaddr(NLW_inst_m_axi_lite_awaddr_UNCONNECTED[31:0]),
        .m_axi_lite_awprot(NLW_inst_m_axi_lite_awprot_UNCONNECTED[1:0]),
        .m_axi_lite_awready(1'b0),
        .m_axi_lite_awvalid(NLW_inst_m_axi_lite_awvalid_UNCONNECTED),
        .m_axi_lite_bready(NLW_inst_m_axi_lite_bready_UNCONNECTED),
        .m_axi_lite_bresp({1'b0,1'b0}),
        .m_axi_lite_bvalid(1'b0),
        .m_axi_lite_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_lite_rready(NLW_inst_m_axi_lite_rready_UNCONNECTED),
        .m_axi_lite_rresp({1'b0,1'b0}),
        .m_axi_lite_rvalid(1'b0),
        .m_axi_lite_wdata(NLW_inst_m_axi_lite_wdata_UNCONNECTED[31:0]),
        .m_axi_lite_wready(1'b0),
        .m_axi_lite_wstrb(NLW_inst_m_axi_lite_wstrb_UNCONNECTED[3:0]),
        .m_axi_lite_wvalid(NLW_inst_m_axi_lite_wvalid_UNCONNECTED),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[31:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[3:0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_lite_aclk(1'b0),
        .s_axi_lite_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_lite_arprot({1'b0,1'b0}),
        .s_axi_lite_arready(NLW_inst_s_axi_lite_arready_UNCONNECTED),
        .s_axi_lite_arvalid(1'b0),
        .s_axi_lite_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_lite_awprot({1'b0,1'b0}),
        .s_axi_lite_awready(NLW_inst_s_axi_lite_awready_UNCONNECTED),
        .s_axi_lite_awvalid(1'b0),
        .s_axi_lite_bready(1'b0),
        .s_axi_lite_bresp(NLW_inst_s_axi_lite_bresp_UNCONNECTED[1:0]),
        .s_axi_lite_bvalid(NLW_inst_s_axi_lite_bvalid_UNCONNECTED),
        .s_axi_lite_rdata(NLW_inst_s_axi_lite_rdata_UNCONNECTED[31:0]),
        .s_axi_lite_rready(1'b0),
        .s_axi_lite_rresp(NLW_inst_s_axi_lite_rresp_UNCONNECTED[1:0]),
        .s_axi_lite_rvalid(NLW_inst_s_axi_lite_rvalid_UNCONNECTED),
        .s_axi_lite_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_lite_wready(NLW_inst_s_axi_lite_wready_UNCONNECTED),
        .s_axi_lite_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_lite_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(s_axi_wuser),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* C_FAMILY = "zynq" *) (* C_INSTANCE = "axi_c2c" *) 
(* C_SIMULATION = "0" *) (* C_MASTER_FPGA = "1" *) (* C_AXI_BUS_TYPE = "0" *) 
(* C_COMMON_CLK = "0" *) (* C_INTERFACE_TYPE = "1" *) (* C_INTERFACE_MODE = "2" *) 
(* C_NUM_OF_IO = "20" *) (* C_SELECTIO_PHY_CLK = "100" *) (* C_INCLUDE_AXILITE = "0" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "6" *) (* C_AXI_WUSER_WIDTH = "4" *) 
(* C_DISABLE_DESKEW = "0" *) (* C_DISABLE_CLK_SHIFT = "0" *) (* C_USE_DIFF_CLK = "0" *) 
(* C_USE_DIFF_IO = "0" *) (* C_AURORA_WIDTH = "64" *) (* C_ECC_ENABLE = "1" *) 
(* C_AXI_STB_WIDTH = "4" *) (* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_SIZE_WIDTH = "3" *) (* C_AXI_BRST_WIDTH = "2" *) (* C_AXI_RESP_WIDTH = "2" *) 
(* C_INTERRUPT_WIDTH = "4" *) (* C_AXI_LITE_ADDR_WIDTH = "32" *) (* C_AXI_LITE_PROT_WIDTH = "2" *) 
(* C_AXI_LITE_DATA_WIDTH = "32" *) (* C_AXI_LITE_STB_WIDTH = "4" *) (* C_AXI_LITE_RESP_WIDTH = "2" *) 
(* C_AXI_SIZE_WIDTH_INTERNAL = "2" *) (* C_SYNC_STAGE = "3" *) (* C_PHY_SELECT = "0" *) 
(* C_SELECTIO_DDR = "1" *) (* C_WIDTH_CONVERSION = "4" *) (* C_SELECTIO_WIDTH = "9" *) 
(* PHY_DATA_WIDTH = "18" *) (* ADDR_MUX_RATIO = "4" *) (* DATA_MUX_RATIO = "4" *) 
(* AFIFO_DATA_SIZE = "50" *) (* AFIFO_DATA_SIZE_M2 = "0" *) (* AFIFO_DATA_SIZE_M3 = "2" *) 
(* AFIFO_DATA_SIZE_M4 = "2" *) (* AFIFO_WIDTH = "52" *) (* AFIFO_TIE_WIDTH = "3" *) 
(* WFIFO_DATA_SIZE = "41" *) (* WFIFO_DATA_SIZE_M2 = "1" *) (* WFIFO_DATA_SIZE_M3 = "2" *) 
(* WFIFO_DATA_SIZE_M4 = "1" *) (* WFIFO_WIDTH = "44" *) (* WFIFO_TIE_WIDTH = "4" *) 
(* RFIFO_DATA_SIZE = "41" *) (* RFIFO_DATA_SIZE_M2 = "1" *) (* RFIFO_DATA_SIZE_M3 = "2" *) 
(* RFIFO_DATA_SIZE_M4 = "1" *) (* RFIFO_WIDTH = "44" *) (* RFIFO_TIE_WIDTH = "4" *) 
(* BFIFO_DATA_SIZE = "8" *) (* BFIFO_WIDTH = "8" *) (* AWB_FC_WIDTH = "2" *) 
(* RB_FC_WIDTH = "3" *) (* TDM_ID_WIDTH = "2" *) (* TDM_VAL_BITS = "1" *) 
(* PHY_CTRL_WIDTH = "3" *) (* AXILITE_WIDTH = "20" *) (* ORIG_REF_NAME = "axi_chip2chip_v4_2" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2
   (s_aclk,
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
    m_aclk,
    m_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wuser,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready,
    axi_c2c_s2m_intr_in,
    axi_c2c_m2s_intr_out,
    idelay_ref_clk,
    axi_c2c_phy_clk,
    axi_c2c_selio_tx_clk_out,
    axi_c2c_selio_tx_data_out,
    axi_c2c_selio_rx_clk_in,
    axi_c2c_selio_rx_data_in,
    axi_c2c_selio_tx_diff_clk_out_p,
    axi_c2c_selio_tx_diff_clk_out_n,
    axi_c2c_selio_tx_diff_data_out_p,
    axi_c2c_selio_tx_diff_data_out_n,
    axi_c2c_selio_rx_diff_clk_in_p,
    axi_c2c_selio_rx_diff_clk_in_n,
    axi_c2c_selio_rx_diff_data_in_p,
    axi_c2c_selio_rx_diff_data_in_n,
    axi_c2c_aurora_channel_up,
    axi_c2c_aurora_tx_tready,
    axi_c2c_aurora_tx_tdata,
    axi_c2c_aurora_tx_tvalid,
    axi_c2c_aurora_rx_tdata,
    axi_c2c_aurora_rx_tvalid,
    aurora_do_cc,
    aurora_pma_init_in,
    aurora_init_clk,
    aurora_pma_init_out,
    aurora_mmcm_not_locked,
    aurora_reset_pb,
    axi_c2c_config_error_out,
    axi_c2c_link_status_out,
    axi_c2c_multi_bit_error_out,
    axi_c2c_link_error_out,
    m_aclk_out,
    s_axi_lite_aclk,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    m_axi_lite_aclk,
    m_axi_lite_awaddr,
    m_axi_lite_awprot,
    m_axi_lite_awvalid,
    m_axi_lite_awready,
    m_axi_lite_wdata,
    m_axi_lite_wstrb,
    m_axi_lite_wvalid,
    m_axi_lite_wready,
    m_axi_lite_bresp,
    m_axi_lite_bvalid,
    m_axi_lite_bready,
    m_axi_lite_araddr,
    m_axi_lite_arprot,
    m_axi_lite_arvalid,
    m_axi_lite_arready,
    m_axi_lite_rdata,
    m_axi_lite_rresp,
    m_axi_lite_rvalid,
    m_axi_lite_rready);
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
  input m_aclk;
  input m_aresetn;
  output [5:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wuser;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [5:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [5:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output m_axi_arvalid;
  input m_axi_arready;
  input [5:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  input [3:0]axi_c2c_s2m_intr_in;
  output [3:0]axi_c2c_m2s_intr_out;
  input idelay_ref_clk;
  input axi_c2c_phy_clk;
  output axi_c2c_selio_tx_clk_out;
  output [8:0]axi_c2c_selio_tx_data_out;
  input axi_c2c_selio_rx_clk_in;
  input [8:0]axi_c2c_selio_rx_data_in;
  output axi_c2c_selio_tx_diff_clk_out_p;
  output axi_c2c_selio_tx_diff_clk_out_n;
  output [8:0]axi_c2c_selio_tx_diff_data_out_p;
  output [8:0]axi_c2c_selio_tx_diff_data_out_n;
  input axi_c2c_selio_rx_diff_clk_in_p;
  input axi_c2c_selio_rx_diff_clk_in_n;
  input [8:0]axi_c2c_selio_rx_diff_data_in_p;
  input [8:0]axi_c2c_selio_rx_diff_data_in_n;
  input axi_c2c_aurora_channel_up;
  input axi_c2c_aurora_tx_tready;
  output [63:0]axi_c2c_aurora_tx_tdata;
  output axi_c2c_aurora_tx_tvalid;
  input [63:0]axi_c2c_aurora_rx_tdata;
  input axi_c2c_aurora_rx_tvalid;
  output aurora_do_cc;
  input aurora_pma_init_in;
  input aurora_init_clk;
  output aurora_pma_init_out;
  input aurora_mmcm_not_locked;
  output aurora_reset_pb;
  output axi_c2c_config_error_out;
  output axi_c2c_link_status_out;
  output axi_c2c_multi_bit_error_out;
  output axi_c2c_link_error_out;
  output m_aclk_out;
  input s_axi_lite_aclk;
  input [31:0]s_axi_lite_awaddr;
  input [1:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [31:0]s_axi_lite_araddr;
  input [1:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  input m_axi_lite_aclk;
  output [31:0]m_axi_lite_awaddr;
  output [1:0]m_axi_lite_awprot;
  output m_axi_lite_awvalid;
  input m_axi_lite_awready;
  output [31:0]m_axi_lite_wdata;
  output [3:0]m_axi_lite_wstrb;
  output m_axi_lite_wvalid;
  input m_axi_lite_wready;
  input [1:0]m_axi_lite_bresp;
  input m_axi_lite_bvalid;
  output m_axi_lite_bready;
  output [31:0]m_axi_lite_araddr;
  output [1:0]m_axi_lite_arprot;
  output m_axi_lite_arvalid;
  input m_axi_lite_arready;
  input [31:0]m_axi_lite_rdata;
  input [1:0]m_axi_lite_rresp;
  input m_axi_lite_rvalid;
  output m_axi_lite_rready;

  wire \<const0> ;
  wire aurora_init_clk;
  wire aurora_mmcm_not_locked;
  wire aurora_pma_init_in;
  wire axi_c2c_aurora_channel_up;
  wire [63:0]axi_c2c_aurora_rx_tdata;
  wire axi_c2c_aurora_rx_tvalid;
  wire axi_c2c_aurora_tx_tready;
  wire axi_c2c_config_error_out;
  wire axi_c2c_link_error_out;
  wire axi_c2c_link_status_out;
  wire [3:0]axi_c2c_m2s_intr_in;
  wire axi_c2c_multi_bit_error_out;
  wire axi_c2c_phy_clk;
  wire [3:0]axi_c2c_s2m_intr_out;
(* IBUF_LOW_PWR *)   wire axi_c2c_selio_rx_clk_in;
(* IBUF_LOW_PWR *)   wire [8:0]axi_c2c_selio_rx_data_in;
  wire axi_c2c_selio_rx_diff_clk_in_n;
  wire axi_c2c_selio_rx_diff_clk_in_p;
  wire [8:0]axi_c2c_selio_rx_diff_data_in_n;
  wire [8:0]axi_c2c_selio_rx_diff_data_in_p;
(* DRIVE = "12" *) (* SLEW = "SLOW" *)   wire axi_c2c_selio_tx_clk_out;
(* DRIVE = "12" *) (* SLEW = "SLOW" *)   wire [8:0]axi_c2c_selio_tx_data_out;
(* async_reg = "true" *) (* DONT_TOUCH *)   wire \axi_chip2chip_phy_init_inst/aurora_rst_out_cdc_to ;
(* async_reg = "true" *) (* DONT_TOUCH *)   wire \axi_chip2chip_phy_init_inst/aurora_rst_out_r1 ;
(* async_reg = "true" *) (* DONT_TOUCH *)   wire \axi_chip2chip_phy_init_inst/aurora_rst_out_r2 ;
  wire axi_reset;
  wire idelay_ref_clk;
  wire \n_0_master_fpga_gen.axi_chip2chip_master_inst ;
  wire \n_13_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire \n_14_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire \n_15_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire \n_16_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire \n_17_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire \n_18_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire \n_19_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire \n_20_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire \n_8_master_fpga_gen.axi_chip2chip_master_phy_inst ;
  wire rx_phy_ready;
  wire rx_user_clk;
  wire [17:0]rx_user_data;
  wire rx_user_reset;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [5:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [5:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [5:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [5:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire [3:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire tx_ch0_valid;
  wire [2:0]tx_phy_ctrl;
  wire tx_phy_ready;
  wire [17:0]tx_user_data;
  wire tx_user_reset;

  assign aurora_do_cc = \<const0> ;
  assign aurora_pma_init_out = \<const0> ;
  assign aurora_reset_pb = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[63] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[62] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[61] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[60] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[59] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[58] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[57] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[56] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[55] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[54] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[53] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[52] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[51] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[50] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[49] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[48] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[47] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[46] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[45] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[44] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[43] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[42] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[41] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[40] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[39] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[38] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[37] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[36] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[35] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[34] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[33] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[32] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[31] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[30] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[29] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[28] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[27] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[26] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[25] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[24] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[23] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[22] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[21] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[20] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[19] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[18] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[17] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[16] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[15] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[14] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[13] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[12] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[11] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[10] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[9] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[8] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[7] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[6] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[5] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[4] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[3] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[2] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[1] = \<const0> ;
  assign axi_c2c_aurora_tx_tdata[0] = \<const0> ;
  assign axi_c2c_aurora_tx_tvalid = \<const0> ;
  assign axi_c2c_m2s_intr_out[3] = \<const0> ;
  assign axi_c2c_m2s_intr_out[2] = \<const0> ;
  assign axi_c2c_m2s_intr_out[1] = \<const0> ;
  assign axi_c2c_m2s_intr_out[0] = \<const0> ;
  assign axi_c2c_selio_tx_diff_clk_out_n = \<const0> ;
  assign axi_c2c_selio_tx_diff_clk_out_p = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[8] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[7] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[6] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[5] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[4] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[3] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[2] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[1] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_n[0] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[8] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[7] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[6] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[5] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[4] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[3] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[2] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[1] = \<const0> ;
  assign axi_c2c_selio_tx_diff_data_out_p[0] = \<const0> ;
  assign m_aclk_out = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arid[5] = \<const0> ;
  assign m_axi_arid[4] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awid[5] = \<const0> ;
  assign m_axi_awid[4] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_lite_araddr[31] = \<const0> ;
  assign m_axi_lite_araddr[30] = \<const0> ;
  assign m_axi_lite_araddr[29] = \<const0> ;
  assign m_axi_lite_araddr[28] = \<const0> ;
  assign m_axi_lite_araddr[27] = \<const0> ;
  assign m_axi_lite_araddr[26] = \<const0> ;
  assign m_axi_lite_araddr[25] = \<const0> ;
  assign m_axi_lite_araddr[24] = \<const0> ;
  assign m_axi_lite_araddr[23] = \<const0> ;
  assign m_axi_lite_araddr[22] = \<const0> ;
  assign m_axi_lite_araddr[21] = \<const0> ;
  assign m_axi_lite_araddr[20] = \<const0> ;
  assign m_axi_lite_araddr[19] = \<const0> ;
  assign m_axi_lite_araddr[18] = \<const0> ;
  assign m_axi_lite_araddr[17] = \<const0> ;
  assign m_axi_lite_araddr[16] = \<const0> ;
  assign m_axi_lite_araddr[15] = \<const0> ;
  assign m_axi_lite_araddr[14] = \<const0> ;
  assign m_axi_lite_araddr[13] = \<const0> ;
  assign m_axi_lite_araddr[12] = \<const0> ;
  assign m_axi_lite_araddr[11] = \<const0> ;
  assign m_axi_lite_araddr[10] = \<const0> ;
  assign m_axi_lite_araddr[9] = \<const0> ;
  assign m_axi_lite_araddr[8] = \<const0> ;
  assign m_axi_lite_araddr[7] = \<const0> ;
  assign m_axi_lite_araddr[6] = \<const0> ;
  assign m_axi_lite_araddr[5] = \<const0> ;
  assign m_axi_lite_araddr[4] = \<const0> ;
  assign m_axi_lite_araddr[3] = \<const0> ;
  assign m_axi_lite_araddr[2] = \<const0> ;
  assign m_axi_lite_araddr[1] = \<const0> ;
  assign m_axi_lite_araddr[0] = \<const0> ;
  assign m_axi_lite_arprot[1] = \<const0> ;
  assign m_axi_lite_arprot[0] = \<const0> ;
  assign m_axi_lite_arvalid = \<const0> ;
  assign m_axi_lite_awaddr[31] = \<const0> ;
  assign m_axi_lite_awaddr[30] = \<const0> ;
  assign m_axi_lite_awaddr[29] = \<const0> ;
  assign m_axi_lite_awaddr[28] = \<const0> ;
  assign m_axi_lite_awaddr[27] = \<const0> ;
  assign m_axi_lite_awaddr[26] = \<const0> ;
  assign m_axi_lite_awaddr[25] = \<const0> ;
  assign m_axi_lite_awaddr[24] = \<const0> ;
  assign m_axi_lite_awaddr[23] = \<const0> ;
  assign m_axi_lite_awaddr[22] = \<const0> ;
  assign m_axi_lite_awaddr[21] = \<const0> ;
  assign m_axi_lite_awaddr[20] = \<const0> ;
  assign m_axi_lite_awaddr[19] = \<const0> ;
  assign m_axi_lite_awaddr[18] = \<const0> ;
  assign m_axi_lite_awaddr[17] = \<const0> ;
  assign m_axi_lite_awaddr[16] = \<const0> ;
  assign m_axi_lite_awaddr[15] = \<const0> ;
  assign m_axi_lite_awaddr[14] = \<const0> ;
  assign m_axi_lite_awaddr[13] = \<const0> ;
  assign m_axi_lite_awaddr[12] = \<const0> ;
  assign m_axi_lite_awaddr[11] = \<const0> ;
  assign m_axi_lite_awaddr[10] = \<const0> ;
  assign m_axi_lite_awaddr[9] = \<const0> ;
  assign m_axi_lite_awaddr[8] = \<const0> ;
  assign m_axi_lite_awaddr[7] = \<const0> ;
  assign m_axi_lite_awaddr[6] = \<const0> ;
  assign m_axi_lite_awaddr[5] = \<const0> ;
  assign m_axi_lite_awaddr[4] = \<const0> ;
  assign m_axi_lite_awaddr[3] = \<const0> ;
  assign m_axi_lite_awaddr[2] = \<const0> ;
  assign m_axi_lite_awaddr[1] = \<const0> ;
  assign m_axi_lite_awaddr[0] = \<const0> ;
  assign m_axi_lite_awprot[1] = \<const0> ;
  assign m_axi_lite_awprot[0] = \<const0> ;
  assign m_axi_lite_awvalid = \<const0> ;
  assign m_axi_lite_bready = \<const0> ;
  assign m_axi_lite_rready = \<const0> ;
  assign m_axi_lite_wdata[31] = \<const0> ;
  assign m_axi_lite_wdata[30] = \<const0> ;
  assign m_axi_lite_wdata[29] = \<const0> ;
  assign m_axi_lite_wdata[28] = \<const0> ;
  assign m_axi_lite_wdata[27] = \<const0> ;
  assign m_axi_lite_wdata[26] = \<const0> ;
  assign m_axi_lite_wdata[25] = \<const0> ;
  assign m_axi_lite_wdata[24] = \<const0> ;
  assign m_axi_lite_wdata[23] = \<const0> ;
  assign m_axi_lite_wdata[22] = \<const0> ;
  assign m_axi_lite_wdata[21] = \<const0> ;
  assign m_axi_lite_wdata[20] = \<const0> ;
  assign m_axi_lite_wdata[19] = \<const0> ;
  assign m_axi_lite_wdata[18] = \<const0> ;
  assign m_axi_lite_wdata[17] = \<const0> ;
  assign m_axi_lite_wdata[16] = \<const0> ;
  assign m_axi_lite_wdata[15] = \<const0> ;
  assign m_axi_lite_wdata[14] = \<const0> ;
  assign m_axi_lite_wdata[13] = \<const0> ;
  assign m_axi_lite_wdata[12] = \<const0> ;
  assign m_axi_lite_wdata[11] = \<const0> ;
  assign m_axi_lite_wdata[10] = \<const0> ;
  assign m_axi_lite_wdata[9] = \<const0> ;
  assign m_axi_lite_wdata[8] = \<const0> ;
  assign m_axi_lite_wdata[7] = \<const0> ;
  assign m_axi_lite_wdata[6] = \<const0> ;
  assign m_axi_lite_wdata[5] = \<const0> ;
  assign m_axi_lite_wdata[4] = \<const0> ;
  assign m_axi_lite_wdata[3] = \<const0> ;
  assign m_axi_lite_wdata[2] = \<const0> ;
  assign m_axi_lite_wdata[1] = \<const0> ;
  assign m_axi_lite_wdata[0] = \<const0> ;
  assign m_axi_lite_wstrb[3] = \<const0> ;
  assign m_axi_lite_wstrb[2] = \<const0> ;
  assign m_axi_lite_wstrb[1] = \<const0> ;
  assign m_axi_lite_wstrb[0] = \<const0> ;
  assign m_axi_lite_wvalid = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[3] = \<const0> ;
  assign m_axi_wuser[2] = \<const0> ;
  assign m_axi_wuser[1] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_lite_arready = \<const0> ;
  assign s_axi_lite_awready = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_bvalid = \<const0> ;
  assign s_axi_lite_rdata[31] = \<const0> ;
  assign s_axi_lite_rdata[30] = \<const0> ;
  assign s_axi_lite_rdata[29] = \<const0> ;
  assign s_axi_lite_rdata[28] = \<const0> ;
  assign s_axi_lite_rdata[27] = \<const0> ;
  assign s_axi_lite_rdata[26] = \<const0> ;
  assign s_axi_lite_rdata[25] = \<const0> ;
  assign s_axi_lite_rdata[24] = \<const0> ;
  assign s_axi_lite_rdata[23] = \<const0> ;
  assign s_axi_lite_rdata[22] = \<const0> ;
  assign s_axi_lite_rdata[21] = \<const0> ;
  assign s_axi_lite_rdata[20] = \<const0> ;
  assign s_axi_lite_rdata[19] = \<const0> ;
  assign s_axi_lite_rdata[18] = \<const0> ;
  assign s_axi_lite_rdata[17] = \<const0> ;
  assign s_axi_lite_rdata[16] = \<const0> ;
  assign s_axi_lite_rdata[15] = \<const0> ;
  assign s_axi_lite_rdata[14] = \<const0> ;
  assign s_axi_lite_rdata[13] = \<const0> ;
  assign s_axi_lite_rdata[12] = \<const0> ;
  assign s_axi_lite_rdata[11] = \<const0> ;
  assign s_axi_lite_rdata[10] = \<const0> ;
  assign s_axi_lite_rdata[9] = \<const0> ;
  assign s_axi_lite_rdata[8] = \<const0> ;
  assign s_axi_lite_rdata[7] = \<const0> ;
  assign s_axi_lite_rdata[6] = \<const0> ;
  assign s_axi_lite_rdata[5] = \<const0> ;
  assign s_axi_lite_rdata[4] = \<const0> ;
  assign s_axi_lite_rdata[3] = \<const0> ;
  assign s_axi_lite_rdata[2] = \<const0> ;
  assign s_axi_lite_rdata[1] = \<const0> ;
  assign s_axi_lite_rdata[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  assign s_axi_lite_rvalid = \<const0> ;
  assign s_axi_lite_wready = \<const0> ;
GND GND
       (.G(\<const0> ));
axi_chip2chip_0_axi_chip2chip_v4_2_master \master_fpga_gen.axi_chip2chip_master_inst 
       (.D({\n_16_master_fpga_gen.axi_chip2chip_master_phy_inst ,\n_17_master_fpga_gen.axi_chip2chip_master_phy_inst ,\n_18_master_fpga_gen.axi_chip2chip_master_phy_inst }),
        .DIADI({s_axi_awburst,s_axi_awsize[1:0],s_axi_awlen,s_axi_awid}),
        .E(\n_13_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .I1({s_axi_arburst,s_axi_arsize[1:0],s_axi_arlen,s_axi_arid}),
        .I2({s_axi_wstrb,s_axi_wlast,s_axi_wuser}),
        .I3(\n_20_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .I4(\n_15_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .I5(\n_19_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .I6(\n_8_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .I7(\n_14_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .I8(rx_user_data),
        .O1(\n_0_master_fpga_gen.axi_chip2chip_master_inst ),
        .O2({s_axi_rdata,s_axi_rresp,s_axi_rlast,s_axi_rid}),
        .O3({s_axi_bresp,s_axi_bid}),
        .O4(tx_user_data),
        .Q({tx_phy_ready,tx_phy_ctrl}),
        .SR(rx_user_reset),
        .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .axi_c2c_s2m_intr_out(axi_c2c_s2m_intr_out),
        .axi_reset(axi_reset),
        .clk_ph_out(rx_user_clk),
        .rx_phy_ready(rx_phy_ready),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .tx_ch0_valid(tx_ch0_valid),
        .tx_user_reset(tx_user_reset));
axi_chip2chip_0_axi_chip2chip_v4_2_phy_if \master_fpga_gen.axi_chip2chip_master_phy_inst 
       (.D({\n_16_master_fpga_gen.axi_chip2chip_master_phy_inst ,\n_17_master_fpga_gen.axi_chip2chip_master_phy_inst ,\n_18_master_fpga_gen.axi_chip2chip_master_phy_inst }),
        .E(\n_13_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .I1(\n_0_master_fpga_gen.axi_chip2chip_master_inst ),
        .I7(\n_14_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .O1(\n_8_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .O2(\n_15_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .O3(\n_19_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .O4(\n_20_master_fpga_gen.axi_chip2chip_master_phy_inst ),
        .O5(rx_user_data),
        .O6({axi_c2c_link_status_out,axi_c2c_multi_bit_error_out,axi_c2c_config_error_out}),
        .Q({tx_phy_ready,tx_phy_ctrl}),
        .SR(rx_user_reset),
        .aurora_rst_out_cdc_to(\axi_chip2chip_phy_init_inst/aurora_rst_out_cdc_to ),
        .aurora_rst_out_r1(\axi_chip2chip_phy_init_inst/aurora_rst_out_r1 ),
        .aurora_rst_out_r2(\axi_chip2chip_phy_init_inst/aurora_rst_out_r2 ),
        .axi_c2c_link_error_out(axi_c2c_link_error_out),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .axi_c2c_selio_rx_clk_in(axi_c2c_selio_rx_clk_in),
        .axi_c2c_selio_rx_data_in(axi_c2c_selio_rx_data_in),
        .axi_c2c_selio_tx_clk_out(axi_c2c_selio_tx_clk_out),
        .axi_c2c_selio_tx_data_out(axi_c2c_selio_tx_data_out),
        .axi_reset(axi_reset),
        .clk_ph_out(rx_user_clk),
        .data_in(tx_user_data),
        .idelay_ref_clk(idelay_ref_clk),
        .rx_phy_ready(rx_phy_ready),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .tx_ch0_valid(tx_ch0_valid),
        .tx_user_reset(tx_user_reset));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_async_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo
   (O1,
    O2,
    rst_full_gen_i,
    s_axi_awready,
    O3,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_awaddr,
    DIADI,
    br_fifo_reset,
    Q,
    aw_ch_data_ready,
    s_axi_awvalid);
  output O1;
  output O2;
  output rst_full_gen_i;
  output s_axi_awready;
  output [51:0]O3;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;
  input br_fifo_reset;
  input [0:0]Q;
  input aw_ch_data_ready;
  input s_axi_awvalid;

  wire [17:0]DIADI;
  wire O1;
  wire O2;
  wire [51:0]O3;
  wire [0:0]Q;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;

axi_chip2chip_0_fifo_generator_v12_0 U0
       (.DIADI(DIADI),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_async_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo_63
   (O1,
    s_axi_arready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_araddr,
    I1,
    rst_d2,
    br_fifo_reset,
    Q,
    ar_ch_data_ready,
    s_axi_arvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_arready;
  output [51:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_araddr;
  input [17:0]I1;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input ar_ch_data_ready;
  input s_axi_arvalid;
  input rst_full_gen_i;

  wire [17:0]I1;
  wire O1;
  wire [51:0]O2;
  wire [0:0]Q;
  wire ar_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;

axi_chip2chip_0_fifo_generator_v12_0_65 U0
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .ar_ch_data_ready(ar_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_async_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo__parameterized0
   (O1,
    s_axi_wready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_wdata,
    I2,
    rst_d2,
    br_fifo_reset,
    Q,
    wd_ch_data_ready,
    s_axi_wvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_wready;
  output [43:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_wdata;
  input [8:0]I2;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input wd_ch_data_ready;
  input s_axi_wvalid;
  input rst_full_gen_i;

  wire [8:0]I2;
  wire O1;
  wire [43:0]O2;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wd_ch_data_ready;

axi_chip2chip_0_fifo_generator_v12_0__parameterized0 U0
       (.I2(I2),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wd_ch_data_ready(wd_ch_data_ready));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_async_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo__parameterized0_10
   (O1,
    O2,
    rst_full_gen_i,
    O3,
    s_axi_rvalid,
    O4,
    s_aclk,
    clk_ph_out,
    pack_data_out,
    D,
    br_fifo_reset,
    rd_ch_data_valid,
    Q,
    E,
    s_axi_rready);
  output O1;
  output O2;
  output rst_full_gen_i;
  output [0:0]O3;
  output s_axi_rvalid;
  output [40:0]O4;
  input s_aclk;
  input clk_ph_out;
  input [32:0]pack_data_out;
  input [10:0]D;
  input br_fifo_reset;
  input rd_ch_data_valid;
  input [0:0]Q;
  input [0:0]E;
  input s_axi_rready;

  wire [10:0]D;
  wire [0:0]E;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire [40:0]O4;
  wire [0:0]Q;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire rd_ch_data_valid;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;

axi_chip2chip_0_fifo_generator_v12_0__parameterized0_11 U0
       (.D(D),
        .E(E),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .Q(Q),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_async_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo__parameterized1
   (O1,
    O2,
    D,
    O3,
    O4,
    O5,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O6,
    s_axi_bvalid,
    O36,
    O37,
    clk_ph_out,
    br_fifo_reset,
    s_aclk,
    I1,
    Q,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    br_ch_data_valid,
    rst_full_gen_i,
    s_axi_bready,
    I18);
  output O1;
  output O2;
  output [0:0]D;
  output O3;
  output O4;
  output O5;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output [1:0]O6;
  output s_axi_bvalid;
  output [1:0]O36;
  output [7:0]O37;
  input clk_ph_out;
  input br_fifo_reset;
  input s_aclk;
  input I1;
  input [7:0]Q;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input br_ch_data_valid;
  input rst_full_gen_i;
  input s_axi_bready;
  input [7:0]I18;

  wire [0:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [7:0]I18;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire [1:0]O36;
  wire [7:0]O37;
  wire O4;
  wire O5;
  wire [1:0]O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire br_ch_data_valid;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;

axi_chip2chip_0_fifo_generator_v12_0__parameterized1 U0
       (.D(D),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(O2),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(O3),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O37(O37),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .br_ch_data_valid(br_ch_data_valid),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_awr_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_awr_fifo
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    s_axi_arready,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_araddr,
    I1,
    rst_d2,
    br_fifo_reset,
    Q,
    ar_ch_data_ready,
    s_axi_arvalid,
    rst_full_gen_i,
    tx_user_reset,
    E);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output s_axi_arready;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_araddr;
  input [17:0]I1;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input ar_ch_data_ready;
  input s_axi_arvalid;
  input rst_full_gen_i;
  input tx_user_reset;
  input [0:0]E;

  wire [0:0]E;
  wire [17:0]I1;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire ar_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire p_0_in;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire tx_user_reset;
  wire [51:0]unpack_data_in;

axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo_63 axi_chip2chip_async_fifo_inst
       (.I1(I1),
        .O1(O1),
        .O2(unpack_data_in),
        .Q(p_0_in),
        .ar_ch_data_ready(ar_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
axi_chip2chip_0_axi_chip2chip_v4_2_unpacker_64 axi_chip2chip_unpacker_inst
       (.E(E),
        .I1(unpack_data_in),
        .O1(p_0_in),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .tx_user_reset(tx_user_reset));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_awr_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_awr_fifo_1
   (rst_d2,
    empty_fwft_i,
    rst_full_gen_i,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    s_axi_awready,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_awaddr,
    DIADI,
    br_fifo_reset,
    Q,
    aw_ch_data_ready,
    s_axi_awvalid,
    tx_user_reset,
    E);
  output rst_d2;
  output empty_fwft_i;
  output rst_full_gen_i;
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output s_axi_awready;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;
  input br_fifo_reset;
  input [0:0]Q;
  input aw_ch_data_ready;
  input s_axi_awvalid;
  input tx_user_reset;
  input [0:0]E;

  wire [17:0]DIADI;
  wire [0:0]E;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire empty_fwft_i;
  wire p_0_in;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire tx_user_reset;
  wire [51:0]unpack_data_in;

axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo axi_chip2chip_async_fifo_inst
       (.DIADI(DIADI),
        .O1(rst_d2),
        .O2(empty_fwft_i),
        .O3(unpack_data_in),
        .Q(p_0_in),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
axi_chip2chip_0_axi_chip2chip_v4_2_unpacker axi_chip2chip_unpacker_inst
       (.E(E),
        .O1(O1),
        .O10(O8),
        .O11(O9),
        .O12(O10),
        .O13(O11),
        .O14(O12),
        .O15(O13),
        .O2(p_0_in),
        .O3(unpack_data_in),
        .O4(O2),
        .O5(O3),
        .O6(O4),
        .O7(O5),
        .O8(O6),
        .O9(O7),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .tx_user_reset(tx_user_reset));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_awr_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_awr_fifo__parameterized0
   (O1,
    O2,
    O3,
    O4,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    s_axi_wready,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_wdata,
    I2,
    rst_d2,
    br_fifo_reset,
    O5,
    wd_ch_data_ready,
    s_axi_wvalid,
    rst_full_gen_i,
    tx_user_reset,
    E);
  output O1;
  output O2;
  output O3;
  output O4;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output s_axi_wready;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_wdata;
  input [8:0]I2;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]O5;
  input wd_ch_data_ready;
  input s_axi_wvalid;
  input rst_full_gen_i;
  input tx_user_reset;
  input [0:0]E;

  wire [0:0]E;
  wire [8:0]I2;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O2;
  wire O3;
  wire O4;
  wire [0:0]O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire p_0_in;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire tx_user_reset;
  wire [43:0]unpack_data_in;
  wire wd_ch_data_ready;

axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo__parameterized0 axi_chip2chip_async_fifo_inst
       (.I2(I2),
        .O1(O1),
        .O2(unpack_data_in),
        .Q(p_0_in),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wd_ch_data_ready(wd_ch_data_ready));
axi_chip2chip_0_axi_chip2chip_v4_2_unpacker__parameterized0 axi_chip2chip_unpacker_inst
       (.E(E),
        .I1(unpack_data_in),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(p_0_in),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .tx_user_reset(tx_user_reset));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_awr_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_awr_fifo__parameterized1
   (O1,
    O2,
    rst_full_gen_i,
    O3,
    s_axi_rvalid,
    O4,
    s_aclk,
    clk_ph_out,
    D,
    br_fifo_reset,
    rd_ch_data_valid,
    E,
    s_axi_rready,
    SR);
  output O1;
  output O2;
  output rst_full_gen_i;
  output [0:0]O3;
  output s_axi_rvalid;
  output [40:0]O4;
  input s_aclk;
  input clk_ph_out;
  input [10:0]D;
  input br_fifo_reset;
  input rd_ch_data_valid;
  input [0:0]E;
  input s_axi_rready;
  input [0:0]SR;

  wire [10:0]D;
  wire [0:0]E;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire [40:0]O4;
  wire [0:0]SR;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire p_0_in;
  wire [32:0]pack_data_out;
  wire rd_ch_data_valid;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;

axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo__parameterized0_10 axi_chip2chip_async_fifo_inst
       (.D(D),
        .E(E),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .Q(p_0_in),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
axi_chip2chip_0_axi_chip2chip_v4_2_packer__parameterized1 axi_chip2chip_packer_inst
       (.D(D),
        .E(E),
        .Q(p_0_in),
        .SR(SR),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_b_fifo" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_b_fifo
   (p_1_out,
    O1,
    D,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    s_axi_bvalid,
    O36,
    clk_ph_out,
    br_fifo_reset,
    s_aclk,
    I1,
    Q,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    br_ch_data_valid,
    rst_full_gen_i,
    s_axi_bready,
    I18);
  output p_1_out;
  output O1;
  output [0:0]D;
  output O2;
  output O3;
  output O4;
  output [1:0]O5;
  output [1:0]O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output s_axi_bvalid;
  output [7:0]O36;
  input clk_ph_out;
  input br_fifo_reset;
  input s_aclk;
  input I1;
  input [7:0]Q;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input br_ch_data_valid;
  input rst_full_gen_i;
  input s_axi_bready;
  input [7:0]I18;

  wire [0:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [7:0]I18;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire [7:0]O36;
  wire O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire br_ch_data_valid;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire p_1_out;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;

axi_chip2chip_0_axi_chip2chip_v4_2_async_fifo__parameterized1 axi_chip2chip_async_fifo_inst
       (.D(D),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(p_1_out),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(O1),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(O2),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O6),
        .O37(O36),
        .O4(O3),
        .O5(O4),
        .O6(O5),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .br_ch_data_valid(br_ch_data_valid),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_ch0_ctrl" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_ch0_ctrl
   (send_ch0,
    O1,
    D,
    O2,
    O3,
    axi_c2c_s2m_intr_out,
    O4,
    I3,
    axi_c2c_phy_clk,
    tx_user_reset,
    I4,
    I6,
    Q,
    I1,
    I2,
    I5,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    I23,
    I24,
    I25,
    I26,
    I27,
    I28,
    I29,
    I30,
    I31,
    I32,
    I33,
    I34,
    I35,
    I36,
    I37,
    I38,
    I39,
    I40,
    I41,
    I42,
    I43,
    I44,
    s_aclk,
    axi_reset,
    tx_ch0_ready,
    E,
    axi_c2c_m2s_intr_in,
    SR,
    I45,
    I46,
    clk_ph_out);
  output send_ch0;
  output O1;
  output [16:0]D;
  output [0:0]O2;
  output [0:0]O3;
  output [3:0]axi_c2c_s2m_intr_out;
  output O4;
  input I3;
  input axi_c2c_phy_clk;
  input tx_user_reset;
  input I4;
  input I6;
  input [3:0]Q;
  input I1;
  input I2;
  input I5;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input I19;
  input I20;
  input I21;
  input I22;
  input I23;
  input I24;
  input I25;
  input [2:0]I26;
  input [1:0]I27;
  input I28;
  input I29;
  input I30;
  input I31;
  input I32;
  input I33;
  input I34;
  input I35;
  input I36;
  input I37;
  input I38;
  input I39;
  input I40;
  input I41;
  input I42;
  input [0:0]I43;
  input [2:0]I44;
  input s_aclk;
  input axi_reset;
  input tx_ch0_ready;
  input [0:0]E;
  input [3:0]axi_c2c_m2s_intr_in;
  input [0:0]SR;
  input [0:0]I45;
  input [3:0]I46;
  input clk_ph_out;

  wire [16:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire [2:0]I26;
  wire [1:0]I27;
  wire I28;
  wire I29;
  wire I3;
  wire I30;
  wire I31;
  wire I32;
  wire I33;
  wire I34;
  wire I35;
  wire I36;
  wire I37;
  wire I38;
  wire I39;
  wire I4;
  wire I40;
  wire I41;
  wire I42;
  wire [0:0]I43;
  wire [2:0]I44;
  wire [0:0]I45;
  wire [3:0]I46;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire [0:0]O2;
  wire [0:0]O3;
  wire O4;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [3:0]axi_c2c_m2s_intr_in;
  wire axi_c2c_phy_clk;
  wire [3:0]axi_c2c_s2m_intr_out;
  wire axi_reset;
  wire [3:1]calib_pattern;
  wire clk_ph_out;
  wire [3:0]intr_data;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble[1]_i_1 ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble[5]_i_1 ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble[6]_i_1 ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_2 ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_3 ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[0] ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[1] ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[2] ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[4] ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ;
  wire \n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[7] ;
  wire n_0_axi_chip2chip_sync_cell_intr_out_inst;
  wire \n_0_calib_intr_gen.send_intr_reg ;
  wire \n_0_calib_intr_gen.tx_ch0_data[10]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data[11]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data[12]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data[4]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data[5]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data[6]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data[7]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data[8]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data[9]_i_1 ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[0] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[10] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[11] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[12] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[1] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[2] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[3] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[4] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[5] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[6] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[7] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[8] ;
  wire \n_0_calib_intr_gen.tx_ch0_data_reg[9] ;
  wire \n_0_calib_intr_gen.tx_ch0_valid_i_1 ;
  wire n_1_axi_chip2chip_sync_cell_intr_out_inst;
  wire n_2_axi_chip2chip_sync_cell_intr_out_inst;
  wire n_3_axi_chip2chip_sync_cell_intr_out_inst;
  wire n_4_axi_chip2chip_sync_cell_intr_in_inst;
  wire [3:0]p_1_in;
  wire s_aclk;
  wire send_calib;
  wire send_ch0;
  wire [3:0]sync_flop_2;
  wire tx_ch0_ready;
  wire tx_user_reset;

LUT6 #(
    .INIT(64'h4444444444404004)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[1]_i_1 
       (.I0(I26[1]),
        .I1(I26[2]),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .I4(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[1] ),
        .I5(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_3 ),
        .O(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000020000)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[5]_i_1 
       (.I0(I26[2]),
        .I1(I26[1]),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .I4(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[1] ),
        .I5(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_3 ),
        .O(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[5]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[6]_i_1 
       (.I0(I26[2]),
        .I1(I26[1]),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .I4(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[1] ),
        .I5(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_3 ),
        .O(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[6]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[7]_i_2 
       (.I0(I26[2]),
        .I1(I26[1]),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ),
        .I4(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[1] ),
        .I5(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_3 ),
        .O(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_2 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[7]_i_3 
       (.I0(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[0] ),
        .I1(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[4] ),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[7] ),
        .I4(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[2] ),
        .O(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_calib_intr_gen.cal_nibble_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[0] ),
        .R(I43));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_calib_intr_gen.cal_nibble_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[1]_i_1 ),
        .Q(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[1] ),
        .R(I43));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_calib_intr_gen.cal_nibble_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I44[0]),
        .Q(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[2] ),
        .S(I43));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_calib_intr_gen.cal_nibble_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I44[1]),
        .Q(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .R(I43));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_calib_intr_gen.cal_nibble_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I44[2]),
        .Q(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[4] ),
        .R(I43));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_calib_intr_gen.cal_nibble_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[5]_i_1 ),
        .Q(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .R(I43));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_calib_intr_gen.cal_nibble_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[6]_i_1 ),
        .Q(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ),
        .R(I43));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_calib_intr_gen.cal_nibble_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_FSM_onehot_calib_intr_gen.cal_nibble[7]_i_2 ),
        .Q(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[7] ),
        .R(I43));
axi_chip2chip_0_axi_chip2chip_v4_2_sync_cell axi_chip2chip_sync_cell_intr_in_inst
       (.I1(\n_0_calib_intr_gen.send_intr_reg ),
        .I2(O1),
        .I4(I4),
        .O1(sync_flop_2),
        .O2(n_4_axi_chip2chip_sync_cell_intr_in_inst),
        .Q(p_1_in),
        .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .tx_user_reset(tx_user_reset));
axi_chip2chip_0_axi_chip2chip_v4_2_sync_cell_41 axi_chip2chip_sync_cell_intr_out_inst
       (.I1(intr_data),
        .Q({n_0_axi_chip2chip_sync_cell_intr_out_inst,n_1_axi_chip2chip_sync_cell_intr_out_inst,n_2_axi_chip2chip_sync_cell_intr_out_inst,n_3_axi_chip2chip_sync_cell_intr_out_inst}),
        .s_aclk(s_aclk));
FDRE \calib_intr_gen.intr_flop_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(n_4_axi_chip2chip_sync_cell_intr_in_inst),
        .Q(O1),
        .R(1'b0));
FDRE \calib_intr_gen.send_calib_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I4),
        .Q(send_calib),
        .R(tx_user_reset));
FDRE \calib_intr_gen.send_ch0_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I6),
        .Q(send_ch0),
        .R(tx_user_reset));
FDRE \calib_intr_gen.send_intr_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I3),
        .Q(\n_0_calib_intr_gen.send_intr_reg ),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[10]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[10] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[10]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[11]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[11] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[11]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[12]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[12] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[12]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[4]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[4] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[4]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[5]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[5] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[5]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[6]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[6] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[6]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[7]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[7] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[7]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[8]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[8] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[8]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
     \calib_intr_gen.tx_ch0_data[9]_i_1 
       (.I0(O4),
        .I1(O1),
        .I2(I26[1]),
        .I3(I26[0]),
        .I4(I26[2]),
        .I5(\n_0_calib_intr_gen.tx_ch0_data_reg[9] ),
        .O(\n_0_calib_intr_gen.tx_ch0_data[9]_i_1 ));
FDRE \calib_intr_gen.tx_ch0_data_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[0] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[10] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[10]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[10] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[11] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[11]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[11] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[12] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[12]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[12] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[1] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[2] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[3] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[4]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[4] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[5]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[5] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[6]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[6] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[7]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[7] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[8]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[8] ),
        .R(tx_user_reset));
FDRE \calib_intr_gen.tx_ch0_data_reg[9] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_data[9]_i_1 ),
        .Q(\n_0_calib_intr_gen.tx_ch0_data_reg[9] ),
        .R(tx_user_reset));
LUT5 #(
    .INIT(32'h0000002E)) 
     \calib_intr_gen.tx_ch0_valid_i_1 
       (.I0(O1),
        .I1(O4),
        .I2(tx_ch0_ready),
        .I3(I4),
        .I4(tx_user_reset),
        .O(\n_0_calib_intr_gen.tx_ch0_valid_i_1 ));
FDRE \calib_intr_gen.tx_ch0_valid_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_calib_intr_gen.tx_ch0_valid_i_1 ),
        .Q(O4),
        .R(1'b0));
FDRE \intr_data_reg[0] 
       (.C(clk_ph_out),
        .CE(I45),
        .D(I46[0]),
        .Q(intr_data[0]),
        .R(SR));
FDRE \intr_data_reg[1] 
       (.C(clk_ph_out),
        .CE(I45),
        .D(I46[1]),
        .Q(intr_data[1]),
        .R(SR));
FDRE \intr_data_reg[2] 
       (.C(clk_ph_out),
        .CE(I45),
        .D(I46[2]),
        .Q(intr_data[2]),
        .R(SR));
FDRE \intr_data_reg[3] 
       (.C(clk_ph_out),
        .CE(I45),
        .D(I46[3]),
        .Q(intr_data[3]),
        .R(SR));
FDCE \intr_out_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(axi_reset),
        .D(n_3_axi_chip2chip_sync_cell_intr_out_inst),
        .Q(axi_c2c_s2m_intr_out[0]));
FDCE \intr_out_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(axi_reset),
        .D(n_2_axi_chip2chip_sync_cell_intr_out_inst),
        .Q(axi_c2c_s2m_intr_out[1]));
FDCE \intr_out_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(axi_reset),
        .D(n_1_axi_chip2chip_sync_cell_intr_out_inst),
        .Q(axi_c2c_s2m_intr_out[2]));
FDCE \intr_out_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(axi_reset),
        .D(n_0_axi_chip2chip_sync_cell_intr_out_inst),
        .Q(axi_c2c_s2m_intr_out[3]));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \slot_select[0]_i_1 
       (.I0(send_ch0),
        .I1(send_calib),
        .O(O3));
FDRE \sync_intr_in_d1_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_2[0]),
        .Q(p_1_in[0]),
        .R(1'b0));
FDRE \sync_intr_in_d1_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_2[1]),
        .Q(p_1_in[1]),
        .R(1'b0));
FDRE \sync_intr_in_d1_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_2[2]),
        .Q(p_1_in[2]),
        .R(1'b0));
FDRE \sync_intr_in_d1_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_2[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0F01)) 
     \tdm_data_out[0]_i_1 
       (.I0(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[4] ),
        .I1(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[2] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[0]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[10]_i_1 
       (.I0(I31),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[5] ),
        .I2(Q[0]),
        .I3(calib_pattern[2]),
        .I4(I32),
        .I5(I33),
        .O(D[9]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[11]_i_1 
       (.I0(I40),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[6] ),
        .I2(Q[0]),
        .I3(calib_pattern[3]),
        .I4(I41),
        .I5(I42),
        .O(D[10]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[12]_i_1 
       (.I0(I18),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[7] ),
        .I2(Q[0]),
        .I3(O2),
        .I4(I19),
        .I5(I20),
        .O(D[11]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[13]_i_1 
       (.I0(I10),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[8] ),
        .I2(Q[0]),
        .I3(calib_pattern[1]),
        .I4(I11),
        .I5(I12),
        .O(D[12]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[14]_i_1 
       (.I0(I34),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[9] ),
        .I2(Q[0]),
        .I3(calib_pattern[2]),
        .I4(I35),
        .I5(I36),
        .O(D[13]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT5 #(
    .INIT(32'h55555455)) 
     \tdm_data_out[14]_i_3 
       (.I0(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[2] ),
        .I1(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[4] ),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ),
        .I4(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .O(calib_pattern[2]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[15]_i_1 
       (.I0(I23),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[10] ),
        .I2(Q[0]),
        .I3(calib_pattern[3]),
        .I4(I24),
        .I5(I25),
        .O(D[14]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \tdm_data_out[15]_i_3 
       (.I0(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .I1(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[4] ),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ),
        .O(calib_pattern[3]));
LUT5 #(
    .INIT(32'hFFFEFEFE)) 
     \tdm_data_out[16]_i_1 
       (.I0(I21),
        .I1(I22),
        .I2(O2),
        .I3(Q[0]),
        .I4(\n_0_calib_intr_gen.tx_ch0_data_reg[11] ),
        .O(D[15]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT4 #(
    .INIT(16'h0F01)) 
     \tdm_data_out[16]_i_4 
       (.I0(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[4] ),
        .I1(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[2] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .O(O2));
LUT5 #(
    .INIT(32'hFFFEFEFE)) 
     \tdm_data_out[17]_i_1 
       (.I0(I13),
        .I1(I14),
        .I2(calib_pattern[1]),
        .I3(Q[0]),
        .I4(\n_0_calib_intr_gen.tx_ch0_data_reg[12] ),
        .O(D[16]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \tdm_data_out[17]_i_4 
       (.I0(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .I1(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[7] ),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .O(calib_pattern[1]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \tdm_data_out[1]_i_1 
       (.I0(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .I1(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[7] ),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[5] ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     \tdm_data_out[2]_i_1 
       (.I0(send_calib),
        .I1(I27[0]),
        .I2(calib_pattern[2]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT5 #(
    .INIT(32'hFFFFFFF4)) 
     \tdm_data_out[3]_i_1 
       (.I0(send_calib),
        .I1(I27[1]),
        .I2(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[6] ),
        .I3(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[4] ),
        .I4(\n_0_FSM_onehot_calib_intr_gen.cal_nibble_reg[3] ),
        .O(D[3]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[5]_i_1 
       (.I0(I1),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[0] ),
        .I2(Q[0]),
        .I3(calib_pattern[1]),
        .I4(I2),
        .I5(I5),
        .O(D[4]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[6]_i_1 
       (.I0(I28),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[1] ),
        .I2(Q[0]),
        .I3(calib_pattern[2]),
        .I4(I29),
        .I5(I30),
        .O(D[5]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[7]_i_1 
       (.I0(I37),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[2] ),
        .I2(Q[0]),
        .I3(calib_pattern[3]),
        .I4(I38),
        .I5(I39),
        .O(D[6]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[8]_i_1 
       (.I0(I15),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[3] ),
        .I2(Q[0]),
        .I3(O2),
        .I4(I16),
        .I5(I17),
        .O(D[7]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
     \tdm_data_out[9]_i_1 
       (.I0(I7),
        .I1(\n_0_calib_intr_gen.tx_ch0_data_reg[4] ),
        .I2(Q[0]),
        .I3(calib_pattern[1]),
        .I4(I8),
        .I5(I9),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_cir_buf" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_cir_buf
   (D,
    O1,
    Q,
    empty_fwft_i,
    I1,
    p_1_in,
    I2,
    I3,
    I4,
    send_ch0,
    axi_c2c_phy_clk,
    SR,
    clk_ph_out,
    I5);
  output [2:0]D;
  output [2:0]O1;
  input [0:0]Q;
  input empty_fwft_i;
  input I1;
  input p_1_in;
  input I2;
  input I3;
  input I4;
  input send_ch0;
  input axi_c2c_phy_clk;
  input [0:0]SR;
  input clk_ph_out;
  input [4:0]I5;

  wire [2:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire [4:0]I5;
  wire [2:0]O1;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ar_ch_fc;
  wire aw_ch_fc;
  wire axi_c2c_phy_clk;
  wire \axi_chip2chip_tdm_inst/int_ch1_ready46_out ;
  wire \axi_chip2chip_tdm_inst/int_ch1_ready5 ;
  wire \axi_chip2chip_tdm_inst/p_12_in ;
  wire clk_ph_out;
  wire empty_fwft_i;
  wire \n_0_data_out[0]_i_1 ;
  wire \n_0_data_out[1]_i_1 ;
  wire \n_0_data_out[2]_i_1 ;
  wire \n_0_data_out[3]_i_1 ;
  wire \n_0_data_out[4]_i_1 ;
  wire \n_0_mem[0][4]_i_1 ;
  wire \n_0_mem[1][4]_i_1 ;
  wire \n_0_mem[2][4]_i_1 ;
  wire \n_0_mem[3][4]_i_1 ;
  wire \n_0_mem_reg[0][0] ;
  wire \n_0_mem_reg[0][1] ;
  wire \n_0_mem_reg[0][2] ;
  wire \n_0_mem_reg[0][3] ;
  wire \n_0_mem_reg[0][4] ;
  wire \n_0_mem_reg[1][0] ;
  wire \n_0_mem_reg[1][1] ;
  wire \n_0_mem_reg[1][2] ;
  wire \n_0_mem_reg[1][3] ;
  wire \n_0_mem_reg[1][4] ;
  wire \n_0_mem_reg[2][0] ;
  wire \n_0_mem_reg[2][1] ;
  wire \n_0_mem_reg[2][2] ;
  wire \n_0_mem_reg[2][3] ;
  wire \n_0_mem_reg[2][4] ;
  wire \n_0_mem_reg[3][0] ;
  wire \n_0_mem_reg[3][1] ;
  wire \n_0_mem_reg[3][2] ;
  wire \n_0_mem_reg[3][3] ;
  wire \n_0_mem_reg[3][4] ;
  wire \n_0_rd_ptr[0]_i_1 ;
  wire \n_0_rd_ptr[1]_i_1 ;
  wire \n_0_wr_ptr[0]_i_1 ;
  wire \n_0_wr_ptr[1]_i_1 ;
  wire p_1_in;
  wire [1:0]rd_ptr;
  wire send_ch0;
  wire [1:0]wr_ptr;

LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[0]_i_1 
       (.I0(\n_0_mem_reg[3][0] ),
        .I1(\n_0_mem_reg[1][0] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][0] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][0] ),
        .O(\n_0_data_out[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[1]_i_1 
       (.I0(\n_0_mem_reg[3][1] ),
        .I1(\n_0_mem_reg[1][1] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][1] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][1] ),
        .O(\n_0_data_out[1]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[2]_i_1 
       (.I0(\n_0_mem_reg[3][2] ),
        .I1(\n_0_mem_reg[1][2] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][2] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][2] ),
        .O(\n_0_data_out[2]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[3]_i_1 
       (.I0(\n_0_mem_reg[3][3] ),
        .I1(\n_0_mem_reg[1][3] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][3] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][3] ),
        .O(\n_0_data_out[3]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[4]_i_1 
       (.I0(\n_0_mem_reg[3][4] ),
        .I1(\n_0_mem_reg[1][4] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][4] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][4] ),
        .O(\n_0_data_out[4]_i_1 ));
FDCE \data_out_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\n_0_data_out[0]_i_1 ),
        .Q(O1[0]));
FDCE \data_out_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\n_0_data_out[1]_i_1 ),
        .Q(O1[1]));
FDCE \data_out_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\n_0_data_out[2]_i_1 ),
        .Q(aw_ch_fc));
FDCE \data_out_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\n_0_data_out[3]_i_1 ),
        .Q(ar_ch_fc));
FDCE \data_out_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\n_0_data_out[4]_i_1 ),
        .Q(O1[2]));
LUT2 #(
    .INIT(4'h1)) 
     \mem[0][4]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\n_0_mem[0][4]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \mem[1][4]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\n_0_mem[1][4]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \mem[2][4]_i_1 
       (.I0(wr_ptr[1]),
        .I1(wr_ptr[0]),
        .O(\n_0_mem[2][4]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \mem[3][4]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\n_0_mem[3][4]_i_1 ));
FDCE \mem_reg[0][0] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][4]_i_1 ),
        .CLR(SR),
        .D(I5[0]),
        .Q(\n_0_mem_reg[0][0] ));
FDCE \mem_reg[0][1] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][4]_i_1 ),
        .CLR(SR),
        .D(I5[1]),
        .Q(\n_0_mem_reg[0][1] ));
FDCE \mem_reg[0][2] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][4]_i_1 ),
        .CLR(SR),
        .D(I5[2]),
        .Q(\n_0_mem_reg[0][2] ));
FDCE \mem_reg[0][3] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][4]_i_1 ),
        .CLR(SR),
        .D(I5[3]),
        .Q(\n_0_mem_reg[0][3] ));
FDCE \mem_reg[0][4] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][4]_i_1 ),
        .CLR(SR),
        .D(I5[4]),
        .Q(\n_0_mem_reg[0][4] ));
FDCE \mem_reg[1][0] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][4]_i_1 ),
        .CLR(SR),
        .D(I5[0]),
        .Q(\n_0_mem_reg[1][0] ));
FDCE \mem_reg[1][1] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][4]_i_1 ),
        .CLR(SR),
        .D(I5[1]),
        .Q(\n_0_mem_reg[1][1] ));
FDCE \mem_reg[1][2] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][4]_i_1 ),
        .CLR(SR),
        .D(I5[2]),
        .Q(\n_0_mem_reg[1][2] ));
FDCE \mem_reg[1][3] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][4]_i_1 ),
        .CLR(SR),
        .D(I5[3]),
        .Q(\n_0_mem_reg[1][3] ));
FDCE \mem_reg[1][4] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][4]_i_1 ),
        .CLR(SR),
        .D(I5[4]),
        .Q(\n_0_mem_reg[1][4] ));
FDCE \mem_reg[2][0] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][4]_i_1 ),
        .CLR(SR),
        .D(I5[0]),
        .Q(\n_0_mem_reg[2][0] ));
FDCE \mem_reg[2][1] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][4]_i_1 ),
        .CLR(SR),
        .D(I5[1]),
        .Q(\n_0_mem_reg[2][1] ));
FDCE \mem_reg[2][2] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][4]_i_1 ),
        .CLR(SR),
        .D(I5[2]),
        .Q(\n_0_mem_reg[2][2] ));
FDCE \mem_reg[2][3] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][4]_i_1 ),
        .CLR(SR),
        .D(I5[3]),
        .Q(\n_0_mem_reg[2][3] ));
FDCE \mem_reg[2][4] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][4]_i_1 ),
        .CLR(SR),
        .D(I5[4]),
        .Q(\n_0_mem_reg[2][4] ));
FDCE \mem_reg[3][0] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][4]_i_1 ),
        .CLR(SR),
        .D(I5[0]),
        .Q(\n_0_mem_reg[3][0] ));
FDCE \mem_reg[3][1] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][4]_i_1 ),
        .CLR(SR),
        .D(I5[1]),
        .Q(\n_0_mem_reg[3][1] ));
FDCE \mem_reg[3][2] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][4]_i_1 ),
        .CLR(SR),
        .D(I5[2]),
        .Q(\n_0_mem_reg[3][2] ));
FDCE \mem_reg[3][3] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][4]_i_1 ),
        .CLR(SR),
        .D(I5[3]),
        .Q(\n_0_mem_reg[3][3] ));
FDCE \mem_reg[3][4] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][4]_i_1 ),
        .CLR(SR),
        .D(I5[4]),
        .Q(\n_0_mem_reg[3][4] ));
LUT1 #(
    .INIT(2'h1)) 
     \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\n_0_rd_ptr[0]_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\n_0_rd_ptr[1]_i_1 ));
FDCE \rd_ptr_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\n_0_rd_ptr[0]_i_1 ),
        .Q(rd_ptr[0]));
FDPE \rd_ptr_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_rd_ptr[1]_i_1 ),
        .PRE(SR),
        .Q(rd_ptr[1]));
LUT6 #(
    .INIT(64'h0200020002020200)) 
     \slot_select[1]_i_1 
       (.I0(Q),
        .I1(empty_fwft_i),
        .I2(aw_ch_fc),
        .I3(I1),
        .I4(p_1_in),
        .I5(\axi_chip2chip_tdm_inst/int_ch1_ready5 ),
        .O(D[0]));
LUT6 #(
    .INIT(64'h0200020002020200)) 
     \slot_select[2]_i_1 
       (.I0(Q),
        .I1(I2),
        .I2(ar_ch_fc),
        .I3(p_1_in),
        .I4(I1),
        .I5(\axi_chip2chip_tdm_inst/p_12_in ),
        .O(D[1]));
LUT5 #(
    .INIT(32'h0808080A)) 
     \slot_select[3]_i_1 
       (.I0(\axi_chip2chip_tdm_inst/int_ch1_ready46_out ),
        .I1(I4),
        .I2(send_ch0),
        .I3(\axi_chip2chip_tdm_inst/int_ch1_ready5 ),
        .I4(\axi_chip2chip_tdm_inst/p_12_in ),
        .O(D[2]));
LUT3 #(
    .INIT(8'h10)) 
     \slot_select[3]_i_2 
       (.I0(O1[2]),
        .I1(I3),
        .I2(Q),
        .O(\axi_chip2chip_tdm_inst/int_ch1_ready46_out ));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \slot_select[3]_i_4 
       (.I0(ar_ch_fc),
        .I1(I2),
        .I2(Q),
        .O(\axi_chip2chip_tdm_inst/int_ch1_ready5 ));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \slot_select[3]_i_5 
       (.I0(aw_ch_fc),
        .I1(empty_fwft_i),
        .I2(Q),
        .O(\axi_chip2chip_tdm_inst/p_12_in ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \wr_ptr[0]_i_1 
       (.I0(wr_ptr[0]),
        .O(\n_0_wr_ptr[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_ptr[1]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\n_0_wr_ptr[1]_i_1 ));
FDCE \wr_ptr_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(SR),
        .D(\n_0_wr_ptr[0]_i_1 ),
        .Q(wr_ptr[0]));
FDCE \wr_ptr_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(SR),
        .D(\n_0_wr_ptr[1]_i_1 ),
        .Q(wr_ptr[1]));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_cir_buf" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_cir_buf__parameterized0
   (O1,
    Q,
    E,
    I7,
    O2,
    D,
    O4,
    tx_ch0_valid,
    I1,
    reset,
    axi_c2c_phy_clk,
    I2,
    clk_ph_out,
    I3);
  output O1;
  output [3:0]Q;
  output [0:0]E;
  output [0:0]I7;
  output O2;
  output [2:0]D;
  output O4;
  input tx_ch0_valid;
  input I1;
  input reset;
  input axi_c2c_phy_clk;
  input I2;
  input clk_ph_out;
  input [3:0]I3;

  wire [2:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [3:0]I3;
  wire [0:0]I7;
  wire O1;
  wire O2;
  wire O4;
  wire [3:0]Q;
  wire axi_c2c_phy_clk;
  wire clk_ph_out;
  wire \n_0_data_out[0]_i_1 ;
  wire \n_0_data_out[1]_i_1 ;
  wire \n_0_data_out[2]_i_1 ;
  wire \n_0_data_out[3]_i_1 ;
  wire \n_0_mem[0][3]_i_1 ;
  wire \n_0_mem[1][3]_i_1 ;
  wire \n_0_mem[2][3]_i_1 ;
  wire \n_0_mem[3][3]_i_1 ;
  wire \n_0_mem_reg[0][0] ;
  wire \n_0_mem_reg[0][1] ;
  wire \n_0_mem_reg[0][2] ;
  wire \n_0_mem_reg[0][3] ;
  wire \n_0_mem_reg[1][0] ;
  wire \n_0_mem_reg[1][1] ;
  wire \n_0_mem_reg[1][2] ;
  wire \n_0_mem_reg[1][3] ;
  wire \n_0_mem_reg[2][0] ;
  wire \n_0_mem_reg[2][1] ;
  wire \n_0_mem_reg[2][2] ;
  wire \n_0_mem_reg[2][3] ;
  wire \n_0_mem_reg[3][0] ;
  wire \n_0_mem_reg[3][1] ;
  wire \n_0_mem_reg[3][2] ;
  wire \n_0_mem_reg[3][3] ;
  wire \n_0_rd_ptr[0]_i_1 ;
  wire \n_0_rd_ptr[1]_i_1 ;
  wire \n_0_wr_ptr[0]_i_1__0 ;
  wire \n_0_wr_ptr[1]_i_1__0 ;
  wire [1:0]rd_ptr;
  wire reset;
  wire tx_ch0_valid;
  wire [1:0]wr_ptr;

LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT4 #(
    .INIT(16'hAAAB)) 
     \FSM_onehot_calib_intr_gen.cal_nibble[7]_i_1 
       (.I0(reset),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(I7));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \calib_intr_gen.send_calib_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT5 #(
    .INIT(32'hFFFFFFF4)) 
     \calib_intr_gen.send_ch0_i_1 
       (.I0(tx_ch0_valid),
        .I1(I1),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(O1));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \calib_intr_gen.send_intr_i_1 
       (.I0(tx_ch0_valid),
        .I1(I1),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(reset),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     \calib_intr_gen.tx_ch0_data[3]_i_1 
       (.I0(tx_ch0_valid),
        .I1(I1),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(E));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[0]_i_1 
       (.I0(\n_0_mem_reg[3][0] ),
        .I1(\n_0_mem_reg[1][0] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][0] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][0] ),
        .O(\n_0_data_out[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[1]_i_1 
       (.I0(\n_0_mem_reg[3][1] ),
        .I1(\n_0_mem_reg[1][1] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][1] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][1] ),
        .O(\n_0_data_out[1]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[2]_i_1 
       (.I0(\n_0_mem_reg[3][2] ),
        .I1(\n_0_mem_reg[1][2] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][2] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][2] ),
        .O(\n_0_data_out[2]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \data_out[3]_i_1 
       (.I0(\n_0_mem_reg[3][3] ),
        .I1(\n_0_mem_reg[1][3] ),
        .I2(rd_ptr[0]),
        .I3(\n_0_mem_reg[2][3] ),
        .I4(rd_ptr[1]),
        .I5(\n_0_mem_reg[0][3] ),
        .O(\n_0_data_out[3]_i_1 ));
FDCE \data_out_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_0_data_out[0]_i_1 ),
        .Q(Q[0]));
FDCE \data_out_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_0_data_out[1]_i_1 ),
        .Q(Q[1]));
FDCE \data_out_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_0_data_out[2]_i_1 ),
        .Q(Q[2]));
FDCE \data_out_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_0_data_out[3]_i_1 ),
        .Q(Q[3]));
LUT2 #(
    .INIT(4'h1)) 
     \mem[0][3]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\n_0_mem[0][3]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \mem[1][3]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\n_0_mem[1][3]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \mem[2][3]_i_1 
       (.I0(wr_ptr[1]),
        .I1(wr_ptr[0]),
        .O(\n_0_mem[2][3]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \mem[3][3]_i_1 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\n_0_mem[3][3]_i_1 ));
FDCE \mem_reg[0][0] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][3]_i_1 ),
        .CLR(I2),
        .D(I3[0]),
        .Q(\n_0_mem_reg[0][0] ));
FDCE \mem_reg[0][1] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][3]_i_1 ),
        .CLR(I2),
        .D(I3[1]),
        .Q(\n_0_mem_reg[0][1] ));
FDCE \mem_reg[0][2] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][3]_i_1 ),
        .CLR(I2),
        .D(I3[2]),
        .Q(\n_0_mem_reg[0][2] ));
FDCE \mem_reg[0][3] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[0][3]_i_1 ),
        .CLR(I2),
        .D(I3[3]),
        .Q(\n_0_mem_reg[0][3] ));
FDCE \mem_reg[1][0] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][3]_i_1 ),
        .CLR(I2),
        .D(I3[0]),
        .Q(\n_0_mem_reg[1][0] ));
FDCE \mem_reg[1][1] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][3]_i_1 ),
        .CLR(I2),
        .D(I3[1]),
        .Q(\n_0_mem_reg[1][1] ));
FDCE \mem_reg[1][2] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][3]_i_1 ),
        .CLR(I2),
        .D(I3[2]),
        .Q(\n_0_mem_reg[1][2] ));
FDCE \mem_reg[1][3] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[1][3]_i_1 ),
        .CLR(I2),
        .D(I3[3]),
        .Q(\n_0_mem_reg[1][3] ));
FDCE \mem_reg[2][0] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][3]_i_1 ),
        .CLR(I2),
        .D(I3[0]),
        .Q(\n_0_mem_reg[2][0] ));
FDCE \mem_reg[2][1] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][3]_i_1 ),
        .CLR(I2),
        .D(I3[1]),
        .Q(\n_0_mem_reg[2][1] ));
FDCE \mem_reg[2][2] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][3]_i_1 ),
        .CLR(I2),
        .D(I3[2]),
        .Q(\n_0_mem_reg[2][2] ));
FDCE \mem_reg[2][3] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[2][3]_i_1 ),
        .CLR(I2),
        .D(I3[3]),
        .Q(\n_0_mem_reg[2][3] ));
FDCE \mem_reg[3][0] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][3]_i_1 ),
        .CLR(I2),
        .D(I3[0]),
        .Q(\n_0_mem_reg[3][0] ));
FDCE \mem_reg[3][1] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][3]_i_1 ),
        .CLR(I2),
        .D(I3[1]),
        .Q(\n_0_mem_reg[3][1] ));
FDCE \mem_reg[3][2] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][3]_i_1 ),
        .CLR(I2),
        .D(I3[2]),
        .Q(\n_0_mem_reg[3][2] ));
FDCE \mem_reg[3][3] 
       (.C(clk_ph_out),
        .CE(\n_0_mem[3][3]_i_1 ),
        .CLR(I2),
        .D(I3[3]),
        .Q(\n_0_mem_reg[3][3] ));
LUT1 #(
    .INIT(2'h1)) 
     \rd_ptr[0]_i_1 
       (.I0(rd_ptr[0]),
        .O(\n_0_rd_ptr[0]_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_ptr[1]_i_1 
       (.I0(rd_ptr[0]),
        .I1(rd_ptr[1]),
        .O(\n_0_rd_ptr[1]_i_1 ));
FDCE \rd_ptr_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_0_rd_ptr[0]_i_1 ),
        .Q(rd_ptr[0]));
FDPE \rd_ptr_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_rd_ptr[1]_i_1 ),
        .PRE(I2),
        .Q(rd_ptr[1]));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \wr_ptr[0]_i_1__0 
       (.I0(wr_ptr[0]),
        .O(\n_0_wr_ptr[0]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_ptr[1]_i_1__0 
       (.I0(wr_ptr[0]),
        .I1(wr_ptr[1]),
        .O(\n_0_wr_ptr[1]_i_1__0 ));
FDCE \wr_ptr_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_0_wr_ptr[0]_i_1__0 ),
        .Q(wr_ptr[0]));
FDCE \wr_ptr_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_0_wr_ptr[1]_i_1__0 ),
        .Q(wr_ptr[1]));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_clk_gen" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_clk_gen
   (O1,
    clk_ph_out,
    s_aresetn,
    axi_c2c_selio_rx_clk_in,
    reset);
  output O1;
  output clk_ph_out;
  input s_aresetn;
  input axi_c2c_selio_rx_clk_in;
  input reset;

  wire O1;
(* IBUF_LOW_PWR *)   wire axi_c2c_selio_rx_clk_in;
  wire clk_in_ibufg;
  wire clk_locked;
  wire clk_out;
  wire clk_ph_out;
  wire clkfbout;
  wire clkfbout_bufg;
  wire reset;
  wire s_aresetn;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

(* box_type = "PRIMITIVE" *) 
   BUFG bufg_inst
       (.I(clk_out),
        .O(clk_ph_out));
(* box_type = "PRIMITIVE" *) 
   BUFG fb_bufg_inst
       (.I(clkfbout),
        .O(clkfbout_bufg));
(* box_type = "PRIMITIVE" *) 
   MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(90.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
     mmcm_adv_inst
       (.CLKFBIN(clkfbout_bufg),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in_ibufg),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(clk_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* XILINX_LEGACY_PRIM = "IBUFG" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_clk_gen.ibufg_clk_inst 
       (.I(axi_c2c_selio_rx_clk_in),
        .O(clk_in_ibufg));
LUT2 #(
    .INIT(4'h7)) 
     sync_reset_out_i_1
       (.I0(s_aresetn),
        .I1(clk_locked),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_decoder" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_decoder
   (rd_ch_data_valid,
    br_ch_data_valid,
    I45,
    Q,
    E,
    O1,
    SR,
    clk_ph_out,
    I1,
    I2,
    rx_user_data_valid_flop,
    rx_phy_ready);
  output rd_ch_data_valid;
  output br_ch_data_valid;
  output [0:0]I45;
  output [10:0]Q;
  output [0:0]E;
  output [2:0]O1;
  input [0:0]SR;
  input clk_ph_out;
  input I1;
  input [17:0]I2;
  input rx_user_data_valid_flop;
  input rx_phy_ready;

  wire [0:0]E;
  wire I1;
  wire [17:0]I2;
  wire [0:0]I45;
  wire [2:0]O1;
  wire [10:0]Q;
  wire [0:0]SR;
  wire br_ch_data_valid;
  wire ch0_valid0;
  wire ch1_valid0;
  wire ch2_valid0;
  wire clk_ph_out;
  wire \n_0_data_out_reg[11] ;
  wire rd_ch_data_valid;
  wire rx_ch0_valid;
  wire rx_phy_ready;
  wire rx_user_data_valid_flop;

(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT5 #(
    .INIT(32'h10000000)) 
     ch0_valid_i_1
       (.I0(I2[1]),
        .I1(I2[0]),
        .I2(rx_user_data_valid_flop),
        .I3(rx_phy_ready),
        .I4(I2[5]),
        .O(ch0_valid0));
FDRE ch0_valid_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(ch0_valid0),
        .Q(rx_ch0_valid),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT5 #(
    .INIT(32'h20000000)) 
     ch1_valid_i_1
       (.I0(I2[0]),
        .I1(I2[1]),
        .I2(rx_user_data_valid_flop),
        .I3(rx_phy_ready),
        .I4(I2[5]),
        .O(ch1_valid0));
FDRE ch1_valid_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(ch1_valid0),
        .Q(rd_ch_data_valid),
        .R(SR));
LUT5 #(
    .INIT(32'h20000000)) 
     ch2_valid_i_1
       (.I0(I2[1]),
        .I1(I2[0]),
        .I2(rx_user_data_valid_flop),
        .I3(rx_phy_ready),
        .I4(I2[5]),
        .O(ch2_valid0));
FDRE ch2_valid_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(ch2_valid0),
        .Q(br_ch_data_valid),
        .R(SR));
FDRE \ctrl_info_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[2]),
        .Q(O1[0]),
        .R(SR));
FDRE \ctrl_info_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[3]),
        .Q(O1[1]),
        .R(SR));
FDRE \ctrl_info_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[4]),
        .Q(O1[2]),
        .R(SR));
FDRE \data_out_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[6]),
        .Q(Q[0]),
        .R(SR));
FDRE \data_out_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[16]),
        .Q(Q[10]),
        .R(SR));
FDRE \data_out_reg[11] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[17]),
        .Q(\n_0_data_out_reg[11] ),
        .R(SR));
FDRE \data_out_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[7]),
        .Q(Q[1]),
        .R(SR));
FDRE \data_out_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[8]),
        .Q(Q[2]),
        .R(SR));
FDRE \data_out_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[9]),
        .Q(Q[3]),
        .R(SR));
FDRE \data_out_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[10]),
        .Q(Q[4]),
        .R(SR));
FDRE \data_out_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[11]),
        .Q(Q[5]),
        .R(SR));
FDRE \data_out_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[12]),
        .Q(Q[6]),
        .R(SR));
FDRE \data_out_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[13]),
        .Q(Q[7]),
        .R(SR));
FDRE \data_out_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[14]),
        .Q(Q[8]),
        .R(SR));
FDRE \data_out_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2[15]),
        .Q(Q[9]),
        .R(SR));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \intr_data[3]_i_1 
       (.I0(\n_0_data_out_reg[11] ),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(rx_ch0_valid),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(I45));
LUT2 #(
    .INIT(4'h2)) 
     \mux_by_4.pack_reg2[10]_i_1 
       (.I0(rd_ch_data_valid),
        .I1(I1),
        .O(E));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_master" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_master
   (O1,
    tx_ch0_valid,
    axi_c2c_s2m_intr_out,
    O2,
    O3,
    O4,
    s_axi_awready,
    s_axi_arready,
    s_axi_wready,
    s_axi_rvalid,
    s_axi_bvalid,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_awaddr,
    DIADI,
    s_axi_araddr,
    I1,
    s_axi_wdata,
    I2,
    clk_ph_out,
    I3,
    tx_user_reset,
    I4,
    SR,
    I5,
    axi_reset,
    I6,
    Q,
    rx_phy_ready,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_wvalid,
    I7,
    D,
    E,
    I8,
    axi_c2c_m2s_intr_in,
    s_axi_rready);
  output O1;
  output tx_ch0_valid;
  output [3:0]axi_c2c_s2m_intr_out;
  output [40:0]O2;
  output [7:0]O3;
  output [17:0]O4;
  output s_axi_awready;
  output s_axi_arready;
  output s_axi_wready;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;
  input [31:0]s_axi_araddr;
  input [17:0]I1;
  input [31:0]s_axi_wdata;
  input [8:0]I2;
  input clk_ph_out;
  input I3;
  input tx_user_reset;
  input I4;
  input [0:0]SR;
  input I5;
  input axi_reset;
  input I6;
  input [3:0]Q;
  input rx_phy_ready;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input [0:0]I7;
  input [2:0]D;
  input [0:0]E;
  input [17:0]I8;
  input [3:0]axi_c2c_m2s_intr_in;
  input s_axi_rready;

  wire [2:0]D;
  wire [17:0]DIADI;
  wire [0:0]E;
  wire [17:0]I1;
  wire [8:0]I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire [0:0]I7;
  wire [17:0]I8;
  wire O1;
  wire [40:0]O2;
  wire [7:0]O3;
  wire [17:0]O4;
  wire [3:0]Q;
  wire [0:0]SR;
  wire ar_ch_data_ready;
  wire aw_ch_data_ready;
  wire [3:0]axi_c2c_m2s_intr_in;
  wire axi_c2c_phy_clk;
  wire [3:0]axi_c2c_s2m_intr_out;
  wire \axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ;
  wire [7:0]\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out ;
  wire [7:6]\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out ;
  wire [7:6]\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out ;
  wire \axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rst_full_gen_i ;
  wire \axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rst_full_gen_i_0 ;
  wire \axi_chip2chip_packer_inst/p_0_in1_in ;
  wire \axi_chip2chip_unpacker_inst/p_0_in1_in ;
  wire \axi_chip2chip_unpacker_inst/p_0_in1_in_1 ;
  wire \axi_chip2chip_unpacker_inst/p_0_in1_in_2 ;
  wire axi_reset;
  wire br_ch_data_valid;
  wire br_fifo_reset;
  wire [0:0]calib_pattern;
  wire clk_ph_out;
  wire [4:0]data_in;
  wire empty_fwft_i;
  wire n_0_RAM_reg_0_63_0_2_i_1;
  wire n_0_RAM_reg_0_63_3_5_i_1;
  wire n_0_RAM_reg_0_63_6_6_i_1;
  wire n_0_RAM_reg_0_63_7_7_i_1;
  wire n_0_RAM_reg_128_191_0_2_i_1;
  wire n_0_RAM_reg_128_191_3_5_i_1;
  wire n_0_RAM_reg_128_191_6_6_i_1;
  wire n_0_RAM_reg_128_191_7_7_i_1;
  wire n_0_RAM_reg_192_255_0_2_i_1;
  wire n_0_RAM_reg_192_255_3_5_i_1;
  wire n_0_RAM_reg_192_255_6_6_i_1;
  wire n_0_RAM_reg_192_255_7_7_i_1;
  wire n_0_RAM_reg_64_127_0_2_i_1;
  wire n_0_RAM_reg_64_127_3_5_i_1;
  wire n_0_RAM_reg_64_127_6_6_i_1;
  wire n_0_RAM_reg_64_127_7_7_i_1;
  wire n_0_axi_chip2chip_ar_fifo_inst;
  wire n_0_axi_chip2chip_r_fifo_inst;
  wire n_0_axi_chip2chip_w_fifo_inst;
  wire n_10_axi_chip2chip_ar_fifo_inst;
  wire n_10_axi_chip2chip_aw_fifo_inst;
  wire n_10_axi_chip2chip_b_fifo_inst;
  wire n_10_axi_chip2chip_ch0_ctrl_inst;
  wire n_10_axi_chip2chip_decoder_inst;
  wire n_10_axi_chip2chip_w_fifo_inst;
  wire n_11_axi_chip2chip_ar_fifo_inst;
  wire n_11_axi_chip2chip_aw_fifo_inst;
  wire n_11_axi_chip2chip_b_fifo_inst;
  wire n_11_axi_chip2chip_ch0_ctrl_inst;
  wire n_11_axi_chip2chip_decoder_inst;
  wire n_11_axi_chip2chip_w_fifo_inst;
  wire n_12_axi_chip2chip_ar_fifo_inst;
  wire n_12_axi_chip2chip_aw_fifo_inst;
  wire n_12_axi_chip2chip_b_fifo_inst;
  wire n_12_axi_chip2chip_ch0_ctrl_inst;
  wire n_12_axi_chip2chip_decoder_inst;
  wire n_13_axi_chip2chip_ar_fifo_inst;
  wire n_13_axi_chip2chip_aw_fifo_inst;
  wire n_13_axi_chip2chip_b_fifo_inst;
  wire n_13_axi_chip2chip_ch0_ctrl_inst;
  wire n_13_axi_chip2chip_decoder_inst;
  wire n_14_axi_chip2chip_aw_fifo_inst;
  wire n_14_axi_chip2chip_b_fifo_inst;
  wire n_14_axi_chip2chip_ch0_ctrl_inst;
  wire n_15_axi_chip2chip_aw_fifo_inst;
  wire n_15_axi_chip2chip_b_fifo_inst;
  wire n_15_axi_chip2chip_ch0_ctrl_inst;
  wire n_16_axi_chip2chip_b_fifo_inst;
  wire n_16_axi_chip2chip_ch0_ctrl_inst;
  wire n_17_axi_chip2chip_b_fifo_inst;
  wire n_17_axi_chip2chip_ch0_ctrl_inst;
  wire n_18_axi_chip2chip_b_fifo_inst;
  wire n_18_axi_chip2chip_ch0_ctrl_inst;
  wire n_19_axi_chip2chip_b_fifo_inst;
  wire n_1_axi_chip2chip_ar_fifo_inst;
  wire n_1_axi_chip2chip_b_fifo_inst;
  wire n_1_axi_chip2chip_r_fifo_inst;
  wire n_1_axi_chip2chip_w_fifo_inst;
  wire n_20_axi_chip2chip_b_fifo_inst;
  wire n_21_axi_chip2chip_b_fifo_inst;
  wire n_22_axi_chip2chip_b_fifo_inst;
  wire n_23_axi_chip2chip_b_fifo_inst;
  wire n_24_axi_chip2chip_b_fifo_inst;
  wire n_25_axi_chip2chip_b_fifo_inst;
  wire n_26_axi_chip2chip_b_fifo_inst;
  wire n_27_axi_chip2chip_b_fifo_inst;
  wire n_28_axi_chip2chip_b_fifo_inst;
  wire n_29_axi_chip2chip_b_fifo_inst;
  wire n_2_axi_chip2chip_ar_fifo_inst;
  wire n_2_axi_chip2chip_ch0_ctrl_inst;
  wire n_2_axi_chip2chip_w_fifo_inst;
  wire n_30_axi_chip2chip_b_fifo_inst;
  wire n_31_axi_chip2chip_b_fifo_inst;
  wire n_32_axi_chip2chip_b_fifo_inst;
  wire n_33_axi_chip2chip_b_fifo_inst;
  wire n_34_axi_chip2chip_b_fifo_inst;
  wire n_35_axi_chip2chip_b_fifo_inst;
  wire n_36_axi_chip2chip_b_fifo_inst;
  wire n_37_axi_chip2chip_b_fifo_inst;
  wire n_38_axi_chip2chip_b_fifo_inst;
  wire n_3_axi_chip2chip_ar_fifo_inst;
  wire n_3_axi_chip2chip_aw_fifo_inst;
  wire n_3_axi_chip2chip_b_fifo_inst;
  wire n_3_axi_chip2chip_ch0_ctrl_inst;
  wire n_3_axi_chip2chip_decoder_inst;
  wire n_3_axi_chip2chip_w_fifo_inst;
  wire n_4_axi_chip2chip_ar_fifo_inst;
  wire n_4_axi_chip2chip_aw_fifo_inst;
  wire n_4_axi_chip2chip_b_fifo_inst;
  wire n_4_axi_chip2chip_ch0_ctrl_inst;
  wire n_4_axi_chip2chip_decoder_inst;
  wire n_4_axi_chip2chip_w_fifo_inst;
  wire \n_4_sio_io_stage.axi_chip2chip_cir_buf_inst ;
  wire n_5_axi_chip2chip_ar_fifo_inst;
  wire n_5_axi_chip2chip_aw_fifo_inst;
  wire n_5_axi_chip2chip_b_fifo_inst;
  wire n_5_axi_chip2chip_ch0_ctrl_inst;
  wire n_5_axi_chip2chip_decoder_inst;
  wire n_5_axi_chip2chip_w_fifo_inst;
  wire \n_5_sio_io_stage.axi_chip2chip_cir_buf_inst ;
  wire n_6_axi_chip2chip_ar_fifo_inst;
  wire n_6_axi_chip2chip_aw_fifo_inst;
  wire n_6_axi_chip2chip_ch0_ctrl_inst;
  wire n_6_axi_chip2chip_decoder_inst;
  wire n_6_axi_chip2chip_w_fifo_inst;
  wire n_7_axi_chip2chip_ar_fifo_inst;
  wire n_7_axi_chip2chip_aw_fifo_inst;
  wire n_7_axi_chip2chip_ch0_ctrl_inst;
  wire n_7_axi_chip2chip_decoder_inst;
  wire n_7_axi_chip2chip_tdm_inst;
  wire n_7_axi_chip2chip_w_fifo_inst;
  wire n_8_axi_chip2chip_ar_fifo_inst;
  wire n_8_axi_chip2chip_aw_fifo_inst;
  wire n_8_axi_chip2chip_ch0_ctrl_inst;
  wire n_8_axi_chip2chip_decoder_inst;
  wire n_8_axi_chip2chip_tdm_inst;
  wire n_8_axi_chip2chip_w_fifo_inst;
  wire n_9_axi_chip2chip_ar_fifo_inst;
  wire n_9_axi_chip2chip_aw_fifo_inst;
  wire n_9_axi_chip2chip_ch0_ctrl_inst;
  wire n_9_axi_chip2chip_decoder_inst;
  wire n_9_axi_chip2chip_w_fifo_inst;
  wire next_int_ch1_ready;
  wire next_int_ch2_ready;
  wire next_int_ch3_ready;
  wire [0:0]one_hot_ss;
  wire p_1_in;
  wire rd_ch_data_valid;
  wire rst_d2;
  wire rx_intr_data;
  wire rx_phy_ready;
  wire [5:0]rx_user_data_flop;
  wire [17:2]rx_user_data_flop__0;
  wire rx_user_data_valid_flop;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire send_ch0;
  wire [3:0]slot_select;
  wire [17:0]tdm_data_out;
  wire tx_ch0_ready;
  wire tx_ch0_valid;
  wire tx_user_reset;
  wire wd_ch_data_ready;
  wire wd_ch_fc;

LUT5 #(
    .INIT(32'h00000004)) 
     RAM_reg_0_63_0_2_i_1
       (.I0(n_1_axi_chip2chip_b_fifo_inst),
        .I1(br_ch_data_valid),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .O(n_0_RAM_reg_0_63_0_2_i_1));
LUT5 #(
    .INIT(32'h00000004)) 
     RAM_reg_0_63_3_5_i_1
       (.I0(n_1_axi_chip2chip_b_fifo_inst),
        .I1(br_ch_data_valid),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .O(n_0_RAM_reg_0_63_3_5_i_1));
LUT5 #(
    .INIT(32'h00000004)) 
     RAM_reg_0_63_6_6_i_1
       (.I0(n_1_axi_chip2chip_b_fifo_inst),
        .I1(br_ch_data_valid),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .O(n_0_RAM_reg_0_63_6_6_i_1));
LUT5 #(
    .INIT(32'h00000004)) 
     RAM_reg_0_63_7_7_i_1
       (.I0(n_1_axi_chip2chip_b_fifo_inst),
        .I1(br_ch_data_valid),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .O(n_0_RAM_reg_0_63_7_7_i_1));
LUT5 #(
    .INIT(32'h00000400)) 
     RAM_reg_128_191_0_2_i_1
       (.I0(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I1(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(br_ch_data_valid),
        .I4(n_1_axi_chip2chip_b_fifo_inst),
        .O(n_0_RAM_reg_128_191_0_2_i_1));
LUT5 #(
    .INIT(32'h00000400)) 
     RAM_reg_128_191_3_5_i_1
       (.I0(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I1(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(br_ch_data_valid),
        .I4(n_1_axi_chip2chip_b_fifo_inst),
        .O(n_0_RAM_reg_128_191_3_5_i_1));
LUT5 #(
    .INIT(32'h00000400)) 
     RAM_reg_128_191_6_6_i_1
       (.I0(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I1(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(br_ch_data_valid),
        .I4(n_1_axi_chip2chip_b_fifo_inst),
        .O(n_0_RAM_reg_128_191_6_6_i_1));
LUT5 #(
    .INIT(32'h00000400)) 
     RAM_reg_128_191_7_7_i_1
       (.I0(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I1(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(br_ch_data_valid),
        .I4(n_1_axi_chip2chip_b_fifo_inst),
        .O(n_0_RAM_reg_128_191_7_7_i_1));
LUT5 #(
    .INIT(32'h04000000)) 
     RAM_reg_192_255_0_2_i_1
       (.I0(n_1_axi_chip2chip_b_fifo_inst),
        .I1(br_ch_data_valid),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .O(n_0_RAM_reg_192_255_0_2_i_1));
LUT5 #(
    .INIT(32'h04000000)) 
     RAM_reg_192_255_3_5_i_1
       (.I0(n_1_axi_chip2chip_b_fifo_inst),
        .I1(br_ch_data_valid),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .O(n_0_RAM_reg_192_255_3_5_i_1));
LUT5 #(
    .INIT(32'h04000000)) 
     RAM_reg_192_255_6_6_i_1
       (.I0(n_1_axi_chip2chip_b_fifo_inst),
        .I1(br_ch_data_valid),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .O(n_0_RAM_reg_192_255_6_6_i_1));
LUT5 #(
    .INIT(32'h04000000)) 
     RAM_reg_192_255_7_7_i_1
       (.I0(n_1_axi_chip2chip_b_fifo_inst),
        .I1(br_ch_data_valid),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .O(n_0_RAM_reg_192_255_7_7_i_1));
LUT5 #(
    .INIT(32'h00000400)) 
     RAM_reg_64_127_0_2_i_1
       (.I0(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .I1(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(br_ch_data_valid),
        .I4(n_1_axi_chip2chip_b_fifo_inst),
        .O(n_0_RAM_reg_64_127_0_2_i_1));
LUT5 #(
    .INIT(32'h00000400)) 
     RAM_reg_64_127_3_5_i_1
       (.I0(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .I1(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(br_ch_data_valid),
        .I4(n_1_axi_chip2chip_b_fifo_inst),
        .O(n_0_RAM_reg_64_127_3_5_i_1));
LUT5 #(
    .INIT(32'h00000400)) 
     RAM_reg_64_127_6_6_i_1
       (.I0(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .I1(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(br_ch_data_valid),
        .I4(n_1_axi_chip2chip_b_fifo_inst),
        .O(n_0_RAM_reg_64_127_6_6_i_1));
LUT5 #(
    .INIT(32'h00000400)) 
     RAM_reg_64_127_7_7_i_1
       (.I0(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [7]),
        .I1(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out [6]),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .I3(br_ch_data_valid),
        .I4(n_1_axi_chip2chip_b_fifo_inst),
        .O(n_0_RAM_reg_64_127_7_7_i_1));
FDPE aw_fifo_reset_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I5),
        .PRE(axi_reset),
        .Q(br_fifo_reset));
axi_chip2chip_0_axi_chip2chip_v4_2_awr_fifo axi_chip2chip_ar_fifo_inst
       (.E(\axi_chip2chip_unpacker_inst/p_0_in1_in_1 ),
        .I1(I1),
        .O1(n_0_axi_chip2chip_ar_fifo_inst),
        .O10(n_9_axi_chip2chip_ar_fifo_inst),
        .O11(n_10_axi_chip2chip_ar_fifo_inst),
        .O12(n_11_axi_chip2chip_ar_fifo_inst),
        .O13(n_12_axi_chip2chip_ar_fifo_inst),
        .O14(n_13_axi_chip2chip_ar_fifo_inst),
        .O2(n_1_axi_chip2chip_ar_fifo_inst),
        .O3(n_2_axi_chip2chip_ar_fifo_inst),
        .O4(n_3_axi_chip2chip_ar_fifo_inst),
        .O5(n_4_axi_chip2chip_ar_fifo_inst),
        .O6(n_5_axi_chip2chip_ar_fifo_inst),
        .O7(n_6_axi_chip2chip_ar_fifo_inst),
        .O8(n_7_axi_chip2chip_ar_fifo_inst),
        .O9(n_8_axi_chip2chip_ar_fifo_inst),
        .Q(slot_select[2]),
        .ar_ch_data_ready(ar_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rst_full_gen_i ),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .tx_user_reset(tx_user_reset));
axi_chip2chip_0_axi_chip2chip_v4_2_awr_fifo_1 axi_chip2chip_aw_fifo_inst
       (.DIADI(DIADI),
        .E(\axi_chip2chip_unpacker_inst/p_0_in1_in_2 ),
        .O1(n_3_axi_chip2chip_aw_fifo_inst),
        .O10(n_12_axi_chip2chip_aw_fifo_inst),
        .O11(n_13_axi_chip2chip_aw_fifo_inst),
        .O12(n_14_axi_chip2chip_aw_fifo_inst),
        .O13(n_15_axi_chip2chip_aw_fifo_inst),
        .O2(n_4_axi_chip2chip_aw_fifo_inst),
        .O3(n_5_axi_chip2chip_aw_fifo_inst),
        .O4(n_6_axi_chip2chip_aw_fifo_inst),
        .O5(n_7_axi_chip2chip_aw_fifo_inst),
        .O6(n_8_axi_chip2chip_aw_fifo_inst),
        .O7(n_9_axi_chip2chip_aw_fifo_inst),
        .O8(n_10_axi_chip2chip_aw_fifo_inst),
        .O9(n_11_axi_chip2chip_aw_fifo_inst),
        .Q(slot_select[1]),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .empty_fwft_i(empty_fwft_i),
        .rst_d2(rst_d2),
        .rst_full_gen_i(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rst_full_gen_i ),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .tx_user_reset(tx_user_reset));
axi_chip2chip_0_axi_chip2chip_v4_2_b_fifo axi_chip2chip_b_fifo_inst
       (.D(data_in[1]),
        .I1(n_1_axi_chip2chip_r_fifo_inst),
        .I10(n_0_RAM_reg_0_63_6_6_i_1),
        .I11(n_0_RAM_reg_0_63_7_7_i_1),
        .I12(n_0_RAM_reg_64_127_6_6_i_1),
        .I13(n_0_RAM_reg_64_127_7_7_i_1),
        .I14(n_0_RAM_reg_128_191_6_6_i_1),
        .I15(n_0_RAM_reg_128_191_7_7_i_1),
        .I16(n_0_RAM_reg_192_255_6_6_i_1),
        .I17(n_0_RAM_reg_192_255_7_7_i_1),
        .I18(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out ),
        .I2(n_0_RAM_reg_0_63_0_2_i_1),
        .I3(n_0_RAM_reg_64_127_0_2_i_1),
        .I4(n_0_RAM_reg_128_191_0_2_i_1),
        .I5(n_0_RAM_reg_192_255_0_2_i_1),
        .I6(n_0_RAM_reg_0_63_3_5_i_1),
        .I7(n_0_RAM_reg_64_127_3_5_i_1),
        .I8(n_0_RAM_reg_128_191_3_5_i_1),
        .I9(n_0_RAM_reg_192_255_3_5_i_1),
        .O1(n_1_axi_chip2chip_b_fifo_inst),
        .O10(n_13_axi_chip2chip_b_fifo_inst),
        .O11(n_14_axi_chip2chip_b_fifo_inst),
        .O12(n_15_axi_chip2chip_b_fifo_inst),
        .O13(n_16_axi_chip2chip_b_fifo_inst),
        .O14(n_17_axi_chip2chip_b_fifo_inst),
        .O15(n_18_axi_chip2chip_b_fifo_inst),
        .O16(n_19_axi_chip2chip_b_fifo_inst),
        .O17(n_20_axi_chip2chip_b_fifo_inst),
        .O18(n_21_axi_chip2chip_b_fifo_inst),
        .O19(n_22_axi_chip2chip_b_fifo_inst),
        .O2(n_3_axi_chip2chip_b_fifo_inst),
        .O20(n_23_axi_chip2chip_b_fifo_inst),
        .O21(n_24_axi_chip2chip_b_fifo_inst),
        .O22(n_25_axi_chip2chip_b_fifo_inst),
        .O23(n_26_axi_chip2chip_b_fifo_inst),
        .O24(n_27_axi_chip2chip_b_fifo_inst),
        .O25(n_28_axi_chip2chip_b_fifo_inst),
        .O26(n_29_axi_chip2chip_b_fifo_inst),
        .O27(n_30_axi_chip2chip_b_fifo_inst),
        .O28(n_31_axi_chip2chip_b_fifo_inst),
        .O29(n_32_axi_chip2chip_b_fifo_inst),
        .O3(n_4_axi_chip2chip_b_fifo_inst),
        .O30(n_33_axi_chip2chip_b_fifo_inst),
        .O31(n_34_axi_chip2chip_b_fifo_inst),
        .O32(n_35_axi_chip2chip_b_fifo_inst),
        .O33(n_36_axi_chip2chip_b_fifo_inst),
        .O34(n_37_axi_chip2chip_b_fifo_inst),
        .O35(n_38_axi_chip2chip_b_fifo_inst),
        .O36(O3),
        .O4(n_5_axi_chip2chip_b_fifo_inst),
        .O5(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out ),
        .O6(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_9_out ),
        .O7(n_10_axi_chip2chip_b_fifo_inst),
        .O8(n_11_axi_chip2chip_b_fifo_inst),
        .O9(n_12_axi_chip2chip_b_fifo_inst),
        .Q({n_6_axi_chip2chip_decoder_inst,n_7_axi_chip2chip_decoder_inst,n_8_axi_chip2chip_decoder_inst,n_9_axi_chip2chip_decoder_inst,n_10_axi_chip2chip_decoder_inst,n_11_axi_chip2chip_decoder_inst,n_12_axi_chip2chip_decoder_inst,n_13_axi_chip2chip_decoder_inst}),
        .br_ch_data_valid(br_ch_data_valid),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .p_1_out(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/p_1_out ),
        .rst_full_gen_i(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rst_full_gen_i_0 ),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
axi_chip2chip_0_axi_chip2chip_v4_2_ch0_ctrl axi_chip2chip_ch0_ctrl_inst
       (.D({n_2_axi_chip2chip_ch0_ctrl_inst,n_3_axi_chip2chip_ch0_ctrl_inst,n_4_axi_chip2chip_ch0_ctrl_inst,n_5_axi_chip2chip_ch0_ctrl_inst,n_6_axi_chip2chip_ch0_ctrl_inst,n_7_axi_chip2chip_ch0_ctrl_inst,n_8_axi_chip2chip_ch0_ctrl_inst,n_9_axi_chip2chip_ch0_ctrl_inst,n_10_axi_chip2chip_ch0_ctrl_inst,n_11_axi_chip2chip_ch0_ctrl_inst,n_12_axi_chip2chip_ch0_ctrl_inst,n_13_axi_chip2chip_ch0_ctrl_inst,n_14_axi_chip2chip_ch0_ctrl_inst,n_15_axi_chip2chip_ch0_ctrl_inst,n_16_axi_chip2chip_ch0_ctrl_inst,n_17_axi_chip2chip_ch0_ctrl_inst,n_18_axi_chip2chip_ch0_ctrl_inst}),
        .E(E),
        .I1(n_15_axi_chip2chip_aw_fifo_inst),
        .I10(n_7_axi_chip2chip_aw_fifo_inst),
        .I11(n_5_axi_chip2chip_ar_fifo_inst),
        .I12(n_3_axi_chip2chip_w_fifo_inst),
        .I13(n_1_axi_chip2chip_ar_fifo_inst),
        .I14(n_3_axi_chip2chip_aw_fifo_inst),
        .I15(n_12_axi_chip2chip_aw_fifo_inst),
        .I16(n_10_axi_chip2chip_ar_fifo_inst),
        .I17(n_8_axi_chip2chip_w_fifo_inst),
        .I18(n_8_axi_chip2chip_aw_fifo_inst),
        .I19(n_6_axi_chip2chip_ar_fifo_inst),
        .I2(n_13_axi_chip2chip_ar_fifo_inst),
        .I20(n_4_axi_chip2chip_w_fifo_inst),
        .I21(n_2_axi_chip2chip_ar_fifo_inst),
        .I22(n_4_axi_chip2chip_aw_fifo_inst),
        .I23(n_5_axi_chip2chip_aw_fifo_inst),
        .I24(n_3_axi_chip2chip_ar_fifo_inst),
        .I25(n_1_axi_chip2chip_w_fifo_inst),
        .I26(Q[2:0]),
        .I27({\n_4_sio_io_stage.axi_chip2chip_cir_buf_inst ,\n_5_sio_io_stage.axi_chip2chip_cir_buf_inst }),
        .I28(n_14_axi_chip2chip_aw_fifo_inst),
        .I29(n_12_axi_chip2chip_ar_fifo_inst),
        .I3(I3),
        .I30(n_10_axi_chip2chip_w_fifo_inst),
        .I31(n_10_axi_chip2chip_aw_fifo_inst),
        .I32(n_8_axi_chip2chip_ar_fifo_inst),
        .I33(n_6_axi_chip2chip_w_fifo_inst),
        .I34(n_6_axi_chip2chip_aw_fifo_inst),
        .I35(n_4_axi_chip2chip_ar_fifo_inst),
        .I36(n_2_axi_chip2chip_w_fifo_inst),
        .I37(n_13_axi_chip2chip_aw_fifo_inst),
        .I38(n_11_axi_chip2chip_ar_fifo_inst),
        .I39(n_9_axi_chip2chip_w_fifo_inst),
        .I4(I4),
        .I40(n_9_axi_chip2chip_aw_fifo_inst),
        .I41(n_7_axi_chip2chip_ar_fifo_inst),
        .I42(n_5_axi_chip2chip_w_fifo_inst),
        .I43(I7),
        .I44(D),
        .I45(rx_intr_data),
        .I46({n_10_axi_chip2chip_decoder_inst,n_11_axi_chip2chip_decoder_inst,n_12_axi_chip2chip_decoder_inst,n_13_axi_chip2chip_decoder_inst}),
        .I5(n_11_axi_chip2chip_w_fifo_inst),
        .I6(I6),
        .I7(n_11_axi_chip2chip_aw_fifo_inst),
        .I8(n_9_axi_chip2chip_ar_fifo_inst),
        .I9(n_7_axi_chip2chip_w_fifo_inst),
        .O1(O1),
        .O2(calib_pattern),
        .O3(one_hot_ss),
        .O4(tx_ch0_valid),
        .Q(slot_select),
        .SR(SR),
        .axi_c2c_m2s_intr_in(axi_c2c_m2s_intr_in),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .axi_c2c_s2m_intr_out(axi_c2c_s2m_intr_out),
        .axi_reset(axi_reset),
        .clk_ph_out(clk_ph_out),
        .s_aclk(s_aclk),
        .send_ch0(send_ch0),
        .tx_ch0_ready(tx_ch0_ready),
        .tx_user_reset(tx_user_reset));
axi_chip2chip_0_axi_chip2chip_v4_2_decoder axi_chip2chip_decoder_inst
       (.E(\axi_chip2chip_packer_inst/p_0_in1_in ),
        .I1(n_0_axi_chip2chip_r_fifo_inst),
        .I2({rx_user_data_flop__0[17:6],rx_user_data_flop[5],rx_user_data_flop__0[4:2],rx_user_data_flop[1:0]}),
        .I45(rx_intr_data),
        .O1(data_in[4:2]),
        .Q({n_3_axi_chip2chip_decoder_inst,n_4_axi_chip2chip_decoder_inst,n_5_axi_chip2chip_decoder_inst,n_6_axi_chip2chip_decoder_inst,n_7_axi_chip2chip_decoder_inst,n_8_axi_chip2chip_decoder_inst,n_9_axi_chip2chip_decoder_inst,n_10_axi_chip2chip_decoder_inst,n_11_axi_chip2chip_decoder_inst,n_12_axi_chip2chip_decoder_inst,n_13_axi_chip2chip_decoder_inst}),
        .SR(SR),
        .br_ch_data_valid(br_ch_data_valid),
        .clk_ph_out(clk_ph_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .rx_phy_ready(rx_phy_ready),
        .rx_user_data_valid_flop(rx_user_data_valid_flop));
axi_chip2chip_0_axi_chip2chip_v4_2_awr_fifo__parameterized1 axi_chip2chip_r_fifo_inst
       (.D({n_3_axi_chip2chip_decoder_inst,n_4_axi_chip2chip_decoder_inst,n_5_axi_chip2chip_decoder_inst,n_6_axi_chip2chip_decoder_inst,n_7_axi_chip2chip_decoder_inst,n_8_axi_chip2chip_decoder_inst,n_9_axi_chip2chip_decoder_inst,n_10_axi_chip2chip_decoder_inst,n_11_axi_chip2chip_decoder_inst,n_12_axi_chip2chip_decoder_inst,n_13_axi_chip2chip_decoder_inst}),
        .E(\axi_chip2chip_packer_inst/p_0_in1_in ),
        .O1(n_0_axi_chip2chip_r_fifo_inst),
        .O2(n_1_axi_chip2chip_r_fifo_inst),
        .O3(data_in[0]),
        .O4(O2),
        .SR(SR),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .rst_full_gen_i(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rst_full_gen_i_0 ),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
axi_chip2chip_0_axi_chip2chip_v4_2_tdm axi_chip2chip_tdm_inst
       (.D({next_int_ch3_ready,next_int_ch2_ready,next_int_ch1_ready,one_hot_ss}),
        .E(\axi_chip2chip_unpacker_inst/p_0_in1_in_2 ),
        .I1(n_0_axi_chip2chip_ar_fifo_inst),
        .I2(n_0_axi_chip2chip_w_fifo_inst),
        .I3(Q[3]),
        .I4(calib_pattern),
        .I5({n_2_axi_chip2chip_ch0_ctrl_inst,n_3_axi_chip2chip_ch0_ctrl_inst,n_4_axi_chip2chip_ch0_ctrl_inst,n_5_axi_chip2chip_ch0_ctrl_inst,n_6_axi_chip2chip_ch0_ctrl_inst,n_7_axi_chip2chip_ch0_ctrl_inst,n_8_axi_chip2chip_ch0_ctrl_inst,n_9_axi_chip2chip_ch0_ctrl_inst,n_10_axi_chip2chip_ch0_ctrl_inst,n_11_axi_chip2chip_ch0_ctrl_inst,n_12_axi_chip2chip_ch0_ctrl_inst,n_13_axi_chip2chip_ch0_ctrl_inst,n_14_axi_chip2chip_ch0_ctrl_inst,n_15_axi_chip2chip_ch0_ctrl_inst,n_16_axi_chip2chip_ch0_ctrl_inst,n_17_axi_chip2chip_ch0_ctrl_inst,n_18_axi_chip2chip_ch0_ctrl_inst}),
        .O1(\axi_chip2chip_unpacker_inst/p_0_in1_in_1 ),
        .O2(\axi_chip2chip_unpacker_inst/p_0_in1_in ),
        .O3(n_7_axi_chip2chip_tdm_inst),
        .O4(n_8_axi_chip2chip_tdm_inst),
        .O5(slot_select),
        .O6(tdm_data_out),
        .Q(wd_ch_fc),
        .ar_ch_data_ready(ar_ch_data_ready),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .empty_fwft_i(empty_fwft_i),
        .p_1_in(p_1_in),
        .send_ch0(send_ch0),
        .tx_ch0_ready(tx_ch0_ready),
        .tx_ch0_valid(tx_ch0_valid),
        .tx_user_reset(tx_user_reset),
        .wd_ch_data_ready(wd_ch_data_ready));
axi_chip2chip_0_axi_chip2chip_v4_2_awr_fifo__parameterized0 axi_chip2chip_w_fifo_inst
       (.E(\axi_chip2chip_unpacker_inst/p_0_in1_in ),
        .I2(I2),
        .O1(n_0_axi_chip2chip_w_fifo_inst),
        .O10(n_8_axi_chip2chip_w_fifo_inst),
        .O11(n_9_axi_chip2chip_w_fifo_inst),
        .O12(n_10_axi_chip2chip_w_fifo_inst),
        .O13(n_11_axi_chip2chip_w_fifo_inst),
        .O2(n_1_axi_chip2chip_w_fifo_inst),
        .O3(n_2_axi_chip2chip_w_fifo_inst),
        .O4(n_3_axi_chip2chip_w_fifo_inst),
        .O5(slot_select[3]),
        .O6(n_4_axi_chip2chip_w_fifo_inst),
        .O7(n_5_axi_chip2chip_w_fifo_inst),
        .O8(n_6_axi_chip2chip_w_fifo_inst),
        .O9(n_7_axi_chip2chip_w_fifo_inst),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/rst_full_gen_i ),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .tx_user_reset(tx_user_reset),
        .wd_ch_data_ready(wd_ch_data_ready));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gpr1.dout_i[0]_i_1 
       (.I0(n_16_axi_chip2chip_b_fifo_inst),
        .I1(n_13_axi_chip2chip_b_fifo_inst),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [7]),
        .I3(n_10_axi_chip2chip_b_fifo_inst),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [6]),
        .I5(n_3_axi_chip2chip_b_fifo_inst),
        .O(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out [0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gpr1.dout_i[1]_i_1 
       (.I0(n_17_axi_chip2chip_b_fifo_inst),
        .I1(n_14_axi_chip2chip_b_fifo_inst),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [7]),
        .I3(n_11_axi_chip2chip_b_fifo_inst),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [6]),
        .I5(n_4_axi_chip2chip_b_fifo_inst),
        .O(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out [1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gpr1.dout_i[2]_i_1 
       (.I0(n_18_axi_chip2chip_b_fifo_inst),
        .I1(n_15_axi_chip2chip_b_fifo_inst),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [7]),
        .I3(n_12_axi_chip2chip_b_fifo_inst),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [6]),
        .I5(n_5_axi_chip2chip_b_fifo_inst),
        .O(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out [2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gpr1.dout_i[3]_i_1 
       (.I0(n_28_axi_chip2chip_b_fifo_inst),
        .I1(n_25_axi_chip2chip_b_fifo_inst),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [7]),
        .I3(n_22_axi_chip2chip_b_fifo_inst),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [6]),
        .I5(n_19_axi_chip2chip_b_fifo_inst),
        .O(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out [3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gpr1.dout_i[4]_i_1 
       (.I0(n_29_axi_chip2chip_b_fifo_inst),
        .I1(n_26_axi_chip2chip_b_fifo_inst),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [7]),
        .I3(n_23_axi_chip2chip_b_fifo_inst),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [6]),
        .I5(n_20_axi_chip2chip_b_fifo_inst),
        .O(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out [4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gpr1.dout_i[5]_i_1 
       (.I0(n_30_axi_chip2chip_b_fifo_inst),
        .I1(n_27_axi_chip2chip_b_fifo_inst),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [7]),
        .I3(n_24_axi_chip2chip_b_fifo_inst),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [6]),
        .I5(n_21_axi_chip2chip_b_fifo_inst),
        .O(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out [5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gpr1.dout_i[6]_i_1 
       (.I0(n_37_axi_chip2chip_b_fifo_inst),
        .I1(n_35_axi_chip2chip_b_fifo_inst),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [7]),
        .I3(n_33_axi_chip2chip_b_fifo_inst),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [6]),
        .I5(n_31_axi_chip2chip_b_fifo_inst),
        .O(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out [6]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \gpr1.dout_i[7]_i_2 
       (.I0(n_38_axi_chip2chip_b_fifo_inst),
        .I1(n_36_axi_chip2chip_b_fifo_inst),
        .I2(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [7]),
        .I3(n_34_axi_chip2chip_b_fifo_inst),
        .I4(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/p_20_out [6]),
        .I5(n_32_axi_chip2chip_b_fifo_inst),
        .O(\axi_chip2chip_async_fifo_inst/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm/p_0_out [7]));
axi_chip2chip_0_axi_chip2chip_v4_2_cir_buf \sio_io_stage.axi_chip2chip_cir_buf_inst 
       (.D({next_int_ch3_ready,next_int_ch2_ready,next_int_ch1_ready}),
        .I1(n_7_axi_chip2chip_tdm_inst),
        .I2(n_0_axi_chip2chip_ar_fifo_inst),
        .I3(n_0_axi_chip2chip_w_fifo_inst),
        .I4(n_8_axi_chip2chip_tdm_inst),
        .I5(data_in),
        .O1({wd_ch_fc,\n_4_sio_io_stage.axi_chip2chip_cir_buf_inst ,\n_5_sio_io_stage.axi_chip2chip_cir_buf_inst }),
        .Q(Q[3]),
        .SR(SR),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .clk_ph_out(clk_ph_out),
        .empty_fwft_i(empty_fwft_i),
        .p_1_in(p_1_in),
        .send_ch0(send_ch0));
FDRE \sio_io_stage.rx_user_data_flop_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[0]),
        .Q(rx_user_data_flop[0]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[10]),
        .Q(rx_user_data_flop__0[10]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[11] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[11]),
        .Q(rx_user_data_flop__0[11]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[12] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[12]),
        .Q(rx_user_data_flop__0[12]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[13] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[13]),
        .Q(rx_user_data_flop__0[13]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[14] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[14]),
        .Q(rx_user_data_flop__0[14]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[15] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[15]),
        .Q(rx_user_data_flop__0[15]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[16] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[16]),
        .Q(rx_user_data_flop__0[16]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[17] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[17]),
        .Q(rx_user_data_flop__0[17]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[1]),
        .Q(rx_user_data_flop[1]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[2]),
        .Q(rx_user_data_flop__0[2]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[3]),
        .Q(rx_user_data_flop__0[3]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[4]),
        .Q(rx_user_data_flop__0[4]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[5]),
        .Q(rx_user_data_flop[5]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[6]),
        .Q(rx_user_data_flop__0[6]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[7]),
        .Q(rx_user_data_flop__0[7]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[8]),
        .Q(rx_user_data_flop__0[8]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_flop_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I8[9]),
        .Q(rx_user_data_flop__0[9]),
        .R(SR));
FDRE \sio_io_stage.rx_user_data_valid_flop_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(1'b1),
        .Q(rx_user_data_valid_flop),
        .R(SR));
FDRE \sio_io_stage.tdm_user_data_flop_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[0]),
        .Q(O4[0]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[10] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[10]),
        .Q(O4[10]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[11] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[11]),
        .Q(O4[11]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[12] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[12]),
        .Q(O4[12]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[13] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[13]),
        .Q(O4[13]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[14] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[14]),
        .Q(O4[14]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[15] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[15]),
        .Q(O4[15]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[16] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[16]),
        .Q(O4[16]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[17] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[17]),
        .Q(O4[17]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[1]),
        .Q(O4[1]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[2]),
        .Q(O4[2]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[3]),
        .Q(O4[3]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[4]),
        .Q(O4[4]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[5]),
        .Q(O4[5]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[6]),
        .Q(O4[6]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[7]),
        .Q(O4[7]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[8]),
        .Q(O4[8]),
        .R(tx_user_reset));
FDRE \sio_io_stage.tdm_user_data_flop_reg[9] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(tdm_data_out[9]),
        .Q(O4[9]),
        .R(tx_user_reset));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_packer" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_packer__parameterized1
   (pack_data_out,
    Q,
    E,
    clk_ph_out,
    D,
    SR);
  output [32:0]pack_data_out;
  output [0:0]Q;
  input [0:0]E;
  input clk_ph_out;
  input [10:0]D;
  input [0:0]SR;

  wire [10:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_ph_out;
  wire \n_0_mux_by_4.data_count_reg[0] ;
  wire \n_0_mux_by_4.data_count_reg[1] ;
  wire \n_0_mux_by_4.data_count_reg[2] ;
  wire [32:0]pack_data_out;

FDSE \mux_by_4.data_count_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .D(Q),
        .Q(\n_0_mux_by_4.data_count_reg[0] ),
        .S(SR));
FDRE \mux_by_4.data_count_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[0] ),
        .Q(\n_0_mux_by_4.data_count_reg[1] ),
        .R(SR));
FDRE \mux_by_4.data_count_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[1] ),
        .Q(\n_0_mux_by_4.data_count_reg[2] ),
        .R(SR));
FDRE \mux_by_4.data_count_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[2] ),
        .Q(Q),
        .R(SR));
FDRE \mux_by_4.pack_reg0_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[0]),
        .Q(pack_data_out[22]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[10] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[10]),
        .Q(pack_data_out[32]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[1]),
        .Q(pack_data_out[23]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[2]),
        .Q(pack_data_out[24]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[3]),
        .Q(pack_data_out[25]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[4]),
        .Q(pack_data_out[26]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[5]),
        .Q(pack_data_out[27]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[6]),
        .Q(pack_data_out[28]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[7]),
        .Q(pack_data_out[29]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[8] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[8]),
        .Q(pack_data_out[30]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg0_reg[9] 
       (.C(clk_ph_out),
        .CE(E),
        .D(D[9]),
        .Q(pack_data_out[31]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[22]),
        .Q(pack_data_out[11]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[10] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[32]),
        .Q(pack_data_out[21]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[23]),
        .Q(pack_data_out[12]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[24]),
        .Q(pack_data_out[13]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[25]),
        .Q(pack_data_out[14]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[26]),
        .Q(pack_data_out[15]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[27]),
        .Q(pack_data_out[16]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[28]),
        .Q(pack_data_out[17]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[29]),
        .Q(pack_data_out[18]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[8] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[30]),
        .Q(pack_data_out[19]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg1_reg[9] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[31]),
        .Q(pack_data_out[20]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[11]),
        .Q(pack_data_out[0]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[10] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[21]),
        .Q(pack_data_out[10]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[12]),
        .Q(pack_data_out[1]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[13]),
        .Q(pack_data_out[2]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[14]),
        .Q(pack_data_out[3]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[15]),
        .Q(pack_data_out[4]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[16]),
        .Q(pack_data_out[5]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[17]),
        .Q(pack_data_out[6]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[18]),
        .Q(pack_data_out[7]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[8] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[19]),
        .Q(pack_data_out[8]),
        .R(1'b0));
FDRE \mux_by_4.pack_reg2_reg[9] 
       (.C(clk_ph_out),
        .CE(E),
        .D(pack_data_out[20]),
        .Q(pack_data_out[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_phy_calib" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_phy_calib
   (calib_error,
    calib_done,
    I4,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    clk_ph_out,
    I1,
    Q,
    I2,
    I3,
    S,
    I5,
    I6,
    calib_start);
  output calib_error;
  output calib_done;
  output [1:0]I4;
  output O1;
  output O2;
  output O3;
  output [4:0]O4;
  output O5;
  output [17:0]O6;
  output O7;
  output [8:0]O8;
  input clk_ph_out;
  input I1;
  input [0:0]Q;
  input I2;
  input [17:0]I3;
  input [0:0]S;
  input [0:0]I5;
  input [0:0]I6;
  input calib_start;

  wire I1;
  wire I2;
  wire [17:0]I3;
  wire [1:0]I4;
  wire [0:0]I5;
  wire [0:0]I6;
  wire O1;
  wire O2;
  wire O3;
  wire [4:0]O4;
  wire O5;
  wire [17:0]O6;
  wire O7;
  wire [8:0]O8;
  wire [0:0]Q;
  wire [0:0]S;
  wire calib_done;
  wire calib_error;
  wire calib_start;
  wire clk_ph_out;
  wire [2:0]count;
  wire [17:0]data_flip_sel;
  wire [17:0]data_flip_sel0;
  wire [17:0]data_stage0;
  wire [17:0]data_stage1;
  wire [17:0]data_stage2;
  wire [17:0]data_stage_sel0;
  wire [17:0]data_stage_sel00;
  wire [17:0]data_stage_sel1;
  wire [17:0]data_stage_sel10;
  wire [16:0]delay_load0;
  wire \deskew_enable_gen.f3_val_reg0 ;
  wire \deskew_enable_gen.p3_val_reg0 ;
  wire dout_p0_val;
  wire dout_p0_val0;
  wire f0_val0;
  wire f1_val0;
  wire f2_val0;
(* RTL_KEEP = "true" *)   wire [3:0]f3_val;
  wire flip_type;
  wire [4:0]grp_count;
  wire grp_flip;
  wire grp_p0_val;
  wire grp_p0_val0;
  wire grp_p1_val;
  wire grp_p1_val0;
  wire grp_p3_val;
  wire grp_p3_val0;
  wire [15:3]masked_data;
  wire [15:3]masked_dout;
  wire [15:3]masked_udata;
  wire [4:0]max_value_0;
  wire [4:0]max_value_1;
  wire min_flip_0;
  wire min_flip_1;
  wire [4:0]min_value_0;
  wire [4:0]min_value_1;
  wire \n_0_ddr_data_gen.data_dly_reg[0] ;
  wire \n_0_ddr_data_gen.data_dly_reg[10] ;
  wire \n_0_ddr_data_gen.data_dly_reg[12] ;
  wire \n_0_ddr_data_gen.data_dly_reg[14] ;
  wire \n_0_ddr_data_gen.data_dly_reg[16] ;
  wire \n_0_ddr_data_gen.data_dly_reg[2] ;
  wire \n_0_ddr_data_gen.data_dly_reg[4] ;
  wire \n_0_ddr_data_gen.data_dly_reg[6] ;
  wire \n_0_ddr_data_gen.data_dly_reg[8] ;
  wire \n_0_deskew_enable_gen.calib_done_i_1 ;
  wire \n_0_deskew_enable_gen.calib_error_i_1 ;
  wire \n_0_deskew_enable_gen.calib_error_i_3 ;
  wire \n_0_deskew_enable_gen.calib_error_i_4 ;
  wire \n_0_deskew_enable_gen.count[0]_i_1 ;
  wire \n_0_deskew_enable_gen.count[1]_i_1 ;
  wire \n_0_deskew_enable_gen.count[2]_i_1 ;
  wire \n_0_deskew_enable_gen.count[2]_i_2 ;
  wire \n_0_deskew_enable_gen.count[2]_i_3 ;
  wire \n_0_deskew_enable_gen.count[2]_i_4 ;
  wire \n_0_deskew_enable_gen.count[2]_i_5 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[11]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[15]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ;
  wire \n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ;
  wire \n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ;
  wire \n_0_deskew_enable_gen.data_stage_sel0[17]_i_3 ;
  wire \n_0_deskew_enable_gen.data_stage_sel0[17]_i_4 ;
  wire \n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ;
  wire \n_0_deskew_enable_gen.delay_load[16]_i_2 ;
  wire \n_0_deskew_enable_gen.delay_load[16]_i_3 ;
  wire \n_0_deskew_enable_gen.delay_load[16]_i_4 ;
  wire \n_0_deskew_enable_gen.delay_load[16]_i_5 ;
  wire \n_0_deskew_enable_gen.delay_load[16]_i_6 ;
  wire \n_0_deskew_enable_gen.delay_tap[0]_i_1 ;
  wire \n_0_deskew_enable_gen.delay_tap[0]_i_2 ;
  wire \n_0_deskew_enable_gen.delay_tap[0]_i_3 ;
  wire \n_0_deskew_enable_gen.delay_tap[1]_i_1 ;
  wire \n_0_deskew_enable_gen.delay_tap[1]_i_2 ;
  wire \n_0_deskew_enable_gen.delay_tap[1]_i_3 ;
  wire \n_0_deskew_enable_gen.delay_tap[1]_i_4 ;
  wire \n_0_deskew_enable_gen.delay_tap[1]_i_5 ;
  wire \n_0_deskew_enable_gen.delay_tap[1]_i_6 ;
  wire \n_0_deskew_enable_gen.delay_tap[2]_i_1 ;
  wire \n_0_deskew_enable_gen.delay_tap[2]_i_2 ;
  wire \n_0_deskew_enable_gen.delay_tap[2]_i_3 ;
  wire \n_0_deskew_enable_gen.delay_tap[2]_i_4 ;
  wire \n_0_deskew_enable_gen.delay_tap[2]_i_5 ;
  wire \n_0_deskew_enable_gen.delay_tap[3]_i_1 ;
  wire \n_0_deskew_enable_gen.delay_tap[3]_i_2 ;
  wire \n_0_deskew_enable_gen.delay_tap[3]_i_3 ;
  wire \n_0_deskew_enable_gen.delay_tap[3]_i_4 ;
  wire \n_0_deskew_enable_gen.delay_tap[3]_i_5 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_1 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_10 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_11 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_12 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_13 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_14 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_15 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_16 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_17 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_18 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_19 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_2 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_20 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_21 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_22 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_23 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_3 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_4 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_5 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_6 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_7 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_8 ;
  wire \n_0_deskew_enable_gen.delay_tap[4]_i_9 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_10 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_11 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_12 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_3 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_4 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_5 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_6 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_7 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_8 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_i_9 ;
  wire \n_0_deskew_enable_gen.dout_p0_val_reg_i_2 ;
  wire \n_0_deskew_enable_gen.f0_val_reg[2]_srl3 ;
  wire \n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 ;
  wire \n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_3 ;
  wire \n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_4 ;
  wire \n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_5 ;
  wire \n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_6 ;
  wire \n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_7 ;
  wire \n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_8 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_3 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_4 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_5 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_6 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_7 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_8 ;
  wire \n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_9 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_10 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_11 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_12 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_13 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_14 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_15 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_3 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_4 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_5 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_6 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_7 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_8 ;
  wire \n_0_deskew_enable_gen.f2_val[0]_i_9 ;
  wire \n_0_deskew_enable_gen.f2_val_reg[0] ;
  wire \n_0_deskew_enable_gen.f2_val_reg[0]_i_2 ;
  wire \n_0_deskew_enable_gen.f3_val[0]_i_3 ;
  wire \n_0_deskew_enable_gen.f3_val[0]_i_4 ;
  wire \n_0_deskew_enable_gen.f3_val[0]_i_5 ;
  wire \n_0_deskew_enable_gen.f3_val[0]_i_6 ;
  wire \n_0_deskew_enable_gen.f3_val[0]_i_7 ;
  wire \n_0_deskew_enable_gen.f3_val[0]_i_8 ;
  wire \n_0_deskew_enable_gen.f3_val_reg[0]_i_2 ;
  wire \n_0_deskew_enable_gen.flip_type_i_1 ;
  wire \n_0_deskew_enable_gen.flip_type_i_2 ;
  wire \n_0_deskew_enable_gen.grp_count[0]_i_1 ;
  wire \n_0_deskew_enable_gen.grp_count[1]_i_1 ;
  wire \n_0_deskew_enable_gen.grp_count[2]_i_1 ;
  wire \n_0_deskew_enable_gen.grp_count[3]_i_1 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_1 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_10 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_2 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_3 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_4 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_5 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_6 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_7 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_8 ;
  wire \n_0_deskew_enable_gen.grp_count[4]_i_9 ;
  wire \n_0_deskew_enable_gen.grp_flip_i_2 ;
  wire \n_0_deskew_enable_gen.grp_flip_i_3 ;
  wire \n_0_deskew_enable_gen.grp_p0_val_i_3 ;
  wire \n_0_deskew_enable_gen.grp_p0_val_i_4 ;
  wire \n_0_deskew_enable_gen.grp_p0_val_i_5 ;
  wire \n_0_deskew_enable_gen.grp_p0_val_i_6 ;
  wire \n_0_deskew_enable_gen.grp_p0_val_i_7 ;
  wire \n_0_deskew_enable_gen.grp_p0_val_i_8 ;
  wire \n_0_deskew_enable_gen.grp_p0_val_i_9 ;
  wire \n_0_deskew_enable_gen.grp_p0_val_reg_i_2 ;
  wire \n_0_deskew_enable_gen.grp_p1_val_i_3 ;
  wire \n_0_deskew_enable_gen.grp_p1_val_i_4 ;
  wire \n_0_deskew_enable_gen.grp_p1_val_i_5 ;
  wire \n_0_deskew_enable_gen.grp_p1_val_i_6 ;
  wire \n_0_deskew_enable_gen.grp_p1_val_i_7 ;
  wire \n_0_deskew_enable_gen.grp_p1_val_i_8 ;
  wire \n_0_deskew_enable_gen.grp_p1_val_reg_i_2 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_10 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_12 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_13 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_16 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_3 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_4 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_5 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_6 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_7 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_i_8 ;
  wire \n_0_deskew_enable_gen.grp_p3_val_reg_i_2 ;
  wire \n_0_deskew_enable_gen.max_value_0[4]_i_1 ;
  wire \n_0_deskew_enable_gen.max_value_1[4]_i_1 ;
  wire \n_0_deskew_enable_gen.max_value_1[4]_i_2 ;
  wire \n_0_deskew_enable_gen.min_flip_0_i_1 ;
  wire \n_0_deskew_enable_gen.min_flip_0_i_2 ;
  wire \n_0_deskew_enable_gen.min_flip_1_i_1 ;
  wire \n_0_deskew_enable_gen.min_flip_1_i_2 ;
  wire \n_0_deskew_enable_gen.min_value_0[4]_i_1 ;
  wire \n_0_deskew_enable_gen.min_value_1[4]_i_1 ;
  wire \n_0_deskew_enable_gen.min_value_1[4]_i_3 ;
  wire \n_0_deskew_enable_gen.min_value_1[4]_i_4 ;
  wire \n_0_deskew_enable_gen.min_value_1[4]_i_5 ;
  wire \n_0_deskew_enable_gen.min_value_1[4]_i_6 ;
  wire \n_0_deskew_enable_gen.p0_val_reg[2]_srl3 ;
  wire \n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 ;
  wire \n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_3 ;
  wire \n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_4 ;
  wire \n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_5 ;
  wire \n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_6 ;
  wire \n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_7 ;
  wire \n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_8 ;
  wire \n_0_deskew_enable_gen.p1_val_reg[1]_srl2 ;
  wire \n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 ;
  wire \n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_3 ;
  wire \n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_4 ;
  wire \n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_5 ;
  wire \n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_6 ;
  wire \n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_7 ;
  wire \n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_9 ;
  wire \n_0_deskew_enable_gen.p2_val[0]_i_10 ;
  wire \n_0_deskew_enable_gen.p2_val[0]_i_3 ;
  wire \n_0_deskew_enable_gen.p2_val[0]_i_4 ;
  wire \n_0_deskew_enable_gen.p2_val[0]_i_5 ;
  wire \n_0_deskew_enable_gen.p2_val[0]_i_6 ;
  wire \n_0_deskew_enable_gen.p2_val[0]_i_7 ;
  wire \n_0_deskew_enable_gen.p2_val[0]_i_9 ;
  wire \n_0_deskew_enable_gen.p2_val_reg[0] ;
  wire \n_0_deskew_enable_gen.p2_val_reg[0]_i_2 ;
  wire \n_0_deskew_enable_gen.p3_val[0]_i_3 ;
  wire \n_0_deskew_enable_gen.p3_val[0]_i_4 ;
  wire \n_0_deskew_enable_gen.p3_val[0]_i_5 ;
  wire \n_0_deskew_enable_gen.p3_val[0]_i_6 ;
  wire \n_0_deskew_enable_gen.p3_val[0]_i_7 ;
  wire \n_0_deskew_enable_gen.p3_val_reg[0]_i_2 ;
  wire \n_0_deskew_enable_gen.pat_count[0]_i_1 ;
  wire \n_0_deskew_enable_gen.pat_count[1]_i_1 ;
  wire \n_0_deskew_enable_gen.pat_count[2]_i_1 ;
  wire \n_0_deskew_enable_gen.pat_count[2]_i_2 ;
  wire \n_0_deskew_enable_gen.pat_count[2]_i_3 ;
  wire \n_0_deskew_enable_gen.pat_count[2]_i_4 ;
  wire \n_0_deskew_enable_gen.state[0]_i_1 ;
  wire \n_0_deskew_enable_gen.state[10]_i_1 ;
  wire \n_0_deskew_enable_gen.state[10]_i_2 ;
  wire \n_0_deskew_enable_gen.state[11]_i_1 ;
  wire \n_0_deskew_enable_gen.state[11]_i_2 ;
  wire \n_0_deskew_enable_gen.state[11]_i_3 ;
  wire \n_0_deskew_enable_gen.state[11]_i_4 ;
  wire \n_0_deskew_enable_gen.state[11]_i_5 ;
  wire \n_0_deskew_enable_gen.state[11]_i_6 ;
  wire \n_0_deskew_enable_gen.state[11]_i_7 ;
  wire \n_0_deskew_enable_gen.state[11]_i_8 ;
  wire \n_0_deskew_enable_gen.state[1]_i_1 ;
  wire \n_0_deskew_enable_gen.state[1]_i_2 ;
  wire \n_0_deskew_enable_gen.state[1]_i_3 ;
  wire \n_0_deskew_enable_gen.state[2]_i_1 ;
  wire \n_0_deskew_enable_gen.state[2]_i_2 ;
  wire \n_0_deskew_enable_gen.state[3]_i_1 ;
  wire \n_0_deskew_enable_gen.state[3]_i_2 ;
  wire \n_0_deskew_enable_gen.state[3]_i_3 ;
  wire \n_0_deskew_enable_gen.state[3]_i_4 ;
  wire \n_0_deskew_enable_gen.state[4]_i_1 ;
  wire \n_0_deskew_enable_gen.state[5]_i_1 ;
  wire \n_0_deskew_enable_gen.state[6]_i_1 ;
  wire \n_0_deskew_enable_gen.state[6]_i_2 ;
  wire \n_0_deskew_enable_gen.state[6]_i_3 ;
  wire \n_0_deskew_enable_gen.state[6]_i_4 ;
  wire \n_0_deskew_enable_gen.state[7]_i_1 ;
  wire \n_0_deskew_enable_gen.state[8]_i_1 ;
  wire \n_0_deskew_enable_gen.state[8]_i_2 ;
  wire \n_0_deskew_enable_gen.state[9]_i_1 ;
  wire \n_0_deskew_enable_gen.state[9]_i_2 ;
  wire \n_0_deskew_enable_gen.step_count[0]_i_1 ;
  wire \n_0_deskew_enable_gen.step_count[0]_i_2 ;
  wire \n_0_deskew_enable_gen.step_count[1]_i_1 ;
  wire \n_0_deskew_enable_gen.step_count[1]_i_2 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_1 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_10 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_2 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_3 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_4 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_5 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_6 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_7 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_8 ;
  wire \n_0_deskew_enable_gen.step_count[2]_i_9 ;
  wire \n_0_sio_mast_calib_fsm.slave_ack_i_2 ;
  wire \n_0_sio_mast_calib_fsm.slave_ack_i_3 ;
  wire \n_0_sio_mast_calib_fsm.slave_ack_i_4 ;
  wire \n_0_sio_mast_calib_fsm.slave_nack_i_2 ;
  wire \n_0_sio_mast_calib_fsm.slave_nack_i_3 ;
  wire \n_0_sio_mast_calib_fsm.slave_nack_i_4 ;
  wire \n_1_deskew_enable_gen.dout_p0_val_reg_i_2 ;
  wire \n_1_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 ;
  wire \n_1_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 ;
  wire \n_1_deskew_enable_gen.f2_val_reg[0]_i_2 ;
  wire \n_1_deskew_enable_gen.f3_val_reg[0]_i_2 ;
  wire \n_1_deskew_enable_gen.grp_p0_val_reg_i_2 ;
  wire \n_1_deskew_enable_gen.grp_p1_val_reg_i_2 ;
  wire \n_1_deskew_enable_gen.grp_p3_val_reg_i_2 ;
  wire \n_1_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 ;
  wire \n_1_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 ;
  wire \n_1_deskew_enable_gen.p2_val_reg[0]_i_2 ;
  wire \n_1_deskew_enable_gen.p3_val_reg[0]_i_2 ;
  wire \n_2_deskew_enable_gen.dout_p0_val_reg_i_2 ;
  wire \n_2_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 ;
  wire \n_2_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 ;
  wire \n_2_deskew_enable_gen.f2_val_reg[0]_i_2 ;
  wire \n_2_deskew_enable_gen.f3_val_reg[0]_i_2 ;
  wire \n_2_deskew_enable_gen.grp_p0_val_reg_i_2 ;
  wire \n_2_deskew_enable_gen.grp_p1_val_reg_i_2 ;
  wire \n_2_deskew_enable_gen.grp_p3_val_reg_i_2 ;
  wire \n_2_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 ;
  wire \n_2_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 ;
  wire \n_2_deskew_enable_gen.p2_val_reg[0]_i_2 ;
  wire \n_2_deskew_enable_gen.p3_val_reg[0]_i_2 ;
  wire \n_3_deskew_enable_gen.dout_p0_val_reg_i_1 ;
  wire \n_3_deskew_enable_gen.dout_p0_val_reg_i_2 ;
  wire \n_3_deskew_enable_gen.f0_val_reg[2]_srl3_i_1 ;
  wire \n_3_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 ;
  wire \n_3_deskew_enable_gen.f1_val_reg[1]_srl2_i_1 ;
  wire \n_3_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 ;
  wire \n_3_deskew_enable_gen.f2_val_reg[0]_i_1 ;
  wire \n_3_deskew_enable_gen.f2_val_reg[0]_i_2 ;
  wire \n_3_deskew_enable_gen.f3_val_reg[0]_i_1 ;
  wire \n_3_deskew_enable_gen.f3_val_reg[0]_i_2 ;
  wire \n_3_deskew_enable_gen.grp_p0_val_reg_i_1 ;
  wire \n_3_deskew_enable_gen.grp_p0_val_reg_i_2 ;
  wire \n_3_deskew_enable_gen.grp_p1_val_reg_i_1 ;
  wire \n_3_deskew_enable_gen.grp_p1_val_reg_i_2 ;
  wire \n_3_deskew_enable_gen.grp_p3_val_reg_i_1 ;
  wire \n_3_deskew_enable_gen.grp_p3_val_reg_i_2 ;
  wire \n_3_deskew_enable_gen.p0_val_reg[2]_srl3_i_1 ;
  wire \n_3_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 ;
  wire \n_3_deskew_enable_gen.p1_val_reg[1]_srl2_i_1 ;
  wire \n_3_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 ;
  wire \n_3_deskew_enable_gen.p2_val_reg[0]_i_1 ;
  wire \n_3_deskew_enable_gen.p2_val_reg[0]_i_2 ;
  wire \n_3_deskew_enable_gen.p3_val_reg[0]_i_1 ;
  wire \n_3_deskew_enable_gen.p3_val_reg[0]_i_2 ;
  wire next_calib_done;
  wire next_grp_flip;
  wire [4:0]next_min_value_0;
  wire p0_val0;
  wire p1_val0;
  wire p2_val0;
(* RTL_KEEP = "true" *)   wire [3:0]p3_val;
  wire p_0_in4_in;
  wire p_0_in7_in;
  wire p_2_in5_in;
  wire p_2_in8_in;
  wire p_3_in;
  wire p_3_in9_in;
  wire [2:0]pat_count;
  wire [17:0]selected_data;
  wire [11:0]state;
  wire [2:0]step_count;
  wire [16:0]unalign_data;
  wire [3:2]\NLW_deskew_enable_gen.dout_p0_val_reg_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.dout_p0_val_reg_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.dout_p0_val_reg_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.f0_val_reg[2]_srl3_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.f0_val_reg[2]_srl3_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.f0_val_reg[2]_srl3_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.f1_val_reg[1]_srl2_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.f1_val_reg[1]_srl2_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.f1_val_reg[1]_srl2_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.f2_val_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.f2_val_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.f2_val_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.f3_val_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.f3_val_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.f3_val_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.grp_p0_val_reg_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.grp_p0_val_reg_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.grp_p0_val_reg_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.grp_p1_val_reg_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.grp_p1_val_reg_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.grp_p1_val_reg_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.grp_p3_val_reg_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.grp_p3_val_reg_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.grp_p3_val_reg_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.p0_val_reg[2]_srl3_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.p0_val_reg[2]_srl3_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.p0_val_reg[2]_srl3_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.p1_val_reg[1]_srl2_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.p1_val_reg[1]_srl2_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.p1_val_reg[1]_srl2_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.p2_val_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.p2_val_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.p2_val_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_deskew_enable_gen.p3_val_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.p3_val_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_deskew_enable_gen.p3_val_reg[0]_i_2_O_UNCONNECTED ;

FDRE \ddr_data_gen.data_dly_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[0]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[0] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[10]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[10] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[11] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[11]),
        .Q(unalign_data[10]),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[12] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[12]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[12] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[13] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[13]),
        .Q(unalign_data[12]),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[14] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[14]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[14] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[15] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[15]),
        .Q(unalign_data[14]),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[16] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[16]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[16] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[17] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[17]),
        .Q(unalign_data[16]),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[1]),
        .Q(unalign_data[0]),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[2]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[2] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[3]),
        .Q(unalign_data[2]),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[4]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[4] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[5]),
        .Q(unalign_data[4]),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[6]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[6] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[7]),
        .Q(unalign_data[6]),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[8]),
        .Q(\n_0_ddr_data_gen.data_dly_reg[8] ),
        .R(1'b0));
FDRE \ddr_data_gen.data_dly_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3[9]),
        .Q(unalign_data[8]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT5 #(
    .INIT(32'h08FF0800)) 
     \deskew_enable_gen.calib_done_i_1 
       (.I0(step_count[1]),
        .I1(step_count[2]),
        .I2(step_count[0]),
        .I3(next_calib_done),
        .I4(calib_done),
        .O(\n_0_deskew_enable_gen.calib_done_i_1 ));
FDRE \deskew_enable_gen.calib_done_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.calib_done_i_1 ),
        .Q(calib_done),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT5 #(
    .INIT(32'h80FF8000)) 
     \deskew_enable_gen.calib_error_i_1 
       (.I0(step_count[0]),
        .I1(step_count[1]),
        .I2(step_count[2]),
        .I3(next_calib_done),
        .I4(calib_error),
        .O(\n_0_deskew_enable_gen.calib_error_i_1 ));
LUT6 #(
    .INIT(64'h0000010000000000)) 
     \deskew_enable_gen.calib_error_i_2 
       (.I0(\n_0_deskew_enable_gen.calib_error_i_3 ),
        .I1(state[8]),
        .I2(state[9]),
        .I3(state[11]),
        .I4(state[10]),
        .I5(\n_0_deskew_enable_gen.calib_error_i_4 ),
        .O(next_calib_done));
(* SOFT_HLUTNM = "soft_lutpair142" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \deskew_enable_gen.calib_error_i_3 
       (.I0(state[7]),
        .I1(state[5]),
        .I2(state[6]),
        .I3(state[4]),
        .O(\n_0_deskew_enable_gen.calib_error_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair157" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \deskew_enable_gen.calib_error_i_4 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\n_0_deskew_enable_gen.calib_error_i_4 ));
FDRE \deskew_enable_gen.calib_error_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.calib_error_i_1 ),
        .Q(calib_error),
        .R(I1));
LUT3 #(
    .INIT(8'h34)) 
     \deskew_enable_gen.count[0]_i_1 
       (.I0(\n_0_deskew_enable_gen.count[2]_i_2 ),
        .I1(\n_0_deskew_enable_gen.count[2]_i_3 ),
        .I2(count[0]),
        .O(\n_0_deskew_enable_gen.count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair143" *) 
   LUT4 #(
    .INIT(16'h1F20)) 
     \deskew_enable_gen.count[1]_i_1 
       (.I0(count[0]),
        .I1(\n_0_deskew_enable_gen.count[2]_i_2 ),
        .I2(\n_0_deskew_enable_gen.count[2]_i_3 ),
        .I3(count[1]),
        .O(\n_0_deskew_enable_gen.count[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair143" *) 
   LUT5 #(
    .INIT(32'h07FF0800)) 
     \deskew_enable_gen.count[2]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(\n_0_deskew_enable_gen.count[2]_i_2 ),
        .I3(\n_0_deskew_enable_gen.count[2]_i_3 ),
        .I4(count[2]),
        .O(\n_0_deskew_enable_gen.count[2]_i_1 ));
LUT6 #(
    .INIT(64'h0000000051111111)) 
     \deskew_enable_gen.count[2]_i_2 
       (.I0(state[3]),
        .I1(\n_0_deskew_enable_gen.state[2]_i_2 ),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[2]),
        .I5(state[1]),
        .O(\n_0_deskew_enable_gen.count[2]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000008)) 
     \deskew_enable_gen.count[2]_i_3 
       (.I0(\n_0_deskew_enable_gen.count[2]_i_4 ),
        .I1(\n_0_deskew_enable_gen.count[2]_i_5 ),
        .I2(state[6]),
        .I3(state[5]),
        .I4(state[8]),
        .I5(state[7]),
        .O(\n_0_deskew_enable_gen.count[2]_i_3 ));
LUT6 #(
    .INIT(64'h0000000100010116)) 
     \deskew_enable_gen.count[2]_i_4 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[9]),
        .I5(state[4]),
        .O(\n_0_deskew_enable_gen.count[2]_i_4 ));
LUT2 #(
    .INIT(4'h1)) 
     \deskew_enable_gen.count[2]_i_5 
       (.I0(state[10]),
        .I1(state[11]),
        .O(\n_0_deskew_enable_gen.count[2]_i_5 ));
FDRE \deskew_enable_gen.count_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.count[0]_i_1 ),
        .Q(count[0]),
        .R(I1));
FDRE \deskew_enable_gen.count_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.count[1]_i_1 ),
        .Q(count[1]),
        .R(I1));
FDRE \deskew_enable_gen.count_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.count[2]_i_1 ),
        .Q(count[2]),
        .R(I1));
LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[0]_i_1 
       (.I0(data_flip_sel[0]),
        .I1(grp_count[2]),
        .I2(grp_count[1]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I4(grp_count[0]),
        .I5(grp_flip),
        .O(data_flip_sel0[0]));
LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[10]_i_1 
       (.I0(data_flip_sel[10]),
        .I1(grp_count[2]),
        .I2(grp_count[1]),
        .I3(grp_count[0]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I5(grp_flip),
        .O(data_flip_sel0[10]));
LUT2 #(
    .INIT(4'h1)) 
     \deskew_enable_gen.data_flip_sel[10]_i_2 
       (.I0(grp_count[4]),
        .I1(grp_count[3]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair160" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \deskew_enable_gen.data_flip_sel[11]_i_1 
       (.I0(data_flip_sel[11]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[11]_i_2 ),
        .I2(grp_flip),
        .O(data_flip_sel0[11]));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT5 #(
    .INIT(32'hFFFFFFEF)) 
     \deskew_enable_gen.data_flip_sel[11]_i_2 
       (.I0(grp_count[2]),
        .I1(grp_count[0]),
        .I2(grp_count[1]),
        .I3(grp_count[4]),
        .I4(grp_count[3]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[11]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT5 #(
    .INIT(32'hAAEAAAAA)) 
     \deskew_enable_gen.data_flip_sel[12]_i_1 
       (.I0(data_flip_sel[12]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(grp_flip),
        .O(data_flip_sel0[12]));
(* SOFT_HLUTNM = "soft_lutpair177" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \deskew_enable_gen.data_flip_sel[12]_i_2 
       (.I0(grp_count[4]),
        .I1(grp_count[3]),
        .I2(grp_count[0]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT5 #(
    .INIT(32'hAEAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[13]_i_1 
       (.I0(data_flip_sel[13]),
        .I1(grp_count[1]),
        .I2(grp_count[2]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .I4(grp_flip),
        .O(data_flip_sel0[13]));
(* SOFT_HLUTNM = "soft_lutpair177" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \deskew_enable_gen.data_flip_sel[13]_i_2 
       (.I0(grp_count[4]),
        .I1(grp_count[3]),
        .I2(grp_count[0]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair172" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \deskew_enable_gen.data_flip_sel[14]_i_1 
       (.I0(data_flip_sel[14]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .I2(grp_flip),
        .O(data_flip_sel0[14]));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT5 #(
    .INIT(32'hFFEFFFFF)) 
     \deskew_enable_gen.data_flip_sel[14]_i_2 
       (.I0(grp_count[4]),
        .I1(grp_count[3]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(grp_count[0]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair176" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \deskew_enable_gen.data_flip_sel[15]_i_1 
       (.I0(data_flip_sel[15]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[15]_i_2 ),
        .I2(grp_flip),
        .O(data_flip_sel0[15]));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT5 #(
    .INIT(32'hFFFFFFF7)) 
     \deskew_enable_gen.data_flip_sel[15]_i_2 
       (.I0(grp_count[0]),
        .I1(grp_count[1]),
        .I2(grp_count[3]),
        .I3(grp_count[4]),
        .I4(grp_count[2]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[15]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair167" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \deskew_enable_gen.data_flip_sel[16]_i_1 
       (.I0(data_flip_sel[16]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .I2(grp_flip),
        .O(data_flip_sel0[16]));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT5 #(
    .INIT(32'hFFFDFEFF)) 
     \deskew_enable_gen.data_flip_sel[16]_i_2 
       (.I0(grp_count[0]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[2]),
        .I4(grp_count[1]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair163" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \deskew_enable_gen.data_flip_sel[17]_i_1 
       (.I0(data_flip_sel[17]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I2(grp_flip),
        .O(data_flip_sel0[17]));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT5 #(
    .INIT(32'hFFFEFFF7)) 
     \deskew_enable_gen.data_flip_sel[17]_i_2 
       (.I0(grp_count[1]),
        .I1(grp_count[0]),
        .I2(grp_count[3]),
        .I3(grp_count[4]),
        .I4(grp_count[2]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ));
LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[1]_i_1 
       (.I0(data_flip_sel[1]),
        .I1(grp_count[2]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .I5(grp_flip),
        .O(data_flip_sel0[1]));
(* SOFT_HLUTNM = "soft_lutpair172" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \deskew_enable_gen.data_flip_sel[2]_i_1 
       (.I0(data_flip_sel[2]),
        .I1(O3),
        .I2(grp_flip),
        .O(data_flip_sel0[2]));
(* SOFT_HLUTNM = "soft_lutpair138" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \deskew_enable_gen.data_flip_sel[2]_i_2 
       (.I0(grp_count[2]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .O(O3));
LUT5 #(
    .INIT(32'hAEAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[3]_i_1 
       (.I0(data_flip_sel[3]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I2(grp_count[0]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I4(grp_flip),
        .O(data_flip_sel0[3]));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \deskew_enable_gen.data_flip_sel[3]_i_2 
       (.I0(grp_count[1]),
        .I1(grp_count[2]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ));
LUT5 #(
    .INIT(32'hABAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[4]_i_1 
       (.I0(data_flip_sel[4]),
        .I1(grp_count[2]),
        .I2(grp_count[1]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I4(grp_flip),
        .O(data_flip_sel0[4]));
(* SOFT_HLUTNM = "soft_lutpair166" *) 
   LUT3 #(
    .INIT(8'hEA)) 
     \deskew_enable_gen.data_flip_sel[5]_i_1 
       (.I0(data_flip_sel[5]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I2(grp_flip),
        .O(data_flip_sel0[5]));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT5 #(
    .INIT(32'h00010000)) 
     \deskew_enable_gen.data_flip_sel[5]_i_2 
       (.I0(grp_count[2]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair176" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     \deskew_enable_gen.data_flip_sel[6]_i_1 
       (.I0(data_flip_sel[6]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I2(grp_flip),
        .O(data_flip_sel0[6]));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT5 #(
    .INIT(32'hFFFFFFEF)) 
     \deskew_enable_gen.data_flip_sel[6]_i_2 
       (.I0(grp_count[4]),
        .I1(grp_count[3]),
        .I2(grp_count[0]),
        .I3(grp_count[2]),
        .I4(grp_count[1]),
        .O(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ));
LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[7]_i_1 
       (.I0(data_flip_sel[7]),
        .I1(grp_count[2]),
        .I2(grp_count[0]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I4(grp_count[1]),
        .I5(grp_flip),
        .O(data_flip_sel0[7]));
LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[8]_i_1 
       (.I0(data_flip_sel[8]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I2(grp_count[2]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(grp_flip),
        .O(data_flip_sel0[8]));
LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
     \deskew_enable_gen.data_flip_sel[9]_i_1 
       (.I0(data_flip_sel[9]),
        .I1(grp_count[2]),
        .I2(grp_count[1]),
        .I3(grp_count[0]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I5(grp_flip),
        .O(data_flip_sel0[9]));
FDRE \deskew_enable_gen.data_flip_sel_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[0]),
        .Q(data_flip_sel[0]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[10]),
        .Q(data_flip_sel[10]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[11] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[11]),
        .Q(data_flip_sel[11]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[12] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[12]),
        .Q(data_flip_sel[12]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[13] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[13]),
        .Q(data_flip_sel[13]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[14] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[14]),
        .Q(data_flip_sel[14]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[15] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[15]),
        .Q(data_flip_sel[15]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[16] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[16]),
        .Q(data_flip_sel[16]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[17] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[17]),
        .Q(data_flip_sel[17]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[1]),
        .Q(data_flip_sel[1]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[2]),
        .Q(data_flip_sel[2]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[3]),
        .Q(data_flip_sel[3]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[4]),
        .Q(data_flip_sel[4]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[5]),
        .Q(data_flip_sel[5]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[6]),
        .Q(data_flip_sel[6]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[7]),
        .Q(data_flip_sel[7]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[8]),
        .Q(data_flip_sel[8]),
        .R(I1));
FDRE \deskew_enable_gen.data_flip_sel_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_flip_sel0[9]),
        .Q(data_flip_sel[9]),
        .R(I1));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[0]_i_1 
       (.I0(data_stage2[0]),
        .I1(data_stage0[0]),
        .I2(data_stage_sel1[0]),
        .I3(data_stage1[0]),
        .I4(data_stage_sel0[0]),
        .O(selected_data[0]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[10]_i_1 
       (.I0(data_stage2[10]),
        .I1(data_stage0[10]),
        .I2(data_stage_sel1[10]),
        .I3(data_stage1[10]),
        .I4(data_stage_sel0[10]),
        .O(selected_data[10]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[11]_i_1 
       (.I0(data_stage2[11]),
        .I1(data_stage0[11]),
        .I2(data_stage_sel1[11]),
        .I3(data_stage1[11]),
        .I4(data_stage_sel0[11]),
        .O(selected_data[11]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[12]_i_1 
       (.I0(data_stage2[12]),
        .I1(data_stage0[12]),
        .I2(data_stage_sel1[12]),
        .I3(data_stage1[12]),
        .I4(data_stage_sel0[12]),
        .O(selected_data[12]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[13]_i_1 
       (.I0(data_stage2[13]),
        .I1(data_stage0[13]),
        .I2(data_stage_sel1[13]),
        .I3(data_stage1[13]),
        .I4(data_stage_sel0[13]),
        .O(selected_data[13]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[14]_i_1 
       (.I0(data_stage2[14]),
        .I1(data_stage0[14]),
        .I2(data_stage_sel1[14]),
        .I3(data_stage1[14]),
        .I4(data_stage_sel0[14]),
        .O(selected_data[14]));
LUT5 #(
    .INIT(32'hCCB800B8)) 
     \deskew_enable_gen.data_out[15]_i_1 
       (.I0(data_stage0[15]),
        .I1(data_stage_sel1[15]),
        .I2(data_stage1[15]),
        .I3(data_stage_sel0[15]),
        .I4(data_stage2[15]),
        .O(selected_data[15]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[16]_i_1 
       (.I0(data_stage2[16]),
        .I1(data_stage0[16]),
        .I2(data_stage_sel1[16]),
        .I3(data_stage1[16]),
        .I4(data_stage_sel0[16]),
        .O(selected_data[16]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[17]_i_1 
       (.I0(data_stage2[17]),
        .I1(data_stage0[17]),
        .I2(data_stage_sel1[17]),
        .I3(data_stage1[17]),
        .I4(data_stage_sel0[17]),
        .O(selected_data[17]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[1]_i_1 
       (.I0(data_stage2[1]),
        .I1(data_stage0[1]),
        .I2(data_stage_sel1[1]),
        .I3(data_stage1[1]),
        .I4(data_stage_sel0[1]),
        .O(selected_data[1]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[2]_i_1 
       (.I0(data_stage2[2]),
        .I1(data_stage0[2]),
        .I2(data_stage_sel1[2]),
        .I3(data_stage1[2]),
        .I4(data_stage_sel0[2]),
        .O(selected_data[2]));
LUT5 #(
    .INIT(32'hCCB800B8)) 
     \deskew_enable_gen.data_out[3]_i_1 
       (.I0(data_stage0[3]),
        .I1(data_stage_sel1[3]),
        .I2(data_stage1[3]),
        .I3(data_stage_sel0[3]),
        .I4(data_stage2[3]),
        .O(selected_data[3]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[4]_i_1 
       (.I0(data_stage2[4]),
        .I1(data_stage0[4]),
        .I2(data_stage_sel1[4]),
        .I3(data_stage1[4]),
        .I4(data_stage_sel0[4]),
        .O(selected_data[4]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[5]_i_1 
       (.I0(data_stage2[5]),
        .I1(data_stage0[5]),
        .I2(data_stage_sel1[5]),
        .I3(data_stage1[5]),
        .I4(data_stage_sel0[5]),
        .O(selected_data[5]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[6]_i_1 
       (.I0(data_stage2[6]),
        .I1(data_stage0[6]),
        .I2(data_stage_sel1[6]),
        .I3(data_stage1[6]),
        .I4(data_stage_sel0[6]),
        .O(selected_data[6]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[7]_i_1 
       (.I0(data_stage2[7]),
        .I1(data_stage0[7]),
        .I2(data_stage_sel1[7]),
        .I3(data_stage1[7]),
        .I4(data_stage_sel0[7]),
        .O(selected_data[7]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[8]_i_1 
       (.I0(data_stage2[8]),
        .I1(data_stage0[8]),
        .I2(data_stage_sel1[8]),
        .I3(data_stage1[8]),
        .I4(data_stage_sel0[8]),
        .O(selected_data[8]));
LUT5 #(
    .INIT(32'hA0A0CFC0)) 
     \deskew_enable_gen.data_out[9]_i_1 
       (.I0(data_stage2[9]),
        .I1(data_stage0[9]),
        .I2(data_stage_sel1[9]),
        .I3(data_stage1[9]),
        .I4(data_stage_sel0[9]),
        .O(selected_data[9]));
FDRE \deskew_enable_gen.data_out_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[0]),
        .Q(O6[0]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[10]),
        .Q(O6[10]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[11] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[11]),
        .Q(O6[11]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[12] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[12]),
        .Q(O6[12]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[13] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[13]),
        .Q(O6[13]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[14] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[14]),
        .Q(O6[14]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[15] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[15]),
        .Q(O6[15]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[16] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[16]),
        .Q(O6[16]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[17] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[17]),
        .Q(O6[17]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[1]),
        .Q(O6[1]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[2]),
        .Q(O6[2]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[3]),
        .Q(O6[3]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[4]),
        .Q(O6[4]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[5]),
        .Q(O6[5]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[6]),
        .Q(O6[6]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[7]),
        .Q(O6[7]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[8]),
        .Q(O6[8]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_out_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(selected_data[9]),
        .Q(O6[9]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair165" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[0]_i_1 
       (.I0(unalign_data[0]),
        .I1(data_flip_sel[0]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[0] ),
        .O(data_stage0[0]));
LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[10]_i_1 
       (.I0(unalign_data[10]),
        .I1(data_flip_sel[10]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[10] ),
        .O(data_stage0[10]));
(* SOFT_HLUTNM = "soft_lutpair160" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[11]_i_1 
       (.I0(I3[10]),
        .I1(data_flip_sel[11]),
        .I2(unalign_data[10]),
        .O(data_stage0[11]));
(* SOFT_HLUTNM = "soft_lutpair169" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[12]_i_1 
       (.I0(unalign_data[12]),
        .I1(data_flip_sel[12]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[12] ),
        .O(data_stage0[12]));
(* SOFT_HLUTNM = "soft_lutpair169" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[13]_i_1 
       (.I0(I3[12]),
        .I1(data_flip_sel[13]),
        .I2(unalign_data[12]),
        .O(data_stage0[13]));
(* SOFT_HLUTNM = "soft_lutpair162" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[14]_i_1 
       (.I0(unalign_data[14]),
        .I1(data_flip_sel[14]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[14] ),
        .O(data_stage0[14]));
(* SOFT_HLUTNM = "soft_lutpair162" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[15]_i_1 
       (.I0(I3[14]),
        .I1(data_flip_sel[15]),
        .I2(unalign_data[14]),
        .O(data_stage0[15]));
(* SOFT_HLUTNM = "soft_lutpair167" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[16]_i_1 
       (.I0(unalign_data[16]),
        .I1(data_flip_sel[16]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[16] ),
        .O(data_stage0[16]));
(* SOFT_HLUTNM = "soft_lutpair163" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[17]_i_1 
       (.I0(I3[16]),
        .I1(data_flip_sel[17]),
        .I2(unalign_data[16]),
        .O(data_stage0[17]));
(* SOFT_HLUTNM = "soft_lutpair165" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[1]_i_1 
       (.I0(I3[0]),
        .I1(data_flip_sel[1]),
        .I2(unalign_data[0]),
        .O(data_stage0[1]));
(* SOFT_HLUTNM = "soft_lutpair164" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[2]_i_1 
       (.I0(unalign_data[2]),
        .I1(data_flip_sel[2]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[2] ),
        .O(data_stage0[2]));
(* SOFT_HLUTNM = "soft_lutpair164" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[3]_i_1 
       (.I0(I3[2]),
        .I1(data_flip_sel[3]),
        .I2(unalign_data[2]),
        .O(data_stage0[3]));
LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[4]_i_1 
       (.I0(unalign_data[4]),
        .I1(data_flip_sel[4]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[4] ),
        .O(data_stage0[4]));
(* SOFT_HLUTNM = "soft_lutpair166" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[5]_i_1 
       (.I0(I3[4]),
        .I1(data_flip_sel[5]),
        .I2(unalign_data[4]),
        .O(data_stage0[5]));
(* SOFT_HLUTNM = "soft_lutpair168" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[6]_i_1 
       (.I0(unalign_data[6]),
        .I1(data_flip_sel[6]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[6] ),
        .O(data_stage0[6]));
(* SOFT_HLUTNM = "soft_lutpair168" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[7]_i_1 
       (.I0(I3[6]),
        .I1(data_flip_sel[7]),
        .I2(unalign_data[6]),
        .O(data_stage0[7]));
(* SOFT_HLUTNM = "soft_lutpair173" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[8]_i_1 
       (.I0(unalign_data[8]),
        .I1(data_flip_sel[8]),
        .I2(\n_0_ddr_data_gen.data_dly_reg[8] ),
        .O(data_stage0[8]));
(* SOFT_HLUTNM = "soft_lutpair173" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \deskew_enable_gen.data_stage1[9]_i_1 
       (.I0(I3[8]),
        .I1(data_flip_sel[9]),
        .I2(unalign_data[8]),
        .O(data_stage0[9]));
FDRE \deskew_enable_gen.data_stage1_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[0]),
        .Q(data_stage1[0]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[10]),
        .Q(data_stage1[10]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[11] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[11]),
        .Q(data_stage1[11]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[12] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[12]),
        .Q(data_stage1[12]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[13] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[13]),
        .Q(data_stage1[13]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[14] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[14]),
        .Q(data_stage1[14]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[15] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[15]),
        .Q(data_stage1[15]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[16] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[16]),
        .Q(data_stage1[16]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[17] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[17]),
        .Q(data_stage1[17]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[1]),
        .Q(data_stage1[1]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[2]),
        .Q(data_stage1[2]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[3]),
        .Q(data_stage1[3]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[4]),
        .Q(data_stage1[4]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[5]),
        .Q(data_stage1[5]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[6]),
        .Q(data_stage1[6]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[7]),
        .Q(data_stage1[7]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[8]),
        .Q(data_stage1[8]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage1_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage0[9]),
        .Q(data_stage1[9]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[0]),
        .Q(data_stage2[0]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[10]),
        .Q(data_stage2[10]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[11] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[11]),
        .Q(data_stage2[11]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[12] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[12]),
        .Q(data_stage2[12]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[13] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[13]),
        .Q(data_stage2[13]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[14] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[14]),
        .Q(data_stage2[14]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[15] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[15]),
        .Q(data_stage2[15]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[16] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[16]),
        .Q(data_stage2[16]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[17] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[17]),
        .Q(data_stage2[17]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[1]),
        .Q(data_stage2[1]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[2]),
        .Q(data_stage2[2]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[3]),
        .Q(data_stage2[3]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[4]),
        .Q(data_stage2[4]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[5]),
        .Q(data_stage2[5]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[6]),
        .Q(data_stage2[6]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[7]),
        .Q(data_stage2[7]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[8]),
        .Q(data_stage2[8]),
        .R(1'b0));
FDRE \deskew_enable_gen.data_stage2_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(data_stage1[9]),
        .Q(data_stage2[9]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
     \deskew_enable_gen.data_stage_sel0[0]_i_1 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(grp_count[0]),
        .I5(data_stage_sel0[0]),
        .O(data_stage_sel00[0]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAABA8A8)) 
     \deskew_enable_gen.data_stage_sel0[10]_i_1 
       (.I0(data_stage_sel0[10]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .I5(grp_count[2]),
        .O(data_stage_sel00[10]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAA8ABA8)) 
     \deskew_enable_gen.data_stage_sel0[11]_i_1 
       (.I0(data_stage_sel0[11]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(grp_count[2]),
        .O(data_stage_sel00[11]));
LUT6 #(
    .INIT(64'hFFFFFFF800000008)) 
     \deskew_enable_gen.data_stage_sel0[12]_i_1 
       (.I0(grp_count[1]),
        .I1(grp_count[0]),
        .I2(grp_count[3]),
        .I3(grp_count[4]),
        .I4(grp_count[2]),
        .I5(data_stage_sel0[12]),
        .O(data_stage_sel00[12]));
LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAA8)) 
     \deskew_enable_gen.data_stage_sel0[13]_i_1 
       (.I0(data_stage_sel0[13]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[1]),
        .I5(grp_count[0]),
        .O(data_stage_sel00[13]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAACA0)) 
     \deskew_enable_gen.data_stage_sel0[14]_i_1 
       (.I0(data_stage_sel0[14]),
        .I1(grp_count[0]),
        .I2(grp_count[2]),
        .I3(grp_count[1]),
        .I4(grp_count[3]),
        .I5(grp_count[4]),
        .O(data_stage_sel00[14]));
LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAA8)) 
     \deskew_enable_gen.data_stage_sel0[15]_i_1 
       (.I0(data_stage_sel0[15]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[1]),
        .I5(grp_count[0]),
        .O(data_stage_sel00[15]));
LUT6 #(
    .INIT(64'hAAAAAAACAAAAAAB0)) 
     \deskew_enable_gen.data_stage_sel0[16]_i_1 
       (.I0(data_stage_sel0[16]),
        .I1(grp_count[1]),
        .I2(grp_count[2]),
        .I3(grp_count[4]),
        .I4(grp_count[3]),
        .I5(grp_count[0]),
        .O(data_stage_sel00[16]));
LUT5 #(
    .INIT(32'h00080000)) 
     \deskew_enable_gen.data_stage_sel0[17]_i_1 
       (.I0(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_3 ),
        .I1(grp_p1_val),
        .I2(grp_p0_val),
        .I3(grp_p3_val),
        .I4(dout_p0_val),
        .O(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ));
LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAAC)) 
     \deskew_enable_gen.data_stage_sel0[17]_i_2 
       (.I0(data_stage_sel0[17]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[0]),
        .I5(grp_count[1]),
        .O(data_stage_sel00[17]));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \deskew_enable_gen.data_stage_sel0[17]_i_3 
       (.I0(\n_0_deskew_enable_gen.min_value_1[4]_i_6 ),
        .I1(state[11]),
        .I2(state[9]),
        .I3(state[10]),
        .I4(state[0]),
        .I5(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_4 ),
        .O(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair155" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \deskew_enable_gen.data_stage_sel0[17]_i_4 
       (.I0(state[6]),
        .I1(state[5]),
        .I2(state[8]),
        .I3(state[7]),
        .O(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
     \deskew_enable_gen.data_stage_sel0[1]_i_1 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(grp_count[0]),
        .I5(data_stage_sel0[1]),
        .O(data_stage_sel00[1]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
     \deskew_enable_gen.data_stage_sel0[2]_i_1 
       (.I0(data_stage_sel0[2]),
        .I1(grp_count[1]),
        .I2(grp_count[0]),
        .I3(grp_count[4]),
        .I4(grp_count[3]),
        .I5(grp_count[2]),
        .O(data_stage_sel00[2]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
     \deskew_enable_gen.data_stage_sel0[3]_i_1 
       (.I0(data_stage_sel0[3]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(grp_count[2]),
        .O(data_stage_sel00[3]));
LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
     \deskew_enable_gen.data_stage_sel0[4]_i_1 
       (.I0(data_stage_sel0[4]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[1]),
        .I5(grp_count[0]),
        .O(data_stage_sel00[4]));
LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
     \deskew_enable_gen.data_stage_sel0[5]_i_1 
       (.I0(grp_count[0]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[2]),
        .I4(grp_count[1]),
        .I5(data_stage_sel0[5]),
        .O(data_stage_sel00[5]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABA8)) 
     \deskew_enable_gen.data_stage_sel0[6]_i_1 
       (.I0(data_stage_sel0[6]),
        .I1(grp_count[1]),
        .I2(grp_count[2]),
        .I3(grp_count[0]),
        .I4(grp_count[3]),
        .I5(grp_count[4]),
        .O(data_stage_sel00[6]));
LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
     \deskew_enable_gen.data_stage_sel0[7]_i_1 
       (.I0(grp_count[0]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[2]),
        .I4(grp_count[1]),
        .I5(data_stage_sel0[7]),
        .O(data_stage_sel00[7]));
LUT6 #(
    .INIT(64'hFFFEFFFE00000100)) 
     \deskew_enable_gen.data_stage_sel0[8]_i_1 
       (.I0(grp_count[2]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(data_stage_sel0[8]),
        .O(data_stage_sel00[8]));
LUT6 #(
    .INIT(64'hFFFEFFFE00000100)) 
     \deskew_enable_gen.data_stage_sel0[9]_i_1 
       (.I0(grp_count[2]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(data_stage_sel0[9]),
        .O(data_stage_sel00[9]));
FDRE \deskew_enable_gen.data_stage_sel0_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[0]),
        .Q(data_stage_sel0[0]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[10] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[10]),
        .Q(data_stage_sel0[10]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[11] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[11]),
        .Q(data_stage_sel0[11]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[12] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[12]),
        .Q(data_stage_sel0[12]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[13] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[13]),
        .Q(data_stage_sel0[13]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[14] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[14]),
        .Q(data_stage_sel0[14]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[15] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[15]),
        .Q(data_stage_sel0[15]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[16] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[16]),
        .Q(data_stage_sel0[16]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[17] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[17]),
        .Q(data_stage_sel0[17]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[1]),
        .Q(data_stage_sel0[1]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[2]),
        .Q(data_stage_sel0[2]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[3]),
        .Q(data_stage_sel0[3]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[4]),
        .Q(data_stage_sel0[4]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[5] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[5]),
        .Q(data_stage_sel0[5]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[6] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[6]),
        .Q(data_stage_sel0[6]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[7] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[7]),
        .Q(data_stage_sel0[7]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[8] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[8]),
        .Q(data_stage_sel0[8]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel0_reg[9] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_1 ),
        .D(data_stage_sel00[9]),
        .Q(data_stage_sel0[9]),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
     \deskew_enable_gen.data_stage_sel1[0]_i_1 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(grp_count[0]),
        .I5(data_stage_sel1[0]),
        .O(data_stage_sel10[0]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAABA8A8)) 
     \deskew_enable_gen.data_stage_sel1[10]_i_1 
       (.I0(data_stage_sel1[10]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .I5(grp_count[2]),
        .O(data_stage_sel10[10]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAA8ABA8)) 
     \deskew_enable_gen.data_stage_sel1[11]_i_1 
       (.I0(data_stage_sel1[11]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(grp_count[2]),
        .O(data_stage_sel10[11]));
LUT6 #(
    .INIT(64'hFFFFFFF800000008)) 
     \deskew_enable_gen.data_stage_sel1[12]_i_1 
       (.I0(grp_count[1]),
        .I1(grp_count[0]),
        .I2(grp_count[3]),
        .I3(grp_count[4]),
        .I4(grp_count[2]),
        .I5(data_stage_sel1[12]),
        .O(data_stage_sel10[12]));
LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAA8)) 
     \deskew_enable_gen.data_stage_sel1[13]_i_1 
       (.I0(data_stage_sel1[13]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[1]),
        .I5(grp_count[0]),
        .O(data_stage_sel10[13]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAACA0)) 
     \deskew_enable_gen.data_stage_sel1[14]_i_1 
       (.I0(data_stage_sel1[14]),
        .I1(grp_count[0]),
        .I2(grp_count[2]),
        .I3(grp_count[1]),
        .I4(grp_count[3]),
        .I5(grp_count[4]),
        .O(data_stage_sel10[14]));
LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAA8)) 
     \deskew_enable_gen.data_stage_sel1[15]_i_1 
       (.I0(data_stage_sel1[15]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[1]),
        .I5(grp_count[0]),
        .O(data_stage_sel10[15]));
LUT6 #(
    .INIT(64'hAAAAAAACAAAAAAB0)) 
     \deskew_enable_gen.data_stage_sel1[16]_i_1 
       (.I0(data_stage_sel1[16]),
        .I1(grp_count[1]),
        .I2(grp_count[2]),
        .I3(grp_count[4]),
        .I4(grp_count[3]),
        .I5(grp_count[0]),
        .O(data_stage_sel10[16]));
LUT5 #(
    .INIT(32'h00000880)) 
     \deskew_enable_gen.data_stage_sel1[17]_i_1 
       (.I0(\n_0_deskew_enable_gen.data_stage_sel0[17]_i_3 ),
        .I1(dout_p0_val),
        .I2(grp_p3_val),
        .I3(grp_p1_val),
        .I4(grp_p0_val),
        .O(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ));
LUT6 #(
    .INIT(64'hAAABAAA8AAA8AAAC)) 
     \deskew_enable_gen.data_stage_sel1[17]_i_2 
       (.I0(data_stage_sel1[17]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[0]),
        .I5(grp_count[1]),
        .O(data_stage_sel10[17]));
LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
     \deskew_enable_gen.data_stage_sel1[1]_i_1 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(grp_count[0]),
        .I5(data_stage_sel1[1]),
        .O(data_stage_sel10[1]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
     \deskew_enable_gen.data_stage_sel1[2]_i_1 
       (.I0(data_stage_sel1[2]),
        .I1(grp_count[1]),
        .I2(grp_count[0]),
        .I3(grp_count[4]),
        .I4(grp_count[3]),
        .I5(grp_count[2]),
        .O(data_stage_sel10[2]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
     \deskew_enable_gen.data_stage_sel1[3]_i_1 
       (.I0(data_stage_sel1[3]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(grp_count[2]),
        .O(data_stage_sel10[3]));
LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
     \deskew_enable_gen.data_stage_sel1[4]_i_1 
       (.I0(data_stage_sel1[4]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[1]),
        .I5(grp_count[0]),
        .O(data_stage_sel10[4]));
LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
     \deskew_enable_gen.data_stage_sel1[5]_i_1 
       (.I0(grp_count[0]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[2]),
        .I4(grp_count[1]),
        .I5(data_stage_sel1[5]),
        .O(data_stage_sel10[5]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABA8)) 
     \deskew_enable_gen.data_stage_sel1[6]_i_1 
       (.I0(data_stage_sel1[6]),
        .I1(grp_count[1]),
        .I2(grp_count[2]),
        .I3(grp_count[0]),
        .I4(grp_count[3]),
        .I5(grp_count[4]),
        .O(data_stage_sel10[6]));
LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
     \deskew_enable_gen.data_stage_sel1[7]_i_1 
       (.I0(grp_count[0]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[2]),
        .I4(grp_count[1]),
        .I5(data_stage_sel1[7]),
        .O(data_stage_sel10[7]));
LUT6 #(
    .INIT(64'hFFFEFFFE00000100)) 
     \deskew_enable_gen.data_stage_sel1[8]_i_1 
       (.I0(grp_count[2]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(data_stage_sel1[8]),
        .O(data_stage_sel10[8]));
LUT6 #(
    .INIT(64'hFFFEFFFE00000100)) 
     \deskew_enable_gen.data_stage_sel1[9]_i_1 
       (.I0(grp_count[2]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(data_stage_sel1[9]),
        .O(data_stage_sel10[9]));
FDRE \deskew_enable_gen.data_stage_sel1_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[0]),
        .Q(data_stage_sel1[0]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[10] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[10]),
        .Q(data_stage_sel1[10]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[11] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[11]),
        .Q(data_stage_sel1[11]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[12] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[12]),
        .Q(data_stage_sel1[12]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[13] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[13]),
        .Q(data_stage_sel1[13]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[14] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[14]),
        .Q(data_stage_sel1[14]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[15] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[15]),
        .Q(data_stage_sel1[15]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[16] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[16]),
        .Q(data_stage_sel1[16]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[17] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[17]),
        .Q(data_stage_sel1[17]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[1]),
        .Q(data_stage_sel1[1]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[2]),
        .Q(data_stage_sel1[2]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[3]),
        .Q(data_stage_sel1[3]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[4]),
        .Q(data_stage_sel1[4]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[5] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[5]),
        .Q(data_stage_sel1[5]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[6] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[6]),
        .Q(data_stage_sel1[6]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[7] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[7]),
        .Q(data_stage_sel1[7]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[8] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[8]),
        .Q(data_stage_sel1[8]),
        .R(I1));
FDRE \deskew_enable_gen.data_stage_sel1_reg[9] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.data_stage_sel1[17]_i_1 ),
        .D(data_stage_sel10[9]),
        .Q(data_stage_sel1[9]),
        .R(I1));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     \deskew_enable_gen.delay_load[0]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(grp_count[0]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I4(grp_count[1]),
        .I5(grp_count[2]),
        .O(delay_load0[0]));
LUT6 #(
    .INIT(64'h0000000000800000)) 
     \deskew_enable_gen.delay_load[10]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .I5(grp_count[2]),
        .O(delay_load0[10]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT5 #(
    .INIT(32'h08000000)) 
     \deskew_enable_gen.delay_load[12]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(grp_count[2]),
        .I3(grp_count[1]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .O(delay_load0[12]));
(* SOFT_HLUTNM = "soft_lutpair170" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \deskew_enable_gen.delay_load[14]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .O(delay_load0[14]));
(* SOFT_HLUTNM = "soft_lutpair171" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \deskew_enable_gen.delay_load[16]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .O(delay_load0[16]));
LUT4 #(
    .INIT(16'h0012)) 
     \deskew_enable_gen.delay_load[16]_i_2 
       (.I0(\n_0_deskew_enable_gen.delay_load[16]_i_3 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_4 ),
        .I2(\n_0_deskew_enable_gen.delay_load[16]_i_5 ),
        .I3(\n_0_deskew_enable_gen.delay_load[16]_i_6 ),
        .O(\n_0_deskew_enable_gen.delay_load[16]_i_2 ));
LUT6 #(
    .INIT(64'h0000000100010116)) 
     \deskew_enable_gen.delay_load[16]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[4]),
        .I5(state[5]),
        .O(\n_0_deskew_enable_gen.delay_load[16]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
     \deskew_enable_gen.delay_load[16]_i_4 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[4]),
        .I5(state[5]),
        .O(\n_0_deskew_enable_gen.delay_load[16]_i_4 ));
LUT6 #(
    .INIT(64'h0000000100010116)) 
     \deskew_enable_gen.delay_load[16]_i_5 
       (.I0(state[6]),
        .I1(state[7]),
        .I2(state[8]),
        .I3(state[9]),
        .I4(state[10]),
        .I5(state[11]),
        .O(\n_0_deskew_enable_gen.delay_load[16]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
     \deskew_enable_gen.delay_load[16]_i_6 
       (.I0(state[6]),
        .I1(state[7]),
        .I2(state[8]),
        .I3(state[9]),
        .I4(state[10]),
        .I5(state[11]),
        .O(\n_0_deskew_enable_gen.delay_load[16]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair171" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \deskew_enable_gen.delay_load[2]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(O3),
        .O(delay_load0[2]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT5 #(
    .INIT(32'h00000080)) 
     \deskew_enable_gen.delay_load[4]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I3(grp_count[1]),
        .I4(grp_count[2]),
        .O(delay_load0[4]));
(* SOFT_HLUTNM = "soft_lutpair170" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \deskew_enable_gen.delay_load[6]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .O(delay_load0[6]));
LUT6 #(
    .INIT(64'h0000080000000000)) 
     \deskew_enable_gen.delay_load[8]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_load[16]_i_2 ),
        .I2(grp_count[0]),
        .I3(grp_count[1]),
        .I4(grp_count[2]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .O(delay_load0[8]));
FDRE \deskew_enable_gen.delay_load_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[0]),
        .Q(O8[0]),
        .R(I1));
FDRE \deskew_enable_gen.delay_load_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[10]),
        .Q(O8[5]),
        .R(I1));
FDRE \deskew_enable_gen.delay_load_reg[12] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[12]),
        .Q(O8[6]),
        .R(I1));
FDRE \deskew_enable_gen.delay_load_reg[14] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[14]),
        .Q(O8[7]),
        .R(I1));
FDRE \deskew_enable_gen.delay_load_reg[16] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[16]),
        .Q(O8[8]),
        .R(I1));
FDRE \deskew_enable_gen.delay_load_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[2]),
        .Q(O8[1]),
        .R(I1));
FDRE \deskew_enable_gen.delay_load_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[4]),
        .Q(O8[2]),
        .R(I1));
FDRE \deskew_enable_gen.delay_load_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[6]),
        .Q(O8[3]),
        .R(I1));
FDRE \deskew_enable_gen.delay_load_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(delay_load0[8]),
        .Q(O8[4]),
        .R(I1));
LUT6 #(
    .INIT(64'h4F444FFF44444444)) 
     \deskew_enable_gen.delay_tap[0]_i_1 
       (.I0(O4[0]),
        .I1(state[7]),
        .I2(\n_0_deskew_enable_gen.delay_tap[0]_i_2 ),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_7 ),
        .I4(\n_0_deskew_enable_gen.delay_tap[0]_i_3 ),
        .I5(state[8]),
        .O(\n_0_deskew_enable_gen.delay_tap[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair156" *) 
   LUT4 #(
    .INIT(16'h6999)) 
     \deskew_enable_gen.delay_tap[0]_i_2 
       (.I0(max_value_1[1]),
        .I1(min_value_1[1]),
        .I2(max_value_1[0]),
        .I3(min_value_1[0]),
        .O(\n_0_deskew_enable_gen.delay_tap[0]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair154" *) 
   LUT4 #(
    .INIT(16'h6999)) 
     \deskew_enable_gen.delay_tap[0]_i_3 
       (.I0(max_value_0[1]),
        .I1(min_value_0[1]),
        .I2(max_value_0[0]),
        .I3(min_value_0[0]),
        .O(\n_0_deskew_enable_gen.delay_tap[0]_i_3 ));
LUT6 #(
    .INIT(64'hEBAAEBFFAAAAAAAA)) 
     \deskew_enable_gen.delay_tap[1]_i_1 
       (.I0(\n_0_deskew_enable_gen.delay_tap[1]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_tap[1]_i_3 ),
        .I2(\n_0_deskew_enable_gen.delay_tap[1]_i_4 ),
        .I3(\n_0_deskew_enable_gen.delay_tap[1]_i_5 ),
        .I4(\n_0_deskew_enable_gen.delay_tap[1]_i_6 ),
        .I5(state[8]),
        .O(\n_0_deskew_enable_gen.delay_tap[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair174" *) 
   LUT3 #(
    .INIT(8'h60)) 
     \deskew_enable_gen.delay_tap[1]_i_2 
       (.I0(O4[1]),
        .I1(O4[0]),
        .I2(state[7]),
        .O(\n_0_deskew_enable_gen.delay_tap[1]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \deskew_enable_gen.delay_tap[1]_i_3 
       (.I0(min_value_0[2]),
        .I1(max_value_0[2]),
        .O(\n_0_deskew_enable_gen.delay_tap[1]_i_3 ));
LUT4 #(
    .INIT(16'hE888)) 
     \deskew_enable_gen.delay_tap[1]_i_4 
       (.I0(min_value_0[1]),
        .I1(max_value_0[1]),
        .I2(min_value_0[0]),
        .I3(max_value_0[0]),
        .O(\n_0_deskew_enable_gen.delay_tap[1]_i_4 ));
LUT6 #(
    .INIT(64'hAEEFAAAAFFFFAEEF)) 
     \deskew_enable_gen.delay_tap[1]_i_5 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_13 ),
        .I1(\n_0_deskew_enable_gen.delay_tap[4]_i_10 ),
        .I2(\n_0_deskew_enable_gen.delay_tap[4]_i_11 ),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_12 ),
        .I4(\n_0_deskew_enable_gen.delay_tap[4]_i_14 ),
        .I5(\n_0_deskew_enable_gen.delay_tap[4]_i_15 ),
        .O(\n_0_deskew_enable_gen.delay_tap[1]_i_5 ));
LUT6 #(
    .INIT(64'h6666699969999999)) 
     \deskew_enable_gen.delay_tap[1]_i_6 
       (.I0(max_value_1[2]),
        .I1(min_value_1[2]),
        .I2(max_value_1[0]),
        .I3(min_value_1[0]),
        .I4(max_value_1[1]),
        .I5(min_value_1[1]),
        .O(\n_0_deskew_enable_gen.delay_tap[1]_i_6 ));
LUT6 #(
    .INIT(64'hEBAAEBFFAAAAAAAA)) 
     \deskew_enable_gen.delay_tap[2]_i_1 
       (.I0(\n_0_deskew_enable_gen.delay_tap[2]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_tap[2]_i_3 ),
        .I2(\n_0_deskew_enable_gen.delay_tap[2]_i_4 ),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_7 ),
        .I4(\n_0_deskew_enable_gen.delay_tap[2]_i_5 ),
        .I5(state[8]),
        .O(\n_0_deskew_enable_gen.delay_tap[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair144" *) 
   LUT4 #(
    .INIT(16'h2A80)) 
     \deskew_enable_gen.delay_tap[2]_i_2 
       (.I0(state[7]),
        .I1(O4[0]),
        .I2(O4[1]),
        .I3(O4[2]),
        .O(\n_0_deskew_enable_gen.delay_tap[2]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \deskew_enable_gen.delay_tap[2]_i_3 
       (.I0(min_value_1[3]),
        .I1(max_value_1[3]),
        .O(\n_0_deskew_enable_gen.delay_tap[2]_i_3 ));
LUT6 #(
    .INIT(64'hFEEAEAEAA8808080)) 
     \deskew_enable_gen.delay_tap[2]_i_4 
       (.I0(min_value_1[2]),
        .I1(min_value_1[1]),
        .I2(max_value_1[1]),
        .I3(min_value_1[0]),
        .I4(max_value_1[0]),
        .I5(max_value_1[2]),
        .O(\n_0_deskew_enable_gen.delay_tap[2]_i_4 ));
LUT3 #(
    .INIT(8'h69)) 
     \deskew_enable_gen.delay_tap[2]_i_5 
       (.I0(max_value_0[3]),
        .I1(min_value_0[3]),
        .I2(\n_0_deskew_enable_gen.delay_tap[4]_i_16 ),
        .O(\n_0_deskew_enable_gen.delay_tap[2]_i_5 ));
LUT6 #(
    .INIT(64'hBEAABEFFAAAAAAAA)) 
     \deskew_enable_gen.delay_tap[3]_i_1 
       (.I0(\n_0_deskew_enable_gen.delay_tap[3]_i_2 ),
        .I1(\n_0_deskew_enable_gen.delay_tap[3]_i_3 ),
        .I2(\n_0_deskew_enable_gen.delay_tap[3]_i_4 ),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_7 ),
        .I4(\n_0_deskew_enable_gen.delay_tap[3]_i_5 ),
        .I5(state[8]),
        .O(\n_0_deskew_enable_gen.delay_tap[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair144" *) 
   LUT5 #(
    .INIT(32'h2AAA8000)) 
     \deskew_enable_gen.delay_tap[3]_i_2 
       (.I0(state[7]),
        .I1(O4[1]),
        .I2(O4[0]),
        .I3(O4[2]),
        .I4(O4[3]),
        .O(\n_0_deskew_enable_gen.delay_tap[3]_i_2 ));
LUT2 #(
    .INIT(4'h6)) 
     \deskew_enable_gen.delay_tap[3]_i_3 
       (.I0(min_value_1[4]),
        .I1(max_value_1[4]),
        .O(\n_0_deskew_enable_gen.delay_tap[3]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair145" *) 
   LUT3 #(
    .INIT(8'hE8)) 
     \deskew_enable_gen.delay_tap[3]_i_4 
       (.I0(min_value_1[3]),
        .I1(\n_0_deskew_enable_gen.delay_tap[2]_i_4 ),
        .I2(max_value_1[3]),
        .O(\n_0_deskew_enable_gen.delay_tap[3]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT5 #(
    .INIT(32'h66696999)) 
     \deskew_enable_gen.delay_tap[3]_i_5 
       (.I0(max_value_0[4]),
        .I1(min_value_0[4]),
        .I2(max_value_0[3]),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_16 ),
        .I4(min_value_0[3]),
        .O(\n_0_deskew_enable_gen.delay_tap[3]_i_5 ));
LUT6 #(
    .INIT(64'h0000000001011706)) 
     \deskew_enable_gen.delay_tap[4]_i_1 
       (.I0(state[8]),
        .I1(state[9]),
        .I2(state[7]),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_3 ),
        .I4(state[0]),
        .I5(\n_0_deskew_enable_gen.delay_tap[4]_i_4 ),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_1 ));
LUT5 #(
    .INIT(32'hFFD4D400)) 
     \deskew_enable_gen.delay_tap[4]_i_10 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_17 ),
        .I1(\n_0_deskew_enable_gen.delay_tap[4]_i_18 ),
        .I2(\n_0_deskew_enable_gen.delay_tap[4]_i_19 ),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_20 ),
        .I4(\n_0_deskew_enable_gen.delay_tap[4]_i_21 ),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair147" *) 
   LUT3 #(
    .INIT(8'h69)) 
     \deskew_enable_gen.delay_tap[4]_i_11 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_22 ),
        .I1(max_value_0[3]),
        .I2(min_value_0[3]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair148" *) 
   LUT3 #(
    .INIT(8'h69)) 
     \deskew_enable_gen.delay_tap[4]_i_12 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_23 ),
        .I1(max_value_1[3]),
        .I2(min_value_1[3]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_12 ));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'h15)) 
     \deskew_enable_gen.delay_tap[4]_i_13 
       (.I0(step_count[2]),
        .I1(step_count[0]),
        .I2(step_count[1]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair147" *) 
   LUT5 #(
    .INIT(32'hB24D4DB2)) 
     \deskew_enable_gen.delay_tap[4]_i_14 
       (.I0(min_value_0[3]),
        .I1(max_value_0[3]),
        .I2(\n_0_deskew_enable_gen.delay_tap[4]_i_22 ),
        .I3(max_value_0[4]),
        .I4(min_value_0[4]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair148" *) 
   LUT5 #(
    .INIT(32'h718E8E71)) 
     \deskew_enable_gen.delay_tap[4]_i_15 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_23 ),
        .I1(max_value_1[3]),
        .I2(min_value_1[3]),
        .I3(max_value_1[4]),
        .I4(min_value_1[4]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_15 ));
LUT6 #(
    .INIT(64'hFEEAEAEAA8808080)) 
     \deskew_enable_gen.delay_tap[4]_i_16 
       (.I0(min_value_0[2]),
        .I1(min_value_0[1]),
        .I2(max_value_0[1]),
        .I3(min_value_0[0]),
        .I4(max_value_0[0]),
        .I5(max_value_0[2]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_16 ));
LUT4 #(
    .INIT(16'h6006)) 
     \deskew_enable_gen.delay_tap[4]_i_17 
       (.I0(max_value_1[0]),
        .I1(min_value_1[0]),
        .I2(max_value_0[0]),
        .I3(min_value_0[0]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair154" *) 
   LUT4 #(
    .INIT(16'h4BB4)) 
     \deskew_enable_gen.delay_tap[4]_i_18 
       (.I0(max_value_0[0]),
        .I1(min_value_0[0]),
        .I2(max_value_0[1]),
        .I3(min_value_0[1]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_18 ));
(* SOFT_HLUTNM = "soft_lutpair156" *) 
   LUT4 #(
    .INIT(16'hB44B)) 
     \deskew_enable_gen.delay_tap[4]_i_19 
       (.I0(max_value_1[0]),
        .I1(min_value_1[0]),
        .I2(max_value_1[1]),
        .I3(min_value_1[1]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_19 ));
LUT5 #(
    .INIT(32'hBABFAAAA)) 
     \deskew_enable_gen.delay_tap[4]_i_2 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_5 ),
        .I1(\n_0_deskew_enable_gen.delay_tap[4]_i_6 ),
        .I2(\n_0_deskew_enable_gen.delay_tap[4]_i_7 ),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_8 ),
        .I4(state[8]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_2 ));
LUT6 #(
    .INIT(64'h2B22D4DDD4DD2B22)) 
     \deskew_enable_gen.delay_tap[4]_i_20 
       (.I0(min_value_0[1]),
        .I1(max_value_0[1]),
        .I2(max_value_0[0]),
        .I3(min_value_0[0]),
        .I4(max_value_0[2]),
        .I5(min_value_0[2]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_20 ));
LUT6 #(
    .INIT(64'hD4DD2B222B22D4DD)) 
     \deskew_enable_gen.delay_tap[4]_i_21 
       (.I0(min_value_1[1]),
        .I1(max_value_1[1]),
        .I2(max_value_1[0]),
        .I3(min_value_1[0]),
        .I4(max_value_1[2]),
        .I5(min_value_1[2]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_21 ));
LUT6 #(
    .INIT(64'h22B2BBBB222222B2)) 
     \deskew_enable_gen.delay_tap[4]_i_22 
       (.I0(min_value_0[2]),
        .I1(max_value_0[2]),
        .I2(min_value_0[0]),
        .I3(max_value_0[0]),
        .I4(max_value_0[1]),
        .I5(min_value_0[1]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_22 ));
LUT6 #(
    .INIT(64'hD0FD0000FFFFD0FD)) 
     \deskew_enable_gen.delay_tap[4]_i_23 
       (.I0(min_value_1[0]),
        .I1(max_value_1[0]),
        .I2(max_value_1[1]),
        .I3(min_value_1[1]),
        .I4(max_value_1[2]),
        .I5(min_value_1[2]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_23 ));
(* SOFT_HLUTNM = "soft_lutpair152" *) 
   LUT4 #(
    .INIT(16'h0444)) 
     \deskew_enable_gen.delay_tap[4]_i_3 
       (.I0(\n_0_deskew_enable_gen.state[8]_i_2 ),
        .I1(state[7]),
        .I2(step_count[2]),
        .I3(step_count[1]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
     \deskew_enable_gen.delay_tap[4]_i_4 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_9 ),
        .I1(state[4]),
        .I2(state[6]),
        .I3(state[5]),
        .I4(state[11]),
        .I5(state[10]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_4 ));
LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
     \deskew_enable_gen.delay_tap[4]_i_5 
       (.I0(state[7]),
        .I1(O4[2]),
        .I2(O4[0]),
        .I3(O4[1]),
        .I4(O4[3]),
        .I5(O4[4]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair145" *) 
   LUT5 #(
    .INIT(32'h0115577F)) 
     \deskew_enable_gen.delay_tap[4]_i_6 
       (.I0(min_value_1[4]),
        .I1(min_value_1[3]),
        .I2(\n_0_deskew_enable_gen.delay_tap[2]_i_4 ),
        .I3(max_value_1[3]),
        .I4(max_value_1[4]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_6 ));
LUT6 #(
    .INIT(64'h00D400FF000000D4)) 
     \deskew_enable_gen.delay_tap[4]_i_7 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_10 ),
        .I1(\n_0_deskew_enable_gen.delay_tap[4]_i_11 ),
        .I2(\n_0_deskew_enable_gen.delay_tap[4]_i_12 ),
        .I3(\n_0_deskew_enable_gen.delay_tap[4]_i_13 ),
        .I4(\n_0_deskew_enable_gen.delay_tap[4]_i_14 ),
        .I5(\n_0_deskew_enable_gen.delay_tap[4]_i_15 ),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT5 #(
    .INIT(32'h0115577F)) 
     \deskew_enable_gen.delay_tap[4]_i_8 
       (.I0(min_value_0[4]),
        .I1(min_value_0[3]),
        .I2(\n_0_deskew_enable_gen.delay_tap[4]_i_16 ),
        .I3(max_value_0[3]),
        .I4(max_value_0[4]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair159" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \deskew_enable_gen.delay_tap[4]_i_9 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .O(\n_0_deskew_enable_gen.delay_tap[4]_i_9 ));
FDRE \deskew_enable_gen.delay_tap_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.delay_tap[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.delay_tap[0]_i_1 ),
        .Q(O4[0]),
        .R(I1));
FDRE \deskew_enable_gen.delay_tap_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.delay_tap[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.delay_tap[1]_i_1 ),
        .Q(O4[1]),
        .R(I1));
FDRE \deskew_enable_gen.delay_tap_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.delay_tap[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.delay_tap[2]_i_1 ),
        .Q(O4[2]),
        .R(I1));
FDRE \deskew_enable_gen.delay_tap_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.delay_tap[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.delay_tap[3]_i_1 ),
        .Q(O4[3]),
        .R(I1));
FDRE \deskew_enable_gen.delay_tap_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.delay_tap[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.delay_tap[4]_i_2 ),
        .Q(O4[4]),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair151" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \deskew_enable_gen.dout_p0_val_i_10 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(grp_count[2]),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT5 #(
    .INIT(32'h00010101)) 
     \deskew_enable_gen.dout_p0_val_i_11 
       (.I0(grp_count[2]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair151" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \deskew_enable_gen.dout_p0_val_i_12 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(grp_count[2]),
        .I3(grp_count[1]),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_12 ));
LUT6 #(
    .INIT(64'h3F333F3300002A22)) 
     \deskew_enable_gen.dout_p0_val_i_3 
       (.I0(selected_data[16]),
        .I1(selected_data[15]),
        .I2(grp_count[2]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I4(selected_data[17]),
        .I5(\n_0_deskew_enable_gen.dout_p0_val_i_9 ),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_3 ));
LUT6 #(
    .INIT(64'h40404040404040FF)) 
     \deskew_enable_gen.dout_p0_val_i_4 
       (.I0(selected_data[13]),
        .I1(selected_data[12]),
        .I2(selected_data[14]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .I5(grp_count[2]),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_4 ));
LUT6 #(
    .INIT(64'h0FFF00002FFF2222)) 
     \deskew_enable_gen.dout_p0_val_i_5 
       (.I0(selected_data[10]),
        .I1(selected_data[9]),
        .I2(grp_count[0]),
        .I3(grp_count[1]),
        .I4(\n_0_deskew_enable_gen.dout_p0_val_i_10 ),
        .I5(selected_data[11]),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_5 ));
LUT5 #(
    .INIT(32'hE0E0EEE0)) 
     \deskew_enable_gen.dout_p0_val_i_6 
       (.I0(\n_0_deskew_enable_gen.dout_p0_val_i_11 ),
        .I1(selected_data[8]),
        .I2(\n_0_deskew_enable_gen.dout_p0_val_i_12 ),
        .I3(selected_data[6]),
        .I4(selected_data[7]),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_6 ));
LUT6 #(
    .INIT(64'h3F0000003F222222)) 
     \deskew_enable_gen.dout_p0_val_i_7 
       (.I0(selected_data[4]),
        .I1(selected_data[3]),
        .I2(grp_count[0]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I5(selected_data[5]),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_7 ));
LUT4 #(
    .INIT(16'hFF40)) 
     \deskew_enable_gen.dout_p0_val_i_8 
       (.I0(selected_data[1]),
        .I1(selected_data[0]),
        .I2(selected_data[2]),
        .I3(\n_0_deskew_enable_gen.grp_count[4]_i_5 ),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT5 #(
    .INIT(32'h0000001F)) 
     \deskew_enable_gen.dout_p0_val_i_9 
       (.I0(grp_count[0]),
        .I1(grp_count[1]),
        .I2(grp_count[2]),
        .I3(grp_count[4]),
        .I4(grp_count[3]),
        .O(\n_0_deskew_enable_gen.dout_p0_val_i_9 ));
FDRE \deskew_enable_gen.dout_p0_val_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(dout_p0_val0),
        .Q(dout_p0_val),
        .R(1'b0));
CARRY4 \deskew_enable_gen.dout_p0_val_reg_i_1 
       (.CI(\n_0_deskew_enable_gen.dout_p0_val_reg_i_2 ),
        .CO({\NLW_deskew_enable_gen.dout_p0_val_reg_i_1_CO_UNCONNECTED [3:2],dout_p0_val0,\n_3_deskew_enable_gen.dout_p0_val_reg_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.dout_p0_val_reg_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.dout_p0_val_i_3 ,\n_0_deskew_enable_gen.dout_p0_val_i_4 }));
CARRY4 \deskew_enable_gen.dout_p0_val_reg_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.dout_p0_val_reg_i_2 ,\n_1_deskew_enable_gen.dout_p0_val_reg_i_2 ,\n_2_deskew_enable_gen.dout_p0_val_reg_i_2 ,\n_3_deskew_enable_gen.dout_p0_val_reg_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.dout_p0_val_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.dout_p0_val_i_5 ,\n_0_deskew_enable_gen.dout_p0_val_i_6 ,\n_0_deskew_enable_gen.dout_p0_val_i_7 ,\n_0_deskew_enable_gen.dout_p0_val_i_8 }));
(* srl_bus_name = "inst/\master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_phy_calib_inst/deskew_enable_gen.f0_val_reg " *) 
   (* srl_name = "inst/\master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_phy_calib_inst/deskew_enable_gen.f0_val_reg[2]_srl3 " *) 
   SRL16E \deskew_enable_gen.f0_val_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_ph_out),
        .D(f0_val0),
        .Q(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3 ));
CARRY4 \deskew_enable_gen.f0_val_reg[2]_srl3_i_1 
       (.CI(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 ),
        .CO({\NLW_deskew_enable_gen.f0_val_reg[2]_srl3_i_1_CO_UNCONNECTED [3:2],f0_val0,\n_3_deskew_enable_gen.f0_val_reg[2]_srl3_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.f0_val_reg[2]_srl3_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_3 ,\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_4 }));
CARRY4 \deskew_enable_gen.f0_val_reg[2]_srl3_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 ,\n_1_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 ,\n_2_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 ,\n_3_deskew_enable_gen.f0_val_reg[2]_srl3_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.f0_val_reg[2]_srl3_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_5 ,\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_6 ,\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_7 ,\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_8 }));
LUT5 #(
    .INIT(32'h51515100)) 
     \deskew_enable_gen.f0_val_reg[2]_srl3_i_3 
       (.I0(masked_udata[15]),
        .I1(I3[16]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .I4(unalign_data[16]),
        .O(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_3 ));
LUT6 #(
    .INIT(64'h5515551555150000)) 
     \deskew_enable_gen.f0_val_reg[2]_srl3_i_4 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_10 ),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .I2(I3[12]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .I5(unalign_data[14]),
        .O(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_4 ));
LUT5 #(
    .INIT(32'h07070700)) 
     \deskew_enable_gen.f0_val_reg[2]_srl3_i_5 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I1(I3[8]),
        .I2(masked_udata[11]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_12 ),
        .I4(unalign_data[10]),
        .O(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_5 ));
LUT6 #(
    .INIT(64'h0EEE0EEE00000EEE)) 
     \deskew_enable_gen.f0_val_reg[2]_srl3_i_6 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I1(unalign_data[6]),
        .I2(I3[6]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_13 ),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_14 ),
        .I5(unalign_data[8]),
        .O(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_6 ));
LUT6 #(
    .INIT(64'h1500151515151515)) 
     \deskew_enable_gen.f0_val_reg[2]_srl3_i_7 
       (.I0(masked_udata[3]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I2(I3[4]),
        .I3(unalign_data[4]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .O(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_7 ));
LUT6 #(
    .INIT(64'h0DDD0DDD0DDD0000)) 
     \deskew_enable_gen.f0_val_reg[2]_srl3_i_8 
       (.I0(O1),
        .I1(unalign_data[0]),
        .I2(O2),
        .I3(I3[0]),
        .I4(O3),
        .I5(unalign_data[2]),
        .O(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3_i_8 ));
FDRE \deskew_enable_gen.f0_val_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.f0_val_reg[2]_srl3 ),
        .Q(p_3_in),
        .R(1'b0));
(* srl_bus_name = "inst/\master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_phy_calib_inst/deskew_enable_gen.f1_val_reg " *) 
   (* srl_name = "inst/\master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_phy_calib_inst/deskew_enable_gen.f1_val_reg[1]_srl2 " *) 
   SRL16E \deskew_enable_gen.f1_val_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_ph_out),
        .D(f1_val0),
        .Q(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2 ));
CARRY4 \deskew_enable_gen.f1_val_reg[1]_srl2_i_1 
       (.CI(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 ),
        .CO({\NLW_deskew_enable_gen.f1_val_reg[1]_srl2_i_1_CO_UNCONNECTED [3:2],f1_val0,\n_3_deskew_enable_gen.f1_val_reg[1]_srl2_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.f1_val_reg[1]_srl2_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_3 ,\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_4 }));
CARRY4 \deskew_enable_gen.f1_val_reg[1]_srl2_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 ,\n_1_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 ,\n_2_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 ,\n_3_deskew_enable_gen.f1_val_reg[1]_srl2_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.f1_val_reg[1]_srl2_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_5 ,\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_6 ,\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_7 ,\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_8 }));
LUT5 #(
    .INIT(32'h0000DDD0)) 
     \deskew_enable_gen.f1_val_reg[1]_srl2_i_3 
       (.I0(unalign_data[16]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .I2(I3[16]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I4(masked_udata[15]),
        .O(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_3 ));
LUT5 #(
    .INIT(32'h0000F7FF)) 
     \deskew_enable_gen.f1_val_reg[1]_srl2_i_4 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I1(grp_count[1]),
        .I2(grp_count[2]),
        .I3(unalign_data[12]),
        .I4(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_9 ),
        .O(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_4 ));
LUT5 #(
    .INIT(32'h0D0D0D00)) 
     \deskew_enable_gen.f1_val_reg[1]_srl2_i_5 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I1(I3[8]),
        .I2(masked_udata[11]),
        .I3(unalign_data[10]),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_12 ),
        .O(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_5 ));
LUT6 #(
    .INIT(64'h00000EEE0EEE0EEE)) 
     \deskew_enable_gen.f1_val_reg[1]_srl2_i_6 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I1(unalign_data[6]),
        .I2(I3[6]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_13 ),
        .I4(unalign_data[8]),
        .I5(\n_0_deskew_enable_gen.f2_val[0]_i_14 ),
        .O(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_6 ));
LUT6 #(
    .INIT(64'h000000007F007F7F)) 
     \deskew_enable_gen.f1_val_reg[1]_srl2_i_7 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I2(unalign_data[4]),
        .I3(I3[4]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I5(masked_udata[3]),
        .O(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_7 ));
LUT6 #(
    .INIT(64'h7707770777070000)) 
     \deskew_enable_gen.f1_val_reg[1]_srl2_i_8 
       (.I0(O1),
        .I1(unalign_data[0]),
        .I2(O2),
        .I3(I3[0]),
        .I4(unalign_data[2]),
        .I5(O3),
        .O(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_8 ));
LUT6 #(
    .INIT(64'h111111F111111111)) 
     \deskew_enable_gen.f1_val_reg[1]_srl2_i_9 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .I1(unalign_data[14]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(I3[12]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .O(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2_i_9 ));
FDRE \deskew_enable_gen.f1_val_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.f1_val_reg[1]_srl2 ),
        .Q(p_2_in5_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000200000000)) 
     \deskew_enable_gen.f2_val[0]_i_10 
       (.I0(grp_count[0]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(unalign_data[12]),
        .I4(grp_count[2]),
        .I5(grp_count[1]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     \deskew_enable_gen.f2_val[0]_i_11 
       (.I0(grp_count[2]),
        .I1(grp_count[1]),
        .I2(grp_count[0]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair138" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFB)) 
     \deskew_enable_gen.f2_val[0]_i_12 
       (.I0(grp_count[2]),
        .I1(grp_count[1]),
        .I2(grp_count[0]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_12 ));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     \deskew_enable_gen.f2_val[0]_i_13 
       (.I0(grp_count[2]),
        .I1(grp_count[0]),
        .I2(grp_count[3]),
        .I3(grp_count[4]),
        .I4(grp_count[1]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT5 #(
    .INIT(32'h00000100)) 
     \deskew_enable_gen.f2_val[0]_i_14 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(grp_count[2]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_14 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \deskew_enable_gen.f2_val[0]_i_15 
       (.I0(grp_count[0]),
        .I1(grp_count[2]),
        .I2(grp_count[1]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .I5(I3[2]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \deskew_enable_gen.f2_val[0]_i_16 
       (.I0(grp_count[2]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \deskew_enable_gen.f2_val[0]_i_17 
       (.I0(grp_count[2]),
        .I1(grp_count[1]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[0]),
        .O(O1));
LUT6 #(
    .INIT(64'hEE0EEE0EEE0E0000)) 
     \deskew_enable_gen.f2_val[0]_i_3 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[15]_i_2 ),
        .I1(I3[14]),
        .I2(I3[16]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I4(unalign_data[16]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_3 ));
LUT6 #(
    .INIT(64'h00000000F7F700F7)) 
     \deskew_enable_gen.f2_val[0]_i_4 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .I1(I3[12]),
        .I2(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I3(unalign_data[14]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .I5(\n_0_deskew_enable_gen.f2_val[0]_i_10 ),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_4 ));
LUT6 #(
    .INIT(64'h0EEE0EEE00000EEE)) 
     \deskew_enable_gen.f2_val[0]_i_5 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[11]_i_2 ),
        .I1(I3[10]),
        .I2(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I3(I3[8]),
        .I4(unalign_data[10]),
        .I5(\n_0_deskew_enable_gen.f2_val[0]_i_12 ),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_5 ));
LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
     \deskew_enable_gen.f2_val[0]_i_6 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_13 ),
        .I1(I3[6]),
        .I2(unalign_data[6]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_14 ),
        .I5(unalign_data[8]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_6 ));
LUT6 #(
    .INIT(64'h0000DF00DF00DF00)) 
     \deskew_enable_gen.f2_val[0]_i_7 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I1(unalign_data[4]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_15 ),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I5(I3[4]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_7 ));
LUT6 #(
    .INIT(64'h7707000077077707)) 
     \deskew_enable_gen.f2_val[0]_i_8 
       (.I0(O2),
        .I1(I3[0]),
        .I2(unalign_data[2]),
        .I3(O3),
        .I4(unalign_data[0]),
        .I5(O1),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \deskew_enable_gen.f2_val[0]_i_9 
       (.I0(grp_count[2]),
        .I1(grp_count[1]),
        .O(\n_0_deskew_enable_gen.f2_val[0]_i_9 ));
FDRE \deskew_enable_gen.f2_val_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(f2_val0),
        .Q(\n_0_deskew_enable_gen.f2_val_reg[0] ),
        .R(1'b0));
CARRY4 \deskew_enable_gen.f2_val_reg[0]_i_1 
       (.CI(\n_0_deskew_enable_gen.f2_val_reg[0]_i_2 ),
        .CO({\NLW_deskew_enable_gen.f2_val_reg[0]_i_1_CO_UNCONNECTED [3:2],f2_val0,\n_3_deskew_enable_gen.f2_val_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.f2_val_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.f2_val[0]_i_3 ,\n_0_deskew_enable_gen.f2_val[0]_i_4 }));
CARRY4 \deskew_enable_gen.f2_val_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.f2_val_reg[0]_i_2 ,\n_1_deskew_enable_gen.f2_val_reg[0]_i_2 ,\n_2_deskew_enable_gen.f2_val_reg[0]_i_2 ,\n_3_deskew_enable_gen.f2_val_reg[0]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.f2_val_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.f2_val[0]_i_5 ,\n_0_deskew_enable_gen.f2_val[0]_i_6 ,\n_0_deskew_enable_gen.f2_val[0]_i_7 ,\n_0_deskew_enable_gen.f2_val[0]_i_8 }));
FDRE \deskew_enable_gen.f2_val_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.f2_val_reg[0] ),
        .Q(p_0_in4_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000000100000)) 
     \deskew_enable_gen.f3_val[0]_i_10 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(I3[10]),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .I5(grp_count[2]),
        .O(masked_udata[11]));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \deskew_enable_gen.f3_val[0]_i_11 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(I3[2]),
        .I3(grp_count[0]),
        .I4(grp_count[2]),
        .I5(grp_count[1]),
        .O(masked_udata[3]));
LUT5 #(
    .INIT(32'h0000EEE0)) 
     \deskew_enable_gen.f3_val[0]_i_3 
       (.I0(unalign_data[16]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .I2(I3[16]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I4(masked_udata[15]),
        .O(\n_0_deskew_enable_gen.f3_val[0]_i_3 ));
LUT6 #(
    .INIT(64'h5551555155510000)) 
     \deskew_enable_gen.f3_val[0]_i_4 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_10 ),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .I2(I3[12]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I4(unalign_data[14]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .O(\n_0_deskew_enable_gen.f3_val[0]_i_4 ));
LUT5 #(
    .INIT(32'h0D0D0D00)) 
     \deskew_enable_gen.f3_val[0]_i_5 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I1(I3[8]),
        .I2(masked_udata[11]),
        .I3(unalign_data[10]),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_12 ),
        .O(\n_0_deskew_enable_gen.f3_val[0]_i_5 ));
LUT6 #(
    .INIT(64'h0EEE0EEE00000EEE)) 
     \deskew_enable_gen.f3_val[0]_i_6 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I1(unalign_data[6]),
        .I2(I3[6]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_13 ),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_14 ),
        .I5(unalign_data[8]),
        .O(\n_0_deskew_enable_gen.f3_val[0]_i_6 ));
LUT6 #(
    .INIT(64'h00000000DF00DFDF)) 
     \deskew_enable_gen.f3_val[0]_i_7 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I1(unalign_data[4]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I3(I3[4]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I5(masked_udata[3]),
        .O(\n_0_deskew_enable_gen.f3_val[0]_i_7 ));
LUT6 #(
    .INIT(64'hBB0BBB0BBB0B0000)) 
     \deskew_enable_gen.f3_val[0]_i_8 
       (.I0(unalign_data[0]),
        .I1(O1),
        .I2(O2),
        .I3(I3[0]),
        .I4(unalign_data[2]),
        .I5(O3),
        .O(\n_0_deskew_enable_gen.f3_val[0]_i_8 ));
LUT6 #(
    .INIT(64'h0000000000000080)) 
     \deskew_enable_gen.f3_val[0]_i_9 
       (.I0(I3[14]),
        .I1(grp_count[0]),
        .I2(grp_count[1]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .I5(grp_count[2]),
        .O(masked_udata[15]));
(* KEEP = "yes" *) 
   FDRE \deskew_enable_gen.f3_val_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\deskew_enable_gen.f3_val_reg0 ),
        .Q(f3_val[0]),
        .R(1'b0));
CARRY4 \deskew_enable_gen.f3_val_reg[0]_i_1 
       (.CI(\n_0_deskew_enable_gen.f3_val_reg[0]_i_2 ),
        .CO({\NLW_deskew_enable_gen.f3_val_reg[0]_i_1_CO_UNCONNECTED [3:2],\deskew_enable_gen.f3_val_reg0 ,\n_3_deskew_enable_gen.f3_val_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.f3_val_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.f3_val[0]_i_3 ,\n_0_deskew_enable_gen.f3_val[0]_i_4 }));
CARRY4 \deskew_enable_gen.f3_val_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.f3_val_reg[0]_i_2 ,\n_1_deskew_enable_gen.f3_val_reg[0]_i_2 ,\n_2_deskew_enable_gen.f3_val_reg[0]_i_2 ,\n_3_deskew_enable_gen.f3_val_reg[0]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.f3_val_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.f3_val[0]_i_5 ,\n_0_deskew_enable_gen.f3_val[0]_i_6 ,\n_0_deskew_enable_gen.f3_val[0]_i_7 ,\n_0_deskew_enable_gen.f3_val[0]_i_8 }));
(* KEEP = "yes" *) 
   FDRE \deskew_enable_gen.f3_val_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(f3_val[0]),
        .Q(f3_val[1]),
        .R(1'b0));
(* KEEP = "yes" *) 
   FDRE \deskew_enable_gen.f3_val_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(f3_val[1]),
        .Q(f3_val[2]),
        .R(1'b0));
(* KEEP = "yes" *) 
   FDRE \deskew_enable_gen.f3_val_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(f3_val[2]),
        .Q(f3_val[3]),
        .R(1'b0));
LUT5 #(
    .INIT(32'h2FFF2000)) 
     \deskew_enable_gen.flip_type_i_1 
       (.I0(\n_0_deskew_enable_gen.state[6]_i_3 ),
        .I1(\n_0_deskew_enable_gen.state[6]_i_2 ),
        .I2(\n_0_deskew_enable_gen.flip_type_i_2 ),
        .I3(\n_0_deskew_enable_gen.state[11]_i_4 ),
        .I4(flip_type),
        .O(\n_0_deskew_enable_gen.flip_type_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair157" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \deskew_enable_gen.flip_type_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\n_0_deskew_enable_gen.flip_type_i_2 ));
FDRE \deskew_enable_gen.flip_type_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.flip_type_i_1 ),
        .Q(flip_type),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair175" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \deskew_enable_gen.grp_count[0]_i_1 
       (.I0(state[7]),
        .I1(grp_count[0]),
        .O(\n_0_deskew_enable_gen.grp_count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair175" *) 
   LUT3 #(
    .INIT(8'h60)) 
     \deskew_enable_gen.grp_count[1]_i_1 
       (.I0(grp_count[1]),
        .I1(grp_count[0]),
        .I2(state[10]),
        .O(\n_0_deskew_enable_gen.grp_count[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT4 #(
    .INIT(16'h2A80)) 
     \deskew_enable_gen.grp_count[2]_i_1 
       (.I0(state[10]),
        .I1(grp_count[0]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .O(\n_0_deskew_enable_gen.grp_count[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT5 #(
    .INIT(32'h7F800000)) 
     \deskew_enable_gen.grp_count[3]_i_1 
       (.I0(grp_count[1]),
        .I1(grp_count[0]),
        .I2(grp_count[2]),
        .I3(grp_count[3]),
        .I4(state[10]),
        .O(\n_0_deskew_enable_gen.grp_count[3]_i_1 ));
LUT5 #(
    .INIT(32'hA8888888)) 
     \deskew_enable_gen.grp_count[4]_i_1 
       (.I0(\n_0_deskew_enable_gen.grp_count[4]_i_3 ),
        .I1(\n_0_deskew_enable_gen.grp_count[4]_i_4 ),
        .I2(\n_0_deskew_enable_gen.grp_count[4]_i_5 ),
        .I3(\n_0_deskew_enable_gen.grp_count[4]_i_6 ),
        .I4(state[7]),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
     \deskew_enable_gen.grp_count[4]_i_10 
       (.I0(state[6]),
        .I1(state[7]),
        .I2(state[8]),
        .I3(state[9]),
        .I4(state[10]),
        .I5(state[11]),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_10 ));
LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
     \deskew_enable_gen.grp_count[4]_i_2 
       (.I0(state[10]),
        .I1(grp_count[3]),
        .I2(grp_count[2]),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .I5(grp_count[4]),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_2 ));
LUT4 #(
    .INIT(16'h0012)) 
     \deskew_enable_gen.grp_count[4]_i_3 
       (.I0(\n_0_deskew_enable_gen.grp_count[4]_i_7 ),
        .I1(\n_0_deskew_enable_gen.grp_count[4]_i_8 ),
        .I2(\n_0_deskew_enable_gen.grp_count[4]_i_9 ),
        .I3(\n_0_deskew_enable_gen.grp_count[4]_i_10 ),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair146" *) 
   LUT5 #(
    .INIT(32'h00080880)) 
     \deskew_enable_gen.grp_count[4]_i_4 
       (.I0(dout_p0_val),
        .I1(state[10]),
        .I2(grp_p0_val),
        .I3(grp_p1_val),
        .I4(grp_p3_val),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \deskew_enable_gen.grp_count[4]_i_5 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(grp_count[0]),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \deskew_enable_gen.grp_count[4]_i_6 
       (.I0(step_count[1]),
        .I1(step_count[2]),
        .I2(step_count[0]),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_6 ));
LUT6 #(
    .INIT(64'h0000000100010116)) 
     \deskew_enable_gen.grp_count[4]_i_7 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[4]),
        .I5(state[5]),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
     \deskew_enable_gen.grp_count[4]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[4]),
        .I5(state[5]),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_8 ));
LUT6 #(
    .INIT(64'h0000000100010116)) 
     \deskew_enable_gen.grp_count[4]_i_9 
       (.I0(state[6]),
        .I1(state[7]),
        .I2(state[8]),
        .I3(state[9]),
        .I4(state[10]),
        .I5(state[11]),
        .O(\n_0_deskew_enable_gen.grp_count[4]_i_9 ));
FDRE \deskew_enable_gen.grp_count_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.grp_count[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.grp_count[0]_i_1 ),
        .Q(grp_count[0]),
        .R(I1));
FDRE \deskew_enable_gen.grp_count_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.grp_count[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.grp_count[1]_i_1 ),
        .Q(grp_count[1]),
        .R(I1));
FDRE \deskew_enable_gen.grp_count_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.grp_count[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.grp_count[2]_i_1 ),
        .Q(grp_count[2]),
        .R(I1));
FDRE \deskew_enable_gen.grp_count_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.grp_count[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.grp_count[3]_i_1 ),
        .Q(grp_count[3]),
        .R(I1));
FDRE \deskew_enable_gen.grp_count_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.grp_count[4]_i_1 ),
        .D(\n_0_deskew_enable_gen.grp_count[4]_i_2 ),
        .Q(grp_count[4]),
        .R(I1));
LUT6 #(
    .INIT(64'h000000E200000000)) 
     \deskew_enable_gen.grp_flip_i_1 
       (.I0(min_flip_1),
        .I1(\n_0_deskew_enable_gen.delay_tap[1]_i_5 ),
        .I2(min_flip_0),
        .I3(state[9]),
        .I4(state[11]),
        .I5(\n_0_deskew_enable_gen.grp_flip_i_2 ),
        .O(next_grp_flip));
LUT5 #(
    .INIT(32'h00000002)) 
     \deskew_enable_gen.grp_flip_i_2 
       (.I0(state[8]),
        .I1(state[10]),
        .I2(state[0]),
        .I3(state[7]),
        .I4(\n_0_deskew_enable_gen.grp_flip_i_3 ),
        .O(\n_0_deskew_enable_gen.grp_flip_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \deskew_enable_gen.grp_flip_i_3 
       (.I0(state[5]),
        .I1(state[6]),
        .I2(state[4]),
        .I3(state[3]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\n_0_deskew_enable_gen.grp_flip_i_3 ));
FDRE \deskew_enable_gen.grp_flip_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(next_grp_flip),
        .Q(grp_flip),
        .R(I1));
LUT5 #(
    .INIT(32'h51515100)) 
     \deskew_enable_gen.grp_p0_val_i_3 
       (.I0(masked_dout[15]),
        .I1(selected_data[17]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I3(selected_data[16]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .O(\n_0_deskew_enable_gen.grp_p0_val_i_3 ));
LUT6 #(
    .INIT(64'hAA2AAA2AAA00AA2A)) 
     \deskew_enable_gen.grp_p0_val_i_4 
       (.I0(\n_0_deskew_enable_gen.grp_p0_val_i_9 ),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .I2(selected_data[13]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I5(selected_data[12]),
        .O(\n_0_deskew_enable_gen.grp_p0_val_i_4 ));
LUT4 #(
    .INIT(16'h0007)) 
     \deskew_enable_gen.grp_p0_val_i_5 
       (.I0(selected_data[9]),
        .I1(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I2(masked_dout[11]),
        .I3(\n_0_deskew_enable_gen.grp_p3_val_i_12 ),
        .O(\n_0_deskew_enable_gen.grp_p0_val_i_5 ));
LUT6 #(
    .INIT(64'h2222222222202222)) 
     \deskew_enable_gen.grp_p0_val_i_6 
       (.I0(\n_0_deskew_enable_gen.grp_p3_val_i_13 ),
        .I1(masked_dout[7]),
        .I2(grp_count[0]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I5(selected_data[8]),
        .O(\n_0_deskew_enable_gen.grp_p0_val_i_6 ));
LUT6 #(
    .INIT(64'h000000DF00DF00DF)) 
     \deskew_enable_gen.grp_p0_val_i_7 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I1(selected_data[4]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I3(masked_dout[3]),
        .I4(selected_data[5]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .O(\n_0_deskew_enable_gen.grp_p0_val_i_7 ));
LUT6 #(
    .INIT(64'h0EEE0EEE00000EEE)) 
     \deskew_enable_gen.grp_p0_val_i_8 
       (.I0(selected_data[2]),
        .I1(O3),
        .I2(O2),
        .I3(selected_data[1]),
        .I4(O1),
        .I5(selected_data[0]),
        .O(\n_0_deskew_enable_gen.grp_p0_val_i_8 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
     \deskew_enable_gen.grp_p0_val_i_9 
       (.I0(grp_count[0]),
        .I1(grp_count[2]),
        .I2(grp_count[1]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .I5(selected_data[14]),
        .O(\n_0_deskew_enable_gen.grp_p0_val_i_9 ));
FDRE \deskew_enable_gen.grp_p0_val_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(grp_p0_val0),
        .Q(grp_p0_val),
        .R(1'b0));
CARRY4 \deskew_enable_gen.grp_p0_val_reg_i_1 
       (.CI(\n_0_deskew_enable_gen.grp_p0_val_reg_i_2 ),
        .CO({\NLW_deskew_enable_gen.grp_p0_val_reg_i_1_CO_UNCONNECTED [3:2],grp_p0_val0,\n_3_deskew_enable_gen.grp_p0_val_reg_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.grp_p0_val_reg_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.grp_p0_val_i_3 ,\n_0_deskew_enable_gen.grp_p0_val_i_4 }));
CARRY4 \deskew_enable_gen.grp_p0_val_reg_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.grp_p0_val_reg_i_2 ,\n_1_deskew_enable_gen.grp_p0_val_reg_i_2 ,\n_2_deskew_enable_gen.grp_p0_val_reg_i_2 ,\n_3_deskew_enable_gen.grp_p0_val_reg_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.grp_p0_val_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.grp_p0_val_i_5 ,\n_0_deskew_enable_gen.grp_p0_val_i_6 ,\n_0_deskew_enable_gen.grp_p0_val_i_7 ,\n_0_deskew_enable_gen.grp_p0_val_i_8 }));
LUT5 #(
    .INIT(32'h0E0E000E)) 
     \deskew_enable_gen.grp_p1_val_i_3 
       (.I0(selected_data[17]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I2(masked_dout[15]),
        .I3(selected_data[16]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .O(\n_0_deskew_enable_gen.grp_p1_val_i_3 ));
LUT5 #(
    .INIT(32'hAAAA2AAA)) 
     \deskew_enable_gen.grp_p1_val_i_4 
       (.I0(\n_0_deskew_enable_gen.grp_p3_val_i_10 ),
        .I1(selected_data[12]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I3(grp_count[1]),
        .I4(grp_count[2]),
        .O(\n_0_deskew_enable_gen.grp_p1_val_i_4 ));
LUT4 #(
    .INIT(16'h000D)) 
     \deskew_enable_gen.grp_p1_val_i_5 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I1(selected_data[9]),
        .I2(masked_dout[11]),
        .I3(\n_0_deskew_enable_gen.grp_p3_val_i_12 ),
        .O(\n_0_deskew_enable_gen.grp_p1_val_i_5 ));
LUT6 #(
    .INIT(64'h2222220222222222)) 
     \deskew_enable_gen.grp_p1_val_i_6 
       (.I0(\n_0_deskew_enable_gen.grp_p3_val_i_13 ),
        .I1(masked_dout[7]),
        .I2(selected_data[8]),
        .I3(grp_count[0]),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .O(\n_0_deskew_enable_gen.grp_p1_val_i_6 ));
LUT6 #(
    .INIT(64'h1555000015551555)) 
     \deskew_enable_gen.grp_p1_val_i_7 
       (.I0(masked_dout[3]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I2(selected_data[4]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I4(selected_data[5]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .O(\n_0_deskew_enable_gen.grp_p1_val_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
     \deskew_enable_gen.grp_p1_val_i_8 
       (.I0(\n_0_deskew_enable_gen.grp_p3_val_i_16 ),
        .I1(grp_count[2]),
        .I2(grp_count[1]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I4(grp_count[0]),
        .I5(selected_data[0]),
        .O(\n_0_deskew_enable_gen.grp_p1_val_i_8 ));
FDRE \deskew_enable_gen.grp_p1_val_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(grp_p1_val0),
        .Q(grp_p1_val),
        .R(1'b0));
CARRY4 \deskew_enable_gen.grp_p1_val_reg_i_1 
       (.CI(\n_0_deskew_enable_gen.grp_p1_val_reg_i_2 ),
        .CO({\NLW_deskew_enable_gen.grp_p1_val_reg_i_1_CO_UNCONNECTED [3:2],grp_p1_val0,\n_3_deskew_enable_gen.grp_p1_val_reg_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.grp_p1_val_reg_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.grp_p1_val_i_3 ,\n_0_deskew_enable_gen.grp_p1_val_i_4 }));
CARRY4 \deskew_enable_gen.grp_p1_val_reg_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.grp_p1_val_reg_i_2 ,\n_1_deskew_enable_gen.grp_p1_val_reg_i_2 ,\n_2_deskew_enable_gen.grp_p1_val_reg_i_2 ,\n_3_deskew_enable_gen.grp_p1_val_reg_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.grp_p1_val_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.grp_p1_val_i_5 ,\n_0_deskew_enable_gen.grp_p1_val_i_6 ,\n_0_deskew_enable_gen.grp_p1_val_i_7 ,\n_0_deskew_enable_gen.grp_p1_val_i_8 }));
LUT6 #(
    .INIT(64'hEEEEEE0EEEEEEEEE)) 
     \deskew_enable_gen.grp_p3_val_i_10 
       (.I0(selected_data[14]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(selected_data[13]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_10 ));
LUT6 #(
    .INIT(64'h0000000000020000)) 
     \deskew_enable_gen.grp_p3_val_i_11 
       (.I0(selected_data[11]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[2]),
        .I4(grp_count[1]),
        .I5(grp_count[0]),
        .O(masked_dout[11]));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     \deskew_enable_gen.grp_p3_val_i_12 
       (.I0(grp_count[4]),
        .I1(grp_count[3]),
        .I2(grp_count[0]),
        .I3(grp_count[1]),
        .I4(grp_count[2]),
        .I5(selected_data[10]),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_12 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
     \deskew_enable_gen.grp_p3_val_i_13 
       (.I0(grp_count[1]),
        .I1(grp_count[2]),
        .I2(grp_count[0]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .I5(selected_data[6]),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_13 ));
LUT6 #(
    .INIT(64'h0000010000000000)) 
     \deskew_enable_gen.grp_p3_val_i_14 
       (.I0(grp_count[1]),
        .I1(grp_count[4]),
        .I2(grp_count[3]),
        .I3(grp_count[0]),
        .I4(grp_count[2]),
        .I5(selected_data[7]),
        .O(masked_dout[7]));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \deskew_enable_gen.grp_p3_val_i_15 
       (.I0(selected_data[3]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[1]),
        .I4(grp_count[2]),
        .I5(grp_count[0]),
        .O(masked_dout[3]));
LUT4 #(
    .INIT(16'hE0EE)) 
     \deskew_enable_gen.grp_p3_val_i_16 
       (.I0(selected_data[2]),
        .I1(O3),
        .I2(selected_data[1]),
        .I3(O2),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_16 ));
LUT5 #(
    .INIT(32'h0E0E0E00)) 
     \deskew_enable_gen.grp_p3_val_i_3 
       (.I0(selected_data[17]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I2(masked_dout[15]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .I4(selected_data[16]),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_3 ));
LUT5 #(
    .INIT(32'hAAA2AAAA)) 
     \deskew_enable_gen.grp_p3_val_i_4 
       (.I0(\n_0_deskew_enable_gen.grp_p3_val_i_10 ),
        .I1(grp_count[1]),
        .I2(grp_count[2]),
        .I3(selected_data[12]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_4 ));
LUT4 #(
    .INIT(16'h000D)) 
     \deskew_enable_gen.grp_p3_val_i_5 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I1(selected_data[9]),
        .I2(masked_dout[11]),
        .I3(\n_0_deskew_enable_gen.grp_p3_val_i_12 ),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_5 ));
LUT6 #(
    .INIT(64'h2222222222202222)) 
     \deskew_enable_gen.grp_p3_val_i_6 
       (.I0(\n_0_deskew_enable_gen.grp_p3_val_i_13 ),
        .I1(masked_dout[7]),
        .I2(grp_count[0]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I5(selected_data[8]),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_6 ));
LUT6 #(
    .INIT(64'h00DF00DF000000DF)) 
     \deskew_enable_gen.grp_p3_val_i_7 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I1(selected_data[4]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I3(masked_dout[3]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I5(selected_data[5]),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_7 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
     \deskew_enable_gen.grp_p3_val_i_8 
       (.I0(\n_0_deskew_enable_gen.grp_p3_val_i_16 ),
        .I1(selected_data[0]),
        .I2(grp_count[2]),
        .I3(grp_count[1]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I5(grp_count[0]),
        .O(\n_0_deskew_enable_gen.grp_p3_val_i_8 ));
LUT6 #(
    .INIT(64'h0002000000000000)) 
     \deskew_enable_gen.grp_p3_val_i_9 
       (.I0(selected_data[15]),
        .I1(grp_count[2]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[1]),
        .I5(grp_count[0]),
        .O(masked_dout[15]));
FDRE \deskew_enable_gen.grp_p3_val_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(grp_p3_val0),
        .Q(grp_p3_val),
        .R(1'b0));
CARRY4 \deskew_enable_gen.grp_p3_val_reg_i_1 
       (.CI(\n_0_deskew_enable_gen.grp_p3_val_reg_i_2 ),
        .CO({\NLW_deskew_enable_gen.grp_p3_val_reg_i_1_CO_UNCONNECTED [3:2],grp_p3_val0,\n_3_deskew_enable_gen.grp_p3_val_reg_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.grp_p3_val_reg_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.grp_p3_val_i_3 ,\n_0_deskew_enable_gen.grp_p3_val_i_4 }));
CARRY4 \deskew_enable_gen.grp_p3_val_reg_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.grp_p3_val_reg_i_2 ,\n_1_deskew_enable_gen.grp_p3_val_reg_i_2 ,\n_2_deskew_enable_gen.grp_p3_val_reg_i_2 ,\n_3_deskew_enable_gen.grp_p3_val_reg_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.grp_p3_val_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.grp_p3_val_i_5 ,\n_0_deskew_enable_gen.grp_p3_val_i_6 ,\n_0_deskew_enable_gen.grp_p3_val_i_7 ,\n_0_deskew_enable_gen.grp_p3_val_i_8 }));
LUT5 #(
    .INIT(32'h08280808)) 
     \deskew_enable_gen.max_value_0[4]_i_1 
       (.I0(\n_0_deskew_enable_gen.min_value_1[4]_i_3 ),
        .I1(state[9]),
        .I2(state[5]),
        .I3(step_count[2]),
        .I4(\n_0_deskew_enable_gen.min_value_1[4]_i_5 ),
        .O(\n_0_deskew_enable_gen.max_value_0[4]_i_1 ));
FDRE \deskew_enable_gen.max_value_0_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_0[4]_i_1 ),
        .D(next_min_value_0[0]),
        .Q(max_value_0[0]),
        .R(I1));
FDRE \deskew_enable_gen.max_value_0_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_0[4]_i_1 ),
        .D(next_min_value_0[1]),
        .Q(max_value_0[1]),
        .R(I1));
FDRE \deskew_enable_gen.max_value_0_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_0[4]_i_1 ),
        .D(next_min_value_0[2]),
        .Q(max_value_0[2]),
        .R(I1));
FDRE \deskew_enable_gen.max_value_0_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_0[4]_i_1 ),
        .D(next_min_value_0[3]),
        .Q(max_value_0[3]),
        .R(I1));
FDRE \deskew_enable_gen.max_value_0_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_0[4]_i_1 ),
        .D(next_min_value_0[4]),
        .Q(max_value_0[4]),
        .R(I1));
LUT6 #(
    .INIT(64'h00AA000000AA0200)) 
     \deskew_enable_gen.max_value_1[4]_i_1 
       (.I0(\n_0_deskew_enable_gen.min_value_1[4]_i_3 ),
        .I1(\n_0_deskew_enable_gen.min_value_1[4]_i_5 ),
        .I2(step_count[2]),
        .I3(state[5]),
        .I4(state[9]),
        .I5(\n_0_deskew_enable_gen.max_value_1[4]_i_2 ),
        .O(\n_0_deskew_enable_gen.max_value_1[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair149" *) 
   LUT4 #(
    .INIT(16'h0880)) 
     \deskew_enable_gen.max_value_1[4]_i_2 
       (.I0(step_count[0]),
        .I1(step_count[1]),
        .I2(min_flip_1),
        .I3(flip_type),
        .O(\n_0_deskew_enable_gen.max_value_1[4]_i_2 ));
FDRE \deskew_enable_gen.max_value_1_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_1[4]_i_1 ),
        .D(next_min_value_0[0]),
        .Q(max_value_1[0]),
        .R(I1));
FDRE \deskew_enable_gen.max_value_1_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_1[4]_i_1 ),
        .D(next_min_value_0[1]),
        .Q(max_value_1[1]),
        .R(I1));
FDRE \deskew_enable_gen.max_value_1_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_1[4]_i_1 ),
        .D(next_min_value_0[2]),
        .Q(max_value_1[2]),
        .R(I1));
FDRE \deskew_enable_gen.max_value_1_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_1[4]_i_1 ),
        .D(next_min_value_0[3]),
        .Q(max_value_1[3]),
        .R(I1));
FDRE \deskew_enable_gen.max_value_1_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.max_value_1[4]_i_1 ),
        .D(next_min_value_0[4]),
        .Q(max_value_1[4]),
        .R(I1));
LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
     \deskew_enable_gen.min_flip_0_i_1 
       (.I0(flip_type),
        .I1(step_count[1]),
        .I2(step_count[0]),
        .I3(\n_0_deskew_enable_gen.min_flip_0_i_2 ),
        .I4(\n_0_deskew_enable_gen.min_value_1[4]_i_3 ),
        .I5(min_flip_0),
        .O(\n_0_deskew_enable_gen.min_flip_0_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair161" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \deskew_enable_gen.min_flip_0_i_2 
       (.I0(step_count[2]),
        .I1(state[5]),
        .I2(state[9]),
        .O(\n_0_deskew_enable_gen.min_flip_0_i_2 ));
FDRE \deskew_enable_gen.min_flip_0_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.min_flip_0_i_1 ),
        .Q(min_flip_0),
        .R(I1));
LUT4 #(
    .INIT(16'hFB08)) 
     \deskew_enable_gen.min_flip_1_i_1 
       (.I0(flip_type),
        .I1(\n_0_deskew_enable_gen.min_value_1[4]_i_3 ),
        .I2(\n_0_deskew_enable_gen.min_flip_1_i_2 ),
        .I3(min_flip_1),
        .O(\n_0_deskew_enable_gen.min_flip_1_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair150" *) 
   LUT5 #(
    .INIT(32'hEB55FFFF)) 
     \deskew_enable_gen.min_flip_1_i_2 
       (.I0(step_count[1]),
        .I1(flip_type),
        .I2(min_flip_0),
        .I3(step_count[0]),
        .I4(\n_0_deskew_enable_gen.min_flip_0_i_2 ),
        .O(\n_0_deskew_enable_gen.min_flip_1_i_2 ));
FDRE \deskew_enable_gen.min_flip_1_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.min_flip_1_i_1 ),
        .Q(min_flip_1),
        .R(I1));
LUT6 #(
    .INIT(64'h0808080808080828)) 
     \deskew_enable_gen.min_value_0[4]_i_1 
       (.I0(\n_0_deskew_enable_gen.min_value_1[4]_i_3 ),
        .I1(state[9]),
        .I2(state[5]),
        .I3(step_count[2]),
        .I4(step_count[0]),
        .I5(step_count[1]),
        .O(\n_0_deskew_enable_gen.min_value_0[4]_i_1 ));
FDRE \deskew_enable_gen.min_value_0_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_0[4]_i_1 ),
        .D(next_min_value_0[0]),
        .Q(min_value_0[0]),
        .R(I1));
FDRE \deskew_enable_gen.min_value_0_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_0[4]_i_1 ),
        .D(next_min_value_0[1]),
        .Q(min_value_0[1]),
        .R(I1));
FDRE \deskew_enable_gen.min_value_0_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_0[4]_i_1 ),
        .D(next_min_value_0[2]),
        .Q(min_value_0[2]),
        .R(I1));
FDRE \deskew_enable_gen.min_value_0_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_0[4]_i_1 ),
        .D(next_min_value_0[3]),
        .Q(min_value_0[3]),
        .R(I1));
FDRE \deskew_enable_gen.min_value_0_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_0[4]_i_1 ),
        .D(next_min_value_0[4]),
        .Q(min_value_0[4]),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair179" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \deskew_enable_gen.min_value_1[0]_i_1 
       (.I0(O4[0]),
        .I1(state[9]),
        .O(next_min_value_0[0]));
(* SOFT_HLUTNM = "soft_lutpair174" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \deskew_enable_gen.min_value_1[1]_i_1 
       (.I0(O4[1]),
        .I1(state[9]),
        .O(next_min_value_0[1]));
(* SOFT_HLUTNM = "soft_lutpair179" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \deskew_enable_gen.min_value_1[2]_i_1 
       (.I0(O4[2]),
        .I1(state[9]),
        .O(next_min_value_0[2]));
(* SOFT_HLUTNM = "soft_lutpair178" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \deskew_enable_gen.min_value_1[3]_i_1 
       (.I0(O4[3]),
        .I1(state[9]),
        .O(next_min_value_0[3]));
LUT6 #(
    .INIT(64'h0808080808080828)) 
     \deskew_enable_gen.min_value_1[4]_i_1 
       (.I0(\n_0_deskew_enable_gen.min_value_1[4]_i_3 ),
        .I1(state[9]),
        .I2(state[5]),
        .I3(\n_0_deskew_enable_gen.min_value_1[4]_i_4 ),
        .I4(\n_0_deskew_enable_gen.min_value_1[4]_i_5 ),
        .I5(step_count[2]),
        .O(\n_0_deskew_enable_gen.min_value_1[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair178" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \deskew_enable_gen.min_value_1[4]_i_2 
       (.I0(O4[4]),
        .I1(state[9]),
        .O(next_min_value_0[4]));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \deskew_enable_gen.min_value_1[4]_i_3 
       (.I0(\n_0_deskew_enable_gen.min_value_1[4]_i_6 ),
        .I1(state[0]),
        .I2(state[8]),
        .I3(\n_0_deskew_enable_gen.count[2]_i_5 ),
        .I4(state[6]),
        .I5(state[7]),
        .O(\n_0_deskew_enable_gen.min_value_1[4]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \deskew_enable_gen.min_value_1[4]_i_4 
       (.I0(step_count[1]),
        .I1(step_count[0]),
        .O(\n_0_deskew_enable_gen.min_value_1[4]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair150" *) 
   LUT4 #(
    .INIT(16'h4155)) 
     \deskew_enable_gen.min_value_1[4]_i_5 
       (.I0(step_count[1]),
        .I1(flip_type),
        .I2(min_flip_0),
        .I3(step_count[0]),
        .O(\n_0_deskew_enable_gen.min_value_1[4]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair159" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \deskew_enable_gen.min_value_1[4]_i_6 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[4]),
        .O(\n_0_deskew_enable_gen.min_value_1[4]_i_6 ));
FDRE \deskew_enable_gen.min_value_1_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_1[4]_i_1 ),
        .D(next_min_value_0[0]),
        .Q(min_value_1[0]),
        .R(I1));
FDRE \deskew_enable_gen.min_value_1_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_1[4]_i_1 ),
        .D(next_min_value_0[1]),
        .Q(min_value_1[1]),
        .R(I1));
FDRE \deskew_enable_gen.min_value_1_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_1[4]_i_1 ),
        .D(next_min_value_0[2]),
        .Q(min_value_1[2]),
        .R(I1));
FDRE \deskew_enable_gen.min_value_1_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_1[4]_i_1 ),
        .D(next_min_value_0[3]),
        .Q(min_value_1[3]),
        .R(I1));
FDRE \deskew_enable_gen.min_value_1_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.min_value_1[4]_i_1 ),
        .D(next_min_value_0[4]),
        .Q(min_value_1[4]),
        .R(I1));
(* srl_bus_name = "inst/\master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_phy_calib_inst/deskew_enable_gen.p0_val_reg " *) 
   (* srl_name = "inst/\master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_phy_calib_inst/deskew_enable_gen.p0_val_reg[2]_srl3 " *) 
   SRL16E \deskew_enable_gen.p0_val_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_ph_out),
        .D(p0_val0),
        .Q(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3 ));
CARRY4 \deskew_enable_gen.p0_val_reg[2]_srl3_i_1 
       (.CI(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 ),
        .CO({\NLW_deskew_enable_gen.p0_val_reg[2]_srl3_i_1_CO_UNCONNECTED [3:2],p0_val0,\n_3_deskew_enable_gen.p0_val_reg[2]_srl3_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.p0_val_reg[2]_srl3_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_3 ,\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_4 }));
CARRY4 \deskew_enable_gen.p0_val_reg[2]_srl3_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 ,\n_1_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 ,\n_2_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 ,\n_3_deskew_enable_gen.p0_val_reg[2]_srl3_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.p0_val_reg[2]_srl3_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_5 ,\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_6 ,\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_7 ,\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_8 }));
LUT5 #(
    .INIT(32'h51515100)) 
     \deskew_enable_gen.p0_val_reg[2]_srl3_i_3 
       (.I0(masked_data[15]),
        .I1(I3[17]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .I4(I3[16]),
        .O(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_3 ));
LUT6 #(
    .INIT(64'h5515551555150000)) 
     \deskew_enable_gen.p0_val_reg[2]_srl3_i_4 
       (.I0(\n_0_deskew_enable_gen.p2_val[0]_i_9 ),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .I2(I3[13]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .I5(I3[14]),
        .O(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_4 ));
LUT5 #(
    .INIT(32'h07070700)) 
     \deskew_enable_gen.p0_val_reg[2]_srl3_i_5 
       (.I0(I3[9]),
        .I1(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I2(masked_data[11]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_12 ),
        .I4(I3[10]),
        .O(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_5 ));
LUT6 #(
    .INIT(64'h0EEE0EEE00000EEE)) 
     \deskew_enable_gen.p0_val_reg[2]_srl3_i_6 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I1(I3[6]),
        .I2(I3[7]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_13 ),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_14 ),
        .I5(I3[8]),
        .O(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_6 ));
LUT6 #(
    .INIT(64'h1500151515151515)) 
     \deskew_enable_gen.p0_val_reg[2]_srl3_i_7 
       (.I0(masked_data[3]),
        .I1(I3[5]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I3(I3[4]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .O(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_7 ));
LUT6 #(
    .INIT(64'h0DDD0DDD0DDD0000)) 
     \deskew_enable_gen.p0_val_reg[2]_srl3_i_8 
       (.I0(O1),
        .I1(I3[0]),
        .I2(I3[1]),
        .I3(O2),
        .I4(O3),
        .I5(I3[2]),
        .O(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3_i_8 ));
FDRE \deskew_enable_gen.p0_val_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.p0_val_reg[2]_srl3 ),
        .Q(p_3_in9_in),
        .R(1'b0));
(* srl_bus_name = "inst/\master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_phy_calib_inst/deskew_enable_gen.p1_val_reg " *) 
   (* srl_name = "inst/\master_fpga_gen.axi_chip2chip_master_phy_inst/master_sio_phy.axi_chip2chip_phy_calib_inst/deskew_enable_gen.p1_val_reg[1]_srl2 " *) 
   SRL16E \deskew_enable_gen.p1_val_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_ph_out),
        .D(p1_val0),
        .Q(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2 ));
CARRY4 \deskew_enable_gen.p1_val_reg[1]_srl2_i_1 
       (.CI(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 ),
        .CO({\NLW_deskew_enable_gen.p1_val_reg[1]_srl2_i_1_CO_UNCONNECTED [3:2],p1_val0,\n_3_deskew_enable_gen.p1_val_reg[1]_srl2_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.p1_val_reg[1]_srl2_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_3 ,\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_4 }));
CARRY4 \deskew_enable_gen.p1_val_reg[1]_srl2_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 ,\n_1_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 ,\n_2_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 ,\n_3_deskew_enable_gen.p1_val_reg[1]_srl2_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.p1_val_reg[1]_srl2_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_5 ,\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_6 ,\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_7 ,I5}));
LUT5 #(
    .INIT(32'h0000DDD0)) 
     \deskew_enable_gen.p1_val_reg[1]_srl2_i_3 
       (.I0(I3[16]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .I2(I3[17]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I4(masked_data[15]),
        .O(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_3 ));
LUT5 #(
    .INIT(32'h0000FF7F)) 
     \deskew_enable_gen.p1_val_reg[1]_srl2_i_4 
       (.I0(I3[12]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_9 ),
        .O(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_4 ));
LUT5 #(
    .INIT(32'h0D0D0D00)) 
     \deskew_enable_gen.p1_val_reg[1]_srl2_i_5 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I1(I3[9]),
        .I2(masked_data[11]),
        .I3(I3[10]),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_12 ),
        .O(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_5 ));
LUT6 #(
    .INIT(64'h00000EEE0EEE0EEE)) 
     \deskew_enable_gen.p1_val_reg[1]_srl2_i_6 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I1(I3[6]),
        .I2(I3[7]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_13 ),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_14 ),
        .I5(I3[8]),
        .O(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_6 ));
LUT6 #(
    .INIT(64'h000000007F007F7F)) 
     \deskew_enable_gen.p1_val_reg[1]_srl2_i_7 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I2(I3[4]),
        .I3(I3[5]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I5(masked_data[3]),
        .O(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_7 ));
LUT6 #(
    .INIT(64'h111111F111111111)) 
     \deskew_enable_gen.p1_val_reg[1]_srl2_i_9 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .I1(I3[14]),
        .I2(grp_count[1]),
        .I3(grp_count[2]),
        .I4(I3[13]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .O(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2_i_9 ));
FDRE \deskew_enable_gen.p1_val_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.p1_val_reg[1]_srl2 ),
        .Q(p_2_in8_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \deskew_enable_gen.p2_val[0]_i_10 
       (.I0(grp_count[0]),
        .I1(grp_count[2]),
        .I2(grp_count[1]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .I5(I3[3]),
        .O(\n_0_deskew_enable_gen.p2_val[0]_i_10 ));
LUT6 #(
    .INIT(64'hEE0EEE0EEE0E0000)) 
     \deskew_enable_gen.p2_val[0]_i_3 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[15]_i_2 ),
        .I1(I3[15]),
        .I2(I3[17]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I4(I3[16]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .O(\n_0_deskew_enable_gen.p2_val[0]_i_3 ));
LUT6 #(
    .INIT(64'h00000000F7F700F7)) 
     \deskew_enable_gen.p2_val[0]_i_4 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .I1(I3[13]),
        .I2(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I3(I3[14]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .I5(\n_0_deskew_enable_gen.p2_val[0]_i_9 ),
        .O(\n_0_deskew_enable_gen.p2_val[0]_i_4 ));
LUT6 #(
    .INIT(64'h0EEE0EEE00000EEE)) 
     \deskew_enable_gen.p2_val[0]_i_5 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[11]_i_2 ),
        .I1(I3[11]),
        .I2(I3[9]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I4(I3[10]),
        .I5(\n_0_deskew_enable_gen.f2_val[0]_i_12 ),
        .O(\n_0_deskew_enable_gen.p2_val[0]_i_5 ));
LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
     \deskew_enable_gen.p2_val[0]_i_6 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_13 ),
        .I1(I3[7]),
        .I2(I3[6]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_14 ),
        .I5(I3[8]),
        .O(\n_0_deskew_enable_gen.p2_val[0]_i_6 ));
LUT6 #(
    .INIT(64'h0000DF00DF00DF00)) 
     \deskew_enable_gen.p2_val[0]_i_7 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I1(I3[4]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I3(\n_0_deskew_enable_gen.p2_val[0]_i_10 ),
        .I4(I3[5]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .O(\n_0_deskew_enable_gen.p2_val[0]_i_7 ));
LUT6 #(
    .INIT(64'h0000000200000000)) 
     \deskew_enable_gen.p2_val[0]_i_9 
       (.I0(grp_count[0]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(I3[12]),
        .I4(grp_count[2]),
        .I5(grp_count[1]),
        .O(\n_0_deskew_enable_gen.p2_val[0]_i_9 ));
FDRE \deskew_enable_gen.p2_val_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p2_val0),
        .Q(\n_0_deskew_enable_gen.p2_val_reg[0] ),
        .R(1'b0));
CARRY4 \deskew_enable_gen.p2_val_reg[0]_i_1 
       (.CI(\n_0_deskew_enable_gen.p2_val_reg[0]_i_2 ),
        .CO({\NLW_deskew_enable_gen.p2_val_reg[0]_i_1_CO_UNCONNECTED [3:2],p2_val0,\n_3_deskew_enable_gen.p2_val_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.p2_val_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.p2_val[0]_i_3 ,\n_0_deskew_enable_gen.p2_val[0]_i_4 }));
CARRY4 \deskew_enable_gen.p2_val_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.p2_val_reg[0]_i_2 ,\n_1_deskew_enable_gen.p2_val_reg[0]_i_2 ,\n_2_deskew_enable_gen.p2_val_reg[0]_i_2 ,\n_3_deskew_enable_gen.p2_val_reg[0]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.p2_val_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.p2_val[0]_i_5 ,\n_0_deskew_enable_gen.p2_val[0]_i_6 ,\n_0_deskew_enable_gen.p2_val[0]_i_7 ,S}));
FDRE \deskew_enable_gen.p2_val_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.p2_val_reg[0] ),
        .Q(p_0_in7_in),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000000100000)) 
     \deskew_enable_gen.p3_val[0]_i_10 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(I3[11]),
        .I3(grp_count[0]),
        .I4(grp_count[1]),
        .I5(grp_count[2]),
        .O(masked_data[11]));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \deskew_enable_gen.p3_val[0]_i_11 
       (.I0(grp_count[3]),
        .I1(grp_count[4]),
        .I2(I3[3]),
        .I3(grp_count[0]),
        .I4(grp_count[2]),
        .I5(grp_count[1]),
        .O(masked_data[3]));
LUT5 #(
    .INIT(32'h0000EEE0)) 
     \deskew_enable_gen.p3_val[0]_i_3 
       (.I0(I3[16]),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[16]_i_2 ),
        .I2(I3[17]),
        .I3(\n_0_deskew_enable_gen.data_flip_sel[17]_i_2 ),
        .I4(masked_data[15]),
        .O(\n_0_deskew_enable_gen.p3_val[0]_i_3 ));
LUT6 #(
    .INIT(64'h5551555155510000)) 
     \deskew_enable_gen.p3_val[0]_i_4 
       (.I0(\n_0_deskew_enable_gen.p2_val[0]_i_9 ),
        .I1(\n_0_deskew_enable_gen.data_flip_sel[13]_i_2 ),
        .I2(I3[13]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_9 ),
        .I4(I3[14]),
        .I5(\n_0_deskew_enable_gen.data_flip_sel[14]_i_2 ),
        .O(\n_0_deskew_enable_gen.p3_val[0]_i_4 ));
LUT5 #(
    .INIT(32'h0D0D0D00)) 
     \deskew_enable_gen.p3_val[0]_i_5 
       (.I0(\n_0_deskew_enable_gen.f2_val[0]_i_11 ),
        .I1(I3[9]),
        .I2(masked_data[11]),
        .I3(I3[10]),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_12 ),
        .O(\n_0_deskew_enable_gen.p3_val[0]_i_5 ));
LUT6 #(
    .INIT(64'h0EEE0EEE00000EEE)) 
     \deskew_enable_gen.p3_val[0]_i_6 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[6]_i_2 ),
        .I1(I3[6]),
        .I2(I3[7]),
        .I3(\n_0_deskew_enable_gen.f2_val[0]_i_13 ),
        .I4(\n_0_deskew_enable_gen.f2_val[0]_i_14 ),
        .I5(I3[8]),
        .O(\n_0_deskew_enable_gen.p3_val[0]_i_6 ));
LUT6 #(
    .INIT(64'h00000000DF00DFDF)) 
     \deskew_enable_gen.p3_val[0]_i_7 
       (.I0(\n_0_deskew_enable_gen.data_flip_sel[12]_i_2 ),
        .I1(I3[4]),
        .I2(\n_0_deskew_enable_gen.data_flip_sel[3]_i_2 ),
        .I3(I3[5]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[5]_i_2 ),
        .I5(masked_data[3]),
        .O(\n_0_deskew_enable_gen.p3_val[0]_i_7 ));
LUT6 #(
    .INIT(64'h0000000000000080)) 
     \deskew_enable_gen.p3_val[0]_i_9 
       (.I0(I3[15]),
        .I1(grp_count[0]),
        .I2(grp_count[1]),
        .I3(grp_count[3]),
        .I4(grp_count[4]),
        .I5(grp_count[2]),
        .O(masked_data[15]));
(* KEEP = "yes" *) 
   FDRE \deskew_enable_gen.p3_val_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\deskew_enable_gen.p3_val_reg0 ),
        .Q(p3_val[0]),
        .R(1'b0));
CARRY4 \deskew_enable_gen.p3_val_reg[0]_i_1 
       (.CI(\n_0_deskew_enable_gen.p3_val_reg[0]_i_2 ),
        .CO({\NLW_deskew_enable_gen.p3_val_reg[0]_i_1_CO_UNCONNECTED [3:2],\deskew_enable_gen.p3_val_reg0 ,\n_3_deskew_enable_gen.p3_val_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.p3_val_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\n_0_deskew_enable_gen.p3_val[0]_i_3 ,\n_0_deskew_enable_gen.p3_val[0]_i_4 }));
CARRY4 \deskew_enable_gen.p3_val_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_deskew_enable_gen.p3_val_reg[0]_i_2 ,\n_1_deskew_enable_gen.p3_val_reg[0]_i_2 ,\n_2_deskew_enable_gen.p3_val_reg[0]_i_2 ,\n_3_deskew_enable_gen.p3_val_reg[0]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_deskew_enable_gen.p3_val_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\n_0_deskew_enable_gen.p3_val[0]_i_5 ,\n_0_deskew_enable_gen.p3_val[0]_i_6 ,\n_0_deskew_enable_gen.p3_val[0]_i_7 ,I6}));
(* KEEP = "yes" *) 
   FDRE \deskew_enable_gen.p3_val_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p3_val[0]),
        .Q(p3_val[1]),
        .R(1'b0));
(* KEEP = "yes" *) 
   FDRE \deskew_enable_gen.p3_val_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p3_val[1]),
        .Q(p3_val[2]),
        .R(1'b0));
(* KEEP = "yes" *) 
   FDRE \deskew_enable_gen.p3_val_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p3_val[2]),
        .Q(p3_val[3]),
        .R(1'b0));
LUT3 #(
    .INIT(8'h38)) 
     \deskew_enable_gen.pat_count[0]_i_1 
       (.I0(\n_0_deskew_enable_gen.pat_count[2]_i_2 ),
        .I1(\n_0_deskew_enable_gen.pat_count[2]_i_3 ),
        .I2(pat_count[0]),
        .O(\n_0_deskew_enable_gen.pat_count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair141" *) 
   LUT4 #(
    .INIT(16'h2F80)) 
     \deskew_enable_gen.pat_count[1]_i_1 
       (.I0(\n_0_deskew_enable_gen.pat_count[2]_i_2 ),
        .I1(pat_count[0]),
        .I2(\n_0_deskew_enable_gen.pat_count[2]_i_3 ),
        .I3(pat_count[1]),
        .O(\n_0_deskew_enable_gen.pat_count[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair141" *) 
   LUT5 #(
    .INIT(32'h2AFF8000)) 
     \deskew_enable_gen.pat_count[2]_i_1 
       (.I0(\n_0_deskew_enable_gen.pat_count[2]_i_2 ),
        .I1(pat_count[0]),
        .I2(pat_count[1]),
        .I3(\n_0_deskew_enable_gen.pat_count[2]_i_3 ),
        .I4(pat_count[2]),
        .O(\n_0_deskew_enable_gen.pat_count[2]_i_1 ));
LUT4 #(
    .INIT(16'hE200)) 
     \deskew_enable_gen.pat_count[2]_i_2 
       (.I0(\n_0_deskew_enable_gen.state[6]_i_2 ),
        .I1(flip_type),
        .I2(\n_0_deskew_enable_gen.state[6]_i_3 ),
        .I3(state[4]),
        .O(\n_0_deskew_enable_gen.pat_count[2]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000010116)) 
     \deskew_enable_gen.pat_count[2]_i_3 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[4]),
        .I3(state[9]),
        .I4(state[2]),
        .I5(\n_0_deskew_enable_gen.pat_count[2]_i_4 ),
        .O(\n_0_deskew_enable_gen.pat_count[2]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
     \deskew_enable_gen.pat_count[2]_i_4 
       (.I0(state[7]),
        .I1(state[6]),
        .I2(\n_0_deskew_enable_gen.count[2]_i_5 ),
        .I3(state[8]),
        .I4(state[3]),
        .I5(state[5]),
        .O(\n_0_deskew_enable_gen.pat_count[2]_i_4 ));
FDRE \deskew_enable_gen.pat_count_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.pat_count[0]_i_1 ),
        .Q(pat_count[0]),
        .R(I1));
FDRE \deskew_enable_gen.pat_count_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.pat_count[1]_i_1 ),
        .Q(pat_count[1]),
        .R(I1));
FDRE \deskew_enable_gen.pat_count_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.pat_count[2]_i_1 ),
        .Q(pat_count[2]),
        .R(I1));
LUT2 #(
    .INIT(4'h2)) 
     \deskew_enable_gen.state[0]_i_1 
       (.I0(state[0]),
        .I1(calib_start),
        .O(\n_0_deskew_enable_gen.state[0]_i_1 ));
LUT5 #(
    .INIT(32'h4444F444)) 
     \deskew_enable_gen.state[10]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[10]_i_2 ),
        .I1(state[10]),
        .I2(state[7]),
        .I3(\n_0_deskew_enable_gen.grp_count[4]_i_6 ),
        .I4(\n_0_deskew_enable_gen.grp_count[4]_i_5 ),
        .O(\n_0_deskew_enable_gen.state[10]_i_1 ));
LUT4 #(
    .INIT(16'h1700)) 
     \deskew_enable_gen.state[10]_i_2 
       (.I0(grp_p3_val),
        .I1(grp_p1_val),
        .I2(grp_p0_val),
        .I3(dout_p0_val),
        .O(\n_0_deskew_enable_gen.state[10]_i_2 ));
LUT6 #(
    .INIT(64'h0000000C000C0CC5)) 
     \deskew_enable_gen.state[11]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[11]_i_3 ),
        .I1(\n_0_deskew_enable_gen.state[11]_i_4 ),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(\n_0_deskew_enable_gen.state[11]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
     \deskew_enable_gen.state[11]_i_2 
       (.I0(\n_0_deskew_enable_gen.state[11]_i_5 ),
        .I1(state[11]),
        .I2(state[7]),
        .I3(\n_0_deskew_enable_gen.min_value_1[4]_i_4 ),
        .I4(step_count[2]),
        .I5(\n_0_deskew_enable_gen.state[11]_i_6 ),
        .O(\n_0_deskew_enable_gen.state[11]_i_2 ));
LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFCC2)) 
     \deskew_enable_gen.state[11]_i_3 
       (.I0(\n_0_deskew_enable_gen.state[11]_i_7 ),
        .I1(state[4]),
        .I2(state[6]),
        .I3(state[5]),
        .I4(\n_0_deskew_enable_gen.state[11]_i_8 ),
        .I5(state[7]),
        .O(\n_0_deskew_enable_gen.state[11]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair142" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \deskew_enable_gen.state[11]_i_4 
       (.I0(\n_0_deskew_enable_gen.state[11]_i_8 ),
        .I1(state[4]),
        .I2(state[6]),
        .I3(state[5]),
        .I4(state[7]),
        .O(\n_0_deskew_enable_gen.state[11]_i_4 ));
LUT6 #(
    .INIT(64'h0000000200000000)) 
     \deskew_enable_gen.state[11]_i_5 
       (.I0(grp_count[2]),
        .I1(grp_count[3]),
        .I2(grp_count[4]),
        .I3(grp_count[1]),
        .I4(grp_count[0]),
        .I5(state[9]),
        .O(\n_0_deskew_enable_gen.state[11]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair146" *) 
   LUT5 #(
    .INIT(32'h01000000)) 
     \deskew_enable_gen.state[11]_i_6 
       (.I0(grp_p3_val),
        .I1(grp_p1_val),
        .I2(grp_p0_val),
        .I3(dout_p0_val),
        .I4(state[10]),
        .O(\n_0_deskew_enable_gen.state[11]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair140" *) 
   LUT5 #(
    .INIT(32'hFFFEFEE9)) 
     \deskew_enable_gen.state[11]_i_7 
       (.I0(state[7]),
        .I1(state[10]),
        .I2(state[11]),
        .I3(state[9]),
        .I4(state[8]),
        .O(\n_0_deskew_enable_gen.state[11]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair140" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \deskew_enable_gen.state[11]_i_8 
       (.I0(state[8]),
        .I1(state[9]),
        .I2(state[11]),
        .I3(state[10]),
        .O(\n_0_deskew_enable_gen.state[11]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT5 #(
    .INIT(32'hBFFFAAAA)) 
     \deskew_enable_gen.state[1]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[1]_i_2 ),
        .I1(count[2]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(state[1]),
        .O(\n_0_deskew_enable_gen.state[1]_i_1 ));
LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
     \deskew_enable_gen.state[1]_i_2 
       (.I0(\n_0_deskew_enable_gen.delay_tap[4]_i_3 ),
        .I1(state[8]),
        .I2(state[0]),
        .I3(calib_start),
        .I4(state[9]),
        .I5(\n_0_deskew_enable_gen.state[1]_i_3 ),
        .O(\n_0_deskew_enable_gen.state[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT5 #(
    .INIT(32'h00010000)) 
     \deskew_enable_gen.state[1]_i_3 
       (.I0(grp_count[0]),
        .I1(grp_count[1]),
        .I2(grp_count[4]),
        .I3(grp_count[3]),
        .I4(grp_count[2]),
        .O(\n_0_deskew_enable_gen.state[1]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair139" *) 
   LUT5 #(
    .INIT(32'hBFFF8000)) 
     \deskew_enable_gen.state[2]_i_1 
       (.I0(state[1]),
        .I1(count[2]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(\n_0_deskew_enable_gen.state[2]_i_2 ),
        .O(\n_0_deskew_enable_gen.state[2]_i_1 ));
LUT6 #(
    .INIT(64'h1555555500000000)) 
     \deskew_enable_gen.state[2]_i_2 
       (.I0(\n_0_deskew_enable_gen.state[6]_i_2 ),
        .I1(p_3_in),
        .I2(f3_val[0]),
        .I3(p_2_in5_in),
        .I4(p_0_in4_in),
        .I5(state[2]),
        .O(\n_0_deskew_enable_gen.state[2]_i_2 ));
LUT5 #(
    .INIT(32'hAEAEFFAE)) 
     \deskew_enable_gen.state[3]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[3]_i_2 ),
        .I1(state[3]),
        .I2(\n_0_deskew_enable_gen.state[3]_i_3 ),
        .I3(state[2]),
        .I4(\n_0_deskew_enable_gen.state[3]_i_4 ),
        .O(\n_0_deskew_enable_gen.state[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair158" *) 
   LUT4 #(
    .INIT(16'h2AAA)) 
     \deskew_enable_gen.state[3]_i_2 
       (.I0(\n_0_deskew_enable_gen.pat_count[2]_i_2 ),
        .I1(pat_count[2]),
        .I2(pat_count[0]),
        .I3(pat_count[1]),
        .O(\n_0_deskew_enable_gen.state[3]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair139" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \deskew_enable_gen.state[3]_i_3 
       (.I0(count[1]),
        .I1(count[2]),
        .I2(count[0]),
        .O(\n_0_deskew_enable_gen.state[3]_i_3 ));
LUT5 #(
    .INIT(32'h00007FFF)) 
     \deskew_enable_gen.state[3]_i_4 
       (.I0(p_0_in4_in),
        .I1(p_2_in5_in),
        .I2(f3_val[0]),
        .I3(p_3_in),
        .I4(\n_0_deskew_enable_gen.state[6]_i_2 ),
        .O(\n_0_deskew_enable_gen.state[3]_i_4 ));
LUT4 #(
    .INIT(16'h1000)) 
     \deskew_enable_gen.state[4]_i_1 
       (.I0(count[0]),
        .I1(count[2]),
        .I2(count[1]),
        .I3(state[3]),
        .O(\n_0_deskew_enable_gen.state[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair158" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \deskew_enable_gen.state[5]_i_1 
       (.I0(pat_count[2]),
        .I1(pat_count[0]),
        .I2(pat_count[1]),
        .I3(\n_0_deskew_enable_gen.pat_count[2]_i_2 ),
        .O(\n_0_deskew_enable_gen.state[5]_i_1 ));
LUT6 #(
    .INIT(64'h048F048C048C048C)) 
     \deskew_enable_gen.state[6]_i_1 
       (.I0(flip_type),
        .I1(state[4]),
        .I2(\n_0_deskew_enable_gen.state[6]_i_2 ),
        .I3(\n_0_deskew_enable_gen.state[6]_i_3 ),
        .I4(state[2]),
        .I5(\n_0_deskew_enable_gen.state[6]_i_4 ),
        .O(\n_0_deskew_enable_gen.state[6]_i_1 ));
LUT4 #(
    .INIT(16'h8000)) 
     \deskew_enable_gen.state[6]_i_2 
       (.I0(p_3_in9_in),
        .I1(p3_val[0]),
        .I2(p_2_in8_in),
        .I3(p_0_in7_in),
        .O(\n_0_deskew_enable_gen.state[6]_i_2 ));
LUT4 #(
    .INIT(16'h8000)) 
     \deskew_enable_gen.state[6]_i_3 
       (.I0(p_3_in),
        .I1(f3_val[0]),
        .I2(p_2_in5_in),
        .I3(p_0_in4_in),
        .O(\n_0_deskew_enable_gen.state[6]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \deskew_enable_gen.state[6]_i_4 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(\n_0_deskew_enable_gen.state[6]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair155" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \deskew_enable_gen.state[7]_i_1 
       (.I0(state[5]),
        .I1(state[6]),
        .O(\n_0_deskew_enable_gen.state[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair152" *) 
   LUT4 #(
    .INIT(16'h0888)) 
     \deskew_enable_gen.state[8]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[8]_i_2 ),
        .I1(state[7]),
        .I2(step_count[2]),
        .I3(step_count[1]),
        .O(\n_0_deskew_enable_gen.state[8]_i_1 ));
LUT5 #(
    .INIT(32'h80000000)) 
     \deskew_enable_gen.state[8]_i_2 
       (.I0(O4[3]),
        .I1(O4[1]),
        .I2(O4[0]),
        .I3(O4[2]),
        .I4(O4[4]),
        .O(\n_0_deskew_enable_gen.state[8]_i_2 ));
LUT6 #(
    .INIT(64'hABBEAAAAAAAAAAAA)) 
     \deskew_enable_gen.state[9]_i_1 
       (.I0(\n_0_deskew_enable_gen.state[9]_i_2 ),
        .I1(grp_p3_val),
        .I2(grp_p1_val),
        .I3(grp_p0_val),
        .I4(state[10]),
        .I5(dout_p0_val),
        .O(\n_0_deskew_enable_gen.state[9]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT5 #(
    .INIT(32'h00800000)) 
     \deskew_enable_gen.state[9]_i_2 
       (.I0(\n_0_deskew_enable_gen.grp_count[4]_i_5 ),
        .I1(step_count[1]),
        .I2(step_count[2]),
        .I3(step_count[0]),
        .I4(state[7]),
        .O(\n_0_deskew_enable_gen.state[9]_i_2 ));
FDSE \deskew_enable_gen.state_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[0]_i_1 ),
        .Q(state[0]),
        .S(I1));
FDRE \deskew_enable_gen.state_reg[10] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[10]_i_1 ),
        .Q(state[10]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[11] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[11]_i_2 ),
        .Q(state[11]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[1]_i_1 ),
        .Q(state[1]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[2]_i_1 ),
        .Q(state[2]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[3]_i_1 ),
        .Q(state[3]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[4]_i_1 ),
        .Q(state[4]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[5] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[5]_i_1 ),
        .Q(state[5]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[6] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[6]_i_1 ),
        .Q(state[6]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[7] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[7]_i_1 ),
        .Q(state[7]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[8] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[8]_i_1 ),
        .Q(state[8]),
        .R(I1));
FDRE \deskew_enable_gen.state_reg[9] 
       (.C(clk_ph_out),
        .CE(\n_0_deskew_enable_gen.state[11]_i_1 ),
        .D(\n_0_deskew_enable_gen.state[9]_i_1 ),
        .Q(state[9]),
        .R(I1));
LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
     \deskew_enable_gen.step_count[0]_i_1 
       (.I0(\n_0_deskew_enable_gen.step_count[0]_i_2 ),
        .I1(state[6]),
        .I2(\n_0_deskew_enable_gen.grp_count[4]_i_6 ),
        .I3(state[10]),
        .I4(\n_0_deskew_enable_gen.step_count[2]_i_4 ),
        .I5(step_count[0]),
        .O(\n_0_deskew_enable_gen.step_count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair149" *) 
   LUT5 #(
    .INIT(32'h82AAAAAA)) 
     \deskew_enable_gen.step_count[0]_i_2 
       (.I0(state[5]),
        .I1(flip_type),
        .I2(min_flip_1),
        .I3(step_count[1]),
        .I4(step_count[0]),
        .O(\n_0_deskew_enable_gen.step_count[0]_i_2 ));
LUT6 #(
    .INIT(64'hFF04FFFFFF040000)) 
     \deskew_enable_gen.step_count[1]_i_1 
       (.I0(\n_0_deskew_enable_gen.min_value_1[4]_i_5 ),
        .I1(state[5]),
        .I2(\n_0_deskew_enable_gen.max_value_1[4]_i_2 ),
        .I3(\n_0_deskew_enable_gen.step_count[1]_i_2 ),
        .I4(\n_0_deskew_enable_gen.step_count[2]_i_4 ),
        .I5(step_count[1]),
        .O(\n_0_deskew_enable_gen.step_count[1]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFEEFEFEEE)) 
     \deskew_enable_gen.step_count[1]_i_2 
       (.I0(\n_0_deskew_enable_gen.state[11]_i_5 ),
        .I1(state[10]),
        .I2(state[6]),
        .I3(step_count[0]),
        .I4(step_count[1]),
        .I5(state[8]),
        .O(\n_0_deskew_enable_gen.step_count[1]_i_2 ));
LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
     \deskew_enable_gen.step_count[2]_i_1 
       (.I0(\n_0_deskew_enable_gen.step_count[2]_i_2 ),
        .I1(\n_0_deskew_enable_gen.step_count[2]_i_3 ),
        .I2(state[5]),
        .I3(\n_0_deskew_enable_gen.max_value_1[4]_i_2 ),
        .I4(\n_0_deskew_enable_gen.step_count[2]_i_4 ),
        .I5(step_count[2]),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
     \deskew_enable_gen.step_count[2]_i_10 
       (.I0(state[6]),
        .I1(state[7]),
        .I2(state[8]),
        .I3(state[9]),
        .I4(state[10]),
        .I5(state[11]),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_10 ));
LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
     \deskew_enable_gen.step_count[2]_i_2 
       (.I0(state[10]),
        .I1(state[9]),
        .I2(grp_count[0]),
        .I3(grp_count[1]),
        .I4(\n_0_deskew_enable_gen.data_flip_sel[10]_i_2 ),
        .I5(grp_count[2]),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_2 ));
LUT5 #(
    .INIT(32'hBEEEAAAA)) 
     \deskew_enable_gen.step_count[2]_i_3 
       (.I0(state[8]),
        .I1(step_count[2]),
        .I2(step_count[0]),
        .I3(step_count[1]),
        .I4(state[6]),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_3 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA20)) 
     \deskew_enable_gen.step_count[2]_i_4 
       (.I0(\n_0_deskew_enable_gen.step_count[2]_i_5 ),
        .I1(step_count[2]),
        .I2(state[5]),
        .I3(\n_0_deskew_enable_gen.step_count[2]_i_6 ),
        .I4(state[6]),
        .I5(\n_0_deskew_enable_gen.state[11]_i_6 ),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_4 ));
LUT4 #(
    .INIT(16'h0012)) 
     \deskew_enable_gen.step_count[2]_i_5 
       (.I0(\n_0_deskew_enable_gen.step_count[2]_i_7 ),
        .I1(\n_0_deskew_enable_gen.step_count[2]_i_8 ),
        .I2(\n_0_deskew_enable_gen.step_count[2]_i_9 ),
        .I3(\n_0_deskew_enable_gen.step_count[2]_i_10 ),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair161" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \deskew_enable_gen.step_count[2]_i_6 
       (.I0(state[9]),
        .I1(state[8]),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_6 ));
LUT6 #(
    .INIT(64'h0000000100010116)) 
     \deskew_enable_gen.step_count[2]_i_7 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[4]),
        .I5(state[5]),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEE8)) 
     \deskew_enable_gen.step_count[2]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[4]),
        .I5(state[5]),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_8 ));
LUT6 #(
    .INIT(64'h0000000100010116)) 
     \deskew_enable_gen.step_count[2]_i_9 
       (.I0(state[6]),
        .I1(state[7]),
        .I2(state[8]),
        .I3(state[9]),
        .I4(state[10]),
        .I5(state[11]),
        .O(\n_0_deskew_enable_gen.step_count[2]_i_9 ));
FDRE \deskew_enable_gen.step_count_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.step_count[0]_i_1 ),
        .Q(step_count[0]),
        .R(I1));
FDRE \deskew_enable_gen.step_count_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.step_count[1]_i_1 ),
        .Q(step_count[1]),
        .R(I1));
FDRE \deskew_enable_gen.step_count_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_deskew_enable_gen.step_count[2]_i_1 ),
        .Q(step_count[2]),
        .R(I1));
LUT3 #(
    .INIT(8'h80)) 
     \sio_mast_calib_fsm.slave_ack_i_1 
       (.I0(\n_0_sio_mast_calib_fsm.slave_ack_i_2 ),
        .I1(\n_0_sio_mast_calib_fsm.slave_ack_i_3 ),
        .I2(\n_0_sio_mast_calib_fsm.slave_ack_i_4 ),
        .O(O5));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \sio_mast_calib_fsm.slave_ack_i_2 
       (.I0(O6[1]),
        .I1(O6[0]),
        .I2(O6[4]),
        .I3(O6[5]),
        .I4(O6[2]),
        .I5(O6[3]),
        .O(\n_0_sio_mast_calib_fsm.slave_ack_i_2 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \sio_mast_calib_fsm.slave_ack_i_3 
       (.I0(O6[13]),
        .I1(O6[12]),
        .I2(O6[16]),
        .I3(O6[17]),
        .I4(O6[14]),
        .I5(O6[15]),
        .O(\n_0_sio_mast_calib_fsm.slave_ack_i_3 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \sio_mast_calib_fsm.slave_ack_i_4 
       (.I0(O6[7]),
        .I1(O6[6]),
        .I2(O6[10]),
        .I3(O6[11]),
        .I4(O6[8]),
        .I5(O6[9]),
        .O(\n_0_sio_mast_calib_fsm.slave_ack_i_4 ));
LUT3 #(
    .INIT(8'h80)) 
     \sio_mast_calib_fsm.slave_nack_i_1 
       (.I0(\n_0_sio_mast_calib_fsm.slave_nack_i_2 ),
        .I1(\n_0_sio_mast_calib_fsm.slave_nack_i_3 ),
        .I2(\n_0_sio_mast_calib_fsm.slave_nack_i_4 ),
        .O(O7));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     \sio_mast_calib_fsm.slave_nack_i_2 
       (.I0(O6[1]),
        .I1(O6[0]),
        .I2(O6[4]),
        .I3(O6[5]),
        .I4(O6[2]),
        .I5(O6[3]),
        .O(\n_0_sio_mast_calib_fsm.slave_nack_i_2 ));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     \sio_mast_calib_fsm.slave_nack_i_3 
       (.I0(O6[13]),
        .I1(O6[12]),
        .I2(O6[16]),
        .I3(O6[17]),
        .I4(O6[14]),
        .I5(O6[15]),
        .O(\n_0_sio_mast_calib_fsm.slave_nack_i_3 ));
LUT6 #(
    .INIT(64'h0000000000008000)) 
     \sio_mast_calib_fsm.slave_nack_i_4 
       (.I0(O6[7]),
        .I1(O6[6]),
        .I2(O6[10]),
        .I3(O6[11]),
        .I4(O6[8]),
        .I5(O6[9]),
        .O(\n_0_sio_mast_calib_fsm.slave_nack_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair153" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \state[4]_i_1 
       (.I0(Q),
        .I1(calib_done),
        .I2(calib_error),
        .O(I4[0]));
(* SOFT_HLUTNM = "soft_lutpair153" *) 
   LUT4 #(
    .INIT(16'hFF40)) 
     \state[7]_i_2 
       (.I0(calib_done),
        .I1(calib_error),
        .I2(Q),
        .I3(I2),
        .O(I4[1]));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_phy_if" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_phy_if
   (tx_user_reset,
    clk_ph_out,
    aurora_rst_out_cdc_to,
    aurora_rst_out_r1,
    aurora_rst_out_r2,
    SR,
    axi_reset,
    rx_phy_ready,
    O1,
    Q,
    E,
    I7,
    O2,
    D,
    O3,
    O4,
    O5,
    axi_c2c_selio_tx_clk_out,
    axi_c2c_selio_tx_data_out,
    O6,
    axi_c2c_link_error_out,
    idelay_ref_clk,
    axi_c2c_selio_rx_data_in,
    axi_c2c_phy_clk,
    tx_ch0_valid,
    I1,
    s_aresetn,
    data_in,
    axi_c2c_selio_rx_clk_in,
    s_aclk);
  output tx_user_reset;
  output clk_ph_out;
  output aurora_rst_out_cdc_to;
  output aurora_rst_out_r1;
  output aurora_rst_out_r2;
  output [0:0]SR;
  output axi_reset;
  output rx_phy_ready;
  output O1;
  output [3:0]Q;
  output [0:0]E;
  output [0:0]I7;
  output O2;
  output [2:0]D;
  output O3;
  output O4;
  output [17:0]O5;
  output axi_c2c_selio_tx_clk_out;
  output [8:0]axi_c2c_selio_tx_data_out;
  output [2:0]O6;
  output axi_c2c_link_error_out;
  input idelay_ref_clk;
  input [8:0]axi_c2c_selio_rx_data_in;
  input axi_c2c_phy_clk;
  input tx_ch0_valid;
  input I1;
  input s_aresetn;
  input [17:0]data_in;
  input axi_c2c_selio_rx_clk_in;
  input s_aclk;

  wire [2:0]D;
  wire [0:0]E;
  wire I1;
  wire [0:0]I7;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [17:0]O5;
  wire [2:0]O6;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aurora_rst_out_cdc_to;
  wire aurora_rst_out_r1;
  wire aurora_rst_out_r2;
  wire axi_c2c_link_error_out;
  wire axi_c2c_phy_clk;
(* IBUF_LOW_PWR *)   wire axi_c2c_selio_rx_clk_in;
(* IBUF_LOW_PWR *)   wire [8:0]axi_c2c_selio_rx_data_in;
(* DRIVE = "12" *) (* SLEW = "SLOW" *)   wire axi_c2c_selio_tx_clk_out;
(* DRIVE = "12" *) (* SLEW = "SLOW" *)   wire [8:0]axi_c2c_selio_tx_data_out;
  wire axi_reset;
  wire [17:0]calib_data;
  wire calib_done;
  wire calib_error;
  wire calib_start;
  wire clk_ph_out;
  wire [17:0]data_in;
  wire [3:0]data_in_0;
  wire [16:0]delay_load;
  wire [4:0]delay_tap;
  wire idelay_ready;
  wire idelay_ref_clk;
  wire n_10_axi_chip2chip_phy_init_inst;
  wire \n_12_master_sio_phy.axi_chip2chip_phy_calib_inst ;
  wire \n_21_master_sio_phy.axi_chip2chip_sio_input_inst ;
  wire \n_22_master_sio_phy.axi_chip2chip_sio_input_inst ;
  wire \n_23_master_sio_phy.axi_chip2chip_sio_input_inst ;
  wire \n_2_master_sio_phy.axi_chip2chip_sio_input_inst ;
  wire \n_31_master_sio_phy.axi_chip2chip_phy_calib_inst ;
  wire \n_4_master_sio_phy.axi_chip2chip_phy_calib_inst ;
  wire \n_5_master_sio_phy.axi_chip2chip_phy_calib_inst ;
  wire \n_6_master_sio_phy.axi_chip2chip_phy_calib_inst ;
  wire n_9_axi_chip2chip_phy_init_inst;
  wire [7:4]next_state;
  wire rx_phy_ready;
  wire s_aclk;
  wire s_aresetn;
  wire tx_ch0_valid;
  wire tx_user_reset;

axi_chip2chip_0_axi_chip2chip_v4_2_phy_init axi_chip2chip_phy_init_inst
       (.D(data_in_0),
        .I1(SR),
        .I2(\n_12_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .I3(\n_31_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .I4({next_state[7],next_state[4]}),
        .O1(n_10_axi_chip2chip_phy_init_inst),
        .O2(axi_reset),
        .O3(O3),
        .O6(O6),
        .Q(n_9_axi_chip2chip_phy_init_inst),
        .aurora_rst_out_cdc_to(aurora_rst_out_cdc_to),
        .aurora_rst_out_r1(aurora_rst_out_r1),
        .aurora_rst_out_r2(aurora_rst_out_r2),
        .axi_c2c_link_error_out(axi_c2c_link_error_out),
        .calib_done(calib_done),
        .calib_error(calib_error),
        .calib_start(calib_start),
        .clk_ph_out(clk_ph_out),
        .idelay_ready(idelay_ready),
        .rx_phy_ready(rx_phy_ready),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn));
axi_chip2chip_0_axi_chip2chip_v4_2_cir_buf__parameterized0 \master_sio_phy.axi_chip2chip_cir_buf_inst 
       (.D(D),
        .E(E),
        .I1(I1),
        .I2(SR),
        .I3(data_in_0),
        .I7(I7),
        .O1(O1),
        .O2(O2),
        .O4(O4),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .clk_ph_out(clk_ph_out),
        .reset(tx_user_reset),
        .tx_ch0_valid(tx_ch0_valid));
axi_chip2chip_0_axi_chip2chip_v4_2_phy_calib \master_sio_phy.axi_chip2chip_phy_calib_inst 
       (.I1(SR),
        .I2(n_10_axi_chip2chip_phy_init_inst),
        .I3(calib_data),
        .I4({next_state[7],next_state[4]}),
        .I5(\n_2_master_sio_phy.axi_chip2chip_sio_input_inst ),
        .I6(\n_22_master_sio_phy.axi_chip2chip_sio_input_inst ),
        .O1(\n_4_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .O2(\n_5_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .O3(\n_6_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .O4(delay_tap),
        .O5(\n_12_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .O6(O5),
        .O7(\n_31_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .O8({delay_load[16],delay_load[14],delay_load[12],delay_load[10],delay_load[8],delay_load[6],delay_load[4],delay_load[2],delay_load[0]}),
        .Q(n_9_axi_chip2chip_phy_init_inst),
        .S(\n_23_master_sio_phy.axi_chip2chip_sio_input_inst ),
        .calib_done(calib_done),
        .calib_error(calib_error),
        .calib_start(calib_start),
        .clk_ph_out(clk_ph_out));
axi_chip2chip_0_axi_chip2chip_v4_2_sio_input \master_sio_phy.axi_chip2chip_sio_input_inst 
       (.I1(\n_4_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .I2(\n_5_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .I3(\n_6_master_sio_phy.axi_chip2chip_phy_calib_inst ),
        .I5(\n_2_master_sio_phy.axi_chip2chip_sio_input_inst ),
        .I6(\n_22_master_sio_phy.axi_chip2chip_sio_input_inst ),
        .O1(\n_21_master_sio_phy.axi_chip2chip_sio_input_inst ),
        .O4(delay_tap),
        .O8({delay_load[16],delay_load[14],delay_load[12],delay_load[10],delay_load[8],delay_load[6],delay_load[4],delay_load[2],delay_load[0]}),
        .Q(calib_data),
        .S(\n_23_master_sio_phy.axi_chip2chip_sio_input_inst ),
        .axi_c2c_selio_rx_clk_in(axi_c2c_selio_rx_clk_in),
        .axi_c2c_selio_rx_data_in(axi_c2c_selio_rx_data_in),
        .clk_ph_out(clk_ph_out),
        .idelay_ready(idelay_ready),
        .idelay_ref_clk(idelay_ref_clk),
        .reset(tx_user_reset),
        .s_aresetn(s_aresetn));
axi_chip2chip_0_axi_chip2chip_v4_2_sio_output \master_sio_phy.axi_chip2chip_sio_output_inst 
       (.axi_c2c_phy_clk(axi_c2c_phy_clk),
        .axi_c2c_selio_tx_clk_out(axi_c2c_selio_tx_clk_out),
        .axi_c2c_selio_tx_data_out(axi_c2c_selio_tx_data_out),
        .data_in(data_in),
        .reset_in(tx_user_reset));
axi_chip2chip_0_axi_chip2chip_v4_2_reset_sync \master_sio_phy.rx_reset_sync_inst 
       (.I1(clk_ph_out),
        .I2(\n_21_master_sio_phy.axi_chip2chip_sio_input_inst ),
        .O1(SR));
axi_chip2chip_0_axi_chip2chip_v4_2_reset_sync_0 \master_sio_phy.tx_reset_sync_inst 
       (.I1(axi_reset),
        .O1(tx_user_reset),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_phy_init" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_phy_init
   (aurora_rst_out_cdc_to,
    aurora_rst_out_r1,
    aurora_rst_out_r2,
    calib_start,
    rx_phy_ready,
    D,
    Q,
    O1,
    O3,
    O6,
    O2,
    axi_c2c_link_error_out,
    I1,
    clk_ph_out,
    I2,
    I3,
    I4,
    idelay_ready,
    calib_error,
    calib_done,
    s_aclk,
    s_aresetn);
  output aurora_rst_out_cdc_to;
  output aurora_rst_out_r1;
  output aurora_rst_out_r2;
  output calib_start;
  output rx_phy_ready;
  output [3:0]D;
  output [0:0]Q;
  output O1;
  output O3;
  output [2:0]O6;
  output O2;
  output axi_c2c_link_error_out;
  input I1;
  input clk_ph_out;
  input I2;
  input I3;
  input [1:0]I4;
  input idelay_ready;
  input calib_error;
  input calib_done;
  input s_aclk;
  input s_aresetn;

  wire [3:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire [1:0]I4;
  wire O1;
  wire O2;
  wire O3;
  wire [2:0]O6;
  wire [0:0]Q;
  wire aurora_rst_out_cdc_to;
  wire aurora_rst_out_r1;
  wire aurora_rst_out_r2;
  wire axi_c2c_link_error_out;
  wire calib_done;
  wire calib_done_dly;
  wire calib_error;
  wire calib_start;
  wire clk_ph_out;
  wire idelay_ready;
  wire n_0_calib_done_flop_i_1;
  wire n_0_calib_error_flop_i_1;
  wire n_0_calib_start_i_2;
  wire \n_0_link_error_gen.link_error_flop_i_1 ;
  wire \n_0_pat_count[3]_i_1 ;
  wire n_0_rx_phy_ready_i_1;
  wire \n_0_state[2]_i_2 ;
  wire \n_0_state[7]_i_1 ;
  wire \n_0_state[7]_i_3 ;
  wire \n_0_state[7]_i_5 ;
  wire \n_0_state_reg[0] ;
  wire \n_0_state_reg[1] ;
  wire \n_0_state_reg[2] ;
  wire \n_0_state_reg[4] ;
  wire \n_0_state_reg[5] ;
  wire \n_0_state_reg[6] ;
  wire \n_0_state_reg[7] ;
  wire \n_0_tx_phy_ctrl[0]_i_1 ;
  wire \n_0_tx_phy_ctrl[0]_i_2 ;
  wire \n_0_tx_phy_ctrl[1]_i_1 ;
  wire \n_0_tx_phy_ctrl[2]_i_1 ;
  wire n_0_tx_phy_ready_i_1;
  wire next_calib_start;
  wire [6:0]next_state;
  wire [3:0]p_0_in;
  wire [3:0]pat_count_reg__0;
  wire rx_phy_ready;
  wire s_aclk;
  wire s_aresetn;
  wire slave_ack;
  wire slave_nack;
  wire [2:0]src_data;

(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT1 #(
    .INIT(2'h1)) 
     aw_fifo_reset_i_1
       (.I0(rx_phy_ready),
        .O(O3));
axi_chip2chip_0_axi_chip2chip_v4_2_sync_cell__parameterized0 axi_chip2chip_sync_cell_inst
       (.D(src_data),
        .O6(O6),
        .s_aclk(s_aclk));
LUT5 #(
    .INIT(32'hFFDF0200)) 
     calib_done_flop_i_1
       (.I0(\n_0_tx_phy_ctrl[0]_i_2 ),
        .I1(\n_0_state_reg[0] ),
        .I2(\n_0_state_reg[7] ),
        .I3(\n_0_state_reg[6] ),
        .I4(src_data[2]),
        .O(n_0_calib_done_flop_i_1));
FDCE calib_done_flop_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_calib_done_flop_i_1),
        .Q(src_data[2]));
LUT5 #(
    .INIT(32'hFDFF0020)) 
     calib_error_flop_i_1
       (.I0(\n_0_tx_phy_ctrl[0]_i_2 ),
        .I1(\n_0_state_reg[0] ),
        .I2(\n_0_state_reg[7] ),
        .I3(\n_0_state_reg[6] ),
        .I4(src_data[1]),
        .O(n_0_calib_error_flop_i_1));
FDRE calib_error_flop_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(n_0_calib_error_flop_i_1),
        .Q(src_data[1]),
        .R(I1));
LUT6 #(
    .INIT(64'h0000000000020000)) 
     calib_start_i_1
       (.I0(Q),
        .I1(\n_0_state_reg[0] ),
        .I2(\n_0_state_reg[1] ),
        .I3(\n_0_state_reg[2] ),
        .I4(n_0_calib_start_i_2),
        .I5(slave_ack),
        .O(next_calib_start));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     calib_start_i_2
       (.I0(\n_0_state_reg[6] ),
        .I1(\n_0_state_reg[7] ),
        .I2(\n_0_state_reg[5] ),
        .I3(\n_0_state_reg[4] ),
        .O(n_0_calib_start_i_2));
FDRE calib_start_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(next_calib_start),
        .Q(calib_start),
        .R(I1));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(aurora_rst_out_cdc_to));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(aurora_rst_out_r1));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(aurora_rst_out_r2));
LUT1 #(
    .INIT(2'h1)) 
     \intr_out[3]_i_1 
       (.I0(s_aresetn),
        .O(O2));
FDCE \link_error_gen.calib_done_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(O2),
        .D(O6[2]),
        .Q(calib_done_dly));
LUT3 #(
    .INIT(8'hF2)) 
     \link_error_gen.link_error_flop_i_1 
       (.I0(calib_done_dly),
        .I1(O6[2]),
        .I2(axi_c2c_link_error_out),
        .O(\n_0_link_error_gen.link_error_flop_i_1 ));
FDCE \link_error_gen.link_error_flop_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(O2),
        .D(\n_0_link_error_gen.link_error_flop_i_1 ),
        .Q(axi_c2c_link_error_out));
LUT1 #(
    .INIT(2'h1)) 
     \pat_count[0]_i_1 
       (.I0(pat_count_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \pat_count[1]_i_1 
       (.I0(pat_count_reg__0[0]),
        .I1(pat_count_reg__0[1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \pat_count[2]_i_1 
       (.I0(pat_count_reg__0[2]),
        .I1(pat_count_reg__0[0]),
        .I2(pat_count_reg__0[1]),
        .O(p_0_in[2]));
LUT5 #(
    .INIT(32'h00000020)) 
     \pat_count[3]_i_1 
       (.I0(n_0_calib_start_i_2),
        .I1(\n_0_state_reg[0] ),
        .I2(\n_0_state_reg[1] ),
        .I3(\n_0_state_reg[2] ),
        .I4(Q),
        .O(\n_0_pat_count[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \pat_count[3]_i_2 
       (.I0(pat_count_reg__0[3]),
        .I1(pat_count_reg__0[1]),
        .I2(pat_count_reg__0[0]),
        .I3(pat_count_reg__0[2]),
        .O(p_0_in[3]));
(* counter = "15" *) 
   FDRE \pat_count_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_pat_count[3]_i_1 ),
        .D(p_0_in[0]),
        .Q(pat_count_reg__0[0]),
        .R(I1));
(* counter = "15" *) 
   FDRE \pat_count_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_pat_count[3]_i_1 ),
        .D(p_0_in[1]),
        .Q(pat_count_reg__0[1]),
        .R(I1));
(* counter = "15" *) 
   FDRE \pat_count_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_pat_count[3]_i_1 ),
        .D(p_0_in[2]),
        .Q(pat_count_reg__0[2]),
        .R(I1));
(* counter = "15" *) 
   FDRE \pat_count_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_pat_count[3]_i_1 ),
        .D(p_0_in[3]),
        .Q(pat_count_reg__0[3]),
        .R(I1));
FDRE phy_error_flop_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(1'b0),
        .Q(src_data[0]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT5 #(
    .INIT(32'hEBFF0200)) 
     rx_phy_ready_i_1
       (.I0(\n_0_state_reg[6] ),
        .I1(\n_0_state_reg[7] ),
        .I2(\n_0_state_reg[0] ),
        .I3(\n_0_tx_phy_ctrl[0]_i_2 ),
        .I4(rx_phy_ready),
        .O(n_0_rx_phy_ready_i_1));
FDCE rx_phy_ready_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_rx_phy_ready_i_1),
        .Q(rx_phy_ready));
FDRE \sio_mast_calib_fsm.slave_ack_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I2),
        .Q(slave_ack),
        .R(1'b0));
FDRE \sio_mast_calib_fsm.slave_nack_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3),
        .Q(slave_nack),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     \state[0]_i_1 
       (.I0(\n_0_state_reg[0] ),
        .I1(idelay_ready),
        .O(next_state[0]));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     \state[1]_i_1 
       (.I0(\n_0_state[2]_i_2 ),
        .I1(\n_0_state_reg[1] ),
        .I2(\n_0_state_reg[0] ),
        .I3(idelay_ready),
        .O(next_state[1]));
LUT5 #(
    .INIT(32'hF44F4444)) 
     \state[2]_i_1 
       (.I0(\n_0_state[2]_i_2 ),
        .I1(\n_0_state_reg[1] ),
        .I2(slave_ack),
        .I3(slave_nack),
        .I4(\n_0_state_reg[2] ),
        .O(next_state[2]));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \state[2]_i_2 
       (.I0(pat_count_reg__0[2]),
        .I1(pat_count_reg__0[0]),
        .I2(pat_count_reg__0[1]),
        .I3(pat_count_reg__0[3]),
        .O(\n_0_state[2]_i_2 ));
LUT6 #(
    .INIT(64'hFF4040FF40404040)) 
     \state[3]_i_1 
       (.I0(slave_nack),
        .I1(slave_ack),
        .I2(\n_0_state_reg[2] ),
        .I3(calib_error),
        .I4(calib_done),
        .I5(Q),
        .O(next_state[3]));
LUT3 #(
    .INIT(8'hBA)) 
     \state[5]_i_1 
       (.I0(\n_0_state_reg[4] ),
        .I1(slave_ack),
        .I2(\n_0_state_reg[5] ),
        .O(next_state[5]));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hEA)) 
     \state[6]_i_1 
       (.I0(\n_0_state_reg[6] ),
        .I1(\n_0_state_reg[5] ),
        .I2(slave_ack),
        .O(next_state[6]));
LUT6 #(
    .INIT(64'hAAAAAABAAABABAEA)) 
     \state[7]_i_1 
       (.I0(\n_0_state[7]_i_3 ),
        .I1(Q),
        .I2(n_0_calib_start_i_2),
        .I3(\n_0_state_reg[2] ),
        .I4(\n_0_state_reg[1] ),
        .I5(\n_0_state_reg[0] ),
        .O(\n_0_state[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000400040440)) 
     \state[7]_i_3 
       (.I0(Q),
        .I1(\n_0_state[7]_i_5 ),
        .I2(\n_0_state_reg[5] ),
        .I3(\n_0_state_reg[4] ),
        .I4(\n_0_state_reg[6] ),
        .I5(\n_0_state_reg[7] ),
        .O(\n_0_state[7]_i_3 ));
LUT4 #(
    .INIT(16'hBAAA)) 
     \state[7]_i_4 
       (.I0(\n_0_state_reg[7] ),
        .I1(slave_ack),
        .I2(slave_nack),
        .I3(\n_0_state_reg[2] ),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \state[7]_i_5 
       (.I0(\n_0_state_reg[2] ),
        .I1(\n_0_state_reg[1] ),
        .I2(\n_0_state_reg[0] ),
        .O(\n_0_state[7]_i_5 ));
FDSE \state_reg[0] 
       (.C(clk_ph_out),
        .CE(\n_0_state[7]_i_1 ),
        .D(next_state[0]),
        .Q(\n_0_state_reg[0] ),
        .S(I1));
FDRE \state_reg[1] 
       (.C(clk_ph_out),
        .CE(\n_0_state[7]_i_1 ),
        .D(next_state[1]),
        .Q(\n_0_state_reg[1] ),
        .R(I1));
FDRE \state_reg[2] 
       (.C(clk_ph_out),
        .CE(\n_0_state[7]_i_1 ),
        .D(next_state[2]),
        .Q(\n_0_state_reg[2] ),
        .R(I1));
FDRE \state_reg[3] 
       (.C(clk_ph_out),
        .CE(\n_0_state[7]_i_1 ),
        .D(next_state[3]),
        .Q(Q),
        .R(I1));
FDRE \state_reg[4] 
       (.C(clk_ph_out),
        .CE(\n_0_state[7]_i_1 ),
        .D(I4[0]),
        .Q(\n_0_state_reg[4] ),
        .R(I1));
FDRE \state_reg[5] 
       (.C(clk_ph_out),
        .CE(\n_0_state[7]_i_1 ),
        .D(next_state[5]),
        .Q(\n_0_state_reg[5] ),
        .R(I1));
FDRE \state_reg[6] 
       (.C(clk_ph_out),
        .CE(\n_0_state[7]_i_1 ),
        .D(next_state[6]),
        .Q(\n_0_state_reg[6] ),
        .R(I1));
FDRE \state_reg[7] 
       (.C(clk_ph_out),
        .CE(\n_0_state[7]_i_1 ),
        .D(I4[1]),
        .Q(\n_0_state_reg[7] ),
        .R(I1));
LUT4 #(
    .INIT(16'h7F70)) 
     \tx_phy_ctrl[0]_i_1 
       (.I0(\n_0_state_reg[6] ),
        .I1(\n_0_tx_phy_ctrl[0]_i_2 ),
        .I2(\n_0_state[7]_i_1 ),
        .I3(D[0]),
        .O(\n_0_tx_phy_ctrl[0]_i_1 ));
LUT5 #(
    .INIT(32'h00000001)) 
     \tx_phy_ctrl[0]_i_2 
       (.I0(Q),
        .I1(\n_0_state_reg[2] ),
        .I2(\n_0_state_reg[4] ),
        .I3(\n_0_state_reg[5] ),
        .I4(\n_0_state_reg[1] ),
        .O(\n_0_tx_phy_ctrl[0]_i_2 ));
LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
     \tx_phy_ctrl[1]_i_1 
       (.I0(\n_0_state_reg[1] ),
        .I1(\n_0_state_reg[0] ),
        .I2(\n_0_state_reg[4] ),
        .I3(Q),
        .I4(\n_0_state[7]_i_1 ),
        .I5(D[1]),
        .O(\n_0_tx_phy_ctrl[1]_i_1 ));
LUT4 #(
    .INIT(16'hEFE0)) 
     \tx_phy_ctrl[2]_i_1 
       (.I0(\n_0_state_reg[2] ),
        .I1(Q),
        .I2(\n_0_state[7]_i_1 ),
        .I3(D[2]),
        .O(\n_0_tx_phy_ctrl[2]_i_1 ));
FDPE \tx_phy_ctrl_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_tx_phy_ctrl[0]_i_1 ),
        .PRE(I1),
        .Q(D[0]));
FDCE \tx_phy_ctrl_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_tx_phy_ctrl[1]_i_1 ),
        .Q(D[1]));
FDCE \tx_phy_ctrl_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_tx_phy_ctrl[2]_i_1 ),
        .Q(D[2]));
LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
     tx_phy_ready_i_1
       (.I0(idelay_ready),
        .I1(\n_0_tx_phy_ctrl[0]_i_2 ),
        .I2(\n_0_state_reg[7] ),
        .I3(\n_0_state_reg[6] ),
        .I4(\n_0_state_reg[0] ),
        .I5(D[3]),
        .O(n_0_tx_phy_ready_i_1));
FDCE tx_phy_ready_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_tx_phy_ready_i_1),
        .Q(D[3]));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_reset_sync" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_reset_sync
   (O1,
    I1,
    I2);
  output O1;
  input I1;
  input I2;

  wire I1;
  wire I2;
  wire O1;
  wire \n_0_sync_reset_flop_reg[0] ;
  wire \n_0_sync_reset_flop_reg[1] ;
  wire \n_0_sync_reset_flop_reg[2] ;
  wire \n_0_sync_reset_flop_reg[3] ;
  wire \n_0_sync_reset_flop_reg[4] ;
  wire \n_0_sync_reset_flop_reg[5] ;
  wire \n_0_sync_reset_flop_reg[6] ;
  wire \n_0_sync_reset_flop_reg[7] ;

(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[0] 
       (.C(I1),
        .CE(1'b1),
        .D(1'b0),
        .PRE(I2),
        .Q(\n_0_sync_reset_flop_reg[0] ));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[1] 
       (.C(I1),
        .CE(1'b1),
        .D(\n_0_sync_reset_flop_reg[0] ),
        .PRE(I2),
        .Q(\n_0_sync_reset_flop_reg[1] ));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[2] 
       (.C(I1),
        .CE(1'b1),
        .D(\n_0_sync_reset_flop_reg[1] ),
        .PRE(I2),
        .Q(\n_0_sync_reset_flop_reg[2] ));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[3] 
       (.C(I1),
        .CE(1'b1),
        .D(\n_0_sync_reset_flop_reg[2] ),
        .PRE(I2),
        .Q(\n_0_sync_reset_flop_reg[3] ));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[4] 
       (.C(I1),
        .CE(1'b1),
        .D(\n_0_sync_reset_flop_reg[3] ),
        .PRE(I2),
        .Q(\n_0_sync_reset_flop_reg[4] ));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[5] 
       (.C(I1),
        .CE(1'b1),
        .D(\n_0_sync_reset_flop_reg[4] ),
        .PRE(I2),
        .Q(\n_0_sync_reset_flop_reg[5] ));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[6] 
       (.C(I1),
        .CE(1'b1),
        .D(\n_0_sync_reset_flop_reg[5] ),
        .PRE(I2),
        .Q(\n_0_sync_reset_flop_reg[6] ));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[7] 
       (.C(I1),
        .CE(1'b1),
        .D(\n_0_sync_reset_flop_reg[6] ),
        .PRE(I2),
        .Q(\n_0_sync_reset_flop_reg[7] ));
FDPE sync_reset_out_reg
       (.C(I1),
        .CE(1'b1),
        .D(\n_0_sync_reset_flop_reg[7] ),
        .PRE(I2),
        .Q(O1));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_reset_sync" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_reset_sync_0
   (O1,
    axi_c2c_phy_clk,
    I1);
  output O1;
  input axi_c2c_phy_clk;
  input I1;

  wire I1;
  wire O1;
  wire axi_c2c_phy_clk;
  wire [7:0]sync_reset_flop;

(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(I1),
        .Q(sync_reset_flop[0]));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_reset_flop[0]),
        .PRE(I1),
        .Q(sync_reset_flop[1]));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_reset_flop[1]),
        .PRE(I1),
        .Q(sync_reset_flop[2]));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_reset_flop[2]),
        .PRE(I1),
        .Q(sync_reset_flop[3]));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_reset_flop[3]),
        .PRE(I1),
        .Q(sync_reset_flop[4]));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_reset_flop[4]),
        .PRE(I1),
        .Q(sync_reset_flop[5]));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_reset_flop[5]),
        .PRE(I1),
        .Q(sync_reset_flop[6]));
(* SHREG_EXTRACT = "no" *) 
   FDPE \sync_reset_flop_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_reset_flop[6]),
        .PRE(I1),
        .Q(sync_reset_flop[7]));
FDPE sync_reset_out_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_reset_flop[7]),
        .PRE(I1),
        .Q(O1));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_sio_input" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_sio_input
   (idelay_ready,
    clk_ph_out,
    I5,
    Q,
    O1,
    I6,
    S,
    idelay_ref_clk,
    reset,
    axi_c2c_selio_rx_data_in,
    O8,
    O4,
    I1,
    I2,
    I3,
    s_aresetn,
    axi_c2c_selio_rx_clk_in);
  output idelay_ready;
  output clk_ph_out;
  output [0:0]I5;
  output [17:0]Q;
  output O1;
  output [0:0]I6;
  output [0:0]S;
  input idelay_ref_clk;
  input reset;
  input [8:0]axi_c2c_selio_rx_data_in;
  input [8:0]O8;
  input [4:0]O4;
  input I1;
  input I2;
  input I3;
  input s_aresetn;
  input axi_c2c_selio_rx_clk_in;

  wire I1;
  wire I2;
  wire I3;
  wire [0:0]I5;
  wire [0:0]I6;
  wire O1;
  wire [4:0]O4;
  wire [8:0]O8;
  wire [17:0]Q;
  wire [0:0]S;
(* IBUF_LOW_PWR *)   wire axi_c2c_selio_rx_clk_in;
(* IBUF_LOW_PWR *)   wire [8:0]axi_c2c_selio_rx_data_in;
  wire clk_ph_out;
  wire idelay_ready;
  wire idelay_ref_clk;
  wire \n_0_ddr_idelay_gen.ddr_idelay_inst[4].gen_idelaye2.IDELAYE2_inst ;
  wire \n_0_ddr_idelay_gen.ddr_idelay_inst[6].gen_idelaye2.IDELAYE2_inst ;
  wire \n_0_ddr_idelay_gen.ddr_idelay_inst[8].gen_idelaye2.IDELAYE2_inst ;
  wire p_0_in;
  wire p_10_in;
  wire p_10_out;
  wire p_11_out;
  wire p_12_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_16_in;
  wire p_16_out;
  wire p_17_out;
  wire p_18_in;
  wire p_19_out;
  wire p_1_out;
  wire p_20_out;
  wire p_21_in;
  wire p_22_out;
  wire p_23_out;
  wire p_24_in;
  wire p_25_out;
  wire p_26_out;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_4_in;
  wire p_4_out;
  wire p_5_out;
  wire p_6_in;
  wire p_7_out;
  wire p_8_in;
  wire p_8_out;
  wire p_9_in;
  wire reset;
  wire s_aresetn;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[0].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[1].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[2].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[3].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[4].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[5].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[6].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[7].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_ddr_idelay_gen.ddr_idelay_inst[8].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED ;

axi_chip2chip_0_axi_chip2chip_v4_2_clk_gen axi_chip2chip_clk_gen_inst
       (.O1(O1),
        .axi_c2c_selio_rx_clk_in(axi_c2c_selio_rx_clk_in),
        .clk_ph_out(clk_ph_out),
        .reset(reset),
        .s_aresetn(s_aresetn));
FDRE \data_out_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_26_out),
        .Q(Q[0]),
        .R(1'b0));
FDRE \data_out_reg[10] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_11_out),
        .Q(Q[10]),
        .R(1'b0));
FDRE \data_out_reg[11] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_10_out),
        .Q(Q[11]),
        .R(1'b0));
FDRE \data_out_reg[12] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_8_out),
        .Q(Q[12]),
        .R(1'b0));
FDRE \data_out_reg[13] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_7_out),
        .Q(Q[13]),
        .R(1'b0));
FDRE \data_out_reg[14] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_5_out),
        .Q(Q[14]),
        .R(1'b0));
FDRE \data_out_reg[15] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_4_out),
        .Q(Q[15]),
        .R(1'b0));
FDRE \data_out_reg[16] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_2_out),
        .Q(Q[16]),
        .R(1'b0));
FDRE \data_out_reg[17] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_1_out),
        .Q(Q[17]),
        .R(1'b0));
FDRE \data_out_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_25_out),
        .Q(Q[1]),
        .R(1'b0));
FDRE \data_out_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_23_out),
        .Q(Q[2]),
        .R(1'b0));
FDRE \data_out_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_22_out),
        .Q(Q[3]),
        .R(1'b0));
FDRE \data_out_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_20_out),
        .Q(Q[4]),
        .R(1'b0));
FDRE \data_out_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_19_out),
        .Q(Q[5]),
        .R(1'b0));
FDRE \data_out_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_17_out),
        .Q(Q[6]),
        .R(1'b0));
FDRE \data_out_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_16_out),
        .Q(Q[7]),
        .R(1'b0));
FDRE \data_out_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_14_out),
        .Q(Q[8]),
        .R(1'b0));
FDRE \data_out_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_13_out),
        .Q(Q[9]),
        .R(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[0].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_24_in),
        .Q1(p_26_out),
        .Q2(p_25_out),
        .R(1'b0),
        .S(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[1].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_21_in),
        .Q1(p_23_out),
        .Q2(p_22_out),
        .R(1'b0),
        .S(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[2].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_18_in),
        .Q1(p_20_out),
        .Q2(p_19_out),
        .R(1'b0),
        .S(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[3].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_15_in),
        .Q1(p_17_out),
        .Q2(p_16_out),
        .R(1'b0),
        .S(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[4].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_ddr_idelay_gen.ddr_idelay_inst[4].gen_idelaye2.IDELAYE2_inst ),
        .Q1(p_14_out),
        .Q2(p_13_out),
        .R(1'b0),
        .S(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[5].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_9_in),
        .Q1(p_11_out),
        .Q2(p_10_out),
        .R(1'b0),
        .S(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[6].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_ddr_idelay_gen.ddr_idelay_inst[6].gen_idelaye2.IDELAYE2_inst ),
        .Q1(p_8_out),
        .Q2(p_7_out),
        .R(1'b0),
        .S(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[7].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(p_3_in),
        .Q1(p_5_out),
        .Q2(p_4_out),
        .R(1'b0),
        .S(1'b0));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_iddr_gen.input_ddr_inst[8].gen_iddr.iddr_inst 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_ddr_idelay_gen.ddr_idelay_inst[8].gen_idelaye2.IDELAYE2_inst ),
        .Q1(p_2_out),
        .Q2(p_1_out),
        .R(1'b0),
        .S(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[0].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[0].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(p_24_in),
        .IDATAIN(p_16_in),
        .INC(1'b0),
        .LD(O8[0]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[1].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[1].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(p_21_in),
        .IDATAIN(p_14_in),
        .INC(1'b0),
        .LD(O8[1]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[2].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[2].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(p_18_in),
        .IDATAIN(p_12_in),
        .INC(1'b0),
        .LD(O8[2]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[3].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[3].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(p_15_in),
        .IDATAIN(p_10_in),
        .INC(1'b0),
        .LD(O8[3]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[4].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[4].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(\n_0_ddr_idelay_gen.ddr_idelay_inst[4].gen_idelaye2.IDELAYE2_inst ),
        .IDATAIN(p_8_in),
        .INC(1'b0),
        .LD(O8[4]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[5].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[5].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(p_9_in),
        .IDATAIN(p_6_in),
        .INC(1'b0),
        .LD(O8[5]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[6].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[6].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(\n_0_ddr_idelay_gen.ddr_idelay_inst[6].gen_idelaye2.IDELAYE2_inst ),
        .IDATAIN(p_4_in),
        .INC(1'b0),
        .LD(O8[6]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[7].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[7].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(p_3_in),
        .IDATAIN(p_2_in),
        .INC(1'b0),
        .LD(O8[7]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* SIM_DELAY_D = "0" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
     \ddr_idelay_gen.ddr_idelay_inst[8].gen_idelaye2.IDELAYE2_inst 
       (.C(clk_ph_out),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(O4),
        .CNTVALUEOUT(\NLW_ddr_idelay_gen.ddr_idelay_inst[8].gen_idelaye2.IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b1),
        .DATAOUT(\n_0_ddr_idelay_gen.ddr_idelay_inst[8].gen_idelaye2.IDELAYE2_inst ),
        .IDATAIN(p_0_in),
        .INC(1'b0),
        .LD(O8[8]),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
LUT6 #(
    .INIT(64'h7707770777070000)) 
     \deskew_enable_gen.p1_val_reg[1]_srl2_i_8 
       (.I0(Q[0]),
        .I1(I1),
        .I2(I2),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(I3),
        .O(I5));
LUT6 #(
    .INIT(64'h7707000077077707)) 
     \deskew_enable_gen.p2_val[0]_i_8 
       (.I0(Q[1]),
        .I1(I2),
        .I2(Q[2]),
        .I3(I3),
        .I4(Q[0]),
        .I5(I1),
        .O(S));
LUT6 #(
    .INIT(64'hBB0BBB0BBB0B0000)) 
     \deskew_enable_gen.p3_val[0]_i_8 
       (.I0(Q[0]),
        .I1(I1),
        .I2(I2),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(I3),
        .O(I6));
(* IODELAY_GROUP = "C2C_PHY_group" *) 
   (* box_type = "PRIMITIVE" *) 
   IDELAYCTRL \idelayctrl_gen.IDELAYCTRL_inst 
       (.RDY(idelay_ready),
        .REFCLK(idelay_ref_clk),
        .RST(reset));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[0].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[0]),
        .O(p_16_in));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[1].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[1]),
        .O(p_14_in));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[2].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[2]),
        .O(p_12_in));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[3].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[3]),
        .O(p_10_in));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[4].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[4]),
        .O(p_8_in));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[5].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[5]),
        .O(p_6_in));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[6].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[6]),
        .O(p_4_in));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[7].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[7]),
        .O(p_2_in));
(* CAPACITANCE = "DONT_CARE" *) 
   (* IBUF_DELAY_VALUE = "0" *) 
   (* IFD_DELAY_VALUE = "AUTO" *) 
   (* box_type = "PRIMITIVE" *) 
   IBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_input_gen.signle_end_in[8].IBUF_inst 
       (.I(axi_c2c_selio_rx_data_in[8]),
        .O(p_0_in));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_sio_output" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_sio_output
   (axi_c2c_selio_tx_clk_out,
    axi_c2c_selio_tx_data_out,
    axi_c2c_phy_clk,
    data_in,
    reset_in);
  output axi_c2c_selio_tx_clk_out;
  output [8:0]axi_c2c_selio_tx_data_out;
  input axi_c2c_phy_clk;
  input [17:0]data_in;
  input reset_in;

  wire axi_c2c_phy_clk;
(* DRIVE = "12" *) (* SLEW = "SLOW" *)   wire axi_c2c_selio_tx_clk_out;
(* DRIVE = "12" *) (* SLEW = "SLOW" *)   wire [8:0]axi_c2c_selio_tx_data_out;
  wire clk_out_oddr;
  wire [17:0]data_in;
  wire p_0_in;
  wire p_10_in;
  wire p_12_in;
  wire p_14_in;
  wire p_16_in;
  wire p_2_in;
  wire p_4_in;
  wire p_6_in;
  wire p_8_in;
  wire reset_in;
  wire \NLW_ddr_output_gen.output_ddr_pins[0].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_ddr_output_gen.output_ddr_pins[1].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_ddr_output_gen.output_ddr_pins[2].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_ddr_output_gen.output_ddr_pins[3].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_ddr_output_gen.output_ddr_pins[4].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_ddr_output_gen.output_ddr_pins[5].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_ddr_output_gen.output_ddr_pins[6].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_ddr_output_gen.output_ddr_pins[7].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_ddr_output_gen.output_ddr_pins[8].gen_oddr.oddr_inst_S_UNCONNECTED ;
  wire \NLW_gen_oddr.oddr_clk_out_inst_R_UNCONNECTED ;
  wire \NLW_gen_oddr.oddr_clk_out_inst_S_UNCONNECTED ;

(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[0].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[0]),
        .D2(data_in[1]),
        .Q(p_16_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[0].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[1].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[2]),
        .D2(data_in[3]),
        .Q(p_14_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[1].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[2].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[4]),
        .D2(data_in[5]),
        .Q(p_12_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[2].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[3].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[6]),
        .D2(data_in[7]),
        .Q(p_10_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[3].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[4].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[8]),
        .D2(data_in[9]),
        .Q(p_8_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[4].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[5].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[10]),
        .D2(data_in[11]),
        .Q(p_6_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[5].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[6].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[12]),
        .D2(data_in[13]),
        .Q(p_4_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[6].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[7].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[14]),
        .D2(data_in[15]),
        .Q(p_2_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[7].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "FALSE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \ddr_output_gen.output_ddr_pins[8].gen_oddr.oddr_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(data_in[16]),
        .D2(data_in[17]),
        .Q(p_0_in),
        .R(reset_in),
        .S(\NLW_ddr_output_gen.output_ddr_pins[8].gen_oddr.oddr_inst_S_UNCONNECTED ));
(* __SRVAL = "TRUE" *) 
   (* box_type = "PRIMITIVE" *) 
   ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
     \gen_oddr.oddr_clk_out_inst 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(clk_out_oddr),
        .R(\NLW_gen_oddr.oddr_clk_out_inst_R_UNCONNECTED ),
        .S(\NLW_gen_oddr.oddr_clk_out_inst_S_UNCONNECTED ));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_clk_out_gen.clk_obuf_inst 
       (.I(clk_out_oddr),
        .O(axi_c2c_selio_tx_clk_out));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[0].obuf_inst 
       (.I(p_16_in),
        .O(axi_c2c_selio_tx_data_out[0]));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[1].obuf_inst 
       (.I(p_14_in),
        .O(axi_c2c_selio_tx_data_out[1]));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[2].obuf_inst 
       (.I(p_12_in),
        .O(axi_c2c_selio_tx_data_out[2]));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[3].obuf_inst 
       (.I(p_10_in),
        .O(axi_c2c_selio_tx_data_out[3]));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[4].obuf_inst 
       (.I(p_8_in),
        .O(axi_c2c_selio_tx_data_out[4]));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[5].obuf_inst 
       (.I(p_6_in),
        .O(axi_c2c_selio_tx_data_out[5]));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[6].obuf_inst 
       (.I(p_4_in),
        .O(axi_c2c_selio_tx_data_out[6]));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[7].obuf_inst 
       (.I(p_2_in),
        .O(axi_c2c_selio_tx_data_out[7]));
(* CAPACITANCE = "DONT_CARE" *) 
   (* box_type = "PRIMITIVE" *) 
   OBUF #(
    .IOSTANDARD("DEFAULT")) 
     \single_end_out_gen.single_ended_buf_gen[8].obuf_inst 
       (.I(p_0_in),
        .O(axi_c2c_selio_tx_data_out[8]));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_sync_cell" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_sync_cell
   (O1,
    O2,
    Q,
    tx_user_reset,
    I4,
    I1,
    I2,
    axi_c2c_phy_clk,
    axi_c2c_m2s_intr_in);
  output [3:0]O1;
  output O2;
  input [3:0]Q;
  input tx_user_reset;
  input I4;
  input I1;
  input I2;
  input axi_c2c_phy_clk;
  input [3:0]axi_c2c_m2s_intr_in;

  wire I1;
  wire I2;
  wire I4;
  wire [3:0]O1;
  wire O2;
  wire [3:0]Q;
  wire [3:0]axi_c2c_m2s_intr_in;
  wire axi_c2c_phy_clk;
  wire intr_event;
  wire \n_0_calib_intr_gen.intr_flop_i_3 ;
  wire [3:0]sync_flop_0;
  wire [3:0]sync_flop_1;
  wire tx_user_reset;

LUT5 #(
    .INIT(32'h02030202)) 
     \calib_intr_gen.intr_flop_i_1 
       (.I0(intr_event),
        .I1(tx_user_reset),
        .I2(I4),
        .I3(I1),
        .I4(I2),
        .O(O2));
LUT5 #(
    .INIT(32'hFFFF6FF6)) 
     \calib_intr_gen.intr_flop_i_2 
       (.I0(Q[1]),
        .I1(O1[1]),
        .I2(Q[2]),
        .I3(O1[2]),
        .I4(\n_0_calib_intr_gen.intr_flop_i_3 ),
        .O(intr_event));
LUT4 #(
    .INIT(16'h6FF6)) 
     \calib_intr_gen.intr_flop_i_3 
       (.I0(O1[0]),
        .I1(Q[0]),
        .I2(O1[3]),
        .I3(Q[3]),
        .O(\n_0_calib_intr_gen.intr_flop_i_3 ));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(axi_c2c_m2s_intr_in[0]),
        .Q(sync_flop_0[0]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(axi_c2c_m2s_intr_in[1]),
        .Q(sync_flop_0[1]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(axi_c2c_m2s_intr_in[2]),
        .Q(sync_flop_0[2]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(axi_c2c_m2s_intr_in[3]),
        .Q(sync_flop_0[3]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_0[0]),
        .Q(sync_flop_1[0]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_0[1]),
        .Q(sync_flop_1[1]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_0[2]),
        .Q(sync_flop_1[2]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_0[3]),
        .Q(sync_flop_1[3]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_1[0]),
        .Q(O1[0]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_1[1]),
        .Q(O1[1]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_1[2]),
        .Q(O1[2]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(sync_flop_1[3]),
        .Q(O1[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_sync_cell" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_sync_cell_41
   (Q,
    s_aclk,
    I1);
  output [3:0]Q;
  input s_aclk;
  input [3:0]I1;

  wire [3:0]I1;
  wire [3:0]Q;
  wire \n_0_sync_flop_0_reg[0] ;
  wire \n_0_sync_flop_0_reg[1] ;
  wire \n_0_sync_flop_0_reg[2] ;
  wire \n_0_sync_flop_0_reg[3] ;
  wire \n_0_sync_flop_1_reg[0] ;
  wire \n_0_sync_flop_1_reg[1] ;
  wire \n_0_sync_flop_1_reg[2] ;
  wire \n_0_sync_flop_1_reg[3] ;
  wire s_aclk;

(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(I1[0]),
        .Q(\n_0_sync_flop_0_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(I1[1]),
        .Q(\n_0_sync_flop_0_reg[1] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(I1[2]),
        .Q(\n_0_sync_flop_0_reg[2] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(I1[3]),
        .Q(\n_0_sync_flop_0_reg[3] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_sync_flop_0_reg[0] ),
        .Q(\n_0_sync_flop_1_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_sync_flop_0_reg[1] ),
        .Q(\n_0_sync_flop_1_reg[1] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_sync_flop_0_reg[2] ),
        .Q(\n_0_sync_flop_1_reg[2] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_sync_flop_0_reg[3] ),
        .Q(\n_0_sync_flop_1_reg[3] ),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_sync_flop_1_reg[0] ),
        .Q(Q[0]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_sync_flop_1_reg[1] ),
        .Q(Q[1]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_sync_flop_1_reg[2] ),
        .Q(Q[2]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_sync_flop_1_reg[3] ),
        .Q(Q[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_sync_cell" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_sync_cell__parameterized0
   (O6,
    s_aclk,
    D);
  output [2:0]O6;
  input s_aclk;
  input [2:0]D;

  wire [2:0]D;
  wire [2:0]O6;
  wire s_aclk;
  wire [2:0]sync_flop_0;
  wire [2:0]sync_flop_1;

(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(sync_flop_0[0]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(sync_flop_0[1]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_0_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(sync_flop_0[2]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sync_flop_0[0]),
        .Q(sync_flop_1[0]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sync_flop_0[1]),
        .Q(sync_flop_1[1]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_1_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sync_flop_0[2]),
        .Q(sync_flop_1[2]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sync_flop_1[0]),
        .Q(O6[0]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sync_flop_1[1]),
        .Q(O6[1]),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE \sync_flop_2_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(sync_flop_1[2]),
        .Q(O6[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_tdm" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_tdm
   (tx_ch0_ready,
    aw_ch_data_ready,
    ar_ch_data_ready,
    wd_ch_data_ready,
    E,
    O1,
    O2,
    O3,
    O4,
    p_1_in,
    O5,
    O6,
    tx_user_reset,
    D,
    axi_c2c_phy_clk,
    empty_fwft_i,
    I1,
    I2,
    Q,
    I3,
    send_ch0,
    I4,
    tx_ch0_valid,
    I5);
  output tx_ch0_ready;
  output aw_ch_data_ready;
  output ar_ch_data_ready;
  output wd_ch_data_ready;
  output [0:0]E;
  output [0:0]O1;
  output [0:0]O2;
  output O3;
  output O4;
  output p_1_in;
  output [3:0]O5;
  output [17:0]O6;
  input tx_user_reset;
  input [3:0]D;
  input axi_c2c_phy_clk;
  input empty_fwft_i;
  input I1;
  input I2;
  input [0:0]Q;
  input [0:0]I3;
  input send_ch0;
  input [0:0]I4;
  input tx_ch0_valid;
  input [16:0]I5;

  wire [3:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [0:0]I4;
  wire [16:0]I5;
  wire [0:0]O1;
  wire [0:0]O2;
  wire O3;
  wire O4;
  wire [3:0]O5;
  wire [17:0]O6;
  wire [0:0]Q;
  wire ar_ch_data_ready;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire empty_fwft_i;
  wire \n_0_tdm_data_out[4]_i_1 ;
  wire \n_0_tdm_data_out[4]_i_2 ;
  wire \n_0_tdm_data_out[4]_i_3 ;
  wire [3:0]next_slot_count;
  wire p_1_in;
  wire send_ch0;
  wire [3:0]slot_count;
  wire tx_ch0_ready;
  wire tx_ch0_valid;
  wire tx_user_reset;
  wire wd_ch_data_ready;

FDRE int_ch0_ready_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(tx_ch0_ready),
        .R(tx_user_reset));
FDRE int_ch1_ready_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(aw_ch_data_ready),
        .R(tx_user_reset));
FDRE int_ch2_ready_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(ar_ch_data_ready),
        .R(tx_user_reset));
FDRE int_ch3_ready_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(wd_ch_data_ready),
        .R(tx_user_reset));
LUT2 #(
    .INIT(4'h2)) 
     \mux_by_4.data_count[3]_i_1 
       (.I0(aw_ch_data_ready),
        .I1(empty_fwft_i),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \mux_by_4.data_count[3]_i_1__0 
       (.I0(ar_ch_data_ready),
        .I1(I1),
        .O(O1));
LUT2 #(
    .INIT(4'h2)) 
     \mux_by_4.data_count[3]_i_1__1 
       (.I0(wd_ch_data_ready),
        .I1(I2),
        .O(O2));
LUT3 #(
    .INIT(8'h1A)) 
     \slot_count[0]_i_1 
       (.I0(slot_count[0]),
        .I1(send_ch0),
        .I2(I3),
        .O(next_slot_count[0]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT4 #(
    .INIT(16'h1F20)) 
     \slot_count[1]_i_1 
       (.I0(slot_count[0]),
        .I1(send_ch0),
        .I2(I3),
        .I3(slot_count[1]),
        .O(next_slot_count[1]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT5 #(
    .INIT(32'h07FF0800)) 
     \slot_count[2]_i_1 
       (.I0(slot_count[0]),
        .I1(slot_count[1]),
        .I2(send_ch0),
        .I3(I3),
        .I4(slot_count[2]),
        .O(next_slot_count[2]));
LUT6 #(
    .INIT(64'h007FFFFF00800000)) 
     \slot_count[3]_i_1 
       (.I0(slot_count[1]),
        .I1(slot_count[0]),
        .I2(slot_count[2]),
        .I3(send_ch0),
        .I4(I3),
        .I5(slot_count[3]),
        .O(next_slot_count[3]));
FDRE \slot_count_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(next_slot_count[0]),
        .Q(slot_count[0]),
        .R(tx_user_reset));
FDRE \slot_count_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(next_slot_count[1]),
        .Q(slot_count[1]),
        .R(tx_user_reset));
FDRE \slot_count_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(next_slot_count[2]),
        .Q(slot_count[2]),
        .R(tx_user_reset));
FDRE \slot_count_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(next_slot_count[3]),
        .Q(slot_count[3]),
        .R(tx_user_reset));
LUT6 #(
    .INIT(64'h000000000006000A)) 
     \slot_select[2]_i_2 
       (.I0(slot_count[1]),
        .I1(slot_count[0]),
        .I2(slot_count[2]),
        .I3(send_ch0),
        .I4(I3),
        .I5(slot_count[3]),
        .O(p_1_in));
LUT6 #(
    .INIT(64'h00000000EF00EFFF)) 
     \slot_select[2]_i_3 
       (.I0(Q),
        .I1(I2),
        .I2(I3),
        .I3(O4),
        .I4(next_slot_count[1]),
        .I5(send_ch0),
        .O(O3));
LUT6 #(
    .INIT(64'h372E3F2A3F2A3F2A)) 
     \slot_select[3]_i_3 
       (.I0(slot_count[3]),
        .I1(I3),
        .I2(send_ch0),
        .I3(slot_count[2]),
        .I4(slot_count[0]),
        .I5(slot_count[1]),
        .O(O4));
FDRE \slot_select_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(O5[0]),
        .R(tx_user_reset));
FDRE \slot_select_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(O5[1]),
        .R(tx_user_reset));
FDRE \slot_select_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(O5[2]),
        .R(tx_user_reset));
FDRE \slot_select_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(O5[3]),
        .R(tx_user_reset));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
     \tdm_data_out[4]_i_1 
       (.I0(O5[1]),
        .I1(aw_ch_data_ready),
        .I2(empty_fwft_i),
        .I3(\n_0_tdm_data_out[4]_i_2 ),
        .I4(I4),
        .I5(\n_0_tdm_data_out[4]_i_3 ),
        .O(\n_0_tdm_data_out[4]_i_1 ));
LUT6 #(
    .INIT(64'h80FF808080808080)) 
     \tdm_data_out[4]_i_2 
       (.I0(tx_ch0_ready),
        .I1(O5[0]),
        .I2(tx_ch0_valid),
        .I3(I2),
        .I4(wd_ch_data_ready),
        .I5(O5[3]),
        .O(\n_0_tdm_data_out[4]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \tdm_data_out[4]_i_3 
       (.I0(O5[2]),
        .I1(ar_ch_data_ready),
        .I2(I1),
        .O(\n_0_tdm_data_out[4]_i_3 ));
FDRE \tdm_data_out_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[0]),
        .Q(O6[0]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[10] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[9]),
        .Q(O6[10]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[11] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[10]),
        .Q(O6[11]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[12] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[11]),
        .Q(O6[12]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[13] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[12]),
        .Q(O6[13]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[14] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[13]),
        .Q(O6[14]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[15] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[14]),
        .Q(O6[15]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[16] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[15]),
        .Q(O6[16]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[17] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[16]),
        .Q(O6[17]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[1]),
        .Q(O6[1]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[2]),
        .Q(O6[2]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[3]),
        .Q(O6[3]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_tdm_data_out[4]_i_1 ),
        .Q(O6[4]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[4]),
        .Q(O6[5]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[5]),
        .Q(O6[6]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[6]),
        .Q(O6[7]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[7]),
        .Q(O6[8]),
        .R(tx_user_reset));
FDRE \tdm_data_out_reg[9] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I5[8]),
        .Q(O6[9]),
        .R(tx_user_reset));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_unpacker" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_unpacker
   (O1,
    O2,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    Q,
    O3,
    tx_user_reset,
    E,
    axi_c2c_phy_clk);
  output O1;
  output [0:0]O2;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  input [0:0]Q;
  input [51:0]O3;
  input tx_user_reset;
  input [0:0]E;
  input axi_c2c_phy_clk;

  wire [0:0]E;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire [0:0]O2;
  wire [51:0]O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire \n_0_mux_by_4.data_count_reg[0] ;
  wire \n_0_mux_by_4.data_count_reg[1] ;
  wire \n_0_mux_by_4.data_count_reg[2] ;
  wire \n_0_tdm_data_out[10]_i_5 ;
  wire \n_0_tdm_data_out[11]_i_5 ;
  wire \n_0_tdm_data_out[12]_i_5 ;
  wire \n_0_tdm_data_out[13]_i_5 ;
  wire \n_0_tdm_data_out[14]_i_6 ;
  wire \n_0_tdm_data_out[15]_i_6 ;
  wire \n_0_tdm_data_out[16]_i_6 ;
  wire \n_0_tdm_data_out[17]_i_6 ;
  wire \n_0_tdm_data_out[5]_i_5 ;
  wire \n_0_tdm_data_out[6]_i_5 ;
  wire \n_0_tdm_data_out[7]_i_5 ;
  wire \n_0_tdm_data_out[8]_i_5 ;
  wire \n_0_tdm_data_out[9]_i_5 ;
  wire tx_user_reset;

FDSE \mux_by_4.data_count_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(O2),
        .Q(\n_0_mux_by_4.data_count_reg[0] ),
        .S(tx_user_reset));
FDRE \mux_by_4.data_count_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[0] ),
        .Q(\n_0_mux_by_4.data_count_reg[1] ),
        .R(tx_user_reset));
FDRE \mux_by_4.data_count_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[1] ),
        .Q(\n_0_mux_by_4.data_count_reg[2] ),
        .R(tx_user_reset));
FDRE \mux_by_4.data_count_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[2] ),
        .Q(O2),
        .R(tx_user_reset));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[10]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[10]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[5]),
        .I4(O2),
        .I5(O3[44]),
        .O(O10));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[10]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[18]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[31]),
        .O(\n_0_tdm_data_out[10]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[11]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[11]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[6]),
        .I4(O2),
        .I5(O3[45]),
        .O(O9));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[11]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[19]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[32]),
        .O(\n_0_tdm_data_out[11]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[12]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[12]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[7]),
        .I4(O2),
        .I5(O3[46]),
        .O(O8));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[12]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[20]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[33]),
        .O(\n_0_tdm_data_out[12]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[13]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[13]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[8]),
        .I4(O2),
        .I5(O3[47]),
        .O(O7));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[13]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[21]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[34]),
        .O(\n_0_tdm_data_out[13]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[14]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[14]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[9]),
        .I4(O2),
        .I5(O3[48]),
        .O(O6));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[14]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[22]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[35]),
        .O(\n_0_tdm_data_out[14]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[15]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[15]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[10]),
        .I4(O2),
        .I5(O3[49]),
        .O(O5));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[15]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[23]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[36]),
        .O(\n_0_tdm_data_out[15]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[16]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[16]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[11]),
        .I4(O2),
        .I5(O3[50]),
        .O(O4));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[16]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[24]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[37]),
        .O(\n_0_tdm_data_out[16]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[17]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[17]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[12]),
        .I4(O2),
        .I5(O3[51]),
        .O(O1));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[17]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[25]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[38]),
        .O(\n_0_tdm_data_out[17]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[5]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[5]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[0]),
        .I4(O2),
        .I5(O3[39]),
        .O(O15));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[5]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[13]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[26]),
        .O(\n_0_tdm_data_out[5]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[6]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[6]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[1]),
        .I4(O2),
        .I5(O3[40]),
        .O(O14));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[6]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[14]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[27]),
        .O(\n_0_tdm_data_out[6]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[7]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[7]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[2]),
        .I4(O2),
        .I5(O3[41]),
        .O(O13));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[7]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[15]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[28]),
        .O(\n_0_tdm_data_out[7]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[8]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[8]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[3]),
        .I4(O2),
        .I5(O3[42]),
        .O(O12));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[8]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[16]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[29]),
        .O(\n_0_tdm_data_out[8]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[9]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[9]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(O3[4]),
        .I4(O2),
        .I5(O3[43]),
        .O(O11));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[9]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(O3[17]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(O3[30]),
        .O(\n_0_tdm_data_out[9]_i_5 ));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_unpacker" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_unpacker_64
   (O2,
    O1,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    Q,
    I1,
    tx_user_reset,
    E,
    axi_c2c_phy_clk);
  output O2;
  output [0:0]O1;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  input [0:0]Q;
  input [51:0]I1;
  input tx_user_reset;
  input [0:0]E;
  input axi_c2c_phy_clk;

  wire [0:0]E;
  wire [51:0]I1;
  wire [0:0]O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire \n_0_mux_by_4.data_count_reg[0] ;
  wire \n_0_mux_by_4.data_count_reg[1] ;
  wire \n_0_mux_by_4.data_count_reg[2] ;
  wire \n_0_tdm_data_out[10]_i_6 ;
  wire \n_0_tdm_data_out[11]_i_6 ;
  wire \n_0_tdm_data_out[12]_i_6 ;
  wire \n_0_tdm_data_out[13]_i_6 ;
  wire \n_0_tdm_data_out[14]_i_7 ;
  wire \n_0_tdm_data_out[15]_i_7 ;
  wire \n_0_tdm_data_out[16]_i_5 ;
  wire \n_0_tdm_data_out[17]_i_5 ;
  wire \n_0_tdm_data_out[5]_i_6 ;
  wire \n_0_tdm_data_out[6]_i_6 ;
  wire \n_0_tdm_data_out[7]_i_6 ;
  wire \n_0_tdm_data_out[8]_i_6 ;
  wire \n_0_tdm_data_out[9]_i_6 ;
  wire tx_user_reset;

FDSE \mux_by_4.data_count_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(O1),
        .Q(\n_0_mux_by_4.data_count_reg[0] ),
        .S(tx_user_reset));
FDRE \mux_by_4.data_count_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[0] ),
        .Q(\n_0_mux_by_4.data_count_reg[1] ),
        .R(tx_user_reset));
FDRE \mux_by_4.data_count_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[1] ),
        .Q(\n_0_mux_by_4.data_count_reg[2] ),
        .R(tx_user_reset));
FDRE \mux_by_4.data_count_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[2] ),
        .Q(O1),
        .R(tx_user_reset));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[10]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[10]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[5]),
        .I4(O1),
        .I5(I1[44]),
        .O(O9));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[10]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[18]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[31]),
        .O(\n_0_tdm_data_out[10]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[11]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[11]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[6]),
        .I4(O1),
        .I5(I1[45]),
        .O(O8));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[11]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[19]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[32]),
        .O(\n_0_tdm_data_out[11]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[12]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[12]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[7]),
        .I4(O1),
        .I5(I1[46]),
        .O(O7));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[12]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[20]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[33]),
        .O(\n_0_tdm_data_out[12]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[13]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[13]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[8]),
        .I4(O1),
        .I5(I1[47]),
        .O(O6));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[13]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[21]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[34]),
        .O(\n_0_tdm_data_out[13]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[14]_i_4 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[14]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[9]),
        .I4(O1),
        .I5(I1[48]),
        .O(O5));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[14]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[22]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[35]),
        .O(\n_0_tdm_data_out[14]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[15]_i_4 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[15]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[10]),
        .I4(O1),
        .I5(I1[49]),
        .O(O4));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[15]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[23]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[36]),
        .O(\n_0_tdm_data_out[15]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[16]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[16]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[11]),
        .I4(O1),
        .I5(I1[50]),
        .O(O3));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[16]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[24]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[37]),
        .O(\n_0_tdm_data_out[16]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[17]_i_2 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[17]_i_5 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[12]),
        .I4(O1),
        .I5(I1[51]),
        .O(O2));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[17]_i_5 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[25]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[38]),
        .O(\n_0_tdm_data_out[17]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[5]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[5]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[0]),
        .I4(O1),
        .I5(I1[39]),
        .O(O14));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[5]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[13]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[26]),
        .O(\n_0_tdm_data_out[5]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[6]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[6]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[1]),
        .I4(O1),
        .I5(I1[40]),
        .O(O13));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[6]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[14]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[27]),
        .O(\n_0_tdm_data_out[6]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[7]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[7]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[2]),
        .I4(O1),
        .I5(I1[41]),
        .O(O12));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[7]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[15]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[28]),
        .O(\n_0_tdm_data_out[7]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[8]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[8]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[3]),
        .I4(O1),
        .I5(I1[42]),
        .O(O11));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[8]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[16]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[29]),
        .O(\n_0_tdm_data_out[8]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[9]_i_3 
       (.I0(Q),
        .I1(\n_0_tdm_data_out[9]_i_6 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[4]),
        .I4(O1),
        .I5(I1[43]),
        .O(O10));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[9]_i_6 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[17]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[30]),
        .O(\n_0_tdm_data_out[9]_i_6 ));
endmodule

(* ORIG_REF_NAME = "axi_chip2chip_v4_2_unpacker" *) 
module axi_chip2chip_0_axi_chip2chip_v4_2_unpacker__parameterized0
   (O2,
    Q,
    O3,
    O4,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O5,
    I1,
    tx_user_reset,
    E,
    axi_c2c_phy_clk);
  output O2;
  output [0:0]Q;
  output O3;
  output O4;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  input [0:0]O5;
  input [43:0]I1;
  input tx_user_reset;
  input [0:0]E;
  input axi_c2c_phy_clk;

  wire [0:0]E;
  wire [43:0]I1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O2;
  wire O3;
  wire O4;
  wire [0:0]O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire \n_0_mux_by_4.data_count_reg[0] ;
  wire \n_0_mux_by_4.data_count_reg[1] ;
  wire \n_0_mux_by_4.data_count_reg[2] ;
  wire \n_0_tdm_data_out[10]_i_7 ;
  wire \n_0_tdm_data_out[11]_i_7 ;
  wire \n_0_tdm_data_out[12]_i_7 ;
  wire \n_0_tdm_data_out[13]_i_7 ;
  wire \n_0_tdm_data_out[14]_i_8 ;
  wire \n_0_tdm_data_out[15]_i_8 ;
  wire \n_0_tdm_data_out[5]_i_7 ;
  wire \n_0_tdm_data_out[6]_i_7 ;
  wire \n_0_tdm_data_out[7]_i_7 ;
  wire \n_0_tdm_data_out[8]_i_7 ;
  wire \n_0_tdm_data_out[9]_i_7 ;
  wire tx_user_reset;

FDSE \mux_by_4.data_count_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(Q),
        .Q(\n_0_mux_by_4.data_count_reg[0] ),
        .S(tx_user_reset));
FDRE \mux_by_4.data_count_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[0] ),
        .Q(\n_0_mux_by_4.data_count_reg[1] ),
        .R(tx_user_reset));
FDRE \mux_by_4.data_count_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[1] ),
        .Q(\n_0_mux_by_4.data_count_reg[2] ),
        .R(tx_user_reset));
FDRE \mux_by_4.data_count_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(\n_0_mux_by_4.data_count_reg[2] ),
        .Q(Q),
        .R(tx_user_reset));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[10]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[10]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[5]),
        .I4(Q),
        .I5(I1[38]),
        .O(O8));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[10]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[16]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[27]),
        .O(\n_0_tdm_data_out[10]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[11]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[11]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[6]),
        .I4(Q),
        .I5(I1[39]),
        .O(O7));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[11]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[17]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[28]),
        .O(\n_0_tdm_data_out[11]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[12]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[12]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[7]),
        .I4(Q),
        .I5(I1[40]),
        .O(O6));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[12]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[18]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[29]),
        .O(\n_0_tdm_data_out[12]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[13]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[13]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[8]),
        .I4(Q),
        .I5(I1[41]),
        .O(O4));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[13]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[19]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[30]),
        .O(\n_0_tdm_data_out[13]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[14]_i_5 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[14]_i_8 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[9]),
        .I4(Q),
        .I5(I1[42]),
        .O(O3));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[14]_i_8 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[20]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[31]),
        .O(\n_0_tdm_data_out[14]_i_8 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[15]_i_5 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[15]_i_8 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[10]),
        .I4(Q),
        .I5(I1[43]),
        .O(O2));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[15]_i_8 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[21]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[32]),
        .O(\n_0_tdm_data_out[15]_i_8 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[5]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[5]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[0]),
        .I4(Q),
        .I5(I1[33]),
        .O(O13));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[5]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[11]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[22]),
        .O(\n_0_tdm_data_out[5]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[6]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[6]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[1]),
        .I4(Q),
        .I5(I1[34]),
        .O(O12));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[6]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[12]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[23]),
        .O(\n_0_tdm_data_out[6]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[7]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[7]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[2]),
        .I4(Q),
        .I5(I1[35]),
        .O(O11));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[7]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[13]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[24]),
        .O(\n_0_tdm_data_out[7]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[8]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[8]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[3]),
        .I4(Q),
        .I5(I1[36]),
        .O(O10));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[8]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[14]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[25]),
        .O(\n_0_tdm_data_out[8]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
     \tdm_data_out[9]_i_4 
       (.I0(O5),
        .I1(\n_0_tdm_data_out[9]_i_7 ),
        .I2(\n_0_mux_by_4.data_count_reg[0] ),
        .I3(I1[4]),
        .I4(Q),
        .I5(I1[37]),
        .O(O9));
LUT4 #(
    .INIT(16'hF888)) 
     \tdm_data_out[9]_i_7 
       (.I0(\n_0_mux_by_4.data_count_reg[1] ),
        .I1(I1[15]),
        .I2(\n_0_mux_by_4.data_count_reg[2] ),
        .I3(I1[26]),
        .O(\n_0_tdm_data_out[9]_i_7 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module axi_chip2chip_0_blk_mem_gen_generic_cstr
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_awaddr,
    DIADI);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;

  wire [51:0]D;
  wire [17:0]DIADI;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.D(D),
        .DIADI(DIADI),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module axi_chip2chip_0_blk_mem_gen_generic_cstr_77
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_araddr,
    I1);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_araddr;
  input [17:0]I1;

  wire [51:0]D;
  wire [17:0]I1;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_prim_width_78 \ramloop[0].ram.r 
       (.D(D),
        .I1(I1),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module axi_chip2chip_0_blk_mem_gen_generic_cstr__parameterized0
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O2,
    O3,
    s_axi_wdata,
    I2);
  output [43:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [8:0]O2;
  input [8:0]O3;
  input [31:0]s_axi_wdata;
  input [8:0]I2;

  wire [43:0]D;
  wire [8:0]I2;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_prim_width__parameterized0 \ramloop[0].ram.r 
       (.D(D),
        .I2(I2),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module axi_chip2chip_0_blk_mem_gen_generic_cstr__parameterized0_23
   (D,
    tmp_ram_rd_en,
    s_aclk,
    Q,
    E,
    clk_ph_out,
    O1,
    O5,
    pack_data_out,
    I1);
  output [40:0]D;
  input tmp_ram_rd_en;
  input s_aclk;
  input [0:0]Q;
  input [0:0]E;
  input clk_ph_out;
  input [8:0]O1;
  input [8:0]O5;
  input [32:0]pack_data_out;
  input [10:0]I1;

  wire [40:0]D;
  wire [0:0]E;
  wire [10:0]I1;
  wire [8:0]O1;
  wire [8:0]O5;
  wire [0:0]Q;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire s_aclk;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_prim_width__parameterized0_24 \ramloop[0].ram.r 
       (.D(D),
        .E(E),
        .I1(I1),
        .O1(O1),
        .O5(O5),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .s_aclk(s_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module axi_chip2chip_0_blk_mem_gen_prim_width
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_awaddr,
    DIADI);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;

  wire [51:0]D;
  wire [17:0]DIADI;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.D(D),
        .DIADI(DIADI),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module axi_chip2chip_0_blk_mem_gen_prim_width_78
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_araddr,
    I1);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_araddr;
  input [17:0]I1;

  wire [51:0]D;
  wire [17:0]I1;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_prim_wrapper_79 \prim_noinit.ram 
       (.D(D),
        .I1(I1),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module axi_chip2chip_0_blk_mem_gen_prim_width__parameterized0
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O2,
    O3,
    s_axi_wdata,
    I2);
  output [43:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [8:0]O2;
  input [8:0]O3;
  input [31:0]s_axi_wdata;
  input [8:0]I2;

  wire [43:0]D;
  wire [8:0]I2;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.D(D),
        .I2(I2),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module axi_chip2chip_0_blk_mem_gen_prim_width__parameterized0_24
   (D,
    tmp_ram_rd_en,
    s_aclk,
    Q,
    E,
    clk_ph_out,
    O1,
    O5,
    pack_data_out,
    I1);
  output [40:0]D;
  input tmp_ram_rd_en;
  input s_aclk;
  input [0:0]Q;
  input [0:0]E;
  input clk_ph_out;
  input [8:0]O1;
  input [8:0]O5;
  input [32:0]pack_data_out;
  input [10:0]I1;

  wire [40:0]D;
  wire [0:0]E;
  wire [10:0]I1;
  wire [8:0]O1;
  wire [8:0]O5;
  wire [0:0]Q;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire s_aclk;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_prim_wrapper__parameterized0_25 \prim_noinit.ram 
       (.D(D),
        .E(E),
        .I1(I1),
        .O1(O1),
        .O5(O5),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .s_aclk(s_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module axi_chip2chip_0_blk_mem_gen_prim_wrapper
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_awaddr,
    DIADI);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;

  wire [51:0]D;
  wire [17:0]DIADI;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire \n_12_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_20_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_21_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_28_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_4_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_5_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_68_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_69_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_70_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_71_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire tmp_ram_rd_en;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,1'b0,O5,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,O4,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(axi_c2c_phy_clk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,s_axi_awaddr[7:2],1'b0,s_axi_awaddr[1:0],DIADI[17:13],1'b0,1'b0,DIADI[12:7],1'b0,DIADI[6:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[31:28],1'b0,s_axi_awaddr[27:21],1'b0,1'b0,s_axi_awaddr[20:15],1'b0,s_axi_awaddr[14:8]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\n_4_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_5_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[25:20],\n_12_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[19:13],\n_20_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_21_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[12:7],\n_28_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[6:0]}),
        .DOBDO({\n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[51:46],\n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[45:39],\n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[38:33],\n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[32:26]}),
        .DOPADOP({\n_68_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_69_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_70_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_71_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .DOPBDOP({\n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(tmp_ram_rd_en),
        .ENBWREN(WEBWE),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(Q),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module axi_chip2chip_0_blk_mem_gen_prim_wrapper_79
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_araddr,
    I1);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_araddr;
  input [17:0]I1;

  wire [51:0]D;
  wire [17:0]I1;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire \n_12_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_20_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_21_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_28_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_4_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_5_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_68_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_69_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_70_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_71_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire tmp_ram_rd_en;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,1'b0,O5,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,O4,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(axi_c2c_phy_clk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,s_axi_araddr[7:2],1'b0,s_axi_araddr[1:0],I1[17:13],1'b0,1'b0,I1[12:7],1'b0,I1[6:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,s_axi_araddr[31:28],1'b0,s_axi_araddr[27:21],1'b0,1'b0,s_axi_araddr[20:15],1'b0,s_axi_araddr[14:8]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\n_4_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_5_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[25:20],\n_12_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[19:13],\n_20_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_21_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[12:7],\n_28_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[6:0]}),
        .DOBDO({\n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[51:46],\n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[45:39],\n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[38:33],\n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[32:26]}),
        .DOPADOP({\n_68_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_69_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_70_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_71_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .DOPBDOP({\n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(tmp_ram_rd_en),
        .ENBWREN(WEBWE),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(Q),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module axi_chip2chip_0_blk_mem_gen_prim_wrapper__parameterized0
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O2,
    O3,
    s_axi_wdata,
    I2);
  output [43:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [8:0]O2;
  input [8:0]O3;
  input [31:0]s_axi_wdata;
  input [8:0]I2;

  wire [43:0]D;
  wire [8:0]I2;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire \n_12_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_13_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_20_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_21_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_22_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_28_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_29_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_38_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_45_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_4_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_54_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_5_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_68_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_69_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_6_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_70_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_71_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O2,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O3,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(axi_c2c_phy_clk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,s_axi_wdata[12:8],1'b0,1'b0,s_axi_wdata[7:2],1'b0,1'b0,1'b0,s_axi_wdata[1:0],I2[8:6],1'b0,1'b0,I2[5:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[31:30],1'b0,1'b0,s_axi_wdata[29:24],1'b0,1'b0,1'b0,s_axi_wdata[23:19],1'b0,1'b0,s_axi_wdata[18:13]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\n_4_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_5_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_6_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[21:17],\n_12_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_13_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[16:11],\n_20_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_21_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_22_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[10:6],\n_28_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_29_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[5:0]}),
        .DOBDO({\n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_38_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[43:39],\n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_45_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[38:33],\n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_54_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[32:28],\n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[27:22]}),
        .DOPADOP({\n_68_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_69_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_70_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_71_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .DOPBDOP({\n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(tmp_ram_rd_en),
        .ENBWREN(WEBWE),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(Q),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE,WEBWE}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module axi_chip2chip_0_blk_mem_gen_prim_wrapper__parameterized0_25
   (D,
    tmp_ram_rd_en,
    s_aclk,
    Q,
    E,
    clk_ph_out,
    O1,
    O5,
    pack_data_out,
    I1);
  output [40:0]D;
  input tmp_ram_rd_en;
  input s_aclk;
  input [0:0]Q;
  input [0:0]E;
  input clk_ph_out;
  input [8:0]O1;
  input [8:0]O5;
  input [32:0]pack_data_out;
  input [10:0]I1;

  wire [40:0]D;
  wire [0:0]E;
  wire [10:0]I1;
  wire [8:0]O1;
  wire [8:0]O5;
  wire [0:0]Q;
  wire clk_ph_out;
  wire [43:41]doutb;
  wire \n_12_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_13_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_20_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_21_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_22_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_28_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_29_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_38_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_45_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_4_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_54_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_5_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_68_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_69_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_6_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_70_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_71_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire \n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ;
  wire [32:0]pack_data_out;
  wire s_aclk;
  wire tmp_ram_rd_en;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O5,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(clk_ph_out),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,pack_data_out[21:17],1'b0,1'b0,pack_data_out[16:11],1'b0,1'b0,1'b0,pack_data_out[10:6],1'b0,1'b0,pack_data_out[5:0]}),
        .DIBDI({1'b0,1'b0,1'b0,I1[10:6],1'b0,1'b0,I1[5:0],1'b0,1'b0,1'b0,pack_data_out[32:28],1'b0,1'b0,pack_data_out[27:22]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\n_4_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_5_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_6_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[21:17],\n_12_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_13_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[16:11],\n_20_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_21_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_22_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[10:6],\n_28_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_29_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[5:0]}),
        .DOBDO({\n_36_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_37_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_38_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,doutb,D[40:39],\n_44_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_45_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[38:33],\n_52_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_53_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_54_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[32:28],\n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,D[27:22]}),
        .DOPADOP({\n_68_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_69_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_70_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_71_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .DOPBDOP({\n_72_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_73_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_74_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram ,\n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(tmp_ram_rd_en),
        .ENBWREN(E),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(Q),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({E,E,E,E,E,E,E,E}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module axi_chip2chip_0_blk_mem_gen_top
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_awaddr,
    DIADI);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;

  wire [51:0]D;
  wire [17:0]DIADI;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .DIADI(DIADI),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module axi_chip2chip_0_blk_mem_gen_top_76
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_araddr,
    I1);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_araddr;
  input [17:0]I1;

  wire [51:0]D;
  wire [17:0]I1;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_generic_cstr_77 \valid.cstr 
       (.D(D),
        .I1(I1),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module axi_chip2chip_0_blk_mem_gen_top__parameterized0
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O2,
    O3,
    s_axi_wdata,
    I2);
  output [43:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [8:0]O2;
  input [8:0]O3;
  input [31:0]s_axi_wdata;
  input [8:0]I2;

  wire [43:0]D;
  wire [8:0]I2;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_generic_cstr__parameterized0 \valid.cstr 
       (.D(D),
        .I2(I2),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module axi_chip2chip_0_blk_mem_gen_top__parameterized0_22
   (D,
    tmp_ram_rd_en,
    s_aclk,
    Q,
    E,
    clk_ph_out,
    O1,
    O5,
    pack_data_out,
    I1);
  output [40:0]D;
  input tmp_ram_rd_en;
  input s_aclk;
  input [0:0]Q;
  input [0:0]E;
  input clk_ph_out;
  input [8:0]O1;
  input [8:0]O5;
  input [32:0]pack_data_out;
  input [10:0]I1;

  wire [40:0]D;
  wire [0:0]E;
  wire [10:0]I1;
  wire [8:0]O1;
  wire [8:0]O5;
  wire [0:0]Q;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire s_aclk;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_generic_cstr__parameterized0_23 \valid.cstr 
       (.D(D),
        .E(E),
        .I1(I1),
        .O1(O1),
        .O5(O5),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .s_aclk(s_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module axi_chip2chip_0_blk_mem_gen_v8_2__parameterized0
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_awaddr,
    DIADI);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;

  wire [51:0]D;
  wire [17:0]DIADI;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_v8_2_synth inst_blk_mem_gen
       (.D(D),
        .DIADI(DIADI),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module axi_chip2chip_0_blk_mem_gen_v8_2__parameterized0_74
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_araddr,
    I1);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_araddr;
  input [17:0]I1;

  wire [51:0]D;
  wire [17:0]I1;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_v8_2_synth_75 inst_blk_mem_gen
       (.D(D),
        .I1(I1),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module axi_chip2chip_0_blk_mem_gen_v8_2__parameterized2
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O2,
    O3,
    s_axi_wdata,
    I2);
  output [43:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [8:0]O2;
  input [8:0]O3;
  input [31:0]s_axi_wdata;
  input [8:0]I2;

  wire [43:0]D;
  wire [8:0]I2;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_v8_2_synth__parameterized0 inst_blk_mem_gen
       (.D(D),
        .I2(I2),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module axi_chip2chip_0_blk_mem_gen_v8_2__parameterized2_20
   (D,
    tmp_ram_rd_en,
    s_aclk,
    Q,
    E,
    clk_ph_out,
    O1,
    O5,
    pack_data_out,
    I1);
  output [40:0]D;
  input tmp_ram_rd_en;
  input s_aclk;
  input [0:0]Q;
  input [0:0]E;
  input clk_ph_out;
  input [8:0]O1;
  input [8:0]O5;
  input [32:0]pack_data_out;
  input [10:0]I1;

  wire [40:0]D;
  wire [0:0]E;
  wire [10:0]I1;
  wire [8:0]O1;
  wire [8:0]O5;
  wire [0:0]Q;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire s_aclk;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_v8_2_synth__parameterized0_21 inst_blk_mem_gen
       (.D(D),
        .E(E),
        .I1(I1),
        .O1(O1),
        .O5(O5),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .s_aclk(s_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module axi_chip2chip_0_blk_mem_gen_v8_2_synth
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_awaddr,
    DIADI);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;

  wire [51:0]D;
  wire [17:0]DIADI;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.D(D),
        .DIADI(DIADI),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module axi_chip2chip_0_blk_mem_gen_v8_2_synth_75
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_araddr,
    I1);
  output [51:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_araddr;
  input [17:0]I1;

  wire [51:0]D;
  wire [17:0]I1;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_top_76 \gnativebmg.native_blk_mem_gen 
       (.D(D),
        .I1(I1),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module axi_chip2chip_0_blk_mem_gen_v8_2_synth__parameterized0
   (D,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O2,
    O3,
    s_axi_wdata,
    I2);
  output [43:0]D;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [8:0]O2;
  input [8:0]O3;
  input [31:0]s_axi_wdata;
  input [8:0]I2;

  wire [43:0]D;
  wire [8:0]I2;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_top__parameterized0 \gnativebmg.native_blk_mem_gen 
       (.D(D),
        .I2(I2),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module axi_chip2chip_0_blk_mem_gen_v8_2_synth__parameterized0_21
   (D,
    tmp_ram_rd_en,
    s_aclk,
    Q,
    E,
    clk_ph_out,
    O1,
    O5,
    pack_data_out,
    I1);
  output [40:0]D;
  input tmp_ram_rd_en;
  input s_aclk;
  input [0:0]Q;
  input [0:0]E;
  input clk_ph_out;
  input [8:0]O1;
  input [8:0]O5;
  input [32:0]pack_data_out;
  input [10:0]I1;

  wire [40:0]D;
  wire [0:0]E;
  wire [10:0]I1;
  wire [8:0]O1;
  wire [8:0]O5;
  wire [0:0]Q;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire s_aclk;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_top__parameterized0_22 \gnativebmg.native_blk_mem_gen 
       (.D(D),
        .E(E),
        .I1(I1),
        .O1(O1),
        .O5(O5),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .s_aclk(s_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module axi_chip2chip_0_clk_x_pntrs
   (O1,
    O2,
    O3,
    O4,
    Q,
    E,
    I1,
    I2,
    I3,
    I4,
    s_aclk,
    I5,
    clk_ph_out,
    I6);
  output O1;
  output [7:0]O2;
  output O3;
  output [7:0]O4;
  input [4:0]Q;
  input [0:0]E;
  input I1;
  input [7:0]I2;
  input [7:0]I3;
  input [7:0]I4;
  input s_aclk;
  input [0:0]I5;
  input clk_ph_out;
  input [0:0]I6;

  wire [0:0]E;
  wire I1;
  wire [7:0]I2;
  wire [7:0]I3;
  wire [7:0]I4;
  wire [0:0]I5;
  wire [0:0]I6;
  wire O1;
  wire [7:0]O2;
  wire O3;
  wire [7:0]O4;
  wire [4:0]Q;
  wire [7:0]Q_0;
  wire clk_ph_out;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].rd_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_0_gsync_stage[3].rd_stg_inst ;
  wire \n_0_gsync_stage[3].wr_stg_inst ;
  wire n_0_ram_empty_fb_i_i_6__1;
  wire n_0_ram_empty_fb_i_i_7__1;
  wire n_0_ram_full_fb_i_i_6;
  wire n_0_ram_full_fb_i_i_7;
  wire \n_0_rd_pntr_gc[0]_i_1 ;
  wire \n_0_rd_pntr_gc[1]_i_1 ;
  wire \n_0_rd_pntr_gc[2]_i_1 ;
  wire \n_0_rd_pntr_gc[3]_i_1 ;
  wire \n_0_rd_pntr_gc[4]_i_1 ;
  wire \n_0_rd_pntr_gc[5]_i_1 ;
  wire \n_0_rd_pntr_gc[6]_i_1 ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].rd_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gsync_stage[3].wr_stg_inst ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].rd_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gsync_stage[3].rd_stg_inst ;
  wire \n_2_gsync_stage[3].wr_stg_inst ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].rd_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gsync_stage[3].rd_stg_inst ;
  wire \n_3_gsync_stage[3].wr_stg_inst ;
  wire \n_4_gsync_stage[1].wr_stg_inst ;
  wire \n_4_gsync_stage[2].rd_stg_inst ;
  wire \n_4_gsync_stage[2].wr_stg_inst ;
  wire \n_4_gsync_stage[3].rd_stg_inst ;
  wire \n_4_gsync_stage[3].wr_stg_inst ;
  wire \n_5_gsync_stage[1].wr_stg_inst ;
  wire \n_5_gsync_stage[2].rd_stg_inst ;
  wire \n_5_gsync_stage[2].wr_stg_inst ;
  wire \n_5_gsync_stage[3].rd_stg_inst ;
  wire \n_5_gsync_stage[3].wr_stg_inst ;
  wire \n_6_gsync_stage[1].wr_stg_inst ;
  wire \n_6_gsync_stage[2].rd_stg_inst ;
  wire \n_6_gsync_stage[2].wr_stg_inst ;
  wire \n_6_gsync_stage[3].rd_stg_inst ;
  wire \n_6_gsync_stage[3].wr_stg_inst ;
  wire \n_7_gsync_stage[1].wr_stg_inst ;
  wire \n_7_gsync_stage[2].rd_stg_inst ;
  wire \n_7_gsync_stage[2].wr_stg_inst ;
  wire \n_7_gsync_stage[3].rd_stg_inst ;
  wire \n_7_gsync_stage[3].wr_stg_inst ;
  wire [6:0]p_0_in;
  wire p_0_in0;
  wire [7:0]rd_pntr_gc;
  wire s_aclk;
  wire [7:0]wr_pntr_gc;

axi_chip2chip_0_synchronizer_ff \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I5(I5),
        .Q(Q_0),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff_43 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I6(I6),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst }),
        .clk_ph_out(clk_ph_out));
axi_chip2chip_0_synchronizer_ff_44 \gsync_stage[2].rd_stg_inst 
       (.D(Q_0),
        .I5(I5),
        .Q({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst }),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff_45 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst }),
        .I6(I6),
        .Q({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst }),
        .clk_ph_out(clk_ph_out));
axi_chip2chip_0_synchronizer_ff_46 \gsync_stage[3].rd_stg_inst 
       (.D({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst }),
        .I5(I5),
        .O1({p_0_in0,\n_2_gsync_stage[3].rd_stg_inst ,\n_3_gsync_stage[3].rd_stg_inst ,\n_4_gsync_stage[3].rd_stg_inst ,\n_5_gsync_stage[3].rd_stg_inst ,\n_6_gsync_stage[3].rd_stg_inst ,\n_7_gsync_stage[3].rd_stg_inst }),
        .Q(\n_0_gsync_stage[3].rd_stg_inst ),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff_47 \gsync_stage[3].wr_stg_inst 
       (.D({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst }),
        .I6(I6),
        .O1({\n_1_gsync_stage[3].wr_stg_inst ,\n_2_gsync_stage[3].wr_stg_inst ,\n_3_gsync_stage[3].wr_stg_inst ,\n_4_gsync_stage[3].wr_stg_inst ,\n_5_gsync_stage[3].wr_stg_inst ,\n_6_gsync_stage[3].wr_stg_inst ,\n_7_gsync_stage[3].wr_stg_inst }),
        .Q(\n_0_gsync_stage[3].wr_stg_inst ),
        .clk_ph_out(clk_ph_out));
LUT6 #(
    .INIT(64'h8200000000000000)) 
     ram_empty_fb_i_i_3__1
       (.I0(n_0_ram_empty_fb_i_i_6__1),
        .I1(Q[0]),
        .I2(O2[0]),
        .I3(E),
        .I4(n_0_ram_empty_fb_i_i_7__1),
        .I5(I1),
        .O(O1));
LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_6__1
       (.I0(O2[2]),
        .I1(Q[2]),
        .I2(O2[1]),
        .I3(Q[1]),
        .O(n_0_ram_empty_fb_i_i_6__1));
LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_7__1
       (.I0(O2[4]),
        .I1(Q[4]),
        .I2(O2[3]),
        .I3(Q[3]),
        .O(n_0_ram_empty_fb_i_i_7__1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
     ram_full_fb_i_i_4
       (.I0(I2[2]),
        .I1(O4[2]),
        .I2(I2[3]),
        .I3(O4[3]),
        .I4(n_0_ram_full_fb_i_i_6),
        .I5(n_0_ram_full_fb_i_i_7),
        .O(O3));
LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
     ram_full_fb_i_i_6
       (.I0(O4[6]),
        .I1(I2[6]),
        .I2(I2[4]),
        .I3(O4[4]),
        .I4(I2[5]),
        .I5(O4[5]),
        .O(n_0_ram_full_fb_i_i_6));
LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
     ram_full_fb_i_i_7
       (.I0(O4[0]),
        .I1(I2[0]),
        .I2(I2[7]),
        .I3(O4[7]),
        .I4(I2[1]),
        .I5(O4[1]),
        .O(n_0_ram_full_fb_i_i_7));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_7_gsync_stage[3].wr_stg_inst ),
        .Q(O4[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_6_gsync_stage[3].wr_stg_inst ),
        .Q(O4[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_5_gsync_stage[3].wr_stg_inst ),
        .Q(O4[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_4_gsync_stage[3].wr_stg_inst ),
        .Q(O4[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_3_gsync_stage[3].wr_stg_inst ),
        .Q(O4[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_2_gsync_stage[3].wr_stg_inst ),
        .Q(O4[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_1_gsync_stage[3].wr_stg_inst ),
        .Q(O4[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_gsync_stage[3].wr_stg_inst ),
        .Q(O4[7]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(I4[0]),
        .I1(I4[1]),
        .O(\n_0_rd_pntr_gc[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(I4[1]),
        .I1(I4[2]),
        .O(\n_0_rd_pntr_gc[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(I4[2]),
        .I1(I4[3]),
        .O(\n_0_rd_pntr_gc[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[3]_i_1 
       (.I0(I4[3]),
        .I1(I4[4]),
        .O(\n_0_rd_pntr_gc[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[4]_i_1 
       (.I0(I4[4]),
        .I1(I4[5]),
        .O(\n_0_rd_pntr_gc[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[5]_i_1 
       (.I0(I4[5]),
        .I1(I4[6]),
        .O(\n_0_rd_pntr_gc[5]_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[6]_i_1 
       (.I0(I4[6]),
        .I1(I4[7]),
        .O(\n_0_rd_pntr_gc[6]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_rd_pntr_gc[0]_i_1 ),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_rd_pntr_gc[1]_i_1 ),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_rd_pntr_gc[2]_i_1 ),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_rd_pntr_gc[3]_i_1 ),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_rd_pntr_gc[4]_i_1 ),
        .Q(rd_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_rd_pntr_gc[5]_i_1 ),
        .Q(rd_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_rd_pntr_gc[6]_i_1 ),
        .Q(rd_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I4[7]),
        .Q(rd_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_7_gsync_stage[3].rd_stg_inst ),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_6_gsync_stage[3].rd_stg_inst ),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_5_gsync_stage[3].rd_stg_inst ),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_4_gsync_stage[3].rd_stg_inst ),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_3_gsync_stage[3].rd_stg_inst ),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_2_gsync_stage[3].rd_stg_inst ),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(p_0_in0),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(\n_0_gsync_stage[3].rd_stg_inst ),
        .Q(O2[7]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I3[0]),
        .I1(I3[1]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I3[1]),
        .I1(I3[2]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I3[2]),
        .I1(I3[3]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[3]_i_1 
       (.I0(I3[3]),
        .I1(I3[4]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[4]_i_1 
       (.I0(I3[4]),
        .I1(I3[5]),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[5]_i_1 
       (.I0(I3[5]),
        .I1(I3[6]),
        .O(p_0_in[5]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[6]_i_1 
       (.I0(I3[6]),
        .I1(I3[7]),
        .O(p_0_in[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[3]),
        .Q(wr_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[4]),
        .Q(wr_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[5]),
        .Q(wr_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in[6]),
        .Q(wr_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I3[7]),
        .Q(wr_pntr_gc[7]));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module axi_chip2chip_0_clk_x_pntrs_48
   (O1,
    O2,
    O3,
    O4,
    ram_full_i,
    I1,
    Q,
    E,
    I2,
    I3,
    I4,
    rst_full_gen_i,
    I5,
    I6,
    I7,
    axi_c2c_phy_clk,
    I8,
    s_aclk,
    I9);
  output O1;
  output [7:0]O2;
  output [0:0]O3;
  output O4;
  output ram_full_i;
  input I1;
  input [4:0]Q;
  input [0:0]E;
  input I2;
  input [7:0]I3;
  input [6:0]I4;
  input rst_full_gen_i;
  input I5;
  input [7:0]I6;
  input [7:0]I7;
  input axi_c2c_phy_clk;
  input [0:0]I8;
  input s_aclk;
  input [0:0]I9;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire [7:0]I3;
  wire [6:0]I4;
  wire I5;
  wire [7:0]I6;
  wire [7:0]I7;
  wire [0:0]I8;
  wire [0:0]I9;
  wire O1;
  wire [7:0]O2;
  wire [0:0]O3;
  wire O4;
  wire [4:0]Q;
  wire [7:0]Q_0;
  wire axi_c2c_phy_clk;
  wire \gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].rd_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_0_gsync_stage[3].rd_stg_inst ;
  wire \n_0_gsync_stage[3].wr_stg_inst ;
  wire n_0_ram_empty_fb_i_i_2;
  wire n_0_ram_empty_fb_i_i_4;
  wire n_0_ram_empty_fb_i_i_5;
  wire n_0_ram_full_i_i_2;
  wire n_0_ram_full_i_i_6;
  wire n_0_ram_full_i_i_7;
  wire \n_0_rd_pntr_gc[0]_i_1 ;
  wire \n_0_rd_pntr_gc[1]_i_1 ;
  wire \n_0_rd_pntr_gc[2]_i_1 ;
  wire \n_0_rd_pntr_gc[3]_i_1 ;
  wire \n_0_rd_pntr_gc[4]_i_1 ;
  wire \n_0_rd_pntr_gc[5]_i_1 ;
  wire \n_0_rd_pntr_gc[6]_i_1 ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].rd_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gsync_stage[3].wr_stg_inst ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].rd_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gsync_stage[3].rd_stg_inst ;
  wire \n_2_gsync_stage[3].wr_stg_inst ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].rd_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gsync_stage[3].rd_stg_inst ;
  wire \n_3_gsync_stage[3].wr_stg_inst ;
  wire \n_4_gsync_stage[1].wr_stg_inst ;
  wire \n_4_gsync_stage[2].rd_stg_inst ;
  wire \n_4_gsync_stage[2].wr_stg_inst ;
  wire \n_4_gsync_stage[3].rd_stg_inst ;
  wire \n_4_gsync_stage[3].wr_stg_inst ;
  wire \n_5_gsync_stage[1].wr_stg_inst ;
  wire \n_5_gsync_stage[2].rd_stg_inst ;
  wire \n_5_gsync_stage[2].wr_stg_inst ;
  wire \n_5_gsync_stage[3].rd_stg_inst ;
  wire \n_5_gsync_stage[3].wr_stg_inst ;
  wire \n_6_gsync_stage[1].wr_stg_inst ;
  wire \n_6_gsync_stage[2].rd_stg_inst ;
  wire \n_6_gsync_stage[2].wr_stg_inst ;
  wire \n_6_gsync_stage[3].rd_stg_inst ;
  wire \n_6_gsync_stage[3].wr_stg_inst ;
  wire \n_7_gsync_stage[1].wr_stg_inst ;
  wire \n_7_gsync_stage[2].rd_stg_inst ;
  wire \n_7_gsync_stage[2].wr_stg_inst ;
  wire \n_7_gsync_stage[3].rd_stg_inst ;
  wire \n_7_gsync_stage[3].wr_stg_inst ;
  wire [6:0]p_0_in;
  wire p_0_in0;
  wire [7:1]p_0_out;
  wire ram_full_i;
  wire [7:0]rd_pntr_gc;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [7:0]wr_pntr_gc;

axi_chip2chip_0_synchronizer_ff_57 \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I8(I8),
        .Q(Q_0),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff_58 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I9(I9),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst }),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff_59 \gsync_stage[2].rd_stg_inst 
       (.D(Q_0),
        .I8(I8),
        .Q({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst }),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff_60 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst }),
        .I9(I9),
        .Q({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst }),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff_61 \gsync_stage[3].rd_stg_inst 
       (.D({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst }),
        .I8(I8),
        .O1({p_0_in0,\n_2_gsync_stage[3].rd_stg_inst ,\n_3_gsync_stage[3].rd_stg_inst ,\n_4_gsync_stage[3].rd_stg_inst ,\n_5_gsync_stage[3].rd_stg_inst ,\n_6_gsync_stage[3].rd_stg_inst ,\n_7_gsync_stage[3].rd_stg_inst }),
        .Q(\n_0_gsync_stage[3].rd_stg_inst ),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff_62 \gsync_stage[3].wr_stg_inst 
       (.D({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst }),
        .I9(I9),
        .O1({\n_1_gsync_stage[3].wr_stg_inst ,\n_2_gsync_stage[3].wr_stg_inst ,\n_3_gsync_stage[3].wr_stg_inst ,\n_4_gsync_stage[3].wr_stg_inst ,\n_5_gsync_stage[3].wr_stg_inst ,\n_6_gsync_stage[3].wr_stg_inst ,\n_7_gsync_stage[3].wr_stg_inst }),
        .Q(\n_0_gsync_stage[3].wr_stg_inst ),
        .s_aclk(s_aclk));
LUT2 #(
    .INIT(4'hE)) 
     ram_empty_fb_i_i_1
       (.I0(n_0_ram_empty_fb_i_i_2),
        .I1(I1),
        .O(O1));
LUT6 #(
    .INIT(64'h8200000000000000)) 
     ram_empty_fb_i_i_2
       (.I0(n_0_ram_empty_fb_i_i_4),
        .I1(Q[3]),
        .I2(O2[6]),
        .I3(E),
        .I4(n_0_ram_empty_fb_i_i_5),
        .I5(I2),
        .O(n_0_ram_empty_fb_i_i_2));
LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_4
       (.I0(O2[5]),
        .I1(Q[2]),
        .I2(O2[7]),
        .I3(Q[4]),
        .O(n_0_ram_empty_fb_i_i_4));
LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_5
       (.I0(O2[3]),
        .I1(Q[0]),
        .I2(O2[4]),
        .I3(Q[1]),
        .O(n_0_ram_empty_fb_i_i_5));
LUT6 #(
    .INIT(64'h5555555541000000)) 
     ram_full_i_i_1
       (.I0(rst_full_gen_i),
        .I1(p_0_out[6]),
        .I2(I4[5]),
        .I3(n_0_ram_full_i_i_2),
        .I4(I5),
        .I5(\gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ),
        .O(ram_full_i));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_i_i_2
       (.I0(p_0_out[4]),
        .I1(I4[3]),
        .I2(p_0_out[5]),
        .I3(I4[4]),
        .I4(I4[6]),
        .I5(p_0_out[7]),
        .O(n_0_ram_full_i_i_2));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     ram_full_i_i_4
       (.I0(p_0_out[7]),
        .I1(I3[7]),
        .I2(p_0_out[6]),
        .I3(I3[6]),
        .I4(n_0_ram_full_i_i_6),
        .I5(n_0_ram_full_i_i_7),
        .O(\gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_i_i_5
       (.I0(p_0_out[1]),
        .I1(I4[0]),
        .I2(p_0_out[2]),
        .I3(I4[1]),
        .I4(I4[2]),
        .I5(p_0_out[3]),
        .O(O4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_i_i_6
       (.I0(O3),
        .I1(I3[0]),
        .I2(p_0_out[1]),
        .I3(I3[1]),
        .I4(I3[2]),
        .I5(p_0_out[2]),
        .O(n_0_ram_full_i_i_6));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_i_i_7
       (.I0(p_0_out[3]),
        .I1(I3[3]),
        .I2(p_0_out[4]),
        .I3(I3[4]),
        .I4(I3[5]),
        .I5(p_0_out[5]),
        .O(n_0_ram_full_i_i_7));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_7_gsync_stage[3].wr_stg_inst ),
        .Q(O3));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_6_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_5_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_4_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_3_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_2_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_1_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_0_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[7]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(I7[0]),
        .I1(I7[1]),
        .O(\n_0_rd_pntr_gc[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(I7[1]),
        .I1(I7[2]),
        .O(\n_0_rd_pntr_gc[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(I7[2]),
        .I1(I7[3]),
        .O(\n_0_rd_pntr_gc[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[3]_i_1 
       (.I0(I7[3]),
        .I1(I7[4]),
        .O(\n_0_rd_pntr_gc[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[4]_i_1 
       (.I0(I7[4]),
        .I1(I7[5]),
        .O(\n_0_rd_pntr_gc[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[5]_i_1 
       (.I0(I7[5]),
        .I1(I7[6]),
        .O(\n_0_rd_pntr_gc[5]_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[6]_i_1 
       (.I0(I7[6]),
        .I1(I7[7]),
        .O(\n_0_rd_pntr_gc[6]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[0]_i_1 ),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[1]_i_1 ),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[2]_i_1 ),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[3]_i_1 ),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[4]_i_1 ),
        .Q(rd_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[5]_i_1 ),
        .Q(rd_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[6]_i_1 ),
        .Q(rd_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I7[7]),
        .Q(rd_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_7_gsync_stage[3].rd_stg_inst ),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_6_gsync_stage[3].rd_stg_inst ),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_5_gsync_stage[3].rd_stg_inst ),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_4_gsync_stage[3].rd_stg_inst ),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_3_gsync_stage[3].rd_stg_inst ),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_2_gsync_stage[3].rd_stg_inst ),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(p_0_in0),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_gsync_stage[3].rd_stg_inst ),
        .Q(O2[7]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I6[0]),
        .I1(I6[1]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I6[1]),
        .I1(I6[2]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I6[2]),
        .I1(I6[3]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[3]_i_1 
       (.I0(I6[3]),
        .I1(I6[4]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[4]_i_1 
       (.I0(I6[4]),
        .I1(I6[5]),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[5]_i_1 
       (.I0(I6[5]),
        .I1(I6[6]),
        .O(p_0_in[5]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[6]_i_1 
       (.I0(I6[6]),
        .I1(I6[7]),
        .O(p_0_in[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[3]),
        .Q(wr_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[4]),
        .Q(wr_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[5]),
        .Q(wr_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[6]),
        .Q(wr_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I6[7]),
        .Q(wr_pntr_gc[7]));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module axi_chip2chip_0_clk_x_pntrs_69
   (O1,
    O2,
    O3,
    O4,
    ram_full_i,
    I1,
    Q,
    E,
    I2,
    I3,
    I4,
    rst_full_gen_i,
    I5,
    I6,
    I7,
    axi_c2c_phy_clk,
    I8,
    s_aclk,
    I9);
  output O1;
  output [7:0]O2;
  output [0:0]O3;
  output O4;
  output ram_full_i;
  input I1;
  input [4:0]Q;
  input [0:0]E;
  input I2;
  input [7:0]I3;
  input [6:0]I4;
  input rst_full_gen_i;
  input I5;
  input [7:0]I6;
  input [7:0]I7;
  input axi_c2c_phy_clk;
  input [0:0]I8;
  input s_aclk;
  input [0:0]I9;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire [7:0]I3;
  wire [6:0]I4;
  wire I5;
  wire [7:0]I6;
  wire [7:0]I7;
  wire [0:0]I8;
  wire [0:0]I9;
  wire O1;
  wire [7:0]O2;
  wire [0:0]O3;
  wire O4;
  wire [4:0]Q;
  wire [7:0]Q_0;
  wire axi_c2c_phy_clk;
  wire \gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].rd_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_0_gsync_stage[3].rd_stg_inst ;
  wire \n_0_gsync_stage[3].wr_stg_inst ;
  wire n_0_ram_empty_fb_i_i_2__0;
  wire n_0_ram_empty_fb_i_i_4__0;
  wire n_0_ram_empty_fb_i_i_5__0;
  wire n_0_ram_full_i_i_2__0;
  wire n_0_ram_full_i_i_6__0;
  wire n_0_ram_full_i_i_7__0;
  wire \n_0_rd_pntr_gc[0]_i_1 ;
  wire \n_0_rd_pntr_gc[1]_i_1 ;
  wire \n_0_rd_pntr_gc[2]_i_1 ;
  wire \n_0_rd_pntr_gc[3]_i_1 ;
  wire \n_0_rd_pntr_gc[4]_i_1 ;
  wire \n_0_rd_pntr_gc[5]_i_1 ;
  wire \n_0_rd_pntr_gc[6]_i_1 ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].rd_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gsync_stage[3].wr_stg_inst ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].rd_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gsync_stage[3].rd_stg_inst ;
  wire \n_2_gsync_stage[3].wr_stg_inst ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].rd_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gsync_stage[3].rd_stg_inst ;
  wire \n_3_gsync_stage[3].wr_stg_inst ;
  wire \n_4_gsync_stage[1].wr_stg_inst ;
  wire \n_4_gsync_stage[2].rd_stg_inst ;
  wire \n_4_gsync_stage[2].wr_stg_inst ;
  wire \n_4_gsync_stage[3].rd_stg_inst ;
  wire \n_4_gsync_stage[3].wr_stg_inst ;
  wire \n_5_gsync_stage[1].wr_stg_inst ;
  wire \n_5_gsync_stage[2].rd_stg_inst ;
  wire \n_5_gsync_stage[2].wr_stg_inst ;
  wire \n_5_gsync_stage[3].rd_stg_inst ;
  wire \n_5_gsync_stage[3].wr_stg_inst ;
  wire \n_6_gsync_stage[1].wr_stg_inst ;
  wire \n_6_gsync_stage[2].rd_stg_inst ;
  wire \n_6_gsync_stage[2].wr_stg_inst ;
  wire \n_6_gsync_stage[3].rd_stg_inst ;
  wire \n_6_gsync_stage[3].wr_stg_inst ;
  wire \n_7_gsync_stage[1].wr_stg_inst ;
  wire \n_7_gsync_stage[2].rd_stg_inst ;
  wire \n_7_gsync_stage[2].wr_stg_inst ;
  wire \n_7_gsync_stage[3].rd_stg_inst ;
  wire \n_7_gsync_stage[3].wr_stg_inst ;
  wire [6:0]p_0_in;
  wire p_0_in0;
  wire [7:1]p_0_out;
  wire ram_full_i;
  wire [7:0]rd_pntr_gc;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [7:0]wr_pntr_gc;

axi_chip2chip_0_synchronizer_ff_85 \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I8(I8),
        .Q(Q_0),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff_86 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I9(I9),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst }),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff_87 \gsync_stage[2].rd_stg_inst 
       (.D(Q_0),
        .I8(I8),
        .Q({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst }),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff_88 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst }),
        .I9(I9),
        .Q({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst }),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff_89 \gsync_stage[3].rd_stg_inst 
       (.D({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst }),
        .I8(I8),
        .O1({p_0_in0,\n_2_gsync_stage[3].rd_stg_inst ,\n_3_gsync_stage[3].rd_stg_inst ,\n_4_gsync_stage[3].rd_stg_inst ,\n_5_gsync_stage[3].rd_stg_inst ,\n_6_gsync_stage[3].rd_stg_inst ,\n_7_gsync_stage[3].rd_stg_inst }),
        .Q(\n_0_gsync_stage[3].rd_stg_inst ),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff_90 \gsync_stage[3].wr_stg_inst 
       (.D({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst }),
        .I9(I9),
        .O1({\n_1_gsync_stage[3].wr_stg_inst ,\n_2_gsync_stage[3].wr_stg_inst ,\n_3_gsync_stage[3].wr_stg_inst ,\n_4_gsync_stage[3].wr_stg_inst ,\n_5_gsync_stage[3].wr_stg_inst ,\n_6_gsync_stage[3].wr_stg_inst ,\n_7_gsync_stage[3].wr_stg_inst }),
        .Q(\n_0_gsync_stage[3].wr_stg_inst ),
        .s_aclk(s_aclk));
LUT2 #(
    .INIT(4'hE)) 
     ram_empty_fb_i_i_1__0
       (.I0(n_0_ram_empty_fb_i_i_2__0),
        .I1(I1),
        .O(O1));
LUT6 #(
    .INIT(64'h8200000000000000)) 
     ram_empty_fb_i_i_2__0
       (.I0(n_0_ram_empty_fb_i_i_4__0),
        .I1(Q[3]),
        .I2(O2[6]),
        .I3(E),
        .I4(n_0_ram_empty_fb_i_i_5__0),
        .I5(I2),
        .O(n_0_ram_empty_fb_i_i_2__0));
LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_4__0
       (.I0(O2[5]),
        .I1(Q[2]),
        .I2(O2[7]),
        .I3(Q[4]),
        .O(n_0_ram_empty_fb_i_i_4__0));
LUT4 #(
    .INIT(16'h9009)) 
     ram_empty_fb_i_i_5__0
       (.I0(O2[3]),
        .I1(Q[0]),
        .I2(O2[4]),
        .I3(Q[1]),
        .O(n_0_ram_empty_fb_i_i_5__0));
LUT6 #(
    .INIT(64'h5555555541000000)) 
     ram_full_i_i_1__0
       (.I0(rst_full_gen_i),
        .I1(p_0_out[6]),
        .I2(I4[5]),
        .I3(n_0_ram_full_i_i_2__0),
        .I4(I5),
        .I5(\gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ),
        .O(ram_full_i));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_i_i_2__0
       (.I0(p_0_out[4]),
        .I1(I4[3]),
        .I2(p_0_out[5]),
        .I3(I4[4]),
        .I4(I4[6]),
        .I5(p_0_out[7]),
        .O(n_0_ram_full_i_i_2__0));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     ram_full_i_i_4__0
       (.I0(p_0_out[7]),
        .I1(I3[7]),
        .I2(p_0_out[6]),
        .I3(I3[6]),
        .I4(n_0_ram_full_i_i_6__0),
        .I5(n_0_ram_full_i_i_7__0),
        .O(\gntv_or_sync_fifo.gl0.wr/gwas.wsts/comp1 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_i_i_5__0
       (.I0(p_0_out[1]),
        .I1(I4[0]),
        .I2(p_0_out[2]),
        .I3(I4[1]),
        .I4(I4[2]),
        .I5(p_0_out[3]),
        .O(O4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_i_i_6__0
       (.I0(O3),
        .I1(I3[0]),
        .I2(p_0_out[1]),
        .I3(I3[1]),
        .I4(I3[2]),
        .I5(p_0_out[2]),
        .O(n_0_ram_full_i_i_6__0));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_i_i_7__0
       (.I0(p_0_out[3]),
        .I1(I3[3]),
        .I2(p_0_out[4]),
        .I3(I3[4]),
        .I4(I3[5]),
        .I5(p_0_out[5]),
        .O(n_0_ram_full_i_i_7__0));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_7_gsync_stage[3].wr_stg_inst ),
        .Q(O3));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_6_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_5_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_4_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_3_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_2_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_1_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(\n_0_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out[7]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(I7[0]),
        .I1(I7[1]),
        .O(\n_0_rd_pntr_gc[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(I7[1]),
        .I1(I7[2]),
        .O(\n_0_rd_pntr_gc[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(I7[2]),
        .I1(I7[3]),
        .O(\n_0_rd_pntr_gc[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[3]_i_1 
       (.I0(I7[3]),
        .I1(I7[4]),
        .O(\n_0_rd_pntr_gc[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[4]_i_1 
       (.I0(I7[4]),
        .I1(I7[5]),
        .O(\n_0_rd_pntr_gc[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[5]_i_1 
       (.I0(I7[5]),
        .I1(I7[6]),
        .O(\n_0_rd_pntr_gc[5]_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[6]_i_1 
       (.I0(I7[6]),
        .I1(I7[7]),
        .O(\n_0_rd_pntr_gc[6]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[0]_i_1 ),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[1]_i_1 ),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[2]_i_1 ),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[3]_i_1 ),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[4]_i_1 ),
        .Q(rd_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[5]_i_1 ),
        .Q(rd_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_rd_pntr_gc[6]_i_1 ),
        .Q(rd_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I7[7]),
        .Q(rd_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_7_gsync_stage[3].rd_stg_inst ),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_6_gsync_stage[3].rd_stg_inst ),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_5_gsync_stage[3].rd_stg_inst ),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_4_gsync_stage[3].rd_stg_inst ),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_3_gsync_stage[3].rd_stg_inst ),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_2_gsync_stage[3].rd_stg_inst ),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(p_0_in0),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(\n_0_gsync_stage[3].rd_stg_inst ),
        .Q(O2[7]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I6[0]),
        .I1(I6[1]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I6[1]),
        .I1(I6[2]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I6[2]),
        .I1(I6[3]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[3]_i_1 
       (.I0(I6[3]),
        .I1(I6[4]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[4]_i_1 
       (.I0(I6[4]),
        .I1(I6[5]),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[5]_i_1 
       (.I0(I6[5]),
        .I1(I6[6]),
        .O(p_0_in[5]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[6]_i_1 
       (.I0(I6[6]),
        .I1(I6[7]),
        .O(p_0_in[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[3]),
        .Q(wr_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[4]),
        .Q(wr_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[5]),
        .Q(wr_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(p_0_in[6]),
        .Q(wr_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I6[7]),
        .Q(wr_pntr_gc[7]));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module axi_chip2chip_0_clk_x_pntrs__parameterized0
   (O1,
    Q,
    O2,
    ram_full_i,
    O3,
    I1,
    I2,
    rst_full_gen_i,
    comp2,
    p_1_out,
    s_axi_wvalid,
    I3,
    comp1,
    I4,
    I5,
    axi_c2c_phy_clk,
    I6,
    s_aclk,
    I7);
  output O1;
  output [7:0]Q;
  output O2;
  output ram_full_i;
  output [8:0]O3;
  input [0:0]I1;
  input [0:0]I2;
  input rst_full_gen_i;
  input comp2;
  input p_1_out;
  input s_axi_wvalid;
  input I3;
  input comp1;
  input [8:0]I4;
  input [8:0]I5;
  input axi_c2c_phy_clk;
  input [0:0]I6;
  input s_aclk;
  input [0:0]I7;

  wire [0:0]I1;
  wire [0:0]I2;
  wire I3;
  wire [8:0]I4;
  wire [8:0]I5;
  wire [0:0]I6;
  wire [0:0]I7;
  wire O1;
  wire O2;
  wire [8:0]O3;
  wire [7:0]Q;
  wire [8:0]Q_0;
  wire axi_c2c_phy_clk;
  wire comp1;
  wire comp2;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].rd_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_0_gsync_stage[3].rd_stg_inst ;
  wire \n_0_gsync_stage[3].wr_stg_inst ;
  wire \n_0_rd_pntr_gc[0]_i_1 ;
  wire \n_0_rd_pntr_gc[1]_i_1 ;
  wire \n_0_rd_pntr_gc[2]_i_1 ;
  wire \n_0_rd_pntr_gc[3]_i_1 ;
  wire \n_0_rd_pntr_gc[4]_i_1 ;
  wire \n_0_rd_pntr_gc[5]_i_1 ;
  wire \n_0_rd_pntr_gc[6]_i_1 ;
  wire \n_0_rd_pntr_gc[7]_i_1 ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].rd_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gsync_stage[3].wr_stg_inst ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].rd_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gsync_stage[3].rd_stg_inst ;
  wire \n_2_gsync_stage[3].wr_stg_inst ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].rd_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gsync_stage[3].rd_stg_inst ;
  wire \n_3_gsync_stage[3].wr_stg_inst ;
  wire \n_4_gsync_stage[1].wr_stg_inst ;
  wire \n_4_gsync_stage[2].rd_stg_inst ;
  wire \n_4_gsync_stage[2].wr_stg_inst ;
  wire \n_4_gsync_stage[3].rd_stg_inst ;
  wire \n_4_gsync_stage[3].wr_stg_inst ;
  wire \n_5_gsync_stage[1].wr_stg_inst ;
  wire \n_5_gsync_stage[2].rd_stg_inst ;
  wire \n_5_gsync_stage[2].wr_stg_inst ;
  wire \n_5_gsync_stage[3].rd_stg_inst ;
  wire \n_5_gsync_stage[3].wr_stg_inst ;
  wire \n_6_gsync_stage[1].wr_stg_inst ;
  wire \n_6_gsync_stage[2].rd_stg_inst ;
  wire \n_6_gsync_stage[2].wr_stg_inst ;
  wire \n_6_gsync_stage[3].rd_stg_inst ;
  wire \n_6_gsync_stage[3].wr_stg_inst ;
  wire \n_7_gsync_stage[1].wr_stg_inst ;
  wire \n_7_gsync_stage[2].rd_stg_inst ;
  wire \n_7_gsync_stage[2].wr_stg_inst ;
  wire \n_7_gsync_stage[3].rd_stg_inst ;
  wire \n_7_gsync_stage[3].wr_stg_inst ;
  wire \n_8_gsync_stage[1].wr_stg_inst ;
  wire \n_8_gsync_stage[2].rd_stg_inst ;
  wire \n_8_gsync_stage[2].wr_stg_inst ;
  wire \n_8_gsync_stage[3].rd_stg_inst ;
  wire \n_8_gsync_stage[3].wr_stg_inst ;
  wire [7:0]p_0_in;
  wire p_0_in0;
  wire [8:8]p_0_out;
  wire p_1_out;
  wire ram_full_i;
  wire [8:0]rd_pntr_gc;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_wvalid;
  wire [8:0]wr_pntr_gc;

LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__1 
       (.I0(p_0_out),
        .I1(I1),
        .O(O1));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__2 
       (.I0(p_0_out),
        .I1(I2),
        .O(O2));
axi_chip2chip_0_synchronizer_ff__parameterized0 \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I6(I6),
        .Q(Q_0),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff__parameterized0_5 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I7(I7),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst }),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff__parameterized0_6 \gsync_stage[2].rd_stg_inst 
       (.D(Q_0),
        .I6(I6),
        .Q({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst ,\n_8_gsync_stage[2].rd_stg_inst }),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff__parameterized0_7 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst }),
        .I7(I7),
        .Q({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst ,\n_8_gsync_stage[2].wr_stg_inst }),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff__parameterized0_8 \gsync_stage[3].rd_stg_inst 
       (.D({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst ,\n_8_gsync_stage[2].rd_stg_inst }),
        .I6(I6),
        .O1({p_0_in0,\n_2_gsync_stage[3].rd_stg_inst ,\n_3_gsync_stage[3].rd_stg_inst ,\n_4_gsync_stage[3].rd_stg_inst ,\n_5_gsync_stage[3].rd_stg_inst ,\n_6_gsync_stage[3].rd_stg_inst ,\n_7_gsync_stage[3].rd_stg_inst ,\n_8_gsync_stage[3].rd_stg_inst }),
        .Q(\n_0_gsync_stage[3].rd_stg_inst ),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
axi_chip2chip_0_synchronizer_ff__parameterized0_9 \gsync_stage[3].wr_stg_inst 
       (.D({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst ,\n_8_gsync_stage[2].wr_stg_inst }),
        .I7(I7),
        .O1({\n_1_gsync_stage[3].wr_stg_inst ,\n_2_gsync_stage[3].wr_stg_inst ,\n_3_gsync_stage[3].wr_stg_inst ,\n_4_gsync_stage[3].wr_stg_inst ,\n_5_gsync_stage[3].wr_stg_inst ,\n_6_gsync_stage[3].wr_stg_inst ,\n_7_gsync_stage[3].wr_stg_inst ,\n_8_gsync_stage[3].wr_stg_inst }),
        .Q(\n_0_gsync_stage[3].wr_stg_inst ),
        .s_aclk(s_aclk));
LUT6 #(
    .INIT(64'h5555555500000400)) 
     ram_full_i_i_1__1
       (.I0(rst_full_gen_i),
        .I1(comp2),
        .I2(p_1_out),
        .I3(s_axi_wvalid),
        .I4(I3),
        .I5(comp1),
        .O(ram_full_i));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_8_gsync_stage[3].wr_stg_inst ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_7_gsync_stage[3].wr_stg_inst ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_6_gsync_stage[3].wr_stg_inst ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_5_gsync_stage[3].wr_stg_inst ),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_4_gsync_stage[3].wr_stg_inst ),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_3_gsync_stage[3].wr_stg_inst ),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_2_gsync_stage[3].wr_stg_inst ),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_1_gsync_stage[3].wr_stg_inst ),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_0_gsync_stage[3].wr_stg_inst ),
        .Q(p_0_out));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(I5[0]),
        .I1(I5[1]),
        .O(\n_0_rd_pntr_gc[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(I5[1]),
        .I1(I5[2]),
        .O(\n_0_rd_pntr_gc[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(I5[2]),
        .I1(I5[3]),
        .O(\n_0_rd_pntr_gc[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[3]_i_1 
       (.I0(I5[3]),
        .I1(I5[4]),
        .O(\n_0_rd_pntr_gc[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[4]_i_1 
       (.I0(I5[4]),
        .I1(I5[5]),
        .O(\n_0_rd_pntr_gc[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[5]_i_1 
       (.I0(I5[5]),
        .I1(I5[6]),
        .O(\n_0_rd_pntr_gc[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[6]_i_1 
       (.I0(I5[6]),
        .I1(I5[7]),
        .O(\n_0_rd_pntr_gc[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[7]_i_1 
       (.I0(I5[7]),
        .I1(I5[8]),
        .O(\n_0_rd_pntr_gc[7]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[0]_i_1 ),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[1]_i_1 ),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[2]_i_1 ),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[3]_i_1 ),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[4]_i_1 ),
        .Q(rd_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[5]_i_1 ),
        .Q(rd_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[6]_i_1 ),
        .Q(rd_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[7]_i_1 ),
        .Q(rd_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I5[8]),
        .Q(rd_pntr_gc[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_8_gsync_stage[3].rd_stg_inst ),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_7_gsync_stage[3].rd_stg_inst ),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_6_gsync_stage[3].rd_stg_inst ),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_5_gsync_stage[3].rd_stg_inst ),
        .Q(O3[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_4_gsync_stage[3].rd_stg_inst ),
        .Q(O3[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_3_gsync_stage[3].rd_stg_inst ),
        .Q(O3[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_2_gsync_stage[3].rd_stg_inst ),
        .Q(O3[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in0),
        .Q(O3[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_gsync_stage[3].rd_stg_inst ),
        .Q(O3[8]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I4[0]),
        .I1(I4[1]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I4[1]),
        .I1(I4[2]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I4[2]),
        .I1(I4[3]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[3]_i_1 
       (.I0(I4[3]),
        .I1(I4[4]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[4]_i_1 
       (.I0(I4[4]),
        .I1(I4[5]),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[5]_i_1 
       (.I0(I4[5]),
        .I1(I4[6]),
        .O(p_0_in[5]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[6]_i_1 
       (.I0(I4[6]),
        .I1(I4[7]),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[7]_i_1 
       (.I0(I4[7]),
        .I1(I4[8]),
        .O(p_0_in[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[3]),
        .Q(wr_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[4]),
        .Q(wr_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[5]),
        .Q(wr_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[6]),
        .Q(wr_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[7]),
        .Q(wr_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I4[8]),
        .Q(wr_pntr_gc[8]));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module axi_chip2chip_0_clk_x_pntrs__parameterized0_15
   (v1_reg,
    Q,
    v1_reg_0,
    v1_reg_1,
    O1,
    v1_reg_2,
    I1,
    I2,
    I3,
    I4,
    I5,
    s_aclk,
    I6,
    clk_ph_out,
    I7);
  output [3:0]v1_reg;
  output [8:0]Q;
  output [3:0]v1_reg_0;
  output [3:0]v1_reg_1;
  output [0:0]O1;
  output [3:0]v1_reg_2;
  input [7:0]I1;
  input [7:0]I2;
  input [8:0]I3;
  input [7:0]I4;
  input [8:0]I5;
  input s_aclk;
  input [0:0]I6;
  input clk_ph_out;
  input [0:0]I7;

  wire [7:0]I1;
  wire [7:0]I2;
  wire [8:0]I3;
  wire [7:0]I4;
  wire [8:0]I5;
  wire [0:0]I6;
  wire [0:0]I7;
  wire [0:0]O1;
  wire [8:0]Q;
  wire [8:0]Q_0;
  wire clk_ph_out;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].rd_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_0_gsync_stage[3].rd_stg_inst ;
  wire \n_0_gsync_stage[3].wr_stg_inst ;
  wire \n_0_rd_pntr_gc[0]_i_1 ;
  wire \n_0_rd_pntr_gc[1]_i_1 ;
  wire \n_0_rd_pntr_gc[2]_i_1 ;
  wire \n_0_rd_pntr_gc[3]_i_1 ;
  wire \n_0_rd_pntr_gc[4]_i_1 ;
  wire \n_0_rd_pntr_gc[5]_i_1 ;
  wire \n_0_rd_pntr_gc[6]_i_1 ;
  wire \n_0_rd_pntr_gc[7]_i_1 ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].rd_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gsync_stage[3].wr_stg_inst ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].rd_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gsync_stage[3].rd_stg_inst ;
  wire \n_2_gsync_stage[3].wr_stg_inst ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].rd_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gsync_stage[3].rd_stg_inst ;
  wire \n_3_gsync_stage[3].wr_stg_inst ;
  wire \n_4_gsync_stage[1].wr_stg_inst ;
  wire \n_4_gsync_stage[2].rd_stg_inst ;
  wire \n_4_gsync_stage[2].wr_stg_inst ;
  wire \n_4_gsync_stage[3].rd_stg_inst ;
  wire \n_4_gsync_stage[3].wr_stg_inst ;
  wire \n_5_gsync_stage[1].wr_stg_inst ;
  wire \n_5_gsync_stage[2].rd_stg_inst ;
  wire \n_5_gsync_stage[2].wr_stg_inst ;
  wire \n_5_gsync_stage[3].rd_stg_inst ;
  wire \n_5_gsync_stage[3].wr_stg_inst ;
  wire \n_6_gsync_stage[1].wr_stg_inst ;
  wire \n_6_gsync_stage[2].rd_stg_inst ;
  wire \n_6_gsync_stage[2].wr_stg_inst ;
  wire \n_6_gsync_stage[3].rd_stg_inst ;
  wire \n_6_gsync_stage[3].wr_stg_inst ;
  wire \n_7_gsync_stage[1].wr_stg_inst ;
  wire \n_7_gsync_stage[2].rd_stg_inst ;
  wire \n_7_gsync_stage[2].wr_stg_inst ;
  wire \n_7_gsync_stage[3].rd_stg_inst ;
  wire \n_7_gsync_stage[3].wr_stg_inst ;
  wire \n_8_gsync_stage[1].wr_stg_inst ;
  wire \n_8_gsync_stage[2].rd_stg_inst ;
  wire \n_8_gsync_stage[2].wr_stg_inst ;
  wire \n_8_gsync_stage[3].rd_stg_inst ;
  wire \n_8_gsync_stage[3].wr_stg_inst ;
  wire [7:0]p_0_in;
  wire p_0_in0;
  wire [7:0]p_1_out;
  wire [8:0]rd_pntr_gc;
  wire s_aclk;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;
  wire [3:0]v1_reg_2;
  wire [8:0]wr_pntr_gc;

LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__3 
       (.I0(p_1_out[0]),
        .I1(I3[0]),
        .I2(p_1_out[1]),
        .I3(I3[1]),
        .O(v1_reg_1[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__4 
       (.I0(p_1_out[0]),
        .I1(I4[0]),
        .I2(p_1_out[1]),
        .I3(I4[1]),
        .O(v1_reg_2[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__5 
       (.I0(Q[1]),
        .I1(I1[1]),
        .I2(Q[0]),
        .I3(I1[0]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__6 
       (.I0(Q[1]),
        .I1(I2[1]),
        .I2(Q[0]),
        .I3(I2[0]),
        .O(v1_reg_0[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__3 
       (.I0(p_1_out[2]),
        .I1(I3[2]),
        .I2(p_1_out[3]),
        .I3(I3[3]),
        .O(v1_reg_1[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__4 
       (.I0(p_1_out[2]),
        .I1(I4[2]),
        .I2(p_1_out[3]),
        .I3(I4[3]),
        .O(v1_reg_2[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__5 
       (.I0(Q[3]),
        .I1(I1[3]),
        .I2(Q[2]),
        .I3(I1[2]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__6 
       (.I0(Q[3]),
        .I1(I2[3]),
        .I2(Q[2]),
        .I3(I2[2]),
        .O(v1_reg_0[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__3 
       (.I0(p_1_out[4]),
        .I1(I3[4]),
        .I2(p_1_out[5]),
        .I3(I3[5]),
        .O(v1_reg_1[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__4 
       (.I0(p_1_out[4]),
        .I1(I4[4]),
        .I2(p_1_out[5]),
        .I3(I4[5]),
        .O(v1_reg_2[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__5 
       (.I0(Q[5]),
        .I1(I1[5]),
        .I2(Q[4]),
        .I3(I1[4]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__6 
       (.I0(Q[5]),
        .I1(I2[5]),
        .I2(Q[4]),
        .I3(I2[4]),
        .O(v1_reg_0[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__3 
       (.I0(p_1_out[6]),
        .I1(I3[6]),
        .I2(p_1_out[7]),
        .I3(I3[7]),
        .O(v1_reg_1[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__4 
       (.I0(p_1_out[6]),
        .I1(I4[6]),
        .I2(p_1_out[7]),
        .I3(I4[7]),
        .O(v1_reg_2[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__5 
       (.I0(Q[7]),
        .I1(I1[7]),
        .I2(Q[6]),
        .I3(I1[6]),
        .O(v1_reg[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__6 
       (.I0(Q[7]),
        .I1(I2[7]),
        .I2(Q[6]),
        .I3(I2[6]),
        .O(v1_reg_0[3]));
axi_chip2chip_0_synchronizer_ff__parameterized0_35 \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I6(I6),
        .Q(Q_0),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff__parameterized0_36 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I7(I7),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst }),
        .clk_ph_out(clk_ph_out));
axi_chip2chip_0_synchronizer_ff__parameterized0_37 \gsync_stage[2].rd_stg_inst 
       (.D(Q_0),
        .I6(I6),
        .Q({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst ,\n_8_gsync_stage[2].rd_stg_inst }),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff__parameterized0_38 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst }),
        .I7(I7),
        .Q({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst ,\n_8_gsync_stage[2].wr_stg_inst }),
        .clk_ph_out(clk_ph_out));
axi_chip2chip_0_synchronizer_ff__parameterized0_39 \gsync_stage[3].rd_stg_inst 
       (.D({\n_0_gsync_stage[2].rd_stg_inst ,\n_1_gsync_stage[2].rd_stg_inst ,\n_2_gsync_stage[2].rd_stg_inst ,\n_3_gsync_stage[2].rd_stg_inst ,\n_4_gsync_stage[2].rd_stg_inst ,\n_5_gsync_stage[2].rd_stg_inst ,\n_6_gsync_stage[2].rd_stg_inst ,\n_7_gsync_stage[2].rd_stg_inst ,\n_8_gsync_stage[2].rd_stg_inst }),
        .I6(I6),
        .O1({p_0_in0,\n_2_gsync_stage[3].rd_stg_inst ,\n_3_gsync_stage[3].rd_stg_inst ,\n_4_gsync_stage[3].rd_stg_inst ,\n_5_gsync_stage[3].rd_stg_inst ,\n_6_gsync_stage[3].rd_stg_inst ,\n_7_gsync_stage[3].rd_stg_inst ,\n_8_gsync_stage[3].rd_stg_inst }),
        .Q(\n_0_gsync_stage[3].rd_stg_inst ),
        .s_aclk(s_aclk));
axi_chip2chip_0_synchronizer_ff__parameterized0_40 \gsync_stage[3].wr_stg_inst 
       (.D({\n_0_gsync_stage[2].wr_stg_inst ,\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst ,\n_8_gsync_stage[2].wr_stg_inst }),
        .I7(I7),
        .O1({\n_1_gsync_stage[3].wr_stg_inst ,\n_2_gsync_stage[3].wr_stg_inst ,\n_3_gsync_stage[3].wr_stg_inst ,\n_4_gsync_stage[3].wr_stg_inst ,\n_5_gsync_stage[3].wr_stg_inst ,\n_6_gsync_stage[3].wr_stg_inst ,\n_7_gsync_stage[3].wr_stg_inst ,\n_8_gsync_stage[3].wr_stg_inst }),
        .Q(\n_0_gsync_stage[3].wr_stg_inst ),
        .clk_ph_out(clk_ph_out));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_8_gsync_stage[3].wr_stg_inst ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_7_gsync_stage[3].wr_stg_inst ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_6_gsync_stage[3].wr_stg_inst ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_5_gsync_stage[3].wr_stg_inst ),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_4_gsync_stage[3].wr_stg_inst ),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_3_gsync_stage[3].wr_stg_inst ),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_2_gsync_stage[3].wr_stg_inst ),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_1_gsync_stage[3].wr_stg_inst ),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(\n_0_gsync_stage[3].wr_stg_inst ),
        .Q(Q[8]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(I3[0]),
        .I1(I3[1]),
        .O(\n_0_rd_pntr_gc[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(I3[1]),
        .I1(I3[2]),
        .O(\n_0_rd_pntr_gc[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(I3[2]),
        .I1(I3[3]),
        .O(\n_0_rd_pntr_gc[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[3]_i_1 
       (.I0(I3[3]),
        .I1(I3[4]),
        .O(\n_0_rd_pntr_gc[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[4]_i_1 
       (.I0(I3[4]),
        .I1(I3[5]),
        .O(\n_0_rd_pntr_gc[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[5]_i_1 
       (.I0(I3[5]),
        .I1(I3[6]),
        .O(\n_0_rd_pntr_gc[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[6]_i_1 
       (.I0(I3[6]),
        .I1(I3[7]),
        .O(\n_0_rd_pntr_gc[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[7]_i_1 
       (.I0(I3[7]),
        .I1(I3[8]),
        .O(\n_0_rd_pntr_gc[7]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[0]_i_1 ),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[1]_i_1 ),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[2]_i_1 ),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[3]_i_1 ),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[4]_i_1 ),
        .Q(rd_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[5]_i_1 ),
        .Q(rd_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[6]_i_1 ),
        .Q(rd_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_rd_pntr_gc[7]_i_1 ),
        .Q(rd_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I3[8]),
        .Q(rd_pntr_gc[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_8_gsync_stage[3].rd_stg_inst ),
        .Q(p_1_out[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_7_gsync_stage[3].rd_stg_inst ),
        .Q(p_1_out[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_6_gsync_stage[3].rd_stg_inst ),
        .Q(p_1_out[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_5_gsync_stage[3].rd_stg_inst ),
        .Q(p_1_out[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_4_gsync_stage[3].rd_stg_inst ),
        .Q(p_1_out[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_3_gsync_stage[3].rd_stg_inst ),
        .Q(p_1_out[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_2_gsync_stage[3].rd_stg_inst ),
        .Q(p_1_out[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(p_0_in0),
        .Q(p_1_out[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(\n_0_gsync_stage[3].rd_stg_inst ),
        .Q(O1));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I5[0]),
        .I1(I5[1]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I5[1]),
        .I1(I5[2]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I5[2]),
        .I1(I5[3]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[3]_i_1 
       (.I0(I5[3]),
        .I1(I5[4]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[4]_i_1 
       (.I0(I5[4]),
        .I1(I5[5]),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[5]_i_1 
       (.I0(I5[5]),
        .I1(I5[6]),
        .O(p_0_in[5]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[6]_i_1 
       (.I0(I5[6]),
        .I1(I5[7]),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[7]_i_1 
       (.I0(I5[7]),
        .I1(I5[8]),
        .O(p_0_in[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[3]),
        .Q(wr_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[4]),
        .Q(wr_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[5]),
        .Q(wr_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[6]),
        .Q(wr_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(p_0_in[7]),
        .Q(wr_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I5[8]),
        .Q(wr_pntr_gc[8]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_chip2chip_0_compare__parameterized0
   (comp1,
    v1_reg,
    I1);
  output comp1;
  input [3:0]v1_reg;
  input I1;

  wire I1;
  wire comp1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I1}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_chip2chip_0_compare__parameterized0_2
   (comp2,
    v1_reg_0,
    I2);
  output comp2;
  input [3:0]v1_reg_0;
  input I2;

  wire I2;
  wire comp2;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg_0;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I2}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_chip2chip_0_compare__parameterized0_28
   (comp1,
    v1_reg,
    I1);
  output comp1;
  input [3:0]v1_reg;
  input I1;

  wire I1;
  wire comp1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I1}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_chip2chip_0_compare__parameterized0_29
   (comp2,
    v1_reg_0,
    I2);
  output comp2;
  input [3:0]v1_reg_0;
  input I2;

  wire I2;
  wire comp2;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg_0;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I2}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_chip2chip_0_compare__parameterized0_3
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire comp0;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [4:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_chip2chip_0_compare__parameterized0_33
   (comp0,
    v1_reg,
    I1);
  output comp0;
  input [3:0]v1_reg;
  input I1;

  wire I1;
  wire comp0;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I1}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_chip2chip_0_compare__parameterized0_34
   (comp1,
    v1_reg_0,
    I2);
  output comp1;
  input [3:0]v1_reg_0;
  input I2;

  wire I2;
  wire comp1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg_0;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I2}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module axi_chip2chip_0_compare__parameterized0_4
   (comp1,
    v1_reg_0);
  output comp1;
  input [4:0]v1_reg_0;

  wire comp1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [4:0]v1_reg_0;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module axi_chip2chip_0_dmem
   (O3,
    O4,
    O5,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O2,
    Q,
    clk_ph_out,
    I2,
    O1,
    I1,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    E,
    I18,
    s_aclk,
    I19);
  output O3;
  output O4;
  output O5;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output [7:0]O2;
  input [7:0]Q;
  input clk_ph_out;
  input I2;
  input [5:0]O1;
  input [5:0]I1;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input [0:0]E;
  input [7:0]I18;
  input s_aclk;
  input [0:0]I19;

  wire [0:0]E;
  wire [5:0]I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [7:0]I18;
  wire [0:0]I19;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire [5:0]O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire [7:0]O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire O4;
  wire O5;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire clk_ph_out;
  wire s_aclk;
  wire NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_0_63_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_128_191_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_192_255_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_7_7_SPO_UNCONNECTED;

RAM64M RAM_reg_0_63_0_2
       (.ADDRA(O1),
        .ADDRB(O1),
        .ADDRC(O1),
        .ADDRD(I1),
        .DIA(Q[0]),
        .DIB(Q[1]),
        .DIC(Q[2]),
        .DID(1'b0),
        .DOA(O3),
        .DOB(O4),
        .DOC(O5),
        .DOD(NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I2));
RAM64M RAM_reg_0_63_3_5
       (.ADDRA(O1),
        .ADDRB(O1),
        .ADDRC(O1),
        .ADDRD(I1),
        .DIA(Q[3]),
        .DIB(Q[4]),
        .DIC(Q[5]),
        .DID(1'b0),
        .DOA(O16),
        .DOB(O17),
        .DOC(O18),
        .DOD(NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I6));
RAM64X1D RAM_reg_0_63_6_6
       (.A0(I1[0]),
        .A1(I1[1]),
        .A2(I1[2]),
        .A3(I1[3]),
        .A4(I1[4]),
        .A5(I1[5]),
        .D(Q[6]),
        .DPO(O28),
        .DPRA0(O1[0]),
        .DPRA1(O1[1]),
        .DPRA2(O1[2]),
        .DPRA3(O1[3]),
        .DPRA4(O1[4]),
        .DPRA5(O1[5]),
        .SPO(NLW_RAM_reg_0_63_6_6_SPO_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I10));
RAM64X1D RAM_reg_0_63_7_7
       (.A0(I1[0]),
        .A1(I1[1]),
        .A2(I1[2]),
        .A3(I1[3]),
        .A4(I1[4]),
        .A5(I1[5]),
        .D(Q[7]),
        .DPO(O29),
        .DPRA0(O1[0]),
        .DPRA1(O1[1]),
        .DPRA2(O1[2]),
        .DPRA3(O1[3]),
        .DPRA4(O1[4]),
        .DPRA5(O1[5]),
        .SPO(NLW_RAM_reg_0_63_7_7_SPO_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I11));
RAM64M RAM_reg_128_191_0_2
       (.ADDRA(O1),
        .ADDRB(O1),
        .ADDRC(O1),
        .ADDRD(I1),
        .DIA(Q[0]),
        .DIB(Q[1]),
        .DIC(Q[2]),
        .DID(1'b0),
        .DOA(O10),
        .DOB(O11),
        .DOC(O12),
        .DOD(NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I4));
RAM64M RAM_reg_128_191_3_5
       (.ADDRA(O1),
        .ADDRB(O1),
        .ADDRC(O1),
        .ADDRD(I1),
        .DIA(Q[3]),
        .DIB(Q[4]),
        .DIC(Q[5]),
        .DID(1'b0),
        .DOA(O22),
        .DOB(O23),
        .DOC(O24),
        .DOD(NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I8));
RAM64X1D RAM_reg_128_191_6_6
       (.A0(I1[0]),
        .A1(I1[1]),
        .A2(I1[2]),
        .A3(I1[3]),
        .A4(I1[4]),
        .A5(I1[5]),
        .D(Q[6]),
        .DPO(O32),
        .DPRA0(O1[0]),
        .DPRA1(O1[1]),
        .DPRA2(O1[2]),
        .DPRA3(O1[3]),
        .DPRA4(O1[4]),
        .DPRA5(O1[5]),
        .SPO(NLW_RAM_reg_128_191_6_6_SPO_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I14));
RAM64X1D RAM_reg_128_191_7_7
       (.A0(I1[0]),
        .A1(I1[1]),
        .A2(I1[2]),
        .A3(I1[3]),
        .A4(I1[4]),
        .A5(I1[5]),
        .D(Q[7]),
        .DPO(O33),
        .DPRA0(O1[0]),
        .DPRA1(O1[1]),
        .DPRA2(O1[2]),
        .DPRA3(O1[3]),
        .DPRA4(O1[4]),
        .DPRA5(O1[5]),
        .SPO(NLW_RAM_reg_128_191_7_7_SPO_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I15));
RAM64M RAM_reg_192_255_0_2
       (.ADDRA(O1),
        .ADDRB(O1),
        .ADDRC(O1),
        .ADDRD(I1),
        .DIA(Q[0]),
        .DIB(Q[1]),
        .DIC(Q[2]),
        .DID(1'b0),
        .DOA(O13),
        .DOB(O14),
        .DOC(O15),
        .DOD(NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I5));
RAM64M RAM_reg_192_255_3_5
       (.ADDRA(O1),
        .ADDRB(O1),
        .ADDRC(O1),
        .ADDRD(I1),
        .DIA(Q[3]),
        .DIB(Q[4]),
        .DIC(Q[5]),
        .DID(1'b0),
        .DOA(O25),
        .DOB(O26),
        .DOC(O27),
        .DOD(NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I9));
RAM64X1D RAM_reg_192_255_6_6
       (.A0(I1[0]),
        .A1(I1[1]),
        .A2(I1[2]),
        .A3(I1[3]),
        .A4(I1[4]),
        .A5(I1[5]),
        .D(Q[6]),
        .DPO(O34),
        .DPRA0(O1[0]),
        .DPRA1(O1[1]),
        .DPRA2(O1[2]),
        .DPRA3(O1[3]),
        .DPRA4(O1[4]),
        .DPRA5(O1[5]),
        .SPO(NLW_RAM_reg_192_255_6_6_SPO_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I16));
RAM64X1D RAM_reg_192_255_7_7
       (.A0(I1[0]),
        .A1(I1[1]),
        .A2(I1[2]),
        .A3(I1[3]),
        .A4(I1[4]),
        .A5(I1[5]),
        .D(Q[7]),
        .DPO(O35),
        .DPRA0(O1[0]),
        .DPRA1(O1[1]),
        .DPRA2(O1[2]),
        .DPRA3(O1[3]),
        .DPRA4(O1[4]),
        .DPRA5(O1[5]),
        .SPO(NLW_RAM_reg_192_255_7_7_SPO_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I17));
RAM64M RAM_reg_64_127_0_2
       (.ADDRA(O1),
        .ADDRB(O1),
        .ADDRC(O1),
        .ADDRD(I1),
        .DIA(Q[0]),
        .DIB(Q[1]),
        .DIC(Q[2]),
        .DID(1'b0),
        .DOA(O7),
        .DOB(O8),
        .DOC(O9),
        .DOD(NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I3));
RAM64M RAM_reg_64_127_3_5
       (.ADDRA(O1),
        .ADDRB(O1),
        .ADDRC(O1),
        .ADDRD(I1),
        .DIA(Q[3]),
        .DIB(Q[4]),
        .DIC(Q[5]),
        .DID(1'b0),
        .DOA(O19),
        .DOB(O20),
        .DOC(O21),
        .DOD(NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I7));
RAM64X1D RAM_reg_64_127_6_6
       (.A0(I1[0]),
        .A1(I1[1]),
        .A2(I1[2]),
        .A3(I1[3]),
        .A4(I1[4]),
        .A5(I1[5]),
        .D(Q[6]),
        .DPO(O30),
        .DPRA0(O1[0]),
        .DPRA1(O1[1]),
        .DPRA2(O1[2]),
        .DPRA3(O1[3]),
        .DPRA4(O1[4]),
        .DPRA5(O1[5]),
        .SPO(NLW_RAM_reg_64_127_6_6_SPO_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I12));
RAM64X1D RAM_reg_64_127_7_7
       (.A0(I1[0]),
        .A1(I1[1]),
        .A2(I1[2]),
        .A3(I1[3]),
        .A4(I1[4]),
        .A5(I1[5]),
        .D(Q[7]),
        .DPO(O31),
        .DPRA0(O1[0]),
        .DPRA1(O1[1]),
        .DPRA2(O1[2]),
        .DPRA3(O1[3]),
        .DPRA4(O1[4]),
        .DPRA5(O1[5]),
        .SPO(NLW_RAM_reg_64_127_7_7_SPO_UNCONNECTED),
        .WCLK(clk_ph_out),
        .WE(I13));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I19),
        .D(I18[0]),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I19),
        .D(I18[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I19),
        .D(I18[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I19),
        .D(I18[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I19),
        .D(I18[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I19),
        .D(I18[5]),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I19),
        .D(I18[6]),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \gpr1.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I19),
        .D(I18[7]),
        .Q(O2[7]));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module axi_chip2chip_0_fifo_generator_ramfifo
   (O1,
    O2,
    rst_full_gen_i,
    s_axi_awready,
    O3,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_awaddr,
    DIADI,
    br_fifo_reset,
    Q,
    aw_ch_data_ready,
    s_axi_awvalid);
  output O1;
  output O2;
  output rst_full_gen_i;
  output s_axi_awready;
  output [51:0]O3;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;
  input br_fifo_reset;
  input [0:0]Q;
  input aw_ch_data_ready;
  input s_axi_awvalid;

  wire [17:0]DIADI;
  wire O1;
  wire O2;
  wire [51:0]O3;
  wire [0:0]Q;
  wire RD_RST;
  wire WR_RST;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire \gwas.wsts/ram_full_i ;
  wire \n_0_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_0_gntv_or_sync_fifo.gl0.wr ;
  wire \n_10_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_18_gntv_or_sync_fifo.gl0.rd ;
  wire \n_8_gntv_or_sync_fifo.gl0.wr ;
  wire \n_9_gntv_or_sync_fifo.gl0.rd ;
  wire [0:0]p_0_out;
  wire p_14_out;
  wire p_15_out;
  wire [7:0]p_1_out;
  wire [7:0]p_20_out;
  wire [7:0]p_8_out;
  wire [7:0]p_9_out;
  wire [7:3]rd_pntr_plus1;
  wire [1:0]rd_rst_i;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire tmp_ram_rd_en;
  wire [7:1]wr_pntr_plus2;
  wire [0:0]wr_rst_i;

axi_chip2chip_0_clk_x_pntrs_48 \gntv_or_sync_fifo.gcx.clkx 
       (.E(p_14_out),
        .I1(\n_9_gntv_or_sync_fifo.gl0.rd ),
        .I2(\n_18_gntv_or_sync_fifo.gl0.rd ),
        .I3(p_8_out),
        .I4(wr_pntr_plus2),
        .I5(\n_0_gntv_or_sync_fifo.gl0.wr ),
        .I6(p_9_out),
        .I7(p_20_out),
        .I8(rd_rst_i[1]),
        .I9(wr_rst_i),
        .O1(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .O2(p_1_out),
        .O3(p_0_out),
        .O4(\n_10_gntv_or_sync_fifo.gcx.clkx ),
        .Q(rd_pntr_plus1),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk));
axi_chip2chip_0_rd_logic_49 \gntv_or_sync_fifo.gl0.rd 
       (.E(p_14_out),
        .I1(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .I2(Q),
        .I3(p_1_out),
        .O1(O2),
        .O2(rd_pntr_plus1),
        .O3(p_15_out),
        .O4(\n_9_gntv_or_sync_fifo.gl0.rd ),
        .O5(p_20_out),
        .O6(\n_18_gntv_or_sync_fifo.gl0.rd ),
        .Q({RD_RST,rd_rst_i[0]}),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_wr_logic_50 \gntv_or_sync_fifo.gl0.wr 
       (.I1(O1),
        .I2(\n_10_gntv_or_sync_fifo.gcx.clkx ),
        .I3(WR_RST),
        .O1(\n_0_gntv_or_sync_fifo.gl0.wr ),
        .O2(p_8_out),
        .O3(p_0_out),
        .O4(p_9_out),
        .Q(wr_pntr_plus2),
        .WEBWE(\n_8_gntv_or_sync_fifo.gl0.wr ),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
axi_chip2chip_0_memory \gntv_or_sync_fifo.mem 
       (.DIADI(DIADI),
        .E(p_15_out),
        .O3(O3),
        .O4(p_9_out),
        .O5(p_20_out),
        .Q(rd_rst_i[0]),
        .WEBWE(\n_8_gntv_or_sync_fifo.gl0.wr ),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_reset_blk_ramfifo_51 rstblk
       (.O1(O1),
        .O2({RD_RST,rd_rst_i}),
        .Q({WR_RST,wr_rst_i}),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module axi_chip2chip_0_fifo_generator_ramfifo_68
   (O1,
    s_axi_arready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_araddr,
    I1,
    rst_d2,
    br_fifo_reset,
    Q,
    ar_ch_data_ready,
    s_axi_arvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_arready;
  output [51:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_araddr;
  input [17:0]I1;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input ar_ch_data_ready;
  input s_axi_arvalid;
  input rst_full_gen_i;

  wire [17:0]I1;
  wire O1;
  wire [51:0]O2;
  wire [0:0]Q;
  wire ar_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire \gwas.wsts/ram_full_i ;
  wire \n_0_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_0_gntv_or_sync_fifo.gl0.wr ;
  wire n_0_rstblk;
  wire \n_10_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_18_gntv_or_sync_fifo.gl0.rd ;
  wire n_2_rstblk;
  wire \n_8_gntv_or_sync_fifo.gl0.wr ;
  wire \n_9_gntv_or_sync_fifo.gl0.rd ;
  wire [0:0]p_0_out;
  wire p_14_out;
  wire p_15_out;
  wire [7:0]p_1_out;
  wire [7:0]p_20_out;
  wire [7:0]p_8_out;
  wire [7:0]p_9_out;
  wire [7:3]rd_pntr_plus1;
  wire [1:0]rd_rst_i;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire tmp_ram_rd_en;
  wire [7:1]wr_pntr_plus2;
  wire [0:0]wr_rst_i;

axi_chip2chip_0_clk_x_pntrs_69 \gntv_or_sync_fifo.gcx.clkx 
       (.E(p_14_out),
        .I1(\n_9_gntv_or_sync_fifo.gl0.rd ),
        .I2(\n_18_gntv_or_sync_fifo.gl0.rd ),
        .I3(p_8_out),
        .I4(wr_pntr_plus2),
        .I5(\n_0_gntv_or_sync_fifo.gl0.wr ),
        .I6(p_9_out),
        .I7(p_20_out),
        .I8(rd_rst_i[1]),
        .I9(wr_rst_i),
        .O1(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .O2(p_1_out),
        .O3(p_0_out),
        .O4(\n_10_gntv_or_sync_fifo.gcx.clkx ),
        .Q(rd_pntr_plus1),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk));
axi_chip2chip_0_rd_logic_70 \gntv_or_sync_fifo.gl0.rd 
       (.E(p_14_out),
        .I1(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .I2(Q),
        .I3(p_1_out),
        .O1(O1),
        .O2(rd_pntr_plus1),
        .O3(p_15_out),
        .O4(\n_9_gntv_or_sync_fifo.gl0.rd ),
        .O5(p_20_out),
        .O6(\n_18_gntv_or_sync_fifo.gl0.rd ),
        .Q({n_2_rstblk,rd_rst_i[0]}),
        .ar_ch_data_ready(ar_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_wr_logic_71 \gntv_or_sync_fifo.gl0.wr 
       (.I1(\n_10_gntv_or_sync_fifo.gcx.clkx ),
        .I2(n_0_rstblk),
        .O1(\n_0_gntv_or_sync_fifo.gl0.wr ),
        .O2(p_8_out),
        .O3(p_0_out),
        .O4(p_9_out),
        .Q(wr_pntr_plus2),
        .WEBWE(\n_8_gntv_or_sync_fifo.gl0.wr ),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
axi_chip2chip_0_memory_72 \gntv_or_sync_fifo.mem 
       (.E(p_15_out),
        .I1(I1),
        .O2(O2),
        .O4(p_9_out),
        .O5(p_20_out),
        .Q(rd_rst_i[0]),
        .WEBWE(\n_8_gntv_or_sync_fifo.gl0.wr ),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_reset_blk_ramfifo_73 rstblk
       (.O1({n_2_rstblk,rd_rst_i}),
        .Q({n_0_rstblk,wr_rst_i}),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module axi_chip2chip_0_fifo_generator_ramfifo__parameterized0
   (O1,
    s_axi_wready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_wdata,
    I2,
    rst_d2,
    br_fifo_reset,
    Q,
    wd_ch_data_ready,
    s_axi_wvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_wready;
  output [43:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_wdata;
  input [8:0]I2;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input wd_ch_data_ready;
  input s_axi_wvalid;
  input rst_full_gen_i;

  wire [8:0]I2;
  wire O1;
  wire [43:0]O2;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire \gwas.wsts/comp1 ;
  wire \gwas.wsts/comp2 ;
  wire \gwas.wsts/ram_full_i ;
  wire \n_0_gntv_or_sync_fifo.gcx.clkx ;
  wire n_0_rstblk;
  wire \n_2_gntv_or_sync_fifo.gl0.wr ;
  wire n_2_rstblk;
  wire \n_4_gntv_or_sync_fifo.gl0.wr ;
  wire \n_9_gntv_or_sync_fifo.gcx.clkx ;
  wire [7:0]p_0_out;
  wire p_15_out;
  wire [8:0]p_1_out;
  wire p_1_out_0;
  wire [8:0]p_20_out;
  wire [8:8]p_8_out;
  wire [8:0]p_9_out;
  wire [1:0]rd_rst_i;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire tmp_ram_rd_en;
  wire wd_ch_data_ready;
  wire [8:8]wr_pntr_plus2;
  wire [0:0]wr_rst_i;

axi_chip2chip_0_clk_x_pntrs__parameterized0 \gntv_or_sync_fifo.gcx.clkx 
       (.I1(p_8_out),
        .I2(wr_pntr_plus2),
        .I3(\n_2_gntv_or_sync_fifo.gl0.wr ),
        .I4(p_9_out),
        .I5(p_20_out),
        .I6(rd_rst_i[1]),
        .I7(wr_rst_i),
        .O1(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .O2(\n_9_gntv_or_sync_fifo.gcx.clkx ),
        .O3(p_1_out),
        .Q(p_0_out),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .comp1(\gwas.wsts/comp1 ),
        .comp2(\gwas.wsts/comp2 ),
        .p_1_out(p_1_out_0),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_wvalid(s_axi_wvalid));
axi_chip2chip_0_rd_logic__parameterized0 \gntv_or_sync_fifo.gl0.rd 
       (.E(p_15_out),
        .I1(Q),
        .O1(O1),
        .O2(p_20_out),
        .O3(p_1_out),
        .Q({n_2_rstblk,rd_rst_i[0]}),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wd_ch_data_ready(wd_ch_data_ready));
axi_chip2chip_0_wr_logic__parameterized0 \gntv_or_sync_fifo.gl0.wr 
       (.I1(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .I2(\n_9_gntv_or_sync_fifo.gcx.clkx ),
        .I3(p_0_out),
        .I4(n_0_rstblk),
        .O1(\n_2_gntv_or_sync_fifo.gl0.wr ),
        .O2(p_8_out),
        .O3(p_9_out),
        .Q(wr_pntr_plus2),
        .WEBWE(\n_4_gntv_or_sync_fifo.gl0.wr ),
        .comp1(\gwas.wsts/comp1 ),
        .comp2(\gwas.wsts/comp2 ),
        .p_1_out(p_1_out_0),
        .ram_full_i(\gwas.wsts/ram_full_i ),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
axi_chip2chip_0_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.E(p_15_out),
        .I2(I2),
        .O1(O2),
        .O2(p_20_out),
        .O3(p_9_out),
        .Q(rd_rst_i[0]),
        .WEBWE(\n_4_gntv_or_sync_fifo.gl0.wr ),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_reset_blk_ramfifo rstblk
       (.O1({n_2_rstblk,rd_rst_i}),
        .Q({n_0_rstblk,wr_rst_i}),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module axi_chip2chip_0_fifo_generator_ramfifo__parameterized0_14
   (O1,
    O2,
    rst_full_gen_i,
    O3,
    s_axi_rvalid,
    O4,
    s_aclk,
    clk_ph_out,
    pack_data_out,
    D,
    br_fifo_reset,
    rd_ch_data_valid,
    Q,
    E,
    s_axi_rready);
  output O1;
  output O2;
  output rst_full_gen_i;
  output [0:0]O3;
  output s_axi_rvalid;
  output [40:0]O4;
  input s_aclk;
  input clk_ph_out;
  input [32:0]pack_data_out;
  input [10:0]D;
  input br_fifo_reset;
  input rd_ch_data_valid;
  input [0:0]Q;
  input [0:0]E;
  input s_axi_rready;

  wire [10:0]D;
  wire [0:0]E;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire [40:0]O4;
  wire [0:0]Q;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire [3:0]\gras.rsts/c0/v1_reg ;
  wire [3:0]\gras.rsts/c1/v1_reg ;
  wire [3:0]\gwas.wsts/c1/v1_reg ;
  wire [3:0]\gwas.wsts/c2/v1_reg ;
  wire n_2_rstblk;
  wire n_4_rstblk;
  wire [8:0]p_0_out;
  wire p_15_out;
  wire [8:8]p_1_out;
  wire [8:0]p_20_out;
  wire p_3_out;
  wire [7:0]p_8_out;
  wire [8:0]p_9_out;
  wire [32:0]pack_data_out;
  wire rd_ch_data_valid;
  wire [7:0]rd_pntr_plus1;
  wire [1:0]rd_rst_i;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire tmp_ram_rd_en;
  wire [7:0]wr_pntr_plus2;
  wire [0:0]wr_rst_i;

axi_chip2chip_0_clk_x_pntrs__parameterized0_15 \gntv_or_sync_fifo.gcx.clkx 
       (.I1(p_8_out),
        .I2(wr_pntr_plus2),
        .I3(p_20_out),
        .I4(rd_pntr_plus1),
        .I5(p_9_out),
        .I6(rd_rst_i[1]),
        .I7(wr_rst_i),
        .O1(p_1_out),
        .Q(p_0_out),
        .clk_ph_out(clk_ph_out),
        .s_aclk(s_aclk),
        .v1_reg(\gwas.wsts/c1/v1_reg ),
        .v1_reg_0(\gwas.wsts/c2/v1_reg ),
        .v1_reg_1(\gras.rsts/c0/v1_reg ),
        .v1_reg_2(\gras.rsts/c1/v1_reg ));
axi_chip2chip_0_rd_logic__parameterized0_16 \gntv_or_sync_fifo.gl0.rd 
       (.E(p_15_out),
        .I1(p_1_out),
        .O1(p_20_out),
        .O2(rd_pntr_plus1),
        .Q({n_4_rstblk,rd_rst_i[0]}),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ));
axi_chip2chip_0_wr_logic__parameterized0_17 \gntv_or_sync_fifo.gl0.wr 
       (.E(p_3_out),
        .I1(O2),
        .I2(E),
        .I3(p_0_out),
        .I4(n_2_rstblk),
        .O1(O1),
        .O2(wr_pntr_plus2),
        .O3(O3),
        .O4(p_8_out),
        .O5(p_9_out),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .rst_full_gen_i(rst_full_gen_i),
        .v1_reg(\gwas.wsts/c1/v1_reg ),
        .v1_reg_0(\gwas.wsts/c2/v1_reg ));
axi_chip2chip_0_memory__parameterized0_18 \gntv_or_sync_fifo.mem 
       (.D(D),
        .E(p_3_out),
        .I1(p_15_out),
        .O1(p_20_out),
        .O4(O4),
        .O5(p_9_out),
        .Q(rd_rst_i[0]),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .s_aclk(s_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_reset_blk_ramfifo_19 rstblk
       (.O1({n_4_rstblk,rd_rst_i}),
        .O2(O2),
        .Q({n_2_rstblk,wr_rst_i}),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module axi_chip2chip_0_fifo_generator_ramfifo__parameterized1
   (O1,
    O2,
    D,
    O3,
    O4,
    O5,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O6,
    s_axi_bvalid,
    O36,
    O37,
    clk_ph_out,
    br_fifo_reset,
    s_aclk,
    I1,
    Q,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    br_ch_data_valid,
    rst_full_gen_i,
    s_axi_bready,
    I18);
  output O1;
  output O2;
  output [0:0]D;
  output O3;
  output O4;
  output O5;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output [1:0]O6;
  output s_axi_bvalid;
  output [1:0]O36;
  output [7:0]O37;
  input clk_ph_out;
  input br_fifo_reset;
  input s_aclk;
  input I1;
  input [7:0]Q;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input br_ch_data_valid;
  input rst_full_gen_i;
  input s_axi_bready;
  input [7:0]I18;

  wire [0:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [7:0]I18;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire [1:0]O36;
  wire [7:0]O37;
  wire O4;
  wire O5;
  wire [1:0]O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire br_ch_data_valid;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire \n_0_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_0_gntv_or_sync_fifo.gl0.rd ;
  wire n_0_rstblk;
  wire n_2_rstblk;
  wire \n_9_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_9_gntv_or_sync_fifo.gl0.rd ;
  wire [7:0]p_0_out;
  wire p_14_out;
  wire p_15_out;
  wire [7:0]p_1_out;
  wire [5:0]p_20_out;
  wire [7:0]p_8_out;
  wire [5:0]p_9_out;
  wire [4:0]rd_pntr_plus1;
  wire [1:0]rd_rst_i;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [0:0]wr_rst_i;

axi_chip2chip_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.E(p_14_out),
        .I1(\n_9_gntv_or_sync_fifo.gl0.rd ),
        .I2(p_8_out),
        .I3({O36,p_9_out}),
        .I4({O6,p_20_out}),
        .I5(rd_rst_i[1]),
        .I6(wr_rst_i),
        .O1(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .O2(p_1_out),
        .O3(\n_9_gntv_or_sync_fifo.gcx.clkx ),
        .O4(p_0_out),
        .Q(rd_pntr_plus1),
        .clk_ph_out(clk_ph_out),
        .s_aclk(s_aclk));
axi_chip2chip_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\n_0_gntv_or_sync_fifo.gl0.rd ),
        .I1(\n_0_gntv_or_sync_fifo.gcx.clkx ),
        .O1({O6,p_20_out}),
        .O2(p_1_out),
        .O3(\n_9_gntv_or_sync_fifo.gl0.rd ),
        .O4(rd_pntr_plus1),
        .O5(p_14_out),
        .O6(p_15_out),
        .Q(n_2_rstblk),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
axi_chip2chip_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.D(D),
        .I1(I1),
        .I2(\n_9_gntv_or_sync_fifo.gcx.clkx ),
        .I3(n_0_rstblk),
        .O1(O1),
        .O2(O2),
        .O3({O36,p_9_out}),
        .O4(p_0_out),
        .Q(p_8_out),
        .br_ch_data_valid(br_ch_data_valid),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i));
axi_chip2chip_0_memory__parameterized1 \gntv_or_sync_fifo.mem 
       (.E(\n_0_gntv_or_sync_fifo.gl0.rd ),
        .I1(p_9_out),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I19(rd_rst_i[0]),
        .I2(I2),
        .I20(p_15_out),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(p_20_out),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(O3),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O37(O37),
        .O4(O4),
        .O5(O5),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .s_aclk(s_aclk));
axi_chip2chip_0_reset_blk_ramfifo__parameterized0 rstblk
       (.O1({n_2_rstblk,rd_rst_i}),
        .Q({n_0_rstblk,wr_rst_i}),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module axi_chip2chip_0_fifo_generator_top
   (O1,
    O2,
    rst_full_gen_i,
    s_axi_awready,
    O3,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_awaddr,
    DIADI,
    br_fifo_reset,
    Q,
    aw_ch_data_ready,
    s_axi_awvalid);
  output O1;
  output O2;
  output rst_full_gen_i;
  output s_axi_awready;
  output [51:0]O3;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;
  input br_fifo_reset;
  input [0:0]Q;
  input aw_ch_data_ready;
  input s_axi_awvalid;

  wire [17:0]DIADI;
  wire O1;
  wire O2;
  wire [51:0]O3;
  wire [0:0]Q;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;

axi_chip2chip_0_fifo_generator_ramfifo \grf.rf 
       (.DIADI(DIADI),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module axi_chip2chip_0_fifo_generator_top_67
   (O1,
    s_axi_arready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_araddr,
    I1,
    rst_d2,
    br_fifo_reset,
    Q,
    ar_ch_data_ready,
    s_axi_arvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_arready;
  output [51:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_araddr;
  input [17:0]I1;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input ar_ch_data_ready;
  input s_axi_arvalid;
  input rst_full_gen_i;

  wire [17:0]I1;
  wire O1;
  wire [51:0]O2;
  wire [0:0]Q;
  wire ar_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;

axi_chip2chip_0_fifo_generator_ramfifo_68 \grf.rf 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .ar_ch_data_ready(ar_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module axi_chip2chip_0_fifo_generator_top__parameterized0
   (O1,
    s_axi_wready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_wdata,
    I2,
    rst_d2,
    br_fifo_reset,
    Q,
    wd_ch_data_ready,
    s_axi_wvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_wready;
  output [43:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_wdata;
  input [8:0]I2;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input wd_ch_data_ready;
  input s_axi_wvalid;
  input rst_full_gen_i;

  wire [8:0]I2;
  wire O1;
  wire [43:0]O2;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wd_ch_data_ready;

axi_chip2chip_0_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.I2(I2),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wd_ch_data_ready(wd_ch_data_ready));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module axi_chip2chip_0_fifo_generator_top__parameterized0_13
   (O1,
    O2,
    rst_full_gen_i,
    O3,
    s_axi_rvalid,
    O4,
    s_aclk,
    clk_ph_out,
    pack_data_out,
    D,
    br_fifo_reset,
    rd_ch_data_valid,
    Q,
    E,
    s_axi_rready);
  output O1;
  output O2;
  output rst_full_gen_i;
  output [0:0]O3;
  output s_axi_rvalid;
  output [40:0]O4;
  input s_aclk;
  input clk_ph_out;
  input [32:0]pack_data_out;
  input [10:0]D;
  input br_fifo_reset;
  input rd_ch_data_valid;
  input [0:0]Q;
  input [0:0]E;
  input s_axi_rready;

  wire [10:0]D;
  wire [0:0]E;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire [40:0]O4;
  wire [0:0]Q;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire rd_ch_data_valid;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;

axi_chip2chip_0_fifo_generator_ramfifo__parameterized0_14 \grf.rf 
       (.D(D),
        .E(E),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .Q(Q),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module axi_chip2chip_0_fifo_generator_top__parameterized1
   (O1,
    O2,
    D,
    O3,
    O4,
    O5,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O6,
    s_axi_bvalid,
    O36,
    O37,
    clk_ph_out,
    br_fifo_reset,
    s_aclk,
    I1,
    Q,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    br_ch_data_valid,
    rst_full_gen_i,
    s_axi_bready,
    I18);
  output O1;
  output O2;
  output [0:0]D;
  output O3;
  output O4;
  output O5;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output [1:0]O6;
  output s_axi_bvalid;
  output [1:0]O36;
  output [7:0]O37;
  input clk_ph_out;
  input br_fifo_reset;
  input s_aclk;
  input I1;
  input [7:0]Q;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input br_ch_data_valid;
  input rst_full_gen_i;
  input s_axi_bready;
  input [7:0]I18;

  wire [0:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [7:0]I18;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire [1:0]O36;
  wire [7:0]O37;
  wire O4;
  wire O5;
  wire [1:0]O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire br_ch_data_valid;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;

axi_chip2chip_0_fifo_generator_ramfifo__parameterized1 \grf.rf 
       (.D(D),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(O2),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(O3),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O37(O37),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .br_ch_data_valid(br_ch_data_valid),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module axi_chip2chip_0_fifo_generator_v12_0
   (O1,
    O2,
    rst_full_gen_i,
    s_axi_awready,
    O3,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_awaddr,
    DIADI,
    br_fifo_reset,
    Q,
    aw_ch_data_ready,
    s_axi_awvalid);
  output O1;
  output O2;
  output rst_full_gen_i;
  output s_axi_awready;
  output [51:0]O3;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;
  input br_fifo_reset;
  input [0:0]Q;
  input aw_ch_data_ready;
  input s_axi_awvalid;

  wire [17:0]DIADI;
  wire O1;
  wire O2;
  wire [51:0]O3;
  wire [0:0]Q;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;

axi_chip2chip_0_fifo_generator_v12_0_synth inst_fifo_gen
       (.DIADI(DIADI),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module axi_chip2chip_0_fifo_generator_v12_0_65
   (O1,
    s_axi_arready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_araddr,
    I1,
    rst_d2,
    br_fifo_reset,
    Q,
    ar_ch_data_ready,
    s_axi_arvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_arready;
  output [51:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_araddr;
  input [17:0]I1;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input ar_ch_data_ready;
  input s_axi_arvalid;
  input rst_full_gen_i;

  wire [17:0]I1;
  wire O1;
  wire [51:0]O2;
  wire [0:0]Q;
  wire ar_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;

axi_chip2chip_0_fifo_generator_v12_0_synth_66 inst_fifo_gen
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .ar_ch_data_ready(ar_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module axi_chip2chip_0_fifo_generator_v12_0__parameterized0
   (O1,
    s_axi_wready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_wdata,
    I2,
    rst_d2,
    br_fifo_reset,
    Q,
    wd_ch_data_ready,
    s_axi_wvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_wready;
  output [43:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_wdata;
  input [8:0]I2;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input wd_ch_data_ready;
  input s_axi_wvalid;
  input rst_full_gen_i;

  wire [8:0]I2;
  wire O1;
  wire [43:0]O2;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wd_ch_data_ready;

axi_chip2chip_0_fifo_generator_v12_0_synth__parameterized0 inst_fifo_gen
       (.I2(I2),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wd_ch_data_ready(wd_ch_data_ready));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module axi_chip2chip_0_fifo_generator_v12_0__parameterized0_11
   (O1,
    O2,
    rst_full_gen_i,
    O3,
    s_axi_rvalid,
    O4,
    s_aclk,
    clk_ph_out,
    pack_data_out,
    D,
    br_fifo_reset,
    rd_ch_data_valid,
    Q,
    E,
    s_axi_rready);
  output O1;
  output O2;
  output rst_full_gen_i;
  output [0:0]O3;
  output s_axi_rvalid;
  output [40:0]O4;
  input s_aclk;
  input clk_ph_out;
  input [32:0]pack_data_out;
  input [10:0]D;
  input br_fifo_reset;
  input rd_ch_data_valid;
  input [0:0]Q;
  input [0:0]E;
  input s_axi_rready;

  wire [10:0]D;
  wire [0:0]E;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire [40:0]O4;
  wire [0:0]Q;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire rd_ch_data_valid;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;

axi_chip2chip_0_fifo_generator_v12_0_synth__parameterized0_12 inst_fifo_gen
       (.D(D),
        .E(E),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .Q(Q),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) 
module axi_chip2chip_0_fifo_generator_v12_0__parameterized1
   (O1,
    O2,
    D,
    O3,
    O4,
    O5,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O6,
    s_axi_bvalid,
    O36,
    O37,
    clk_ph_out,
    br_fifo_reset,
    s_aclk,
    I1,
    Q,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    br_ch_data_valid,
    rst_full_gen_i,
    s_axi_bready,
    I18);
  output O1;
  output O2;
  output [0:0]D;
  output O3;
  output O4;
  output O5;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output [1:0]O6;
  output s_axi_bvalid;
  output [1:0]O36;
  output [7:0]O37;
  input clk_ph_out;
  input br_fifo_reset;
  input s_aclk;
  input I1;
  input [7:0]Q;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input br_ch_data_valid;
  input rst_full_gen_i;
  input s_axi_bready;
  input [7:0]I18;

  wire [0:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [7:0]I18;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire [1:0]O36;
  wire [7:0]O37;
  wire O4;
  wire O5;
  wire [1:0]O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire br_ch_data_valid;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;

axi_chip2chip_0_fifo_generator_v12_0_synth__parameterized1 inst_fifo_gen
       (.D(D),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(O2),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(O3),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O37(O37),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .br_ch_data_valid(br_ch_data_valid),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module axi_chip2chip_0_fifo_generator_v12_0_synth
   (O1,
    O2,
    rst_full_gen_i,
    s_axi_awready,
    O3,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_awaddr,
    DIADI,
    br_fifo_reset,
    Q,
    aw_ch_data_ready,
    s_axi_awvalid);
  output O1;
  output O2;
  output rst_full_gen_i;
  output s_axi_awready;
  output [51:0]O3;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;
  input br_fifo_reset;
  input [0:0]Q;
  input aw_ch_data_ready;
  input s_axi_awvalid;

  wire [17:0]DIADI;
  wire O1;
  wire O2;
  wire [51:0]O3;
  wire [0:0]Q;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;

axi_chip2chip_0_fifo_generator_top \gconvfifo.rf 
       (.DIADI(DIADI),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module axi_chip2chip_0_fifo_generator_v12_0_synth_66
   (O1,
    s_axi_arready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_araddr,
    I1,
    rst_d2,
    br_fifo_reset,
    Q,
    ar_ch_data_ready,
    s_axi_arvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_arready;
  output [51:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_araddr;
  input [17:0]I1;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input ar_ch_data_ready;
  input s_axi_arvalid;
  input rst_full_gen_i;

  wire [17:0]I1;
  wire O1;
  wire [51:0]O2;
  wire [0:0]Q;
  wire ar_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;

axi_chip2chip_0_fifo_generator_top_67 \gconvfifo.rf 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .ar_ch_data_ready(ar_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module axi_chip2chip_0_fifo_generator_v12_0_synth__parameterized0
   (O1,
    s_axi_wready,
    O2,
    axi_c2c_phy_clk,
    s_aclk,
    s_axi_wdata,
    I2,
    rst_d2,
    br_fifo_reset,
    Q,
    wd_ch_data_ready,
    s_axi_wvalid,
    rst_full_gen_i);
  output O1;
  output s_axi_wready;
  output [43:0]O2;
  input axi_c2c_phy_clk;
  input s_aclk;
  input [31:0]s_axi_wdata;
  input [8:0]I2;
  input rst_d2;
  input br_fifo_reset;
  input [0:0]Q;
  input wd_ch_data_ready;
  input s_axi_wvalid;
  input rst_full_gen_i;

  wire [8:0]I2;
  wire O1;
  wire [43:0]O2;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire wd_ch_data_ready;

axi_chip2chip_0_fifo_generator_top__parameterized0 \gconvfifo.rf 
       (.I2(I2),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .br_fifo_reset(br_fifo_reset),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .wd_ch_data_ready(wd_ch_data_ready));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module axi_chip2chip_0_fifo_generator_v12_0_synth__parameterized0_12
   (O1,
    O2,
    rst_full_gen_i,
    O3,
    s_axi_rvalid,
    O4,
    s_aclk,
    clk_ph_out,
    pack_data_out,
    D,
    br_fifo_reset,
    rd_ch_data_valid,
    Q,
    E,
    s_axi_rready);
  output O1;
  output O2;
  output rst_full_gen_i;
  output [0:0]O3;
  output s_axi_rvalid;
  output [40:0]O4;
  input s_aclk;
  input clk_ph_out;
  input [32:0]pack_data_out;
  input [10:0]D;
  input br_fifo_reset;
  input rd_ch_data_valid;
  input [0:0]Q;
  input [0:0]E;
  input s_axi_rready;

  wire [10:0]D;
  wire [0:0]E;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire [40:0]O4;
  wire [0:0]Q;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire [32:0]pack_data_out;
  wire rd_ch_data_valid;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;

axi_chip2chip_0_fifo_generator_top__parameterized0_13 \gconvfifo.rf 
       (.D(D),
        .E(E),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .Q(Q),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module axi_chip2chip_0_fifo_generator_v12_0_synth__parameterized1
   (O1,
    O2,
    D,
    O3,
    O4,
    O5,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O6,
    s_axi_bvalid,
    O36,
    O37,
    clk_ph_out,
    br_fifo_reset,
    s_aclk,
    I1,
    Q,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    br_ch_data_valid,
    rst_full_gen_i,
    s_axi_bready,
    I18);
  output O1;
  output O2;
  output [0:0]D;
  output O3;
  output O4;
  output O5;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output [1:0]O6;
  output s_axi_bvalid;
  output [1:0]O36;
  output [7:0]O37;
  input clk_ph_out;
  input br_fifo_reset;
  input s_aclk;
  input I1;
  input [7:0]Q;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input br_ch_data_valid;
  input rst_full_gen_i;
  input s_axi_bready;
  input [7:0]I18;

  wire [0:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [7:0]I18;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire [1:0]O36;
  wire [7:0]O37;
  wire O4;
  wire O5;
  wire [1:0]O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire br_ch_data_valid;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire rst_full_gen_i;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;

axi_chip2chip_0_fifo_generator_top__parameterized1 \gconvfifo.rf 
       (.D(D),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(O2),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(O3),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O37(O37),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .br_ch_data_valid(br_ch_data_valid),
        .br_fifo_reset(br_fifo_reset),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module axi_chip2chip_0_memory
   (O3,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_awaddr,
    DIADI,
    E);
  output [51:0]O3;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_awaddr;
  input [17:0]DIADI;
  input [0:0]E;

  wire [17:0]DIADI;
  wire [0:0]E;
  wire [51:0]O3;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire [51:0]doutb;
  wire s_aclk;
  wire [31:0]s_axi_awaddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_v8_2__parameterized0 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .DIADI(DIADI),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_awaddr(s_axi_awaddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[0]),
        .Q(O3[0]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[10] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[10]),
        .Q(O3[10]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[11] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[11]),
        .Q(O3[11]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[12] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[12]),
        .Q(O3[12]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[13] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[13]),
        .Q(O3[13]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[14] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[14]),
        .Q(O3[14]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[15] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[15]),
        .Q(O3[15]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[16] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[16]),
        .Q(O3[16]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[17] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[17]),
        .Q(O3[17]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[18] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[18]),
        .Q(O3[18]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[19] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[19]),
        .Q(O3[19]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[1]),
        .Q(O3[1]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[20] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[20]),
        .Q(O3[20]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[21] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[21]),
        .Q(O3[21]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[22] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[22]),
        .Q(O3[22]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[23] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[23]),
        .Q(O3[23]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[24] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[24]),
        .Q(O3[24]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[25] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[25]),
        .Q(O3[25]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[26] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[26]),
        .Q(O3[26]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[27] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[27]),
        .Q(O3[27]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[28] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[28]),
        .Q(O3[28]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[29] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[29]),
        .Q(O3[29]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[2]),
        .Q(O3[2]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[30] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[30]),
        .Q(O3[30]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[31] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[31]),
        .Q(O3[31]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[32] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[32]),
        .Q(O3[32]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[33] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[33]),
        .Q(O3[33]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[34] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[34]),
        .Q(O3[34]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[35] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[35]),
        .Q(O3[35]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[36] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[36]),
        .Q(O3[36]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[37] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[37]),
        .Q(O3[37]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[38] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[38]),
        .Q(O3[38]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[39] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[39]),
        .Q(O3[39]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[3]),
        .Q(O3[3]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[40] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[40]),
        .Q(O3[40]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[41] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[41]),
        .Q(O3[41]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[42] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[42]),
        .Q(O3[42]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[43] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[43]),
        .Q(O3[43]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[44] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[44]),
        .Q(O3[44]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[45] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[45]),
        .Q(O3[45]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[46] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[46]),
        .Q(O3[46]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[47] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[47]),
        .Q(O3[47]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[48] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[48]),
        .Q(O3[48]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[49] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[49]),
        .Q(O3[49]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[4]),
        .Q(O3[4]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[50] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[50]),
        .Q(O3[50]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[51] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[51]),
        .Q(O3[51]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[5]),
        .Q(O3[5]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[6]),
        .Q(O3[6]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[7]),
        .Q(O3[7]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[8]),
        .Q(O3[8]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[9] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[9]),
        .Q(O3[9]),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module axi_chip2chip_0_memory_72
   (O2,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O5,
    O4,
    s_axi_araddr,
    I1,
    E);
  output [51:0]O2;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [7:0]O5;
  input [7:0]O4;
  input [31:0]s_axi_araddr;
  input [17:0]I1;
  input [0:0]E;

  wire [0:0]E;
  wire [17:0]I1;
  wire [51:0]O2;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire [51:0]doutb;
  wire s_aclk;
  wire [31:0]s_axi_araddr;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_v8_2__parameterized0_74 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .I1(I1),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_araddr(s_axi_araddr),
        .tmp_ram_rd_en(tmp_ram_rd_en));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[0]),
        .Q(O2[0]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[10] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[10]),
        .Q(O2[10]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[11] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[11]),
        .Q(O2[11]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[12] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[12]),
        .Q(O2[12]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[13] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[13]),
        .Q(O2[13]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[14] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[14]),
        .Q(O2[14]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[15] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[15]),
        .Q(O2[15]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[16] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[16]),
        .Q(O2[16]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[17] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[17]),
        .Q(O2[17]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[18] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[18]),
        .Q(O2[18]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[19] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[19]),
        .Q(O2[19]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[1]),
        .Q(O2[1]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[20] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[20]),
        .Q(O2[20]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[21] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[21]),
        .Q(O2[21]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[22] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[22]),
        .Q(O2[22]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[23] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[23]),
        .Q(O2[23]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[24] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[24]),
        .Q(O2[24]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[25] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[25]),
        .Q(O2[25]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[26] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[26]),
        .Q(O2[26]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[27] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[27]),
        .Q(O2[27]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[28] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[28]),
        .Q(O2[28]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[29] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[29]),
        .Q(O2[29]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[2]),
        .Q(O2[2]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[30] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[30]),
        .Q(O2[30]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[31] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[31]),
        .Q(O2[31]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[32] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[32]),
        .Q(O2[32]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[33] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[33]),
        .Q(O2[33]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[34] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[34]),
        .Q(O2[34]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[35] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[35]),
        .Q(O2[35]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[36] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[36]),
        .Q(O2[36]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[37] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[37]),
        .Q(O2[37]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[38] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[38]),
        .Q(O2[38]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[39] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[39]),
        .Q(O2[39]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[3]),
        .Q(O2[3]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[40] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[40]),
        .Q(O2[40]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[41] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[41]),
        .Q(O2[41]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[42] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[42]),
        .Q(O2[42]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[43] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[43]),
        .Q(O2[43]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[44] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[44]),
        .Q(O2[44]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[45] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[45]),
        .Q(O2[45]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[46] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[46]),
        .Q(O2[46]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[47] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[47]),
        .Q(O2[47]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[48] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[48]),
        .Q(O2[48]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[49] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[49]),
        .Q(O2[49]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[4]),
        .Q(O2[4]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[50] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[50]),
        .Q(O2[50]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[51] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[51]),
        .Q(O2[51]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[5]),
        .Q(O2[5]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[6]),
        .Q(O2[6]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[7]),
        .Q(O2[7]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[8]),
        .Q(O2[8]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[9] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[9]),
        .Q(O2[9]),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module axi_chip2chip_0_memory__parameterized0
   (O1,
    tmp_ram_rd_en,
    axi_c2c_phy_clk,
    Q,
    WEBWE,
    s_aclk,
    O2,
    O3,
    s_axi_wdata,
    I2,
    E);
  output [43:0]O1;
  input tmp_ram_rd_en;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]WEBWE;
  input s_aclk;
  input [8:0]O2;
  input [8:0]O3;
  input [31:0]s_axi_wdata;
  input [8:0]I2;
  input [0:0]E;

  wire [0:0]E;
  wire [8:0]I2;
  wire [43:0]O1;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire axi_c2c_phy_clk;
  wire [43:0]doutb;
  wire s_aclk;
  wire [31:0]s_axi_wdata;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_v8_2__parameterized2 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .I2(I2),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .WEBWE(WEBWE),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .tmp_ram_rd_en(tmp_ram_rd_en));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[0]),
        .Q(O1[0]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[10] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[10]),
        .Q(O1[10]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[11] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[11]),
        .Q(O1[11]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[12] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[12]),
        .Q(O1[12]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[13] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[13]),
        .Q(O1[13]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[14] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[14]),
        .Q(O1[14]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[15] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[15]),
        .Q(O1[15]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[16] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[16]),
        .Q(O1[16]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[17] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[17]),
        .Q(O1[17]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[18] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[18]),
        .Q(O1[18]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[19] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[19]),
        .Q(O1[19]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[1]),
        .Q(O1[1]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[20] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[20]),
        .Q(O1[20]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[21] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[21]),
        .Q(O1[21]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[22] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[22]),
        .Q(O1[22]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[23] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[23]),
        .Q(O1[23]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[24] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[24]),
        .Q(O1[24]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[25] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[25]),
        .Q(O1[25]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[26] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[26]),
        .Q(O1[26]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[27] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[27]),
        .Q(O1[27]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[28] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[28]),
        .Q(O1[28]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[29] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[29]),
        .Q(O1[29]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[2]),
        .Q(O1[2]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[30] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[30]),
        .Q(O1[30]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[31] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[31]),
        .Q(O1[31]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[32] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[32]),
        .Q(O1[32]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[33] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[33]),
        .Q(O1[33]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[34] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[34]),
        .Q(O1[34]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[35] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[35]),
        .Q(O1[35]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[36] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[36]),
        .Q(O1[36]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[37] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[37]),
        .Q(O1[37]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[38] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[38]),
        .Q(O1[38]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[39] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[39]),
        .Q(O1[39]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[3]),
        .Q(O1[3]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[40] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[40]),
        .Q(O1[40]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[41] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[41]),
        .Q(O1[41]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[42] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[42]),
        .Q(O1[42]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[43] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[43]),
        .Q(O1[43]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[4]),
        .Q(O1[4]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[5]),
        .Q(O1[5]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[6]),
        .Q(O1[6]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[7]),
        .Q(O1[7]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[8]),
        .Q(O1[8]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[9] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(doutb[9]),
        .Q(O1[9]),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module axi_chip2chip_0_memory__parameterized0_18
   (O4,
    tmp_ram_rd_en,
    s_aclk,
    Q,
    E,
    clk_ph_out,
    O1,
    O5,
    pack_data_out,
    D,
    I1);
  output [40:0]O4;
  input tmp_ram_rd_en;
  input s_aclk;
  input [0:0]Q;
  input [0:0]E;
  input clk_ph_out;
  input [8:0]O1;
  input [8:0]O5;
  input [32:0]pack_data_out;
  input [10:0]D;
  input [0:0]I1;

  wire [10:0]D;
  wire [0:0]E;
  wire [0:0]I1;
  wire [8:0]O1;
  wire [40:0]O4;
  wire [8:0]O5;
  wire [0:0]Q;
  wire clk_ph_out;
  wire [40:0]doutb;
  wire [32:0]pack_data_out;
  wire s_aclk;
  wire tmp_ram_rd_en;

axi_chip2chip_0_blk_mem_gen_v8_2__parameterized2_20 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .E(E),
        .I1(D),
        .O1(O1),
        .O5(O5),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .pack_data_out(pack_data_out),
        .s_aclk(s_aclk),
        .tmp_ram_rd_en(tmp_ram_rd_en));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[0]),
        .Q(O4[0]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[10]),
        .Q(O4[10]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[11]),
        .Q(O4[11]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[12]),
        .Q(O4[12]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[13]),
        .Q(O4[13]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[14]),
        .Q(O4[14]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[15]),
        .Q(O4[15]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[16]),
        .Q(O4[16]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[17]),
        .Q(O4[17]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[18]),
        .Q(O4[18]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[19]),
        .Q(O4[19]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[1]),
        .Q(O4[1]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[20]),
        .Q(O4[20]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[21]),
        .Q(O4[21]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[22]),
        .Q(O4[22]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[23]),
        .Q(O4[23]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[24]),
        .Q(O4[24]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[25]),
        .Q(O4[25]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[26]),
        .Q(O4[26]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[27]),
        .Q(O4[27]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[28]),
        .Q(O4[28]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[29]),
        .Q(O4[29]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[2]),
        .Q(O4[2]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[30]),
        .Q(O4[30]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[31]),
        .Q(O4[31]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[32]),
        .Q(O4[32]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[33]),
        .Q(O4[33]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[34]),
        .Q(O4[34]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[35]),
        .Q(O4[35]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[36]),
        .Q(O4[36]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[37]),
        .Q(O4[37]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[38]),
        .Q(O4[38]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[39]),
        .Q(O4[39]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[3]),
        .Q(O4[3]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[40]),
        .Q(O4[40]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[4]),
        .Q(O4[4]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[5]),
        .Q(O4[5]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[6]),
        .Q(O4[6]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[7]),
        .Q(O4[7]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[8]),
        .Q(O4[8]),
        .R(Q));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(I1),
        .D(doutb[9]),
        .Q(O4[9]),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module axi_chip2chip_0_memory__parameterized1
   (O3,
    O4,
    O5,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O37,
    Q,
    clk_ph_out,
    I2,
    O1,
    I1,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    E,
    I18,
    s_aclk,
    I19,
    I20);
  output O3;
  output O4;
  output O5;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output [7:0]O37;
  input [7:0]Q;
  input clk_ph_out;
  input I2;
  input [5:0]O1;
  input [5:0]I1;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input [0:0]E;
  input [7:0]I18;
  input s_aclk;
  input [0:0]I19;
  input [0:0]I20;

  wire [0:0]E;
  wire [5:0]I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire [7:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire [5:0]O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire [7:0]O37;
  wire O4;
  wire O5;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire clk_ph_out;
  wire [7:0]p_0_out;
  wire s_aclk;

axi_chip2chip_0_dmem \gdm.dm 
       (.E(E),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I19(I19),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(p_0_out),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(O3),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O4(O4),
        .O5(O5),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .s_aclk(s_aclk));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(I20),
        .CLR(I19),
        .D(p_0_out[0]),
        .Q(O37[0]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(I20),
        .CLR(I19),
        .D(p_0_out[1]),
        .Q(O37[1]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(I20),
        .CLR(I19),
        .D(p_0_out[2]),
        .Q(O37[2]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(I20),
        .CLR(I19),
        .D(p_0_out[3]),
        .Q(O37[3]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(I20),
        .CLR(I19),
        .D(p_0_out[4]),
        .Q(O37[4]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(I20),
        .CLR(I19),
        .D(p_0_out[5]),
        .Q(O37[5]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(I20),
        .CLR(I19),
        .D(p_0_out[6]),
        .Q(O37[6]));
FDCE #(
    .INIT(1'b0)) 
     \goreg_dm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(I20),
        .CLR(I19),
        .D(p_0_out[7]),
        .Q(O37[7]));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module axi_chip2chip_0_rd_bin_cntr
   (O1,
    O3,
    O4,
    Q,
    O2,
    I1,
    E,
    s_aclk,
    I2);
  output [7:0]O1;
  output O3;
  output O4;
  output [4:0]Q;
  input [7:0]O2;
  input I1;
  input [0:0]E;
  input s_aclk;
  input [0:0]I2;

  wire [0:0]E;
  wire I1;
  wire [0:0]I2;
  wire [7:0]O1;
  wire [7:0]O2;
  wire O3;
  wire O4;
  wire [4:0]Q;
  wire \gras.rsts/comp0 ;
  wire \n_0_gc0.count[7]_i_2__1 ;
  wire n_0_ram_empty_fb_i_i_4__1;
  wire n_0_ram_empty_fb_i_i_5__1;
  wire [7:0]plusOp__8;
  wire [7:5]rd_pntr_plus1;
  wire s_aclk;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1__3 
       (.I0(Q[0]),
        .O(plusOp__8[0]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__8[1]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__8[2]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__8[3]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[4]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__8[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gc0.count[5]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp__8[5]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[6]_i_1__3 
       (.I0(\n_0_gc0.count[7]_i_2__1 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp__8[6]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[7]_i_1__3 
       (.I0(\n_0_gc0.count[7]_i_2__1 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp__8[7]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gc0.count[7]_i_2__1 
       (.I0(rd_pntr_plus1[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\n_0_gc0.count[7]_i_2__1 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[0]),
        .Q(O1[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[1]),
        .Q(O1[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[2]),
        .Q(O1[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[3]),
        .Q(O1[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[4]),
        .Q(O1[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(rd_pntr_plus1[5]),
        .Q(O1[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(rd_pntr_plus1[6]),
        .Q(O1[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(rd_pntr_plus1[7]),
        .Q(O1[7]));
(* counter = "13" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__8[0]),
        .PRE(I2),
        .Q(Q[0]));
(* counter = "13" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__8[1]),
        .Q(Q[1]));
(* counter = "13" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__8[2]),
        .Q(Q[2]));
(* counter = "13" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__8[3]),
        .Q(Q[3]));
(* counter = "13" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__8[4]),
        .Q(Q[4]));
(* counter = "13" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__8[5]),
        .Q(rd_pntr_plus1[5]));
(* counter = "13" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__8[6]),
        .Q(rd_pntr_plus1[6]));
(* counter = "13" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__8[7]),
        .Q(rd_pntr_plus1[7]));
LUT2 #(
    .INIT(4'hE)) 
     ram_empty_fb_i_i_1__3
       (.I0(\gras.rsts/comp0 ),
        .I1(I1),
        .O(O4));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     ram_empty_fb_i_i_2__1
       (.I0(O1[7]),
        .I1(O2[7]),
        .I2(O1[6]),
        .I3(O2[6]),
        .I4(n_0_ram_empty_fb_i_i_4__1),
        .I5(n_0_ram_empty_fb_i_i_5__1),
        .O(\gras.rsts/comp0 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_4__1
       (.I0(O1[0]),
        .I1(O2[0]),
        .I2(O1[1]),
        .I3(O2[1]),
        .I4(O2[2]),
        .I5(O1[2]),
        .O(n_0_ram_empty_fb_i_i_4__1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_5__1
       (.I0(O1[3]),
        .I1(O2[3]),
        .I2(O1[4]),
        .I3(O2[4]),
        .I4(O2[5]),
        .I5(O1[5]),
        .O(n_0_ram_empty_fb_i_i_5__1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_8__1
       (.I0(rd_pntr_plus1[5]),
        .I1(O2[5]),
        .I2(rd_pntr_plus1[7]),
        .I3(O2[7]),
        .I4(O2[6]),
        .I5(rd_pntr_plus1[6]),
        .O(O3));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module axi_chip2chip_0_rd_bin_cntr_56
   (Q,
    O4,
    O5,
    O6,
    I3,
    E,
    axi_c2c_phy_clk,
    I1);
  output [4:0]Q;
  output O4;
  output [7:0]O5;
  output O6;
  input [7:0]I3;
  input [0:0]E;
  input axi_c2c_phy_clk;
  input [0:0]I1;

  wire [0:0]E;
  wire [0:0]I1;
  wire [7:0]I3;
  wire O4;
  wire [7:0]O5;
  wire O6;
  wire [4:0]Q;
  wire axi_c2c_phy_clk;
  wire \n_0_gc0.count[7]_i_2 ;
  wire n_0_ram_empty_fb_i_i_7;
  wire n_0_ram_empty_fb_i_i_8;
  wire [7:0]plusOp;
  wire [2:0]rd_pntr_plus1;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(Q[0]),
        .O(plusOp[3]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(plusOp[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gc0.count[5]_i_1 
       (.I0(Q[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(plusOp[5]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[6]_i_1 
       (.I0(\n_0_gc0.count[7]_i_2 ),
        .I1(Q[3]),
        .O(plusOp[6]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[7]_i_1 
       (.I0(\n_0_gc0.count[7]_i_2 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(plusOp[7]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gc0.count[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(Q[1]),
        .O(\n_0_gc0.count[7]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(rd_pntr_plus1[0]),
        .Q(O5[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(rd_pntr_plus1[1]),
        .Q(O5[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(rd_pntr_plus1[2]),
        .Q(O5[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[0]),
        .Q(O5[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[1]),
        .Q(O5[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[2]),
        .Q(O5[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[3]),
        .Q(O5[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[4]),
        .Q(O5[7]));
(* counter = "5" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(I1),
        .Q(rd_pntr_plus1[0]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[3]),
        .Q(Q[0]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[4]),
        .Q(Q[1]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[5]),
        .Q(Q[2]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[6]),
        .Q(Q[3]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp[7]),
        .Q(Q[4]));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     ram_empty_fb_i_i_3
       (.I0(O5[5]),
        .I1(I3[5]),
        .I2(O5[4]),
        .I3(I3[4]),
        .I4(n_0_ram_empty_fb_i_i_7),
        .I5(n_0_ram_empty_fb_i_i_8),
        .O(O4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_6
       (.I0(rd_pntr_plus1[2]),
        .I1(I3[2]),
        .I2(rd_pntr_plus1[1]),
        .I3(I3[1]),
        .I4(I3[0]),
        .I5(rd_pntr_plus1[0]),
        .O(O6));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_7
       (.I0(O5[3]),
        .I1(I3[3]),
        .I2(O5[2]),
        .I3(I3[2]),
        .I4(I3[1]),
        .I5(O5[1]),
        .O(n_0_ram_empty_fb_i_i_7));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_8
       (.I0(O5[0]),
        .I1(I3[0]),
        .I2(O5[6]),
        .I3(I3[6]),
        .I4(I3[7]),
        .I5(O5[7]),
        .O(n_0_ram_empty_fb_i_i_8));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module axi_chip2chip_0_rd_bin_cntr_84
   (Q,
    O4,
    O5,
    O6,
    I3,
    E,
    axi_c2c_phy_clk,
    I1);
  output [4:0]Q;
  output O4;
  output [7:0]O5;
  output O6;
  input [7:0]I3;
  input [0:0]E;
  input axi_c2c_phy_clk;
  input [0:0]I1;

  wire [0:0]E;
  wire [0:0]I1;
  wire [7:0]I3;
  wire O4;
  wire [7:0]O5;
  wire O6;
  wire [4:0]Q;
  wire axi_c2c_phy_clk;
  wire \n_0_gc0.count[7]_i_2__0 ;
  wire n_0_ram_empty_fb_i_i_7__0;
  wire n_0_ram_empty_fb_i_i_8__0;
  wire [7:0]plusOp__0;
  wire [2:0]rd_pntr_plus1;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp__0[0]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp__0[1]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[2]_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp__0[2]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1__0 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(Q[0]),
        .O(plusOp__0[3]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[4]_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(plusOp__0[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gc0.count[5]_i_1__0 
       (.I0(Q[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(plusOp__0[5]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[6]_i_1__0 
       (.I0(\n_0_gc0.count[7]_i_2__0 ),
        .I1(Q[3]),
        .O(plusOp__0[6]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[7]_i_1__0 
       (.I0(\n_0_gc0.count[7]_i_2__0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(plusOp__0[7]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gc0.count[7]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(Q[1]),
        .O(\n_0_gc0.count[7]_i_2__0 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(rd_pntr_plus1[0]),
        .Q(O5[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(rd_pntr_plus1[1]),
        .Q(O5[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(rd_pntr_plus1[2]),
        .Q(O5[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[0]),
        .Q(O5[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[1]),
        .Q(O5[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[2]),
        .Q(O5[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[3]),
        .Q(O5[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(Q[4]),
        .Q(O5[7]));
(* counter = "7" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(I1),
        .Q(rd_pntr_plus1[0]));
(* counter = "7" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__0[1]),
        .Q(rd_pntr_plus1[1]));
(* counter = "7" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__0[2]),
        .Q(rd_pntr_plus1[2]));
(* counter = "7" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__0[3]),
        .Q(Q[0]));
(* counter = "7" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__0[4]),
        .Q(Q[1]));
(* counter = "7" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__0[5]),
        .Q(Q[2]));
(* counter = "7" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__0[6]),
        .Q(Q[3]));
(* counter = "7" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(I1),
        .D(plusOp__0[7]),
        .Q(Q[4]));
LUT6 #(
    .INIT(64'h9009000000000000)) 
     ram_empty_fb_i_i_3__0
       (.I0(O5[5]),
        .I1(I3[5]),
        .I2(O5[4]),
        .I3(I3[4]),
        .I4(n_0_ram_empty_fb_i_i_7__0),
        .I5(n_0_ram_empty_fb_i_i_8__0),
        .O(O4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_6__0
       (.I0(rd_pntr_plus1[2]),
        .I1(I3[2]),
        .I2(rd_pntr_plus1[1]),
        .I3(I3[1]),
        .I4(I3[0]),
        .I5(rd_pntr_plus1[0]),
        .O(O6));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_7__0
       (.I0(O5[3]),
        .I1(I3[3]),
        .I2(O5[2]),
        .I3(I3[2]),
        .I4(I3[1]),
        .I5(O5[1]),
        .O(n_0_ram_empty_fb_i_i_7__0));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_empty_fb_i_i_8__0
       (.I0(O5[0]),
        .I1(I3[0]),
        .I2(O5[6]),
        .I3(I3[6]),
        .I4(I3[7]),
        .I5(O5[7]),
        .O(n_0_ram_empty_fb_i_i_8__0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module axi_chip2chip_0_rd_bin_cntr__parameterized0
   (O1,
    v1_reg,
    O2,
    v1_reg_0,
    E,
    comp1,
    comp0,
    O3,
    axi_c2c_phy_clk,
    Q);
  output O1;
  output [4:0]v1_reg;
  output [8:0]O2;
  output [4:0]v1_reg_0;
  input [0:0]E;
  input comp1;
  input comp0;
  input [8:0]O3;
  input axi_c2c_phy_clk;
  input [0:0]Q;

  wire [0:0]E;
  wire O1;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire comp0;
  wire comp1;
  wire \n_0_gc0.count[8]_i_2 ;
  wire [8:0]plusOp__1;
  wire [8:0]rd_pntr_plus1;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1__1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp__1[0]));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1__1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp__1[1]));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[2]_i_1__1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp__1[2]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1__1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp__1[3]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[4]_i_1__1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp__1[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gc0.count[5]_i_1__1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp__1[5]));
LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[6]_i_1__1 
       (.I0(\n_0_gc0.count[8]_i_2 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp__1[6]));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[7]_i_1__1 
       (.I0(\n_0_gc0.count[8]_i_2 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp__1[7]));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[8]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\n_0_gc0.count[8]_i_2 ),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[8]),
        .O(plusOp__1[8]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gc0.count[8]_i_2 
       (.I0(rd_pntr_plus1[5]),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(rd_pntr_plus1[4]),
        .O(\n_0_gc0.count[8]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[0]),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[5]),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[6]),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[7]),
        .Q(O2[7]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(rd_pntr_plus1[8]),
        .Q(O2[8]));
(* counter = "9" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .D(plusOp__1[0]),
        .PRE(Q),
        .Q(rd_pntr_plus1[0]));
(* counter = "9" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__1[1]),
        .Q(rd_pntr_plus1[1]));
(* counter = "9" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__1[2]),
        .Q(rd_pntr_plus1[2]));
(* counter = "9" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__1[3]),
        .Q(rd_pntr_plus1[3]));
(* counter = "9" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__1[4]),
        .Q(rd_pntr_plus1[4]));
(* counter = "9" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__1[5]),
        .Q(rd_pntr_plus1[5]));
(* counter = "9" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__1[6]),
        .Q(rd_pntr_plus1[6]));
(* counter = "9" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__1[7]),
        .Q(rd_pntr_plus1[7]));
(* counter = "9" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__1[8]),
        .Q(rd_pntr_plus1[8]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(O2[0]),
        .I1(O3[0]),
        .I2(O2[1]),
        .I3(O3[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(O3[0]),
        .I2(O3[1]),
        .I3(rd_pntr_plus1[1]),
        .O(v1_reg_0[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(O2[2]),
        .I1(O3[2]),
        .I2(O2[3]),
        .I3(O3[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(O3[2]),
        .I2(O3[3]),
        .I3(rd_pntr_plus1[3]),
        .O(v1_reg_0[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(O2[4]),
        .I1(O3[4]),
        .I2(O2[5]),
        .I3(O3[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(O3[4]),
        .I2(O3[5]),
        .I3(rd_pntr_plus1[5]),
        .O(v1_reg_0[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(O2[6]),
        .I1(O3[6]),
        .I2(O2[7]),
        .I3(O3[7]),
        .O(v1_reg[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(O3[6]),
        .I2(O3[7]),
        .I3(rd_pntr_plus1[7]),
        .O(v1_reg_0[3]));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(O2[8]),
        .I1(O3[8]),
        .O(v1_reg[4]));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[8]),
        .I1(O3[8]),
        .O(v1_reg_0[4]));
LUT3 #(
    .INIT(8'hF8)) 
     ram_empty_fb_i_i_1__1
       (.I0(E),
        .I1(comp1),
        .I2(comp0),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module axi_chip2chip_0_rd_bin_cntr__parameterized0_32
   (O1,
    O2,
    O3,
    O4,
    Q,
    I1,
    comp0,
    E,
    comp1,
    s_aclk,
    I2);
  output O1;
  output [8:0]O2;
  output O3;
  output O4;
  output [7:0]Q;
  input [0:0]I1;
  input comp0;
  input [0:0]E;
  input comp1;
  input s_aclk;
  input [0:0]I2;

  wire [0:0]E;
  wire [0:0]I1;
  wire [0:0]I2;
  wire O1;
  wire [8:0]O2;
  wire O3;
  wire O4;
  wire [7:0]Q;
  wire comp0;
  wire comp1;
  wire \n_0_gc0.count[8]_i_2__0 ;
  wire [8:0]plusOp__7;
  wire [8:8]rd_pntr_plus1;
  wire s_aclk;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1__2 
       (.I0(Q[0]),
        .O(plusOp__7[0]));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__7[1]));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__7[2]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__7[3]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__7[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gc0.count[5]_i_1__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__7[5]));
LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[6]_i_1__2 
       (.I0(\n_0_gc0.count[8]_i_2__0 ),
        .I1(Q[6]),
        .O(plusOp__7[6]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[7]_i_1__2 
       (.I0(\n_0_gc0.count[8]_i_2__0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__7[7]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\n_0_gc0.count[8]_i_2__0 ),
        .I2(Q[7]),
        .I3(rd_pntr_plus1),
        .O(plusOp__7[8]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gc0.count[8]_i_2__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\n_0_gc0.count[8]_i_2__0 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[0]),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[5]),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[6]),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[7]),
        .Q(O2[7]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(rd_pntr_plus1),
        .Q(O2[8]));
(* counter = "11" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__7[0]),
        .PRE(I2),
        .Q(Q[0]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__7[1]),
        .Q(Q[1]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__7[2]),
        .Q(Q[2]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__7[3]),
        .Q(Q[3]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__7[4]),
        .Q(Q[4]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__7[5]),
        .Q(Q[5]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__7[6]),
        .Q(Q[6]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__7[7]),
        .Q(Q[7]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__7[8]),
        .Q(rd_pntr_plus1));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__3 
       (.I0(O2[8]),
        .I1(I1),
        .O(O1));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__4 
       (.I0(rd_pntr_plus1),
        .I1(I1),
        .O(O3));
LUT3 #(
    .INIT(8'hEA)) 
     ram_empty_fb_i_i_1__2
       (.I0(comp0),
        .I1(E),
        .I2(comp1),
        .O(O4));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module axi_chip2chip_0_rd_fwft
   (O1,
    E,
    O2,
    axi_c2c_phy_clk,
    Q,
    I1,
    wd_ch_data_ready,
    p_18_out);
  output O1;
  output [0:0]E;
  output [0:0]O2;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]I1;
  input wd_ch_data_ready;
  input p_18_out;

  wire [0:0]E;
  wire [0:0]I1;
  wire O1;
  wire [0:0]O2;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;
  wire wd_ch_data_ready;

(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(empty_fwft_fb));
LUT6 #(
    .INIT(64'hFF000000FF08FF00)) 
     empty_fwft_i_i_1__1
       (.I0(wd_ch_data_ready),
        .I1(I1),
        .I2(O1),
        .I3(empty_fwft_fb),
        .I4(curr_fwft_state),
        .I5(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(O1));
LUT6 #(
    .INIT(64'h0000000040FFFFFF)) 
     \gc0.count_d1[8]_i_1 
       (.I0(O1),
        .I1(I1),
        .I2(wd_ch_data_ready),
        .I3(curr_fwft_state),
        .I4(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I5(p_18_out),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT5 #(
    .INIT(32'h0800FF00)) 
     \goreg_bm.dout_i[43]_i_1 
       (.I0(wd_ch_data_ready),
        .I1(I1),
        .I2(O1),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I4(curr_fwft_state),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT5 #(
    .INIT(32'hFFFFBF00)) 
     \gpregsm1.curr_fwft_state[0]_i_1__1 
       (.I0(O1),
        .I1(I1),
        .I2(wd_ch_data_ready),
        .I3(curr_fwft_state),
        .I4(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(next_fwft_state[0]));
LUT6 #(
    .INIT(64'h8AAA0000FFFFFFFF)) 
     \gpregsm1.curr_fwft_state[1]_i_1__1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(O1),
        .I2(I1),
        .I3(wd_ch_data_ready),
        .I4(curr_fwft_state),
        .I5(p_18_out),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[1]),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module axi_chip2chip_0_rd_fwft_30
   (tmp_ram_rd_en,
    E,
    s_axi_rvalid,
    O1,
    s_aclk,
    Q,
    s_axi_rready,
    p_18_out);
  output tmp_ram_rd_en;
  output [0:0]E;
  output s_axi_rvalid;
  output [0:0]O1;
  input s_aclk;
  input [1:0]Q;
  input s_axi_rready;
  input p_18_out;

  wire [0:0]E;
  wire [0:0]O1;
  wire [1:0]Q;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire n_0_empty_fwft_i_reg;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire tmp_ram_rd_en;

LUT6 #(
    .INIT(64'hABAABBBBBBBBBBBB)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_1__2 
       (.I0(Q[0]),
        .I1(p_18_out),
        .I2(n_0_empty_fwft_i_reg),
        .I3(s_axi_rready),
        .I4(curr_fwft_state),
        .I5(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(tmp_ram_rd_en));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT5 #(
    .INIT(32'hAABA2222)) 
     empty_fwft_i_i_1__2
       (.I0(empty_fwft_fb),
        .I1(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I2(s_axi_rready),
        .I3(n_0_empty_fwft_i_reg),
        .I4(curr_fwft_state),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(n_0_empty_fwft_i_reg));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT5 #(
    .INIT(32'h00004FFF)) 
     \gc0.count_d1[8]_i_1__0 
       (.I0(n_0_empty_fwft_i_reg),
        .I1(s_axi_rready),
        .I2(curr_fwft_state),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I4(p_18_out),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT4 #(
    .INIT(16'h22A2)) 
     \goreg_bm.dout_i[5]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(curr_fwft_state),
        .I2(s_axi_rready),
        .I3(n_0_empty_fwft_i_reg),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT4 #(
    .INIT(16'hFBAA)) 
     \gpregsm1.curr_fwft_state[0]_i_1__2 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(s_axi_rready),
        .I2(n_0_empty_fwft_i_reg),
        .I3(curr_fwft_state),
        .O(next_fwft_state[0]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT5 #(
    .INIT(32'hB000FFFF)) 
     \gpregsm1.curr_fwft_state[1]_i_1__2 
       (.I0(n_0_empty_fwft_i_reg),
        .I1(s_axi_rready),
        .I2(curr_fwft_state),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I4(p_18_out),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT1 #(
    .INIT(2'h1)) 
     s_axi_rvalid_INST_0
       (.I0(n_0_empty_fwft_i_reg),
        .O(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module axi_chip2chip_0_rd_fwft_42
   (E,
    O1,
    s_axi_bvalid,
    O6,
    s_aclk,
    Q,
    s_axi_bready,
    p_18_out);
  output [0:0]E;
  output [0:0]O1;
  output s_axi_bvalid;
  output [0:0]O6;
  input s_aclk;
  input [0:0]Q;
  input s_axi_bready;
  input p_18_out;

  wire [0:0]E;
  wire [0:0]O1;
  wire [0:0]O6;
  wire [0:0]Q;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire n_0_empty_fwft_i_reg;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;

(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT5 #(
    .INIT(32'hAABA2222)) 
     empty_fwft_fb_i_1
       (.I0(empty_fwft_fb),
        .I1(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I2(s_axi_bready),
        .I3(n_0_empty_fwft_i_reg),
        .I4(curr_fwft_state),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(empty_fwft_fb));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(n_0_empty_fwft_i_reg));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT5 #(
    .INIT(32'h00004FFF)) 
     \gc0.count_d1[7]_i_1__1 
       (.I0(n_0_empty_fwft_i_reg),
        .I1(s_axi_bready),
        .I2(curr_fwft_state),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I4(p_18_out),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT4 #(
    .INIT(16'h22A2)) 
     \goreg_dm.dout_i[5]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(curr_fwft_state),
        .I2(s_axi_bready),
        .I3(n_0_empty_fwft_i_reg),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT5 #(
    .INIT(32'h000077F7)) 
     \gpr1.dout_i[7]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(curr_fwft_state),
        .I2(s_axi_bready),
        .I3(n_0_empty_fwft_i_reg),
        .I4(p_18_out),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'hFBAA)) 
     \gpregsm1.curr_fwft_state[0]_i_1__3 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(s_axi_bready),
        .I2(n_0_empty_fwft_i_reg),
        .I3(curr_fwft_state),
        .O(next_fwft_state[0]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT5 #(
    .INIT(32'hB000FFFF)) 
     \gpregsm1.curr_fwft_state[1]_i_1__3 
       (.I0(n_0_empty_fwft_i_reg),
        .I1(s_axi_bready),
        .I2(curr_fwft_state),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I4(p_18_out),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[1]),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
LUT1 #(
    .INIT(2'h1)) 
     s_axi_bvalid_INST_0
       (.I0(n_0_empty_fwft_i_reg),
        .O(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module axi_chip2chip_0_rd_fwft_54
   (O1,
    E,
    O3,
    axi_c2c_phy_clk,
    Q,
    I2,
    aw_ch_data_ready,
    p_18_out);
  output O1;
  output [0:0]E;
  output [0:0]O3;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]I2;
  input aw_ch_data_ready;
  input p_18_out;

  wire [0:0]E;
  wire [0:0]I2;
  wire O1;
  wire [0:0]O3;
  wire [0:0]Q;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;

(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(empty_fwft_fb));
LUT6 #(
    .INIT(64'hFF000000FF08FF00)) 
     empty_fwft_i_i_1
       (.I0(aw_ch_data_ready),
        .I1(I2),
        .I2(O1),
        .I3(empty_fwft_fb),
        .I4(curr_fwft_state),
        .I5(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(O1));
LUT6 #(
    .INIT(64'h0000000040FFFFFF)) 
     \gc0.count_d1[7]_i_1 
       (.I0(O1),
        .I1(I2),
        .I2(aw_ch_data_ready),
        .I3(curr_fwft_state),
        .I4(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I5(p_18_out),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT5 #(
    .INIT(32'h0800FF00)) 
     \goreg_bm.dout_i[51]_i_1 
       (.I0(aw_ch_data_ready),
        .I1(I2),
        .I2(O1),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I4(curr_fwft_state),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT5 #(
    .INIT(32'hFFFFBF00)) 
     \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(O1),
        .I1(I2),
        .I2(aw_ch_data_ready),
        .I3(curr_fwft_state),
        .I4(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(next_fwft_state[0]));
LUT6 #(
    .INIT(64'h8AAA0000FFFFFFFF)) 
     \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(O1),
        .I2(I2),
        .I3(aw_ch_data_ready),
        .I4(curr_fwft_state),
        .I5(p_18_out),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[1]),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module axi_chip2chip_0_rd_fwft_82
   (O1,
    E,
    O3,
    axi_c2c_phy_clk,
    Q,
    I2,
    ar_ch_data_ready,
    p_18_out);
  output O1;
  output [0:0]E;
  output [0:0]O3;
  input axi_c2c_phy_clk;
  input [0:0]Q;
  input [0:0]I2;
  input ar_ch_data_ready;
  input p_18_out;

  wire [0:0]E;
  wire [0:0]I2;
  wire O1;
  wire [0:0]O3;
  wire [0:0]Q;
  wire ar_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire [1:0]next_fwft_state;
  wire p_18_out;

(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(empty_fwft_fb));
LUT6 #(
    .INIT(64'hFF000000FF08FF00)) 
     empty_fwft_i_i_1__0
       (.I0(ar_ch_data_ready),
        .I1(I2),
        .I2(O1),
        .I3(empty_fwft_fb),
        .I4(curr_fwft_state),
        .I5(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q),
        .Q(O1));
LUT6 #(
    .INIT(64'h0000000040FFFFFF)) 
     \gc0.count_d1[7]_i_1__0 
       (.I0(O1),
        .I1(I2),
        .I2(ar_ch_data_ready),
        .I3(curr_fwft_state),
        .I4(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I5(p_18_out),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT5 #(
    .INIT(32'h0800FF00)) 
     \goreg_bm.dout_i[51]_i_1__0 
       (.I0(ar_ch_data_ready),
        .I1(I2),
        .I2(O1),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I4(curr_fwft_state),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT5 #(
    .INIT(32'hFFFFBF00)) 
     \gpregsm1.curr_fwft_state[0]_i_1__0 
       (.I0(O1),
        .I1(I2),
        .I2(ar_ch_data_ready),
        .I3(curr_fwft_state),
        .I4(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(next_fwft_state[0]));
LUT6 #(
    .INIT(64'h8AAA0000FFFFFFFF)) 
     \gpregsm1.curr_fwft_state[1]_i_1__0 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(O1),
        .I2(I2),
        .I3(ar_ch_data_ready),
        .I4(curr_fwft_state),
        .I5(p_18_out),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(next_fwft_state[1]),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module axi_chip2chip_0_rd_logic
   (E,
    O1,
    O3,
    O4,
    O5,
    s_axi_bvalid,
    O6,
    s_aclk,
    Q,
    s_axi_bready,
    O2,
    I1);
  output [0:0]E;
  output [7:0]O1;
  output O3;
  output [4:0]O4;
  output [0:0]O5;
  output s_axi_bvalid;
  output [0:0]O6;
  input s_aclk;
  input [0:0]Q;
  input s_axi_bready;
  input [7:0]O2;
  input I1;

  wire [0:0]E;
  wire I1;
  wire [7:0]O1;
  wire [7:0]O2;
  wire O3;
  wire [4:0]O4;
  wire [0:0]O5;
  wire [0:0]O6;
  wire [0:0]Q;
  wire n_9_rpntr;
  wire p_18_out;
  wire s_aclk;
  wire s_axi_bready;
  wire s_axi_bvalid;

axi_chip2chip_0_rd_fwft_42 \gr1.rfwft 
       (.E(E),
        .O1(O5),
        .O6(O6),
        .Q(Q),
        .p_18_out(p_18_out),
        .s_aclk(s_aclk),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid));
axi_chip2chip_0_rd_status_flags_as \gras.rsts 
       (.I1(n_9_rpntr),
        .Q(Q),
        .p_18_out(p_18_out),
        .s_aclk(s_aclk));
axi_chip2chip_0_rd_bin_cntr rpntr
       (.E(O5),
        .I1(I1),
        .I2(Q),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(n_9_rpntr),
        .Q(O4),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module axi_chip2chip_0_rd_logic_49
   (O1,
    O2,
    tmp_ram_rd_en,
    E,
    O3,
    O4,
    O5,
    O6,
    axi_c2c_phy_clk,
    Q,
    I1,
    I2,
    aw_ch_data_ready,
    I3);
  output O1;
  output [4:0]O2;
  output tmp_ram_rd_en;
  output [0:0]E;
  output [0:0]O3;
  output O4;
  output [7:0]O5;
  output O6;
  input axi_c2c_phy_clk;
  input [1:0]Q;
  input I1;
  input [0:0]I2;
  input aw_ch_data_ready;
  input [7:0]I3;

  wire [0:0]E;
  wire I1;
  wire [0:0]I2;
  wire [7:0]I3;
  wire O1;
  wire [4:0]O2;
  wire [0:0]O3;
  wire O4;
  wire [7:0]O5;
  wire O6;
  wire [1:0]Q;
  wire aw_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire p_18_out;
  wire tmp_ram_rd_en;

axi_chip2chip_0_rd_fwft_54 \gr1.rfwft 
       (.E(E),
        .I2(I2),
        .O1(O1),
        .O3(O3),
        .Q(Q[1]),
        .aw_ch_data_ready(aw_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .p_18_out(p_18_out));
axi_chip2chip_0_rd_status_flags_as_55 \gras.rsts 
       (.E(E),
        .I1(I1),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .p_18_out(p_18_out),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_rd_bin_cntr_56 rpntr
       (.E(E),
        .I1(Q[1]),
        .I3(I3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .Q(O2),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module axi_chip2chip_0_rd_logic_70
   (O1,
    O2,
    tmp_ram_rd_en,
    E,
    O3,
    O4,
    O5,
    O6,
    axi_c2c_phy_clk,
    Q,
    I1,
    I2,
    ar_ch_data_ready,
    I3);
  output O1;
  output [4:0]O2;
  output tmp_ram_rd_en;
  output [0:0]E;
  output [0:0]O3;
  output O4;
  output [7:0]O5;
  output O6;
  input axi_c2c_phy_clk;
  input [1:0]Q;
  input I1;
  input [0:0]I2;
  input ar_ch_data_ready;
  input [7:0]I3;

  wire [0:0]E;
  wire I1;
  wire [0:0]I2;
  wire [7:0]I3;
  wire O1;
  wire [4:0]O2;
  wire [0:0]O3;
  wire O4;
  wire [7:0]O5;
  wire O6;
  wire [1:0]Q;
  wire ar_ch_data_ready;
  wire axi_c2c_phy_clk;
  wire p_18_out;
  wire tmp_ram_rd_en;

axi_chip2chip_0_rd_fwft_82 \gr1.rfwft 
       (.E(E),
        .I2(I2),
        .O1(O1),
        .O3(O3),
        .Q(Q[1]),
        .ar_ch_data_ready(ar_ch_data_ready),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .p_18_out(p_18_out));
axi_chip2chip_0_rd_status_flags_as_83 \gras.rsts 
       (.E(E),
        .I1(I1),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .p_18_out(p_18_out),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_rd_bin_cntr_84 rpntr
       (.E(E),
        .I1(Q[1]),
        .I3(I3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .Q(O2),
        .axi_c2c_phy_clk(axi_c2c_phy_clk));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module axi_chip2chip_0_rd_logic__parameterized0
   (O1,
    tmp_ram_rd_en,
    E,
    O2,
    axi_c2c_phy_clk,
    Q,
    I1,
    wd_ch_data_ready,
    O3);
  output O1;
  output tmp_ram_rd_en;
  output [0:0]E;
  output [8:0]O2;
  input axi_c2c_phy_clk;
  input [1:0]Q;
  input [0:0]I1;
  input wd_ch_data_ready;
  input [8:0]O3;

  wire [0:0]E;
  wire [0:0]I1;
  wire O1;
  wire [8:0]O2;
  wire [8:0]O3;
  wire [1:0]Q;
  wire axi_c2c_phy_clk;
  wire [4:0]\c0/v1_reg ;
  wire [4:0]\c1/v1_reg ;
  wire comp0;
  wire comp1;
  wire n_0_rpntr;
  wire p_14_out;
  wire p_18_out;
  wire tmp_ram_rd_en;
  wire wd_ch_data_ready;

axi_chip2chip_0_rd_fwft \gr1.rfwft 
       (.E(p_14_out),
        .I1(I1),
        .O1(O1),
        .O2(E),
        .Q(Q[1]),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .p_18_out(p_18_out),
        .wd_ch_data_ready(wd_ch_data_ready));
axi_chip2chip_0_rd_status_flags_as__parameterized0 \gras.rsts 
       (.E(p_14_out),
        .I1(n_0_rpntr),
        .Q(Q),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .comp0(comp0),
        .comp1(comp1),
        .p_18_out(p_18_out),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
axi_chip2chip_0_rd_bin_cntr__parameterized0 rpntr
       (.E(p_14_out),
        .O1(n_0_rpntr),
        .O2(O2),
        .O3(O3),
        .Q(Q[1]),
        .axi_c2c_phy_clk(axi_c2c_phy_clk),
        .comp0(comp0),
        .comp1(comp1),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module axi_chip2chip_0_rd_logic__parameterized0_16
   (O1,
    O2,
    tmp_ram_rd_en,
    s_axi_rvalid,
    E,
    v1_reg,
    v1_reg_0,
    s_aclk,
    Q,
    I1,
    s_axi_rready);
  output [8:0]O1;
  output [7:0]O2;
  output tmp_ram_rd_en;
  output s_axi_rvalid;
  output [0:0]E;
  input [3:0]v1_reg;
  input [3:0]v1_reg_0;
  input s_aclk;
  input [1:0]Q;
  input [0:0]I1;
  input s_axi_rready;

  wire [0:0]E;
  wire [0:0]I1;
  wire [8:0]O1;
  wire [7:0]O2;
  wire [1:0]Q;
  wire comp0;
  wire comp1;
  wire n_0_rpntr;
  wire n_10_rpntr;
  wire n_11_rpntr;
  wire p_14_out;
  wire p_18_out;
  wire s_aclk;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire tmp_ram_rd_en;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

axi_chip2chip_0_rd_fwft_30 \gr1.rfwft 
       (.E(p_14_out),
        .O1(E),
        .Q(Q),
        .p_18_out(p_18_out),
        .s_aclk(s_aclk),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .tmp_ram_rd_en(tmp_ram_rd_en));
axi_chip2chip_0_rd_status_flags_as__parameterized0_31 \gras.rsts 
       (.I1(n_0_rpntr),
        .I2(n_10_rpntr),
        .I3(n_11_rpntr),
        .Q(Q[1]),
        .comp0(comp0),
        .comp1(comp1),
        .p_18_out(p_18_out),
        .s_aclk(s_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
axi_chip2chip_0_rd_bin_cntr__parameterized0_32 rpntr
       (.E(p_14_out),
        .I1(I1),
        .I2(Q[1]),
        .O1(n_0_rpntr),
        .O2(O1),
        .O3(n_10_rpntr),
        .O4(n_11_rpntr),
        .Q(O2),
        .comp0(comp0),
        .comp1(comp1),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module axi_chip2chip_0_rd_status_flags_as
   (p_18_out,
    I1,
    s_aclk,
    Q);
  output p_18_out;
  input I1;
  input s_aclk;
  input [0:0]Q;

  wire I1;
  wire [0:0]Q;
  wire p_18_out;
  wire s_aclk;

(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(I1),
        .PRE(Q),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module axi_chip2chip_0_rd_status_flags_as_55
   (p_18_out,
    tmp_ram_rd_en,
    I1,
    axi_c2c_phy_clk,
    Q,
    E);
  output p_18_out;
  output tmp_ram_rd_en;
  input I1;
  input axi_c2c_phy_clk;
  input [1:0]Q;
  input [0:0]E;

  wire [0:0]E;
  wire I1;
  wire [1:0]Q;
  wire axi_c2c_phy_clk;
  wire p_18_out;
  wire tmp_ram_rd_en;

LUT3 #(
    .INIT(8'hF4)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_1 
       (.I0(p_18_out),
        .I1(E),
        .I2(Q[0]),
        .O(tmp_ram_rd_en));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I1),
        .PRE(Q[1]),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module axi_chip2chip_0_rd_status_flags_as_83
   (p_18_out,
    tmp_ram_rd_en,
    I1,
    axi_c2c_phy_clk,
    Q,
    E);
  output p_18_out;
  output tmp_ram_rd_en;
  input I1;
  input axi_c2c_phy_clk;
  input [1:0]Q;
  input [0:0]E;

  wire [0:0]E;
  wire I1;
  wire [1:0]Q;
  wire axi_c2c_phy_clk;
  wire p_18_out;
  wire tmp_ram_rd_en;

LUT3 #(
    .INIT(8'hF4)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_1__0 
       (.I0(p_18_out),
        .I1(E),
        .I2(Q[0]),
        .O(tmp_ram_rd_en));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I1),
        .PRE(Q[1]),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module axi_chip2chip_0_rd_status_flags_as__parameterized0
   (comp0,
    comp1,
    p_18_out,
    tmp_ram_rd_en,
    v1_reg,
    v1_reg_0,
    I1,
    axi_c2c_phy_clk,
    Q,
    E);
  output comp0;
  output comp1;
  output p_18_out;
  output tmp_ram_rd_en;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input I1;
  input axi_c2c_phy_clk;
  input [1:0]Q;
  input [0:0]E;

  wire [0:0]E;
  wire I1;
  wire [1:0]Q;
  wire axi_c2c_phy_clk;
  wire comp0;
  wire comp1;
  wire p_18_out;
  wire tmp_ram_rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

LUT3 #(
    .INIT(8'hF4)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_1__1 
       (.I0(p_18_out),
        .I1(E),
        .I2(Q[0]),
        .O(tmp_ram_rd_en));
axi_chip2chip_0_compare__parameterized0_3 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
axi_chip2chip_0_compare__parameterized0_4 c1
       (.comp1(comp1),
        .v1_reg_0(v1_reg_0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(I1),
        .PRE(Q[1]),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module axi_chip2chip_0_rd_status_flags_as__parameterized0_31
   (comp0,
    comp1,
    p_18_out,
    v1_reg,
    I1,
    v1_reg_0,
    I2,
    I3,
    s_aclk,
    Q);
  output comp0;
  output comp1;
  output p_18_out;
  input [3:0]v1_reg;
  input I1;
  input [3:0]v1_reg_0;
  input I2;
  input I3;
  input s_aclk;
  input [0:0]Q;

  wire I1;
  wire I2;
  wire I3;
  wire [0:0]Q;
  wire comp0;
  wire comp1;
  wire p_18_out;
  wire s_aclk;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

axi_chip2chip_0_compare__parameterized0_33 c0
       (.I1(I1),
        .comp0(comp0),
        .v1_reg(v1_reg));
axi_chip2chip_0_compare__parameterized0_34 c1
       (.I2(I2),
        .comp1(comp1),
        .v1_reg_0(v1_reg_0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(I3),
        .PRE(Q),
        .Q(p_18_out));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module axi_chip2chip_0_reset_blk_ramfifo
   (Q,
    O1,
    s_aclk,
    br_fifo_reset,
    axi_c2c_phy_clk);
  output [1:0]Q;
  output [2:0]O1;
  input s_aclk;
  input br_fifo_reset;
  input axi_c2c_phy_clk;

  wire [2:0]O1;
  wire [1:0]Q;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__1 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d2;
  wire s_aclk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d2;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(axi_c2c_phy_clk),
        .CE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__1 ),
        .Q(O1[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__1 ),
        .Q(O1[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__1 ),
        .Q(O1[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_aclk),
        .CE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__1 ),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module axi_chip2chip_0_reset_blk_ramfifo_19
   (rst_full_gen_i,
    O2,
    Q,
    O1,
    clk_ph_out,
    br_fifo_reset,
    s_aclk);
  output rst_full_gen_i;
  output O2;
  output [1:0]Q;
  output [2:0]O1;
  input clk_ph_out;
  input br_fifo_reset;
  input s_aclk;

  wire [2:0]O1;
  wire O2;
  wire [1:0]Q;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire \n_0_grstd1.grst_full.grst_f.rst_d1_reg ;
  wire \n_0_grstd1.grst_full.grst_f.rst_d3_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__2 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__2 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d2;
  wire rst_full_gen_i;
  wire s_aclk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d2;

FDCE #(
    .INIT(1'b0)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(br_fifo_reset),
        .D(\n_0_grstd1.grst_full.grst_f.rst_d3_reg ),
        .Q(rst_full_gen_i));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(\n_0_grstd1.grst_full.grst_f.rst_d1_reg ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_grstd1.grst_full.grst_f.rst_d1_reg ),
        .PRE(br_fifo_reset),
        .Q(O2));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(O2),
        .PRE(br_fifo_reset),
        .Q(\n_0_grstd1.grst_full.grst_f.rst_d3_reg ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_aclk),
        .CE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__2 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__2 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__2 ),
        .Q(O1[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__2 ),
        .Q(O1[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__2 ),
        .Q(O1[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(clk_ph_out),
        .CE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__2 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__2 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__2 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__2 ),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module axi_chip2chip_0_reset_blk_ramfifo_51
   (rst_full_gen_i,
    O1,
    Q,
    O2,
    s_aclk,
    br_fifo_reset,
    axi_c2c_phy_clk);
  output rst_full_gen_i;
  output O1;
  output [1:0]Q;
  output [2:0]O2;
  input s_aclk;
  input br_fifo_reset;
  input axi_c2c_phy_clk;

  wire O1;
  wire [2:0]O2;
  wire [1:0]Q;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst_d1;
  wire rst_d3;
  wire rst_full_gen_i;
  wire s_aclk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

FDCE #(
    .INIT(1'b0)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(br_fifo_reset),
        .D(rst_d3),
        .Q(rst_full_gen_i));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(rst_d1));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(br_fifo_reset),
        .Q(O1));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(O1),
        .PRE(br_fifo_reset),
        .Q(rst_d3));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(axi_c2c_phy_clk),
        .CE(rd_rst_asreg_d1),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(O2[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(O2[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(O2[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_aclk),
        .CE(wr_rst_asreg_d1),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module axi_chip2chip_0_reset_blk_ramfifo_73
   (Q,
    O1,
    s_aclk,
    br_fifo_reset,
    axi_c2c_phy_clk);
  output [1:0]Q;
  output [2:0]O1;
  input s_aclk;
  input br_fifo_reset;
  input axi_c2c_phy_clk;

  wire [2:0]O1;
  wire [1:0]Q;
  wire axi_c2c_phy_clk;
  wire br_fifo_reset;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d2;
  wire s_aclk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d2;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(axi_c2c_phy_clk),
        .CE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0 ),
        .Q(O1[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0 ),
        .Q(O1[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__0 ),
        .Q(O1[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_aclk),
        .CE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__0 ),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module axi_chip2chip_0_reset_blk_ramfifo__parameterized0
   (Q,
    O1,
    clk_ph_out,
    br_fifo_reset,
    s_aclk);
  output [1:0]Q;
  output [2:0]O1;
  input clk_ph_out;
  input br_fifo_reset;
  input s_aclk;

  wire [2:0]O1;
  wire [1:0]Q;
  wire br_fifo_reset;
  wire clk_ph_out;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__3 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__3 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d2;
  wire s_aclk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d2;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_aclk),
        .CE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg ),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__3 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__3 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__3 ),
        .Q(O1[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__3 ),
        .Q(O1[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1__3 ),
        .Q(O1[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(clk_ph_out),
        .CE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg ),
        .D(1'b0),
        .PRE(br_fifo_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__3 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__3 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__3 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1__3 ),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff
   (Q,
    I1,
    s_aclk,
    I5);
  output [7:0]Q;
  input [7:0]I1;
  input s_aclk;
  input [0:0]I5;

  wire [7:0]I1;
  wire [0:0]I5;
  wire [7:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(I1[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_43
   (Q,
    I1,
    clk_ph_out,
    I6);
  output [7:0]Q;
  input [7:0]I1;
  input clk_ph_out;
  input [0:0]I6;

  wire [7:0]I1;
  wire [0:0]I6;
  wire [7:0]Q;
  wire clk_ph_out;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_44
   (Q,
    D,
    s_aclk,
    I5);
  output [7:0]Q;
  input [7:0]D;
  input s_aclk;
  input [0:0]I5;

  wire [7:0]D;
  wire [0:0]I5;
  wire [7:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_45
   (Q,
    D,
    clk_ph_out,
    I6);
  output [7:0]Q;
  input [7:0]D;
  input clk_ph_out;
  input [0:0]I6;

  wire [7:0]D;
  wire [0:0]I6;
  wire [7:0]Q;
  wire clk_ph_out;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_46
   (Q,
    O1,
    D,
    s_aclk,
    I5);
  output [0:0]Q;
  output [6:0]O1;
  input [7:0]D;
  input s_aclk;
  input [0:0]I5;

  wire [7:0]D;
  wire [0:0]I5;
  wire [6:0]O1;
  wire [0:0]Q;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I5),
        .D(D[7]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[0]_i_1__3 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[1]_i_1__3 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[2]_i_1__3 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[6] ),
        .I4(\n_0_Q_reg_reg[4] ),
        .I5(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[3]_i_1__3 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[4]_i_1__3 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[5]_i_1__3 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(Q),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[6]_i_1__3 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(Q),
        .O(O1[6]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_47
   (Q,
    O1,
    D,
    clk_ph_out,
    I6);
  output [0:0]Q;
  output [6:0]O1;
  input [7:0]D;
  input clk_ph_out;
  input [0:0]I6;

  wire [7:0]D;
  wire [0:0]I6;
  wire [6:0]O1;
  wire [0:0]Q;
  wire clk_ph_out;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I6),
        .D(D[7]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[0]_i_1__3 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[1]_i_1__3 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[2]_i_1__3 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[6] ),
        .I4(\n_0_Q_reg_reg[4] ),
        .I5(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[3]_i_1__3 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[4]_i_1__3 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[5]_i_1__3 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(Q),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[6]_i_1__3 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(Q),
        .O(O1[6]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_57
   (Q,
    I1,
    axi_c2c_phy_clk,
    I8);
  output [7:0]Q;
  input [7:0]I1;
  input axi_c2c_phy_clk;
  input [0:0]I8;

  wire [7:0]I1;
  wire [0:0]I8;
  wire [7:0]Q;
  wire axi_c2c_phy_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_58
   (Q,
    I1,
    s_aclk,
    I9);
  output [7:0]Q;
  input [7:0]I1;
  input s_aclk;
  input [0:0]I9;

  wire [7:0]I1;
  wire [0:0]I9;
  wire [7:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_59
   (Q,
    D,
    axi_c2c_phy_clk,
    I8);
  output [7:0]Q;
  input [7:0]D;
  input axi_c2c_phy_clk;
  input [0:0]I8;

  wire [7:0]D;
  wire [0:0]I8;
  wire [7:0]Q;
  wire axi_c2c_phy_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_60
   (Q,
    D,
    s_aclk,
    I9);
  output [7:0]Q;
  input [7:0]D;
  input s_aclk;
  input [0:0]I9;

  wire [7:0]D;
  wire [0:0]I9;
  wire [7:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_61
   (Q,
    O1,
    D,
    axi_c2c_phy_clk,
    I8);
  output [0:0]Q;
  output [6:0]O1;
  input [7:0]D;
  input axi_c2c_phy_clk;
  input [0:0]I8;

  wire [7:0]D;
  wire [0:0]I8;
  wire [6:0]O1;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[7]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[0]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[6] ),
        .I4(\n_0_Q_reg_reg[4] ),
        .I5(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[3]_i_1 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[4]_i_1 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[5]_i_1 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(Q),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[6]_i_1 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(Q),
        .O(O1[6]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_62
   (Q,
    O1,
    D,
    s_aclk,
    I9);
  output [0:0]Q;
  output [6:0]O1;
  input [7:0]D;
  input s_aclk;
  input [0:0]I9;

  wire [7:0]D;
  wire [0:0]I9;
  wire [6:0]O1;
  wire [0:0]Q;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[7]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[0]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[6] ),
        .I4(\n_0_Q_reg_reg[4] ),
        .I5(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[3]_i_1 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[4]_i_1 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[5]_i_1 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(Q),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[6]_i_1 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(Q),
        .O(O1[6]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_85
   (Q,
    I1,
    axi_c2c_phy_clk,
    I8);
  output [7:0]Q;
  input [7:0]I1;
  input axi_c2c_phy_clk;
  input [0:0]I8;

  wire [7:0]I1;
  wire [0:0]I8;
  wire [7:0]Q;
  wire axi_c2c_phy_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(I1[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_86
   (Q,
    I1,
    s_aclk,
    I9);
  output [7:0]Q;
  input [7:0]I1;
  input s_aclk;
  input [0:0]I9;

  wire [7:0]I1;
  wire [0:0]I9;
  wire [7:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(I1[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_87
   (Q,
    D,
    axi_c2c_phy_clk,
    I8);
  output [7:0]Q;
  input [7:0]D;
  input axi_c2c_phy_clk;
  input [0:0]I8;

  wire [7:0]D;
  wire [0:0]I8;
  wire [7:0]Q;
  wire axi_c2c_phy_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_88
   (Q,
    D,
    s_aclk,
    I9);
  output [7:0]Q;
  input [7:0]D;
  input s_aclk;
  input [0:0]I9;

  wire [7:0]D;
  wire [0:0]I9;
  wire [7:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_89
   (Q,
    O1,
    D,
    axi_c2c_phy_clk,
    I8);
  output [0:0]Q;
  output [6:0]O1;
  input [7:0]D;
  input axi_c2c_phy_clk;
  input [0:0]I8;

  wire [7:0]D;
  wire [0:0]I8;
  wire [6:0]O1;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I8),
        .D(D[7]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[0]_i_1__0 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[1]_i_1__0 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[2]_i_1__0 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[6] ),
        .I4(\n_0_Q_reg_reg[4] ),
        .I5(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[3]_i_1__0 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[4]_i_1__0 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[5]_i_1__0 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(Q),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[6]_i_1__0 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(Q),
        .O(O1[6]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff_90
   (Q,
    O1,
    D,
    s_aclk,
    I9);
  output [0:0]Q;
  output [6:0]O1;
  input [7:0]D;
  input s_aclk;
  input [0:0]I9;

  wire [7:0]D;
  wire [0:0]I9;
  wire [6:0]O1;
  wire [0:0]Q;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I9),
        .D(D[7]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[0]_i_1__0 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[1]_i_1__0 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[2]_i_1__0 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[6] ),
        .I4(\n_0_Q_reg_reg[4] ),
        .I5(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[3]_i_1__0 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[4]_i_1__0 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[5]_i_1__0 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(Q),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[6]_i_1__0 
       (.I0(\n_0_Q_reg_reg[6] ),
        .I1(Q),
        .O(O1[6]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0
   (Q,
    I1,
    axi_c2c_phy_clk,
    I6);
  output [8:0]Q;
  input [8:0]I1;
  input axi_c2c_phy_clk;
  input [0:0]I6;

  wire [8:0]I1;
  wire [0:0]I6;
  wire [8:0]Q;
  wire axi_c2c_phy_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_35
   (Q,
    I1,
    s_aclk,
    I6);
  output [8:0]Q;
  input [8:0]I1;
  input s_aclk;
  input [0:0]I6;

  wire [8:0]I1;
  wire [0:0]I6;
  wire [8:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(I1[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_36
   (Q,
    I1,
    clk_ph_out,
    I7);
  output [8:0]Q;
  input [8:0]I1;
  input clk_ph_out;
  input [0:0]I7;

  wire [8:0]I1;
  wire [0:0]I7;
  wire [8:0]Q;
  wire clk_ph_out;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_37
   (Q,
    D,
    s_aclk,
    I6);
  output [8:0]Q;
  input [8:0]D;
  input s_aclk;
  input [0:0]I6;

  wire [8:0]D;
  wire [0:0]I6;
  wire [8:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_38
   (Q,
    D,
    clk_ph_out,
    I7);
  output [8:0]Q;
  input [8:0]D;
  input clk_ph_out;
  input [0:0]I7;

  wire [8:0]D;
  wire [0:0]I7;
  wire [8:0]Q;
  wire clk_ph_out;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_39
   (Q,
    O1,
    D,
    s_aclk,
    I6);
  output [0:0]Q;
  output [7:0]O1;
  input [8:0]D;
  input s_aclk;
  input [0:0]I6;

  wire [8:0]D;
  wire [0:0]I6;
  wire [7:0]O1;
  wire [0:0]Q;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[8]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[0]_i_1__2 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[1]_i_1__2 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[2]_i_1__2 
       (.I0(O1[3]),
        .I1(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[3]_i_1__2 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[7] ),
        .I4(\n_0_Q_reg_reg[5] ),
        .I5(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[4]_i_1__2 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(\n_0_Q_reg_reg[7] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[5]_i_1__2 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[7] ),
        .I3(\n_0_Q_reg_reg[5] ),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[6]_i_1__2 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(Q),
        .O(O1[6]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[7]_i_1__0 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(Q),
        .O(O1[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_40
   (Q,
    O1,
    D,
    clk_ph_out,
    I7);
  output [0:0]Q;
  output [7:0]O1;
  input [8:0]D;
  input clk_ph_out;
  input [0:0]I7;

  wire [8:0]D;
  wire [0:0]I7;
  wire [7:0]O1;
  wire [0:0]Q;
  wire clk_ph_out;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I7),
        .D(D[8]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[0]_i_1__2 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[1]_i_1__2 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[2]_i_1__2 
       (.I0(O1[3]),
        .I1(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[3]_i_1__2 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[7] ),
        .I4(\n_0_Q_reg_reg[5] ),
        .I5(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[4]_i_1__2 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(\n_0_Q_reg_reg[7] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[5]_i_1__2 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[7] ),
        .I3(\n_0_Q_reg_reg[5] ),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[6]_i_1__2 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(Q),
        .O(O1[6]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[7]_i_1__0 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(Q),
        .O(O1[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_5
   (Q,
    I1,
    s_aclk,
    I7);
  output [8:0]Q;
  input [8:0]I1;
  input s_aclk;
  input [0:0]I7;

  wire [8:0]I1;
  wire [0:0]I7;
  wire [8:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(I1[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_6
   (Q,
    D,
    axi_c2c_phy_clk,
    I6);
  output [8:0]Q;
  input [8:0]D;
  input axi_c2c_phy_clk;
  input [0:0]I6;

  wire [8:0]D;
  wire [0:0]I6;
  wire [8:0]Q;
  wire axi_c2c_phy_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_7
   (Q,
    D,
    s_aclk,
    I7);
  output [8:0]Q;
  input [8:0]D;
  input s_aclk;
  input [0:0]I7;

  wire [8:0]D;
  wire [0:0]I7;
  wire [8:0]Q;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_8
   (Q,
    O1,
    D,
    axi_c2c_phy_clk,
    I6);
  output [0:0]Q;
  output [7:0]O1;
  input [8:0]D;
  input axi_c2c_phy_clk;
  input [0:0]I6;

  wire [8:0]D;
  wire [0:0]I6;
  wire [7:0]O1;
  wire [0:0]Q;
  wire axi_c2c_phy_clk;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(axi_c2c_phy_clk),
        .CE(1'b1),
        .CLR(I6),
        .D(D[8]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[0]_i_1__1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[1]_i_1__1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[2]_i_1__1 
       (.I0(O1[3]),
        .I1(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[3]_i_1__1 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[7] ),
        .I4(\n_0_Q_reg_reg[5] ),
        .I5(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[4]_i_1__1 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(\n_0_Q_reg_reg[7] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[5]_i_1__1 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[7] ),
        .I3(\n_0_Q_reg_reg[5] ),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[6]_i_1__1 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(Q),
        .O(O1[6]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[7]_i_1 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(Q),
        .O(O1[7]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module axi_chip2chip_0_synchronizer_ff__parameterized0_9
   (Q,
    O1,
    D,
    s_aclk,
    I7);
  output [0:0]Q;
  output [7:0]O1;
  input [8:0]D;
  input s_aclk;
  input [0:0]I7;

  wire [8:0]D;
  wire [0:0]I7;
  wire [7:0]O1;
  wire [0:0]Q;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;
  wire s_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(I7),
        .D(D[8]),
        .Q(Q));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[0]_i_1__1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[1]_i_1__1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(O1[3]),
        .O(O1[1]));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[2]_i_1__1 
       (.I0(O1[3]),
        .I1(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[3]_i_1__1 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(\n_0_Q_reg_reg[7] ),
        .I4(\n_0_Q_reg_reg[5] ),
        .I5(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[4]_i_1__1 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(\n_0_Q_reg_reg[7] ),
        .I2(\n_0_Q_reg_reg[6] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[5]_i_1__1 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(\n_0_Q_reg_reg[7] ),
        .I3(\n_0_Q_reg_reg[5] ),
        .O(O1[5]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[6]_i_1__1 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(\n_0_Q_reg_reg[6] ),
        .I2(Q),
        .O(O1[6]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[7]_i_1 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(Q),
        .O(O1[7]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module axi_chip2chip_0_wr_bin_cntr
   (O1,
    I5,
    Q,
    I4,
    S,
    O3,
    rst_full_gen_i,
    O4,
    I2,
    I1,
    br_ch_data_valid,
    O2,
    E,
    clk_ph_out,
    I3);
  output O1;
  output [0:0]I5;
  output [7:0]Q;
  output [3:0]I4;
  output [2:0]S;
  output [7:0]O3;
  input rst_full_gen_i;
  input [7:0]O4;
  input I2;
  input I1;
  input br_ch_data_valid;
  input O2;
  input [0:0]E;
  input clk_ph_out;
  input [0:0]I3;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [3:0]I4;
  wire [0:0]I5;
  wire O1;
  wire O2;
  wire [7:0]O3;
  wire [7:0]O4;
  wire [7:0]Q;
  wire [2:0]S;
  wire br_ch_data_valid;
  wire clk_ph_out;
  wire \n_0_gic0.gc0.count[7]_i_2__1 ;
  wire n_0_ram_full_fb_i_i_2;
  wire n_0_ram_full_fb_i_i_3;
  wire n_0_ram_full_fb_i_i_5;
  wire [7:0]plusOp__3;
  wire rst_full_gen_i;
  wire [7:0]wr_pntr_plus2;

LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[3]_i_3__0 
       (.I0(Q[2]),
        .I1(O4[2]),
        .O(S[2]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[3]_i_4__0 
       (.I0(Q[1]),
        .I1(O4[1]),
        .O(S[1]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[3]_i_5__0 
       (.I0(Q[0]),
        .I1(O4[0]),
        .O(S[0]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[7]_i_2__0 
       (.I0(Q[6]),
        .I1(O4[6]),
        .O(I4[3]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[7]_i_3__0 
       (.I0(Q[5]),
        .I1(O4[5]),
        .O(I4[2]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[7]_i_4__0 
       (.I0(Q[4]),
        .I1(O4[4]),
        .O(I4[1]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[7]_i_5__0 
       (.I0(Q[3]),
        .I1(O4[3]),
        .O(I4[0]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[8]_i_2 
       (.I0(Q[7]),
        .I1(O4[7]),
        .O(I5));
LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_1__3 
       (.I0(wr_pntr_plus2[0]),
        .O(plusOp__3[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[1]_i_1__3 
       (.I0(wr_pntr_plus2[0]),
        .I1(wr_pntr_plus2[1]),
        .O(plusOp__3[1]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gic0.gc0.count[2]_i_1__3 
       (.I0(wr_pntr_plus2[2]),
        .I1(wr_pntr_plus2[0]),
        .I2(wr_pntr_plus2[1]),
        .O(plusOp__3[2]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gic0.gc0.count[3]_i_1__3 
       (.I0(wr_pntr_plus2[1]),
        .I1(wr_pntr_plus2[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp__3[3]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \gic0.gc0.count[4]_i_1__3 
       (.I0(wr_pntr_plus2[4]),
        .I1(wr_pntr_plus2[1]),
        .I2(wr_pntr_plus2[0]),
        .I3(wr_pntr_plus2[2]),
        .I4(wr_pntr_plus2[3]),
        .O(plusOp__3[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \gic0.gc0.count[5]_i_1__3 
       (.I0(wr_pntr_plus2[5]),
        .I1(wr_pntr_plus2[3]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[0]),
        .I4(wr_pntr_plus2[1]),
        .I5(wr_pntr_plus2[4]),
        .O(plusOp__3[5]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \gic0.gc0.count[6]_i_1__3 
       (.I0(wr_pntr_plus2[6]),
        .I1(wr_pntr_plus2[4]),
        .I2(\n_0_gic0.gc0.count[7]_i_2__1 ),
        .I3(wr_pntr_plus2[5]),
        .O(plusOp__3[6]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \gic0.gc0.count[7]_i_1__3 
       (.I0(wr_pntr_plus2[7]),
        .I1(wr_pntr_plus2[5]),
        .I2(\n_0_gic0.gc0.count[7]_i_2__1 ),
        .I3(wr_pntr_plus2[4]),
        .I4(wr_pntr_plus2[6]),
        .O(plusOp__3[7]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \gic0.gc0.count[7]_i_2__1 
       (.I0(wr_pntr_plus2[3]),
        .I1(wr_pntr_plus2[2]),
        .I2(wr_pntr_plus2[0]),
        .I3(wr_pntr_plus2[1]),
        .O(\n_0_gic0.gc0.count[7]_i_2__1 ));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .D(wr_pntr_plus2[0]),
        .PRE(I3),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(wr_pntr_plus2[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(wr_pntr_plus2[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(wr_pntr_plus2[3]),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(wr_pntr_plus2[4]),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(wr_pntr_plus2[5]),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(wr_pntr_plus2[6]),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(wr_pntr_plus2[7]),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(Q[0]),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(Q[1]),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(Q[2]),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(Q[3]),
        .Q(O3[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(Q[4]),
        .Q(O3[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(Q[5]),
        .Q(O3[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(Q[6]),
        .Q(O3[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(Q[7]),
        .Q(O3[7]));
(* counter = "14" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(plusOp__3[0]),
        .Q(wr_pntr_plus2[0]));
(* counter = "14" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .D(plusOp__3[1]),
        .PRE(I3),
        .Q(wr_pntr_plus2[1]));
(* counter = "14" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(plusOp__3[2]),
        .Q(wr_pntr_plus2[2]));
(* counter = "14" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(plusOp__3[3]),
        .Q(wr_pntr_plus2[3]));
(* counter = "14" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(plusOp__3[4]),
        .Q(wr_pntr_plus2[4]));
(* counter = "14" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(plusOp__3[5]),
        .Q(wr_pntr_plus2[5]));
(* counter = "14" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(plusOp__3[6]),
        .Q(wr_pntr_plus2[6]));
(* counter = "14" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I3),
        .D(plusOp__3[7]),
        .Q(wr_pntr_plus2[7]));
LUT6 #(
    .INIT(64'h4100000055555555)) 
     ram_full_fb_i_i_1
       (.I0(rst_full_gen_i),
        .I1(wr_pntr_plus2[0]),
        .I2(O4[0]),
        .I3(n_0_ram_full_fb_i_i_2),
        .I4(n_0_ram_full_fb_i_i_3),
        .I5(I2),
        .O(O1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_fb_i_i_2
       (.I0(wr_pntr_plus2[2]),
        .I1(O4[2]),
        .I2(wr_pntr_plus2[3]),
        .I3(O4[3]),
        .I4(O4[1]),
        .I5(wr_pntr_plus2[1]),
        .O(n_0_ram_full_fb_i_i_2));
LUT6 #(
    .INIT(64'h0000000000820000)) 
     ram_full_fb_i_i_3
       (.I0(n_0_ram_full_fb_i_i_5),
        .I1(wr_pntr_plus2[7]),
        .I2(O4[7]),
        .I3(I1),
        .I4(br_ch_data_valid),
        .I5(O2),
        .O(n_0_ram_full_fb_i_i_3));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     ram_full_fb_i_i_5
       (.I0(wr_pntr_plus2[6]),
        .I1(O4[6]),
        .I2(wr_pntr_plus2[4]),
        .I3(O4[4]),
        .I4(O4[5]),
        .I5(wr_pntr_plus2[5]),
        .O(n_0_ram_full_fb_i_i_5));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module axi_chip2chip_0_wr_bin_cntr_53
   (Q,
    O2,
    O4,
    E,
    s_aclk,
    I3);
  output [7:0]Q;
  output [7:0]O2;
  output [7:0]O4;
  input [0:0]E;
  input s_aclk;
  input [0:0]I3;

  wire [0:0]E;
  wire [0:0]I3;
  wire [7:0]O2;
  wire [7:0]O4;
  wire [7:0]Q;
  wire \n_0_gic0.gc0.count[7]_i_2 ;
  wire [7:0]plusOp__4;
  wire s_aclk;

(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__4[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__4[1]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gic0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__4[2]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gic0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__4[3]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gic0.gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__4[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gic0.gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__4[5]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[6]_i_1 
       (.I0(\n_0_gic0.gc0.count[7]_i_2 ),
        .I1(Q[6]),
        .O(plusOp__4[6]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gic0.gc0.count[7]_i_1 
       (.I0(\n_0_gic0.gc0.count[7]_i_2 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__4[7]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gic0.gc0.count[7]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\n_0_gic0.gc0.count[7]_i_2 ));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(I3),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[5]),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[6]),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[7]),
        .Q(O2[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(O2[0]),
        .Q(O4[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(O2[1]),
        .Q(O4[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(O2[2]),
        .Q(O4[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(O2[3]),
        .Q(O4[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(O2[4]),
        .Q(O4[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(O2[5]),
        .Q(O4[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(O2[6]),
        .Q(O4[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(O2[7]),
        .Q(O4[7]));
(* counter = "6" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__4[0]),
        .Q(Q[0]));
(* counter = "6" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__4[1]),
        .PRE(I3),
        .Q(Q[1]));
(* counter = "6" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__4[2]),
        .Q(Q[2]));
(* counter = "6" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__4[3]),
        .Q(Q[3]));
(* counter = "6" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__4[4]),
        .Q(Q[4]));
(* counter = "6" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__4[5]),
        .Q(Q[5]));
(* counter = "6" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__4[6]),
        .Q(Q[6]));
(* counter = "6" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp__4[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module axi_chip2chip_0_wr_bin_cntr_81
   (Q,
    O2,
    O4,
    E,
    s_aclk,
    I2);
  output [7:0]Q;
  output [7:0]O2;
  output [7:0]O4;
  input [0:0]E;
  input s_aclk;
  input [0:0]I2;

  wire [0:0]E;
  wire [0:0]I2;
  wire [7:0]O2;
  wire [7:0]O4;
  wire [7:0]Q;
  wire \n_0_gic0.gc0.count[7]_i_2__0 ;
  wire [7:0]plusOp__5;
  wire s_aclk;

(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_1__0 
       (.I0(Q[0]),
        .O(plusOp__5[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__5[1]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gic0.gc0.count[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__5[2]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gic0.gc0.count[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__5[3]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gic0.gc0.count[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__5[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gic0.gc0.count[5]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__5[5]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[6]_i_1__0 
       (.I0(\n_0_gic0.gc0.count[7]_i_2__0 ),
        .I1(Q[6]),
        .O(plusOp__5[6]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gic0.gc0.count[7]_i_1__0 
       (.I0(\n_0_gic0.gc0.count[7]_i_2__0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__5[7]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gic0.gc0.count[7]_i_2__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\n_0_gic0.gc0.count[7]_i_2__0 ));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(Q[0]),
        .PRE(I2),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[5]),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[6]),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(Q[7]),
        .Q(O2[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(O2[0]),
        .Q(O4[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(O2[1]),
        .Q(O4[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(O2[2]),
        .Q(O4[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(O2[3]),
        .Q(O4[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(O2[4]),
        .Q(O4[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(O2[5]),
        .Q(O4[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(O2[6]),
        .Q(O4[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(O2[7]),
        .Q(O4[7]));
(* counter = "8" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__5[0]),
        .Q(Q[0]));
(* counter = "8" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__5[1]),
        .PRE(I2),
        .Q(Q[1]));
(* counter = "8" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__5[2]),
        .Q(Q[2]));
(* counter = "8" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__5[3]),
        .Q(Q[3]));
(* counter = "8" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__5[4]),
        .Q(Q[4]));
(* counter = "8" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__5[5]),
        .Q(Q[5]));
(* counter = "8" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__5[6]),
        .Q(Q[6]));
(* counter = "8" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I2),
        .D(plusOp__5[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module axi_chip2chip_0_wr_bin_cntr__parameterized0
   (Q,
    v1_reg,
    v1_reg_0,
    O2,
    O3,
    I3,
    E,
    s_aclk,
    I4);
  output [0:0]Q;
  output [3:0]v1_reg;
  output [3:0]v1_reg_0;
  output [0:0]O2;
  output [8:0]O3;
  input [7:0]I3;
  input [0:0]E;
  input s_aclk;
  input [0:0]I4;

  wire [0:0]E;
  wire [7:0]I3;
  wire [0:0]I4;
  wire [0:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire \n_0_gic0.gc0.count[8]_i_2 ;
  wire [7:0]p_8_out;
  wire [8:0]plusOp__6;
  wire s_aclk;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [7:0]wr_pntr_plus2;

(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_1__1 
       (.I0(wr_pntr_plus2[0]),
        .O(plusOp__6[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[1]_i_1__1 
       (.I0(wr_pntr_plus2[0]),
        .I1(wr_pntr_plus2[1]),
        .O(plusOp__6[1]));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gic0.gc0.count[2]_i_1__1 
       (.I0(wr_pntr_plus2[0]),
        .I1(wr_pntr_plus2[1]),
        .I2(wr_pntr_plus2[2]),
        .O(plusOp__6[2]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gic0.gc0.count[3]_i_1__1 
       (.I0(wr_pntr_plus2[1]),
        .I1(wr_pntr_plus2[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp__6[3]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gic0.gc0.count[4]_i_1__1 
       (.I0(wr_pntr_plus2[2]),
        .I1(wr_pntr_plus2[0]),
        .I2(wr_pntr_plus2[1]),
        .I3(wr_pntr_plus2[3]),
        .I4(wr_pntr_plus2[4]),
        .O(plusOp__6[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gic0.gc0.count[5]_i_1__1 
       (.I0(wr_pntr_plus2[3]),
        .I1(wr_pntr_plus2[1]),
        .I2(wr_pntr_plus2[0]),
        .I3(wr_pntr_plus2[2]),
        .I4(wr_pntr_plus2[4]),
        .I5(wr_pntr_plus2[5]),
        .O(plusOp__6[5]));
LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[6]_i_1__1 
       (.I0(\n_0_gic0.gc0.count[8]_i_2 ),
        .I1(wr_pntr_plus2[6]),
        .O(plusOp__6[6]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gic0.gc0.count[7]_i_1__1 
       (.I0(\n_0_gic0.gc0.count[8]_i_2 ),
        .I1(wr_pntr_plus2[6]),
        .I2(wr_pntr_plus2[7]),
        .O(plusOp__6[7]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gic0.gc0.count[8]_i_1 
       (.I0(wr_pntr_plus2[6]),
        .I1(\n_0_gic0.gc0.count[8]_i_2 ),
        .I2(wr_pntr_plus2[7]),
        .I3(Q),
        .O(plusOp__6[8]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gic0.gc0.count[8]_i_2 
       (.I0(wr_pntr_plus2[5]),
        .I1(wr_pntr_plus2[3]),
        .I2(wr_pntr_plus2[1]),
        .I3(wr_pntr_plus2[0]),
        .I4(wr_pntr_plus2[2]),
        .I5(wr_pntr_plus2[4]),
        .O(\n_0_gic0.gc0.count[8]_i_2 ));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(wr_pntr_plus2[0]),
        .PRE(I4),
        .Q(p_8_out[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(wr_pntr_plus2[1]),
        .Q(p_8_out[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(wr_pntr_plus2[2]),
        .Q(p_8_out[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(wr_pntr_plus2[3]),
        .Q(p_8_out[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(wr_pntr_plus2[4]),
        .Q(p_8_out[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(wr_pntr_plus2[5]),
        .Q(p_8_out[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(wr_pntr_plus2[6]),
        .Q(p_8_out[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(wr_pntr_plus2[7]),
        .Q(p_8_out[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(Q),
        .Q(O2));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(p_8_out[0]),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(p_8_out[1]),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(p_8_out[2]),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(p_8_out[3]),
        .Q(O3[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(p_8_out[4]),
        .Q(O3[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(p_8_out[5]),
        .Q(O3[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(p_8_out[6]),
        .Q(O3[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(p_8_out[7]),
        .Q(O3[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(O2),
        .Q(O3[8]));
(* counter = "10" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(plusOp__6[0]),
        .Q(wr_pntr_plus2[0]));
(* counter = "10" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(plusOp__6[1]),
        .PRE(I4),
        .Q(wr_pntr_plus2[1]));
(* counter = "10" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(plusOp__6[2]),
        .Q(wr_pntr_plus2[2]));
(* counter = "10" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(plusOp__6[3]),
        .Q(wr_pntr_plus2[3]));
(* counter = "10" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(plusOp__6[4]),
        .Q(wr_pntr_plus2[4]));
(* counter = "10" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(plusOp__6[5]),
        .Q(wr_pntr_plus2[5]));
(* counter = "10" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(plusOp__6[6]),
        .Q(wr_pntr_plus2[6]));
(* counter = "10" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(plusOp__6[7]),
        .Q(wr_pntr_plus2[7]));
(* counter = "10" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(E),
        .CLR(I4),
        .D(plusOp__6[8]),
        .Q(Q));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(p_8_out[0]),
        .I1(I3[0]),
        .I2(p_8_out[1]),
        .I3(I3[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(wr_pntr_plus2[0]),
        .I1(I3[0]),
        .I2(wr_pntr_plus2[1]),
        .I3(I3[1]),
        .O(v1_reg_0[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__1 
       (.I0(p_8_out[2]),
        .I1(I3[2]),
        .I2(p_8_out[3]),
        .I3(I3[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[2]),
        .I1(I3[2]),
        .I2(wr_pntr_plus2[3]),
        .I3(I3[3]),
        .O(v1_reg_0[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__1 
       (.I0(p_8_out[4]),
        .I1(I3[4]),
        .I2(p_8_out[5]),
        .I3(I3[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[4]),
        .I1(I3[4]),
        .I2(wr_pntr_plus2[5]),
        .I3(I3[5]),
        .O(v1_reg_0[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__1 
       (.I0(p_8_out[6]),
        .I1(I3[6]),
        .I2(p_8_out[7]),
        .I3(I3[7]),
        .O(v1_reg[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[6]),
        .I1(I3[6]),
        .I2(wr_pntr_plus2[7]),
        .I3(I3[7]),
        .O(v1_reg_0[3]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module axi_chip2chip_0_wr_bin_cntr__parameterized0_27
   (Q,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    S,
    O7,
    rst_full_gen_i,
    comp1,
    I2,
    p_1_out,
    I1,
    comp2,
    I3,
    E,
    clk_ph_out,
    I4);
  output [7:0]Q;
  output O1;
  output O2;
  output O3;
  output [1:0]O4;
  output [7:0]O5;
  output [3:0]O6;
  output [2:0]S;
  output [8:0]O7;
  input rst_full_gen_i;
  input comp1;
  input [0:0]I2;
  input p_1_out;
  input [0:0]I1;
  input comp2;
  input [8:0]I3;
  input [0:0]E;
  input clk_ph_out;
  input [0:0]I4;

  wire [0:0]E;
  wire [0:0]I1;
  wire [0:0]I2;
  wire [8:0]I3;
  wire [0:0]I4;
  wire O1;
  wire O2;
  wire O3;
  wire [1:0]O4;
  wire [7:0]O5;
  wire [3:0]O6;
  wire [8:0]O7;
  wire [7:0]Q;
  wire [2:0]S;
  wire clk_ph_out;
  wire comp1;
  wire comp2;
  wire \n_0_gic0.gc0.count[8]_i_2__0 ;
  wire p_1_out;
  wire [8:8]p_8_out;
  wire [8:0]plusOp__2;
  wire rst_full_gen_i;
  wire [8:8]wr_pntr_plus2;

LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[3]_i_3 
       (.I0(O5[2]),
        .I1(I3[2]),
        .O(S[2]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[3]_i_4 
       (.I0(O5[1]),
        .I1(I3[1]),
        .O(S[1]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[3]_i_5 
       (.I0(O5[0]),
        .I1(I3[0]),
        .O(S[0]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[7]_i_2 
       (.I0(O5[6]),
        .I1(I3[6]),
        .O(O6[3]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[7]_i_3 
       (.I0(O5[5]),
        .I1(I3[5]),
        .O(O6[2]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[7]_i_4 
       (.I0(O5[4]),
        .I1(I3[4]),
        .O(O6[1]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[7]_i_5 
       (.I0(O5[3]),
        .I1(I3[3]),
        .O(O6[0]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[9]_i_2 
       (.I0(p_8_out),
        .I1(I3[8]),
        .O(O4[1]));
LUT2 #(
    .INIT(4'h9)) 
     \gdiff.diff_pntr_pad[9]_i_3 
       (.I0(O5[7]),
        .I1(I3[7]),
        .O(O4[0]));
LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_1__2 
       (.I0(Q[0]),
        .O(plusOp__2[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gic0.gc0.count[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__2[1]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \gic0.gc0.count[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp__2[2]));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gic0.gc0.count[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__2[3]));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \gic0.gc0.count[4]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(plusOp__2[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \gic0.gc0.count[5]_i_1__2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(plusOp__2[5]));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \gic0.gc0.count[6]_i_1__2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\n_0_gic0.gc0.count[8]_i_2__0 ),
        .I3(Q[5]),
        .O(plusOp__2[6]));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \gic0.gc0.count[7]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\n_0_gic0.gc0.count[8]_i_2__0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(plusOp__2[7]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \gic0.gc0.count[8]_i_1__0 
       (.I0(wr_pntr_plus2),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\n_0_gic0.gc0.count[8]_i_2__0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(plusOp__2[8]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \gic0.gc0.count[8]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\n_0_gic0.gc0.count[8]_i_2__0 ));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .D(Q[0]),
        .PRE(I4),
        .Q(O5[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(Q[1]),
        .Q(O5[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(Q[2]),
        .Q(O5[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(Q[3]),
        .Q(O5[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(Q[4]),
        .Q(O5[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(Q[5]),
        .Q(O5[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(Q[6]),
        .Q(O5[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(Q[7]),
        .Q(O5[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[8] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(wr_pntr_plus2),
        .Q(p_8_out));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(O5[0]),
        .Q(O7[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(O5[1]),
        .Q(O7[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(O5[2]),
        .Q(O7[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(O5[3]),
        .Q(O7[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(O5[4]),
        .Q(O7[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(O5[5]),
        .Q(O7[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(O5[6]),
        .Q(O7[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(O5[7]),
        .Q(O7[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[8] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(p_8_out),
        .Q(O7[8]));
(* counter = "12" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(plusOp__2[0]),
        .Q(Q[0]));
(* counter = "12" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(clk_ph_out),
        .CE(E),
        .D(plusOp__2[1]),
        .PRE(I4),
        .Q(Q[1]));
(* counter = "12" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(plusOp__2[2]),
        .Q(Q[2]));
(* counter = "12" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(plusOp__2[3]),
        .Q(Q[3]));
(* counter = "12" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[4] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(plusOp__2[4]),
        .Q(Q[4]));
(* counter = "12" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[5] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(plusOp__2[5]),
        .Q(Q[5]));
(* counter = "12" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[6] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(plusOp__2[6]),
        .Q(Q[6]));
(* counter = "12" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[7] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(plusOp__2[7]),
        .Q(Q[7]));
(* counter = "12" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[8] 
       (.C(clk_ph_out),
        .CE(E),
        .CLR(I4),
        .D(plusOp__2[8]),
        .Q(wr_pntr_plus2));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__5 
       (.I0(p_8_out),
        .I1(I3[8]),
        .O(O2));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__6 
       (.I0(wr_pntr_plus2),
        .I1(I3[8]),
        .O(O3));
LUT6 #(
    .INIT(64'h4454444444444444)) 
     ram_full_i_i_1__2
       (.I0(rst_full_gen_i),
        .I1(comp1),
        .I2(I2),
        .I3(p_1_out),
        .I4(I1),
        .I5(comp2),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module axi_chip2chip_0_wr_logic
   (O1,
    O2,
    D,
    Q,
    O3,
    clk_ph_out,
    I1,
    br_ch_data_valid,
    rst_full_gen_i,
    O4,
    I2,
    I3);
  output O1;
  output O2;
  output [0:0]D;
  output [7:0]Q;
  output [7:0]O3;
  input clk_ph_out;
  input I1;
  input br_ch_data_valid;
  input rst_full_gen_i;
  input [7:0]O4;
  input I2;
  input [0:0]I3;

  wire [0:0]D;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire O1;
  wire O2;
  wire [7:0]O3;
  wire [7:0]O4;
  wire [7:0]Q;
  wire br_ch_data_valid;
  wire clk_ph_out;
  wire n_0_wpntr;
  wire n_10_wpntr;
  wire n_11_wpntr;
  wire n_12_wpntr;
  wire n_13_wpntr;
  wire n_14_wpntr;
  wire n_15_wpntr;
  wire n_16_wpntr;
  wire n_1_wpntr;
  wire \n_3_gwas.wsts ;
  wire p_3_out;
  wire rst_full_gen_i;

axi_chip2chip_0_wr_pf_as \gwas.gpf.wrpf 
       (.D(D),
        .I1(I1),
        .I2(O1),
        .I3(I3),
        .I4({n_10_wpntr,n_11_wpntr,n_12_wpntr,n_13_wpntr}),
        .I5(n_1_wpntr),
        .S({n_14_wpntr,n_15_wpntr,n_16_wpntr}),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i),
        .wr_pntr_plus1_pad({Q[6:0],\n_3_gwas.wsts }));
axi_chip2chip_0_wr_status_flags_as \gwas.wsts 
       (.E(p_3_out),
        .I1(n_0_wpntr),
        .I2(I1),
        .O1(O1),
        .O2(O2),
        .br_ch_data_valid(br_ch_data_valid),
        .clk_ph_out(clk_ph_out),
        .wr_pntr_plus1_pad(\n_3_gwas.wsts ));
axi_chip2chip_0_wr_bin_cntr wpntr
       (.E(p_3_out),
        .I1(O1),
        .I2(I2),
        .I3(I3),
        .I4({n_10_wpntr,n_11_wpntr,n_12_wpntr,n_13_wpntr}),
        .I5(n_1_wpntr),
        .O1(n_0_wpntr),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .Q(Q),
        .S({n_14_wpntr,n_15_wpntr,n_16_wpntr}),
        .br_ch_data_valid(br_ch_data_valid),
        .clk_ph_out(clk_ph_out),
        .rst_full_gen_i(rst_full_gen_i));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module axi_chip2chip_0_wr_logic_50
   (O1,
    Q,
    WEBWE,
    s_axi_awready,
    O2,
    O4,
    ram_full_i,
    s_aclk,
    I1,
    I2,
    O3,
    s_axi_awvalid,
    I3);
  output O1;
  output [6:0]Q;
  output [0:0]WEBWE;
  output s_axi_awready;
  output [7:0]O2;
  output [7:0]O4;
  input ram_full_i;
  input s_aclk;
  input I1;
  input I2;
  input [0:0]O3;
  input s_axi_awvalid;
  input [0:0]I3;

  wire I1;
  wire I2;
  wire [0:0]I3;
  wire O1;
  wire [7:0]O2;
  wire [0:0]O3;
  wire [7:0]O4;
  wire [6:0]Q;
  wire [0:0]WEBWE;
  wire ram_full_i;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [0:0]wr_pntr_plus2;

axi_chip2chip_0_wr_status_flags_as_52 \gwas.wsts 
       (.E(WEBWE),
        .I1(I1),
        .I2(I2),
        .O1(O1),
        .O3(O3),
        .Q(wr_pntr_plus2),
        .ram_full_i(ram_full_i),
        .s_aclk(s_aclk),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
axi_chip2chip_0_wr_bin_cntr_53 wpntr
       (.E(WEBWE),
        .I3(I3),
        .O2(O2),
        .O4(O4),
        .Q({Q,wr_pntr_plus2}),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module axi_chip2chip_0_wr_logic_71
   (O1,
    Q,
    WEBWE,
    s_axi_arready,
    O2,
    O4,
    ram_full_i,
    s_aclk,
    rst_d2,
    I1,
    O3,
    s_axi_arvalid,
    I2);
  output O1;
  output [6:0]Q;
  output [0:0]WEBWE;
  output s_axi_arready;
  output [7:0]O2;
  output [7:0]O4;
  input ram_full_i;
  input s_aclk;
  input rst_d2;
  input I1;
  input [0:0]O3;
  input s_axi_arvalid;
  input [0:0]I2;

  wire I1;
  wire [0:0]I2;
  wire O1;
  wire [7:0]O2;
  wire [0:0]O3;
  wire [7:0]O4;
  wire [6:0]Q;
  wire [0:0]WEBWE;
  wire ram_full_i;
  wire rst_d2;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [0:0]wr_pntr_plus2;

axi_chip2chip_0_wr_status_flags_as_80 \gwas.wsts 
       (.E(WEBWE),
        .I1(I1),
        .O1(O1),
        .O3(O3),
        .Q(wr_pntr_plus2),
        .ram_full_i(ram_full_i),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid));
axi_chip2chip_0_wr_bin_cntr_81 wpntr
       (.E(WEBWE),
        .I2(I2),
        .O2(O2),
        .O4(O4),
        .Q({Q,wr_pntr_plus2}),
        .s_aclk(s_aclk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module axi_chip2chip_0_wr_logic__parameterized0
   (comp1,
    comp2,
    O1,
    p_1_out,
    WEBWE,
    s_axi_wready,
    Q,
    O2,
    O3,
    I1,
    I2,
    ram_full_i,
    s_aclk,
    rst_d2,
    s_axi_wvalid,
    I3,
    I4);
  output comp1;
  output comp2;
  output O1;
  output p_1_out;
  output [0:0]WEBWE;
  output s_axi_wready;
  output [0:0]Q;
  output [0:0]O2;
  output [8:0]O3;
  input I1;
  input I2;
  input ram_full_i;
  input s_aclk;
  input rst_d2;
  input s_axi_wvalid;
  input [7:0]I3;
  input [0:0]I4;

  wire I1;
  wire I2;
  wire [7:0]I3;
  wire [0:0]I4;
  wire O1;
  wire [0:0]O2;
  wire [8:0]O3;
  wire [0:0]Q;
  wire [0:0]WEBWE;
  wire [3:0]\c1/v1_reg ;
  wire [3:0]\c2/v1_reg ;
  wire comp1;
  wire comp2;
  wire p_1_out;
  wire ram_full_i;
  wire rst_d2;
  wire s_aclk;
  wire s_axi_wready;
  wire s_axi_wvalid;

axi_chip2chip_0_wr_status_flags_as__parameterized0 \gwas.wsts 
       (.E(WEBWE),
        .I1(I1),
        .I2(I2),
        .O1(O1),
        .comp1(comp1),
        .comp2(comp2),
        .p_1_out(p_1_out),
        .ram_full_i(ram_full_i),
        .rst_d2(rst_d2),
        .s_aclk(s_aclk),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ));
axi_chip2chip_0_wr_bin_cntr__parameterized0 wpntr
       (.E(WEBWE),
        .I3(I3),
        .I4(I4),
        .O2(O2),
        .O3(O3),
        .Q(Q),
        .s_aclk(s_aclk),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module axi_chip2chip_0_wr_logic__parameterized0_17
   (O1,
    O3,
    E,
    O2,
    O4,
    O5,
    v1_reg,
    v1_reg_0,
    clk_ph_out,
    I1,
    rd_ch_data_valid,
    Q,
    rst_full_gen_i,
    I2,
    I3,
    I4);
  output O1;
  output [0:0]O3;
  output [0:0]E;
  output [7:0]O2;
  output [7:0]O4;
  output [8:0]O5;
  input [3:0]v1_reg;
  input [3:0]v1_reg_0;
  input clk_ph_out;
  input I1;
  input rd_ch_data_valid;
  input [0:0]Q;
  input rst_full_gen_i;
  input [0:0]I2;
  input [8:0]I3;
  input [0:0]I4;

  wire [0:0]E;
  wire I1;
  wire [0:0]I2;
  wire [8:0]I3;
  wire [0:0]I4;
  wire O1;
  wire [7:0]O2;
  wire [0:0]O3;
  wire [7:0]O4;
  wire [8:0]O5;
  wire [0:0]Q;
  wire clk_ph_out;
  wire comp1;
  wire comp2;
  wire n_10_wpntr;
  wire n_11_wpntr;
  wire n_12_wpntr;
  wire n_21_wpntr;
  wire n_22_wpntr;
  wire n_23_wpntr;
  wire n_24_wpntr;
  wire n_25_wpntr;
  wire n_26_wpntr;
  wire n_27_wpntr;
  wire \n_5_gwas.wsts ;
  wire n_8_wpntr;
  wire n_9_wpntr;
  wire p_1_out;
  wire rd_ch_data_valid;
  wire rst_full_gen_i;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

axi_chip2chip_0_wr_pf_as__parameterized0 \gwas.gpf.wrpf 
       (.I1(I1),
        .I2({n_21_wpntr,n_22_wpntr,n_23_wpntr,n_24_wpntr}),
        .I3({n_11_wpntr,n_12_wpntr}),
        .I4(I4),
        .O3(O3),
        .S({n_25_wpntr,n_26_wpntr,n_27_wpntr}),
        .clk_ph_out(clk_ph_out),
        .p_1_out(p_1_out),
        .rst_full_gen_i(rst_full_gen_i),
        .wr_pntr_plus1_pad({O4,\n_5_gwas.wsts }));
axi_chip2chip_0_wr_status_flags_as__parameterized0_26 \gwas.wsts 
       (.E(E),
        .I1(n_9_wpntr),
        .I2(n_10_wpntr),
        .I3(n_8_wpntr),
        .I4(I1),
        .O1(O1),
        .Q(Q),
        .clk_ph_out(clk_ph_out),
        .comp1(comp1),
        .comp2(comp2),
        .p_1_out(p_1_out),
        .rd_ch_data_valid(rd_ch_data_valid),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .wr_pntr_plus1_pad(\n_5_gwas.wsts ));
axi_chip2chip_0_wr_bin_cntr__parameterized0_27 wpntr
       (.E(E),
        .I1(Q),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .O1(n_8_wpntr),
        .O2(n_9_wpntr),
        .O3(n_10_wpntr),
        .O4({n_11_wpntr,n_12_wpntr}),
        .O5(O4),
        .O6({n_21_wpntr,n_22_wpntr,n_23_wpntr,n_24_wpntr}),
        .O7(O5),
        .Q(O2),
        .S({n_25_wpntr,n_26_wpntr,n_27_wpntr}),
        .clk_ph_out(clk_ph_out),
        .comp1(comp1),
        .comp2(comp2),
        .p_1_out(p_1_out),
        .rst_full_gen_i(rst_full_gen_i));
endmodule

(* ORIG_REF_NAME = "wr_pf_as" *) 
module axi_chip2chip_0_wr_pf_as
   (D,
    clk_ph_out,
    I1,
    rst_full_gen_i,
    I2,
    I3,
    wr_pntr_plus1_pad,
    S,
    I4,
    I5);
  output [0:0]D;
  input clk_ph_out;
  input I1;
  input rst_full_gen_i;
  input I2;
  input [0:0]I3;
  input [7:0]wr_pntr_plus1_pad;
  input [2:0]S;
  input [3:0]I4;
  input [0:0]I5;

  wire [0:0]D;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [3:0]I4;
  wire [0:0]I5;
  wire [2:0]S;
  wire clk_ph_out;
  wire [7:1]diff_pntr;
  wire \n_0_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_0_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_0_gpf1.prog_full_i_i_1__0 ;
  wire \n_0_gpf1.prog_full_i_i_2__0 ;
  wire \n_1_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_1_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_2_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_2_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_3_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_3_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_4_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_4_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_5_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_5_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_6_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_6_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_7_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_7_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_7_gdiff.diff_pntr_pad_reg[8]_i_1 ;
  wire rst_full_gen_i;
  wire [7:0]wr_pntr_plus1_pad;
  wire [3:0]\NLW_gdiff.diff_pntr_pad_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_gdiff.diff_pntr_pad_reg[8]_i_1_O_UNCONNECTED ;

FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_5_gdiff.diff_pntr_pad_reg[3]_i_1 ),
        .Q(diff_pntr[1]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_4_gdiff.diff_pntr_pad_reg[3]_i_1 ),
        .Q(diff_pntr[2]));
CARRY4 \gdiff.diff_pntr_pad_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_1_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_2_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_3_gdiff.diff_pntr_pad_reg[3]_i_1 }),
        .CYINIT(1'b0),
        .DI(wr_pntr_plus1_pad[3:0]),
        .O({\n_4_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_5_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_6_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_7_gdiff.diff_pntr_pad_reg[3]_i_1 }),
        .S({S,1'b0}));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_7_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .Q(diff_pntr[3]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_6_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .Q(diff_pntr[4]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_5_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .Q(diff_pntr[5]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_4_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .Q(diff_pntr[6]));
CARRY4 \gdiff.diff_pntr_pad_reg[7]_i_1 
       (.CI(\n_0_gdiff.diff_pntr_pad_reg[3]_i_1 ),
        .CO({\n_0_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_1_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_2_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_3_gdiff.diff_pntr_pad_reg[7]_i_1 }),
        .CYINIT(1'b0),
        .DI(wr_pntr_plus1_pad[7:4]),
        .O({\n_4_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_5_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_6_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_7_gdiff.diff_pntr_pad_reg[7]_i_1 }),
        .S(I4));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_7_gdiff.diff_pntr_pad_reg[8]_i_1 ),
        .Q(diff_pntr[7]));
CARRY4 \gdiff.diff_pntr_pad_reg[8]_i_1 
       (.CI(\n_0_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .CO(\NLW_gdiff.diff_pntr_pad_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gdiff.diff_pntr_pad_reg[8]_i_1_O_UNCONNECTED [3:1],\n_7_gdiff.diff_pntr_pad_reg[8]_i_1 }),
        .S({1'b0,1'b0,1'b0,I5}));
LUT5 #(
    .INIT(32'h0F0B000B)) 
     \gpf1.prog_full_i_i_1__0 
       (.I0(diff_pntr[7]),
        .I1(\n_0_gpf1.prog_full_i_i_2__0 ),
        .I2(rst_full_gen_i),
        .I3(I2),
        .I4(D),
        .O(\n_0_gpf1.prog_full_i_i_1__0 ));
LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
     \gpf1.prog_full_i_i_2__0 
       (.I0(diff_pntr[4]),
        .I1(diff_pntr[5]),
        .I2(diff_pntr[1]),
        .I3(diff_pntr[2]),
        .I4(diff_pntr[6]),
        .I5(diff_pntr[3]),
        .O(\n_0_gpf1.prog_full_i_i_2__0 ));
FDPE #(
    .INIT(1'b1)) 
     \gpf1.prog_full_i_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_gpf1.prog_full_i_i_1__0 ),
        .PRE(I1),
        .Q(D));
endmodule

(* ORIG_REF_NAME = "wr_pf_as" *) 
module axi_chip2chip_0_wr_pf_as__parameterized0
   (O3,
    clk_ph_out,
    I1,
    rst_full_gen_i,
    p_1_out,
    I4,
    wr_pntr_plus1_pad,
    S,
    I2,
    I3);
  output [0:0]O3;
  input clk_ph_out;
  input I1;
  input rst_full_gen_i;
  input p_1_out;
  input [0:0]I4;
  input [8:0]wr_pntr_plus1_pad;
  input [2:0]S;
  input [3:0]I2;
  input [1:0]I3;

  wire I1;
  wire [3:0]I2;
  wire [1:0]I3;
  wire [0:0]I4;
  wire [0:0]O3;
  wire [2:0]S;
  wire clk_ph_out;
  wire [8:1]diff_pntr;
  wire \n_0_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_0_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_0_gpf1.prog_full_i_i_1 ;
  wire \n_0_gpf1.prog_full_i_i_2 ;
  wire \n_1_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_1_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_2_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_2_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_3_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_3_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_3_gdiff.diff_pntr_pad_reg[9]_i_1 ;
  wire \n_4_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_4_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_5_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_5_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_6_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_6_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_6_gdiff.diff_pntr_pad_reg[9]_i_1 ;
  wire \n_7_gdiff.diff_pntr_pad_reg[3]_i_1 ;
  wire \n_7_gdiff.diff_pntr_pad_reg[7]_i_1 ;
  wire \n_7_gdiff.diff_pntr_pad_reg[9]_i_1 ;
  wire p_1_out;
  wire rst_full_gen_i;
  wire [8:0]wr_pntr_plus1_pad;
  wire [3:1]\NLW_gdiff.diff_pntr_pad_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gdiff.diff_pntr_pad_reg[9]_i_1_O_UNCONNECTED ;

FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[2] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_5_gdiff.diff_pntr_pad_reg[3]_i_1 ),
        .Q(diff_pntr[1]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[3] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_4_gdiff.diff_pntr_pad_reg[3]_i_1 ),
        .Q(diff_pntr[2]));
CARRY4 \gdiff.diff_pntr_pad_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_1_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_2_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_3_gdiff.diff_pntr_pad_reg[3]_i_1 }),
        .CYINIT(1'b0),
        .DI(wr_pntr_plus1_pad[3:0]),
        .O({\n_4_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_5_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_6_gdiff.diff_pntr_pad_reg[3]_i_1 ,\n_7_gdiff.diff_pntr_pad_reg[3]_i_1 }),
        .S({S,1'b0}));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[4] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_7_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .Q(diff_pntr[3]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[5] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_6_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .Q(diff_pntr[4]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[6] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_5_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .Q(diff_pntr[5]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[7] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_4_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .Q(diff_pntr[6]));
CARRY4 \gdiff.diff_pntr_pad_reg[7]_i_1 
       (.CI(\n_0_gdiff.diff_pntr_pad_reg[3]_i_1 ),
        .CO({\n_0_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_1_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_2_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_3_gdiff.diff_pntr_pad_reg[7]_i_1 }),
        .CYINIT(1'b0),
        .DI(wr_pntr_plus1_pad[7:4]),
        .O({\n_4_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_5_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_6_gdiff.diff_pntr_pad_reg[7]_i_1 ,\n_7_gdiff.diff_pntr_pad_reg[7]_i_1 }),
        .S(I2));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[8] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_7_gdiff.diff_pntr_pad_reg[9]_i_1 ),
        .Q(diff_pntr[7]));
FDCE #(
    .INIT(1'b0)) 
     \gdiff.diff_pntr_pad_reg[9] 
       (.C(clk_ph_out),
        .CE(1'b1),
        .CLR(I4),
        .D(\n_6_gdiff.diff_pntr_pad_reg[9]_i_1 ),
        .Q(diff_pntr[8]));
CARRY4 \gdiff.diff_pntr_pad_reg[9]_i_1 
       (.CI(\n_0_gdiff.diff_pntr_pad_reg[7]_i_1 ),
        .CO({\NLW_gdiff.diff_pntr_pad_reg[9]_i_1_CO_UNCONNECTED [3:1],\n_3_gdiff.diff_pntr_pad_reg[9]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,wr_pntr_plus1_pad[8]}),
        .O({\NLW_gdiff.diff_pntr_pad_reg[9]_i_1_O_UNCONNECTED [3:2],\n_6_gdiff.diff_pntr_pad_reg[9]_i_1 ,\n_7_gdiff.diff_pntr_pad_reg[9]_i_1 }),
        .S({1'b0,1'b0,I3}));
LUT6 #(
    .INIT(64'h00FF00E0000000E0)) 
     \gpf1.prog_full_i_i_1 
       (.I0(\n_0_gpf1.prog_full_i_i_2 ),
        .I1(diff_pntr[7]),
        .I2(diff_pntr[8]),
        .I3(rst_full_gen_i),
        .I4(p_1_out),
        .I5(O3),
        .O(\n_0_gpf1.prog_full_i_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gpf1.prog_full_i_i_2 
       (.I0(diff_pntr[2]),
        .I1(diff_pntr[1]),
        .I2(diff_pntr[3]),
        .I3(diff_pntr[6]),
        .I4(diff_pntr[4]),
        .I5(diff_pntr[5]),
        .O(\n_0_gpf1.prog_full_i_i_2 ));
FDPE #(
    .INIT(1'b1)) 
     \gpf1.prog_full_i_reg 
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(\n_0_gpf1.prog_full_i_i_1 ),
        .PRE(I1),
        .Q(O3));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module axi_chip2chip_0_wr_status_flags_as
   (O1,
    O2,
    E,
    wr_pntr_plus1_pad,
    I1,
    clk_ph_out,
    I2,
    br_ch_data_valid);
  output O1;
  output O2;
  output [0:0]E;
  output [0:0]wr_pntr_plus1_pad;
  input I1;
  input clk_ph_out;
  input I2;
  input br_ch_data_valid;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire br_ch_data_valid;
  wire clk_ph_out;
  wire [0:0]wr_pntr_plus1_pad;

LUT3 #(
    .INIT(8'h04)) 
     \gdiff.diff_pntr_pad[3]_i_2__0 
       (.I0(O1),
        .I1(br_ch_data_valid),
        .I2(O2),
        .O(wr_pntr_plus1_pad));
LUT3 #(
    .INIT(8'h04)) 
     \gic0.gc0.count_d2[7]_i_1 
       (.I0(O1),
        .I1(br_ch_data_valid),
        .I2(O2),
        .O(E));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I1),
        .PRE(I2),
        .Q(O1));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I1),
        .PRE(I2),
        .Q(O2));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module axi_chip2chip_0_wr_status_flags_as_52
   (O1,
    E,
    s_axi_awready,
    ram_full_i,
    s_aclk,
    I1,
    I2,
    O3,
    Q,
    s_axi_awvalid);
  output O1;
  output [0:0]E;
  output s_axi_awready;
  input ram_full_i;
  input s_aclk;
  input I1;
  input I2;
  input [0:0]O3;
  input [0:0]Q;
  input s_axi_awvalid;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire O1;
  wire [0:0]O3;
  wire [0:0]Q;
  wire p_1_out;
  wire ram_full_i;
  wire ram_full_i__0;
  wire s_aclk;
  wire s_axi_awready;
  wire s_axi_awvalid;

LUT3 #(
    .INIT(8'h04)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_2__0 
       (.I0(ram_full_i__0),
        .I1(s_axi_awvalid),
        .I2(p_1_out),
        .O(E));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(I1),
        .Q(p_1_out));
LUT6 #(
    .INIT(64'h0000000000820000)) 
     ram_full_i_i_3
       (.I0(I2),
        .I1(O3),
        .I2(Q),
        .I3(ram_full_i__0),
        .I4(s_axi_awvalid),
        .I5(p_1_out),
        .O(O1));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(I1),
        .Q(ram_full_i__0));
LUT1 #(
    .INIT(2'h1)) 
     s_axi_awready_INST_0
       (.I0(ram_full_i__0),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module axi_chip2chip_0_wr_status_flags_as_80
   (O1,
    E,
    s_axi_arready,
    ram_full_i,
    s_aclk,
    rst_d2,
    I1,
    O3,
    Q,
    s_axi_arvalid);
  output O1;
  output [0:0]E;
  output s_axi_arready;
  input ram_full_i;
  input s_aclk;
  input rst_d2;
  input I1;
  input [0:0]O3;
  input [0:0]Q;
  input s_axi_arvalid;

  wire [0:0]E;
  wire I1;
  wire O1;
  wire [0:0]O3;
  wire [0:0]Q;
  wire n_0_ram_full_i_reg;
  wire p_1_out;
  wire ram_full_i;
  wire rst_d2;
  wire s_aclk;
  wire s_axi_arready;
  wire s_axi_arvalid;

LUT3 #(
    .INIT(8'h04)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_2__1 
       (.I0(n_0_ram_full_i_reg),
        .I1(s_axi_arvalid),
        .I2(p_1_out),
        .O(E));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(p_1_out));
LUT6 #(
    .INIT(64'h0000000000820000)) 
     ram_full_i_i_3__0
       (.I0(I1),
        .I1(O3),
        .I2(Q),
        .I3(n_0_ram_full_i_reg),
        .I4(s_axi_arvalid),
        .I5(p_1_out),
        .O(O1));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(n_0_ram_full_i_reg));
LUT1 #(
    .INIT(2'h1)) 
     s_axi_arready_INST_0
       (.I0(n_0_ram_full_i_reg),
        .O(s_axi_arready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module axi_chip2chip_0_wr_status_flags_as__parameterized0
   (comp1,
    comp2,
    O1,
    p_1_out,
    E,
    s_axi_wready,
    v1_reg,
    I1,
    v1_reg_0,
    I2,
    ram_full_i,
    s_aclk,
    rst_d2,
    s_axi_wvalid);
  output comp1;
  output comp2;
  output O1;
  output p_1_out;
  output [0:0]E;
  output s_axi_wready;
  input [3:0]v1_reg;
  input I1;
  input [3:0]v1_reg_0;
  input I2;
  input ram_full_i;
  input s_aclk;
  input rst_d2;
  input s_axi_wvalid;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire O1;
  wire comp1;
  wire comp2;
  wire p_1_out;
  wire ram_full_i;
  wire rst_d2;
  wire s_aclk;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

LUT3 #(
    .INIT(8'h04)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_2__2 
       (.I0(O1),
        .I1(s_axi_wvalid),
        .I2(p_1_out),
        .O(E));
axi_chip2chip_0_compare__parameterized0 c1
       (.I1(I1),
        .comp1(comp1),
        .v1_reg(v1_reg));
axi_chip2chip_0_compare__parameterized0_2 c2
       (.I2(I2),
        .comp2(comp2),
        .v1_reg_0(v1_reg_0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(p_1_out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(O1));
LUT1 #(
    .INIT(2'h1)) 
     s_axi_wready_INST_0
       (.I0(O1),
        .O(s_axi_wready));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module axi_chip2chip_0_wr_status_flags_as__parameterized0_26
   (comp1,
    comp2,
    O1,
    p_1_out,
    E,
    wr_pntr_plus1_pad,
    v1_reg,
    I1,
    v1_reg_0,
    I2,
    I3,
    clk_ph_out,
    I4,
    rd_ch_data_valid,
    Q);
  output comp1;
  output comp2;
  output O1;
  output p_1_out;
  output [0:0]E;
  output [0:0]wr_pntr_plus1_pad;
  input [3:0]v1_reg;
  input I1;
  input [3:0]v1_reg_0;
  input I2;
  input I3;
  input clk_ph_out;
  input I4;
  input rd_ch_data_valid;
  input [0:0]Q;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire [0:0]Q;
  wire clk_ph_out;
  wire comp1;
  wire comp2;
  wire p_1_out;
  wire rd_ch_data_valid;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [0:0]wr_pntr_plus1_pad;

LUT4 #(
    .INIT(16'h0200)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36.ram_i_2 
       (.I0(rd_ch_data_valid),
        .I1(O1),
        .I2(p_1_out),
        .I3(Q),
        .O(E));
axi_chip2chip_0_compare__parameterized0_28 c1
       (.I1(I1),
        .comp1(comp1),
        .v1_reg(v1_reg));
axi_chip2chip_0_compare__parameterized0_29 c2
       (.I2(I2),
        .comp2(comp2),
        .v1_reg_0(v1_reg_0));
LUT4 #(
    .INIT(16'h0200)) 
     \gdiff.diff_pntr_pad[3]_i_2 
       (.I0(rd_ch_data_valid),
        .I1(O1),
        .I2(p_1_out),
        .I3(Q),
        .O(wr_pntr_plus1_pad));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3),
        .PRE(I4),
        .Q(p_1_out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(clk_ph_out),
        .CE(1'b1),
        .D(I3),
        .PRE(I4),
        .Q(O1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
