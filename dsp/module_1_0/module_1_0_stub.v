// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3 (win64) Build 1033155 Thu Oct  2 17:33:07 MDT 2014
// Date        : Thu Feb 05 15:17:25 2015
// Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub c:/junk/revCtrl/work_2014_3_regen/ip/module_1_0/module_1_0_stub.v
// Design      : module_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "module_1,Vivado 2014.3" *)
module module_1_0(clk, data_in, data_in1, data_in2, data_in3, data_out, data_out1, data_out2)
/* synthesis syn_black_box black_box_pad_pin="clk,data_in[15:0],data_in1[3:0],data_in2[15:0],data_in3,data_out[24:0],data_out1,data_out2" */;
  input clk;
  input [15:0]data_in;
  input [3:0]data_in1;
  input [15:0]data_in2;
  input data_in3;
  output [24:0]data_out;
  output data_out1;
  output data_out2;
endmodule
