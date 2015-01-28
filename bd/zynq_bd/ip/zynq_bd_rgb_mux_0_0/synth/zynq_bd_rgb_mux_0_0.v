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


// IP VLNV: xilinx.com:hls:rgb_mux:2.3
// IP Revision: 1408081154

(* X_CORE_INFO = "rgb_mux,Vivado 2014.2" *)
(* CHECK_LICENSE_TYPE = "zynq_bd_rgb_mux_0_0,rgb_mux,{}" *)
(* CORE_GENERATION_INFO = "zynq_bd_rgb_mux_0_0,rgb_mux,{x_ipProduct=Vivado 2014.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=rgb_mux,x_ipVersion=2.3,x_ipCoreRevision=1408081154,x_ipLanguage=VERILOG}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zynq_bd_rgb_mux_0_0 (
  ap_clk,
  ap_rst_n,
  video_in_stream_TVALID,
  video_in_stream_TREADY,
  video_in_stream_TDATA,
  video_in_stream_TLAST,
  video_in_stream_TUSER,
  video_out_stream_TVALID,
  video_out_stream_TREADY,
  video_out_stream_TDATA,
  video_out_stream_TLAST,
  video_out_stream_TUSER,
  mux_V
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in_stream TVALID" *)
input wire video_in_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in_stream TREADY" *)
output wire video_in_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in_stream TDATA" *)
input wire [23 : 0] video_in_stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in_stream TLAST" *)
input wire [0 : 0] video_in_stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in_stream TUSER" *)
input wire [0 : 0] video_in_stream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out_stream TVALID" *)
output wire video_out_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out_stream TREADY" *)
input wire video_out_stream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out_stream TDATA" *)
output wire [23 : 0] video_out_stream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out_stream TLAST" *)
output wire [0 : 0] video_out_stream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out_stream TUSER" *)
output wire [0 : 0] video_out_stream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mux_V DATA" *)
input wire [1 : 0] mux_V;

  rgb_mux inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .video_in_stream_TVALID(video_in_stream_TVALID),
    .video_in_stream_TREADY(video_in_stream_TREADY),
    .video_in_stream_TDATA(video_in_stream_TDATA),
    .video_in_stream_TLAST(video_in_stream_TLAST),
    .video_in_stream_TUSER(video_in_stream_TUSER),
    .video_out_stream_TVALID(video_out_stream_TVALID),
    .video_out_stream_TREADY(video_out_stream_TREADY),
    .video_out_stream_TDATA(video_out_stream_TDATA),
    .video_out_stream_TLAST(video_out_stream_TLAST),
    .video_out_stream_TUSER(video_out_stream_TUSER),
    .mux_V(mux_V)
  );
endmodule
