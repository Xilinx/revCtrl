//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
//Date        : Wed Aug 13 23:24:46 2014
//Host        : xsjrplyler30 running 64-bit Service Pack 1  (build 7601)
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
    leds_4bits_tri_io);
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
  inout [31:0]leds_4bits_tri_io;

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
  wire [0:0]leds_4bits_tri_i_0;
  wire [1:1]leds_4bits_tri_i_1;
  wire [10:10]leds_4bits_tri_i_10;
  wire [11:11]leds_4bits_tri_i_11;
  wire [12:12]leds_4bits_tri_i_12;
  wire [13:13]leds_4bits_tri_i_13;
  wire [14:14]leds_4bits_tri_i_14;
  wire [15:15]leds_4bits_tri_i_15;
  wire [16:16]leds_4bits_tri_i_16;
  wire [17:17]leds_4bits_tri_i_17;
  wire [18:18]leds_4bits_tri_i_18;
  wire [19:19]leds_4bits_tri_i_19;
  wire [2:2]leds_4bits_tri_i_2;
  wire [20:20]leds_4bits_tri_i_20;
  wire [21:21]leds_4bits_tri_i_21;
  wire [22:22]leds_4bits_tri_i_22;
  wire [23:23]leds_4bits_tri_i_23;
  wire [24:24]leds_4bits_tri_i_24;
  wire [25:25]leds_4bits_tri_i_25;
  wire [26:26]leds_4bits_tri_i_26;
  wire [27:27]leds_4bits_tri_i_27;
  wire [28:28]leds_4bits_tri_i_28;
  wire [29:29]leds_4bits_tri_i_29;
  wire [3:3]leds_4bits_tri_i_3;
  wire [30:30]leds_4bits_tri_i_30;
  wire [31:31]leds_4bits_tri_i_31;
  wire [4:4]leds_4bits_tri_i_4;
  wire [5:5]leds_4bits_tri_i_5;
  wire [6:6]leds_4bits_tri_i_6;
  wire [7:7]leds_4bits_tri_i_7;
  wire [8:8]leds_4bits_tri_i_8;
  wire [9:9]leds_4bits_tri_i_9;
  wire [0:0]leds_4bits_tri_io_0;
  wire [1:1]leds_4bits_tri_io_1;
  wire [10:10]leds_4bits_tri_io_10;
  wire [11:11]leds_4bits_tri_io_11;
  wire [12:12]leds_4bits_tri_io_12;
  wire [13:13]leds_4bits_tri_io_13;
  wire [14:14]leds_4bits_tri_io_14;
  wire [15:15]leds_4bits_tri_io_15;
  wire [16:16]leds_4bits_tri_io_16;
  wire [17:17]leds_4bits_tri_io_17;
  wire [18:18]leds_4bits_tri_io_18;
  wire [19:19]leds_4bits_tri_io_19;
  wire [2:2]leds_4bits_tri_io_2;
  wire [20:20]leds_4bits_tri_io_20;
  wire [21:21]leds_4bits_tri_io_21;
  wire [22:22]leds_4bits_tri_io_22;
  wire [23:23]leds_4bits_tri_io_23;
  wire [24:24]leds_4bits_tri_io_24;
  wire [25:25]leds_4bits_tri_io_25;
  wire [26:26]leds_4bits_tri_io_26;
  wire [27:27]leds_4bits_tri_io_27;
  wire [28:28]leds_4bits_tri_io_28;
  wire [29:29]leds_4bits_tri_io_29;
  wire [3:3]leds_4bits_tri_io_3;
  wire [30:30]leds_4bits_tri_io_30;
  wire [31:31]leds_4bits_tri_io_31;
  wire [4:4]leds_4bits_tri_io_4;
  wire [5:5]leds_4bits_tri_io_5;
  wire [6:6]leds_4bits_tri_io_6;
  wire [7:7]leds_4bits_tri_io_7;
  wire [8:8]leds_4bits_tri_io_8;
  wire [9:9]leds_4bits_tri_io_9;
  wire [0:0]leds_4bits_tri_o_0;
  wire [1:1]leds_4bits_tri_o_1;
  wire [10:10]leds_4bits_tri_o_10;
  wire [11:11]leds_4bits_tri_o_11;
  wire [12:12]leds_4bits_tri_o_12;
  wire [13:13]leds_4bits_tri_o_13;
  wire [14:14]leds_4bits_tri_o_14;
  wire [15:15]leds_4bits_tri_o_15;
  wire [16:16]leds_4bits_tri_o_16;
  wire [17:17]leds_4bits_tri_o_17;
  wire [18:18]leds_4bits_tri_o_18;
  wire [19:19]leds_4bits_tri_o_19;
  wire [2:2]leds_4bits_tri_o_2;
  wire [20:20]leds_4bits_tri_o_20;
  wire [21:21]leds_4bits_tri_o_21;
  wire [22:22]leds_4bits_tri_o_22;
  wire [23:23]leds_4bits_tri_o_23;
  wire [24:24]leds_4bits_tri_o_24;
  wire [25:25]leds_4bits_tri_o_25;
  wire [26:26]leds_4bits_tri_o_26;
  wire [27:27]leds_4bits_tri_o_27;
  wire [28:28]leds_4bits_tri_o_28;
  wire [29:29]leds_4bits_tri_o_29;
  wire [3:3]leds_4bits_tri_o_3;
  wire [30:30]leds_4bits_tri_o_30;
  wire [31:31]leds_4bits_tri_o_31;
  wire [4:4]leds_4bits_tri_o_4;
  wire [5:5]leds_4bits_tri_o_5;
  wire [6:6]leds_4bits_tri_o_6;
  wire [7:7]leds_4bits_tri_o_7;
  wire [8:8]leds_4bits_tri_o_8;
  wire [9:9]leds_4bits_tri_o_9;
  wire [0:0]leds_4bits_tri_t_0;
  wire [1:1]leds_4bits_tri_t_1;
  wire [10:10]leds_4bits_tri_t_10;
  wire [11:11]leds_4bits_tri_t_11;
  wire [12:12]leds_4bits_tri_t_12;
  wire [13:13]leds_4bits_tri_t_13;
  wire [14:14]leds_4bits_tri_t_14;
  wire [15:15]leds_4bits_tri_t_15;
  wire [16:16]leds_4bits_tri_t_16;
  wire [17:17]leds_4bits_tri_t_17;
  wire [18:18]leds_4bits_tri_t_18;
  wire [19:19]leds_4bits_tri_t_19;
  wire [2:2]leds_4bits_tri_t_2;
  wire [20:20]leds_4bits_tri_t_20;
  wire [21:21]leds_4bits_tri_t_21;
  wire [22:22]leds_4bits_tri_t_22;
  wire [23:23]leds_4bits_tri_t_23;
  wire [24:24]leds_4bits_tri_t_24;
  wire [25:25]leds_4bits_tri_t_25;
  wire [26:26]leds_4bits_tri_t_26;
  wire [27:27]leds_4bits_tri_t_27;
  wire [28:28]leds_4bits_tri_t_28;
  wire [29:29]leds_4bits_tri_t_29;
  wire [3:3]leds_4bits_tri_t_3;
  wire [30:30]leds_4bits_tri_t_30;
  wire [31:31]leds_4bits_tri_t_31;
  wire [4:4]leds_4bits_tri_t_4;
  wire [5:5]leds_4bits_tri_t_5;
  wire [6:6]leds_4bits_tri_t_6;
  wire [7:7]leds_4bits_tri_t_7;
  wire [8:8]leds_4bits_tri_t_8;
  wire [9:9]leds_4bits_tri_t_9;

IOBUF leds_4bits_tri_iobuf_0
       (.I(leds_4bits_tri_o_0),
        .IO(leds_4bits_tri_io[0]),
        .O(leds_4bits_tri_i_0),
        .T(leds_4bits_tri_t_0));
IOBUF leds_4bits_tri_iobuf_1
       (.I(leds_4bits_tri_o_1),
        .IO(leds_4bits_tri_io[1]),
        .O(leds_4bits_tri_i_1),
        .T(leds_4bits_tri_t_1));
IOBUF leds_4bits_tri_iobuf_10
       (.I(leds_4bits_tri_o_10),
        .IO(leds_4bits_tri_io[10]),
        .O(leds_4bits_tri_i_10),
        .T(leds_4bits_tri_t_10));
IOBUF leds_4bits_tri_iobuf_11
       (.I(leds_4bits_tri_o_11),
        .IO(leds_4bits_tri_io[11]),
        .O(leds_4bits_tri_i_11),
        .T(leds_4bits_tri_t_11));
IOBUF leds_4bits_tri_iobuf_12
       (.I(leds_4bits_tri_o_12),
        .IO(leds_4bits_tri_io[12]),
        .O(leds_4bits_tri_i_12),
        .T(leds_4bits_tri_t_12));
IOBUF leds_4bits_tri_iobuf_13
       (.I(leds_4bits_tri_o_13),
        .IO(leds_4bits_tri_io[13]),
        .O(leds_4bits_tri_i_13),
        .T(leds_4bits_tri_t_13));
IOBUF leds_4bits_tri_iobuf_14
       (.I(leds_4bits_tri_o_14),
        .IO(leds_4bits_tri_io[14]),
        .O(leds_4bits_tri_i_14),
        .T(leds_4bits_tri_t_14));
IOBUF leds_4bits_tri_iobuf_15
       (.I(leds_4bits_tri_o_15),
        .IO(leds_4bits_tri_io[15]),
        .O(leds_4bits_tri_i_15),
        .T(leds_4bits_tri_t_15));
IOBUF leds_4bits_tri_iobuf_16
       (.I(leds_4bits_tri_o_16),
        .IO(leds_4bits_tri_io[16]),
        .O(leds_4bits_tri_i_16),
        .T(leds_4bits_tri_t_16));
IOBUF leds_4bits_tri_iobuf_17
       (.I(leds_4bits_tri_o_17),
        .IO(leds_4bits_tri_io[17]),
        .O(leds_4bits_tri_i_17),
        .T(leds_4bits_tri_t_17));
IOBUF leds_4bits_tri_iobuf_18
       (.I(leds_4bits_tri_o_18),
        .IO(leds_4bits_tri_io[18]),
        .O(leds_4bits_tri_i_18),
        .T(leds_4bits_tri_t_18));
IOBUF leds_4bits_tri_iobuf_19
       (.I(leds_4bits_tri_o_19),
        .IO(leds_4bits_tri_io[19]),
        .O(leds_4bits_tri_i_19),
        .T(leds_4bits_tri_t_19));
IOBUF leds_4bits_tri_iobuf_2
       (.I(leds_4bits_tri_o_2),
        .IO(leds_4bits_tri_io[2]),
        .O(leds_4bits_tri_i_2),
        .T(leds_4bits_tri_t_2));
IOBUF leds_4bits_tri_iobuf_20
       (.I(leds_4bits_tri_o_20),
        .IO(leds_4bits_tri_io[20]),
        .O(leds_4bits_tri_i_20),
        .T(leds_4bits_tri_t_20));
IOBUF leds_4bits_tri_iobuf_21
       (.I(leds_4bits_tri_o_21),
        .IO(leds_4bits_tri_io[21]),
        .O(leds_4bits_tri_i_21),
        .T(leds_4bits_tri_t_21));
IOBUF leds_4bits_tri_iobuf_22
       (.I(leds_4bits_tri_o_22),
        .IO(leds_4bits_tri_io[22]),
        .O(leds_4bits_tri_i_22),
        .T(leds_4bits_tri_t_22));
IOBUF leds_4bits_tri_iobuf_23
       (.I(leds_4bits_tri_o_23),
        .IO(leds_4bits_tri_io[23]),
        .O(leds_4bits_tri_i_23),
        .T(leds_4bits_tri_t_23));
IOBUF leds_4bits_tri_iobuf_24
       (.I(leds_4bits_tri_o_24),
        .IO(leds_4bits_tri_io[24]),
        .O(leds_4bits_tri_i_24),
        .T(leds_4bits_tri_t_24));
IOBUF leds_4bits_tri_iobuf_25
       (.I(leds_4bits_tri_o_25),
        .IO(leds_4bits_tri_io[25]),
        .O(leds_4bits_tri_i_25),
        .T(leds_4bits_tri_t_25));
IOBUF leds_4bits_tri_iobuf_26
       (.I(leds_4bits_tri_o_26),
        .IO(leds_4bits_tri_io[26]),
        .O(leds_4bits_tri_i_26),
        .T(leds_4bits_tri_t_26));
IOBUF leds_4bits_tri_iobuf_27
       (.I(leds_4bits_tri_o_27),
        .IO(leds_4bits_tri_io[27]),
        .O(leds_4bits_tri_i_27),
        .T(leds_4bits_tri_t_27));
IOBUF leds_4bits_tri_iobuf_28
       (.I(leds_4bits_tri_o_28),
        .IO(leds_4bits_tri_io[28]),
        .O(leds_4bits_tri_i_28),
        .T(leds_4bits_tri_t_28));
IOBUF leds_4bits_tri_iobuf_29
       (.I(leds_4bits_tri_o_29),
        .IO(leds_4bits_tri_io[29]),
        .O(leds_4bits_tri_i_29),
        .T(leds_4bits_tri_t_29));
IOBUF leds_4bits_tri_iobuf_3
       (.I(leds_4bits_tri_o_3),
        .IO(leds_4bits_tri_io[3]),
        .O(leds_4bits_tri_i_3),
        .T(leds_4bits_tri_t_3));
IOBUF leds_4bits_tri_iobuf_30
       (.I(leds_4bits_tri_o_30),
        .IO(leds_4bits_tri_io[30]),
        .O(leds_4bits_tri_i_30),
        .T(leds_4bits_tri_t_30));
IOBUF leds_4bits_tri_iobuf_31
       (.I(leds_4bits_tri_o_31),
        .IO(leds_4bits_tri_io[31]),
        .O(leds_4bits_tri_i_31),
        .T(leds_4bits_tri_t_31));
IOBUF leds_4bits_tri_iobuf_4
       (.I(leds_4bits_tri_o_4),
        .IO(leds_4bits_tri_io[4]),
        .O(leds_4bits_tri_i_4),
        .T(leds_4bits_tri_t_4));
IOBUF leds_4bits_tri_iobuf_5
       (.I(leds_4bits_tri_o_5),
        .IO(leds_4bits_tri_io[5]),
        .O(leds_4bits_tri_i_5),
        .T(leds_4bits_tri_t_5));
IOBUF leds_4bits_tri_iobuf_6
       (.I(leds_4bits_tri_o_6),
        .IO(leds_4bits_tri_io[6]),
        .O(leds_4bits_tri_i_6),
        .T(leds_4bits_tri_t_6));
IOBUF leds_4bits_tri_iobuf_7
       (.I(leds_4bits_tri_o_7),
        .IO(leds_4bits_tri_io[7]),
        .O(leds_4bits_tri_i_7),
        .T(leds_4bits_tri_t_7));
IOBUF leds_4bits_tri_iobuf_8
       (.I(leds_4bits_tri_o_8),
        .IO(leds_4bits_tri_io[8]),
        .O(leds_4bits_tri_i_8),
        .T(leds_4bits_tri_t_8));
IOBUF leds_4bits_tri_iobuf_9
       (.I(leds_4bits_tri_o_9),
        .IO(leds_4bits_tri_io[9]),
        .O(leds_4bits_tri_i_9),
        .T(leds_4bits_tri_t_9));
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
        .LEDs_4Bits_tri_i({leds_4bits_tri_i_31,leds_4bits_tri_i_30,leds_4bits_tri_i_29,leds_4bits_tri_i_28,leds_4bits_tri_i_27,leds_4bits_tri_i_26,leds_4bits_tri_i_25,leds_4bits_tri_i_24,leds_4bits_tri_i_23,leds_4bits_tri_i_22,leds_4bits_tri_i_21,leds_4bits_tri_i_20,leds_4bits_tri_i_19,leds_4bits_tri_i_18,leds_4bits_tri_i_17,leds_4bits_tri_i_16,leds_4bits_tri_i_15,leds_4bits_tri_i_14,leds_4bits_tri_i_13,leds_4bits_tri_i_12,leds_4bits_tri_i_11,leds_4bits_tri_i_10,leds_4bits_tri_i_9,leds_4bits_tri_i_8,leds_4bits_tri_i_7,leds_4bits_tri_i_6,leds_4bits_tri_i_5,leds_4bits_tri_i_4,leds_4bits_tri_i_3,leds_4bits_tri_i_2,leds_4bits_tri_i_1,leds_4bits_tri_i_0}),
        .LEDs_4Bits_tri_o({leds_4bits_tri_o_31,leds_4bits_tri_o_30,leds_4bits_tri_o_29,leds_4bits_tri_o_28,leds_4bits_tri_o_27,leds_4bits_tri_o_26,leds_4bits_tri_o_25,leds_4bits_tri_o_24,leds_4bits_tri_o_23,leds_4bits_tri_o_22,leds_4bits_tri_o_21,leds_4bits_tri_o_20,leds_4bits_tri_o_19,leds_4bits_tri_o_18,leds_4bits_tri_o_17,leds_4bits_tri_o_16,leds_4bits_tri_o_15,leds_4bits_tri_o_14,leds_4bits_tri_o_13,leds_4bits_tri_o_12,leds_4bits_tri_o_11,leds_4bits_tri_o_10,leds_4bits_tri_o_9,leds_4bits_tri_o_8,leds_4bits_tri_o_7,leds_4bits_tri_o_6,leds_4bits_tri_o_5,leds_4bits_tri_o_4,leds_4bits_tri_o_3,leds_4bits_tri_o_2,leds_4bits_tri_o_1,leds_4bits_tri_o_0}),
        .LEDs_4Bits_tri_t({leds_4bits_tri_t_31,leds_4bits_tri_t_30,leds_4bits_tri_t_29,leds_4bits_tri_t_28,leds_4bits_tri_t_27,leds_4bits_tri_t_26,leds_4bits_tri_t_25,leds_4bits_tri_t_24,leds_4bits_tri_t_23,leds_4bits_tri_t_22,leds_4bits_tri_t_21,leds_4bits_tri_t_20,leds_4bits_tri_t_19,leds_4bits_tri_t_18,leds_4bits_tri_t_17,leds_4bits_tri_t_16,leds_4bits_tri_t_15,leds_4bits_tri_t_14,leds_4bits_tri_t_13,leds_4bits_tri_t_12,leds_4bits_tri_t_11,leds_4bits_tri_t_10,leds_4bits_tri_t_9,leds_4bits_tri_t_8,leds_4bits_tri_t_7,leds_4bits_tri_t_6,leds_4bits_tri_t_5,leds_4bits_tri_t_4,leds_4bits_tri_t_3,leds_4bits_tri_t_2,leds_4bits_tri_t_1,leds_4bits_tri_t_0}));
endmodule
