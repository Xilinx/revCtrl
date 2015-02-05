-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.3 (win64) Build 1033155 Thu Oct  2 17:33:07 MDT 2014
-- Date        : Thu Feb 05 11:16:07 2015
-- Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub c:/junk/revCtrl/work_2014_3_regen/zynq_bd/zynq_bd_stub.vhdl
-- Design      : zynq_bd
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_bd is
  Port ( 
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LEDs_4Bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    bftClk : in STD_LOGIC;
    error : out STD_LOGIC;
    mux_V : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    video_in_stream_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    video_in_stream_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_stream_tready : out STD_LOGIC;
    video_in_stream_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_stream_tvalid : in STD_LOGIC;
    video_out_stream_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    video_out_stream_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_stream_tready : in STD_LOGIC;
    video_out_stream_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_out_stream_tvalid : out STD_LOGIC;
    wbClk : in STD_LOGIC;
    wbDataForInput : in STD_LOGIC;
    wbDataForOutput : out STD_LOGIC;
    wbInputData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wbOutputData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wbWriteOut : in STD_LOGIC
  );

end zynq_bd;

architecture stub of zynq_bd is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DDR_addr[14:0],DDR_ba[2:0],DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n,DDR_dm[3:0],DDR_dq[31:0],DDR_dqs_n[3:0],DDR_dqs_p[3:0],DDR_odt,DDR_ras_n,DDR_reset_n,DDR_we_n,FIXED_IO_ddr_vrn,FIXED_IO_ddr_vrp,FIXED_IO_mio[53:0],FIXED_IO_ps_clk,FIXED_IO_ps_porb,FIXED_IO_ps_srstb,LEDs_4Bits_tri_o[3:0],ap_clk,ap_rst_n,bftClk,error,mux_V[1:0],reset,video_in_stream_tdata[23:0],video_in_stream_tlast[0:0],video_in_stream_tready,video_in_stream_tuser[0:0],video_in_stream_tvalid,video_out_stream_tdata[23:0],video_out_stream_tlast[0:0],video_out_stream_tready,video_out_stream_tuser[0:0],video_out_stream_tvalid,wbClk,wbDataForInput,wbDataForOutput,wbInputData[31:0],wbOutputData[31:0],wbWriteOut";
begin
end;
