-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.2 (win64) Build 928826 Thu Jun  5 18:17:50 MDT 2014
-- Date        : Wed Jun 25 17:28:32 2014
-- Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/vivado/TSC/2014/versionControl/fromNaveen/example_design_scripts_2014_2/ip/axi_chip2chip_0/axi_chip2chip_0_stub.vhdl
-- Design      : axi_chip2chip_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axi_chip2chip_0 is
  Port ( 
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    axi_c2c_m2s_intr_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_c2c_s2m_intr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    idelay_ref_clk : in STD_LOGIC;
    axi_c2c_phy_clk : in STD_LOGIC;
    axi_c2c_selio_tx_clk_out : out STD_LOGIC;
    axi_c2c_selio_tx_data_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_c2c_selio_rx_clk_in : in STD_LOGIC;
    axi_c2c_selio_rx_data_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_c2c_link_status_out : out STD_LOGIC;
    axi_c2c_multi_bit_error_out : out STD_LOGIC;
    axi_c2c_link_error_out : out STD_LOGIC
  );

end axi_chip2chip_0;

architecture stub of axi_chip2chip_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_aclk,s_aresetn,s_axi_awid[5:0],s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wuser[3:0],s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid[5:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_arid[5:0],s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rid[5:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,axi_c2c_m2s_intr_in[3:0],axi_c2c_s2m_intr_out[3:0],idelay_ref_clk,axi_c2c_phy_clk,axi_c2c_selio_tx_clk_out,axi_c2c_selio_tx_data_out[8:0],axi_c2c_selio_rx_clk_in,axi_c2c_selio_rx_data_in[8:0],axi_c2c_link_status_out,axi_c2c_multi_bit_error_out,axi_c2c_link_error_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_chip2chip_v4_2,Vivado 2014.2";
begin
end;
