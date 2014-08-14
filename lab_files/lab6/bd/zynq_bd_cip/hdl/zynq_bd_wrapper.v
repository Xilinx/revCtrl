//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
//Date        : Fri Aug 08 15:11:02 2014
//Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target zynq_bd_wrapper.bd
//Design      : zynq_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zynq_bd_wrapper
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
    ap_clk,
    ap_rst_n,
    bftClk,
    error,
    leds_4bits_tri_o,
    mux_V,
    reset,
    video_in_stream_tdata,
    video_in_stream_tlast,
    video_in_stream_tready,
    video_in_stream_tuser,
    video_in_stream_tvalid,
    video_out_stream_tdata,
    video_out_stream_tlast,
    video_out_stream_tready,
    video_out_stream_tuser,
    video_out_stream_tvalid,
    wbClk,
    wbDataForInput,
    wbDataForOutput,
    wbInputData,
    wbOutputData,
    wbWriteOut);
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
  input ap_clk;
  input ap_rst_n;
  input bftClk;
  output error;
  output [3:0]leds_4bits_tri_o;
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
  wire ap_clk;
  wire ap_rst_n;
  wire bftClk;
  wire error;
  wire [3:0]leds_4bits_tri_o;
  wire [1:0]mux_V;
  wire reset;
  wire [23:0]video_in_stream_tdata;
  wire [0:0]video_in_stream_tlast;
  wire video_in_stream_tready;
  wire [0:0]video_in_stream_tuser;
  wire video_in_stream_tvalid;
  wire [23:0]video_out_stream_tdata;
  wire [0:0]video_out_stream_tlast;
  wire video_out_stream_tready;
  wire [0:0]video_out_stream_tuser;
  wire video_out_stream_tvalid;
  wire wbClk;
  wire wbDataForInput;
  wire wbDataForOutput;
  wire [31:0]wbInputData;
  wire [31:0]wbOutputData;
  wire wbWriteOut;

zynq_bd zynq_bd_i
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
        .LEDs_4Bits_tri_o(leds_4bits_tri_o),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .bftClk(bftClk),
        .error(error),
        .mux_V(mux_V),
        .reset(reset),
        .video_in_stream_tdata(video_in_stream_tdata),
        .video_in_stream_tlast(video_in_stream_tlast),
        .video_in_stream_tready(video_in_stream_tready),
        .video_in_stream_tuser(video_in_stream_tuser),
        .video_in_stream_tvalid(video_in_stream_tvalid),
        .video_out_stream_tdata(video_out_stream_tdata),
        .video_out_stream_tlast(video_out_stream_tlast),
        .video_out_stream_tready(video_out_stream_tready),
        .video_out_stream_tuser(video_out_stream_tuser),
        .video_out_stream_tvalid(video_out_stream_tvalid),
        .wbClk(wbClk),
        .wbDataForInput(wbDataForInput),
        .wbDataForOutput(wbDataForOutput),
        .wbInputData(wbInputData),
        .wbOutputData(wbOutputData),
        .wbWriteOut(wbWriteOut));
endmodule
