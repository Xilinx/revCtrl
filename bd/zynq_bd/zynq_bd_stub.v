// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3 (win64) Build 1033155 Thu Oct  2 17:33:07 MDT 2014
// Date        : Thu Feb 05 11:16:07 2015
// Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub c:/junk/revCtrl/work_2014_3_regen/zynq_bd/zynq_bd_stub.v
// Design      : zynq_bd
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module zynq_bd(DDR_addr, DDR_ba, DDR_cas_n, DDR_ck_n, DDR_ck_p, DDR_cke, DDR_cs_n, DDR_dm, DDR_dq, DDR_dqs_n, DDR_dqs_p, DDR_odt, DDR_ras_n, DDR_reset_n, DDR_we_n, FIXED_IO_ddr_vrn, FIXED_IO_ddr_vrp, FIXED_IO_mio, FIXED_IO_ps_clk, FIXED_IO_ps_porb, FIXED_IO_ps_srstb, LEDs_4Bits_tri_o, ap_clk, ap_rst_n, bftClk, error, mux_V, reset, video_in_stream_tdata, video_in_stream_tlast, video_in_stream_tready, video_in_stream_tuser, video_in_stream_tvalid, video_out_stream_tdata, video_out_stream_tlast, video_out_stream_tready, video_out_stream_tuser, video_out_stream_tvalid, wbClk, wbDataForInput, wbDataForOutput, wbInputData, wbOutputData, wbWriteOut)
/* synthesis syn_black_box black_box_pad_pin="DDR_addr[14:0],DDR_ba[2:0],DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n,DDR_dm[3:0],DDR_dq[31:0],DDR_dqs_n[3:0],DDR_dqs_p[3:0],DDR_odt,DDR_ras_n,DDR_reset_n,DDR_we_n,FIXED_IO_ddr_vrn,FIXED_IO_ddr_vrp,FIXED_IO_mio[53:0],FIXED_IO_ps_clk,FIXED_IO_ps_porb,FIXED_IO_ps_srstb,LEDs_4Bits_tri_o[3:0],ap_clk,ap_rst_n,bftClk,error,mux_V[1:0],reset,video_in_stream_tdata[23:0],video_in_stream_tlast[0:0],video_in_stream_tready,video_in_stream_tuser[0:0],video_in_stream_tvalid,video_out_stream_tdata[23:0],video_out_stream_tlast[0:0],video_out_stream_tready,video_out_stream_tuser[0:0],video_out_stream_tvalid,wbClk,wbDataForInput,wbDataForOutput,wbInputData[31:0],wbOutputData[31:0],wbWriteOut" */;
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
  output [3:0]LEDs_4Bits_tri_o;
  input ap_clk;
  input ap_rst_n;
  input bftClk;
  output error;
  input [1:0]mux_V;
  input reset;
  input [23:0]video_in_stream_tdata;
  input [0:0]video_in_stream_tlast;
  output video_in_stream_tready;
  input [0:0]video_in_stream_tuser;
  input video_in_stream_tvalid;
  output [23:0]video_out_stream_tdata;
  output [0:0]video_out_stream_tlast;
  input video_out_stream_tready;
  output [0:0]video_out_stream_tuser;
  output video_out_stream_tvalid;
  input wbClk;
  input wbDataForInput;
  output wbDataForOutput;
  input [31:0]wbInputData;
  output [31:0]wbOutputData;
  input wbWriteOut;
endmodule
