// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
// Date        : Wed Jul 23 17:36:56 2014
// Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim c:/junk/tsc14/work/ip/axi_iic_0/axi_iic_0_funcsim.v
// Design      : axi_iic_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_iic,Vivado 2014.2" *) (* CHECK_LICENSE_TYPE = "axi_iic_0,axi_iic,{}" *) 
(* core_generation_info = "axi_iic_0,axi_iic,{x_ipProduct=Vivado 2014.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_iic,x_ipVersion=2.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,C_FAMILY=zynq,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_IIC_FREQ=100000,C_TEN_BIT_ADR=0,C_GPO_WIDTH=1,C_S_AXI_ACLK_FREQ_HZ=100000000,C_SCL_INERTIAL_DELAY=0,C_SDA_INERTIAL_DELAY=0,C_SDA_LEVEL=1,C_SMBUS_PMBUS_HOST=0}" *) 
(* NotValidForBitStream *)
module axi_iic_0
   (s_axi_aclk,
    s_axi_aresetn,
    iic2intc_irpt,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    sda_i,
    sda_o,
    sda_t,
    scl_i,
    scl_o,
    scl_t,
    gpo);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) output iic2intc_irpt;
  input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_I" *) input sda_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_O" *) output sda_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SDA_T" *) output sda_t;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_I" *) input scl_i;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_O" *) output scl_o;
  (* x_interface_info = "xilinx.com:interface:iic:1.0 IIC SCL_T" *) output scl_t;
  output [0:0]gpo;

  wire \<const0> ;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9:0] = \^s_axi_rdata [9:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  assign scl_o = \<const0> ;
  assign sda_o = \<const0> ;
GND GND
       (.G(\<const0> ));
axi_iic_0_axi_iic__parameterized0 U0
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [9:0]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[9:0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_t(sda_t));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module axi_iic_0_SRL_FIFO
   (Rc_Data_Exists,
    Rc_addr,
    Rc_fifo_data,
    D,
    buffer_Empty,
    I1,
    I2,
    s_axi_aclk,
    O7,
    Rc_fifo_wr_d,
    Rc_fifo_wr,
    I3,
    I4,
    Rc_fifo_rd,
    Rc_fifo_rd_d);
  output Rc_Data_Exists;
  output [0:3]Rc_addr;
  output [0:7]Rc_fifo_data;
  output [1:0]D;
  output buffer_Empty;
  input I1;
  input I2;
  input s_axi_aclk;
  input [7:0]O7;
  input Rc_fifo_wr_d;
  input Rc_fifo_wr;
  input I3;
  input I4;
  input Rc_fifo_rd;
  input Rc_fifo_rd_d;

  wire CI;
  wire [1:0]D;
  wire D_0;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire [7:0]O7;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire buffer_Empty;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire s_axi_aclk;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(D_0),
        .Q(Rc_addr[0]),
        .R(I1));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Rc_addr[2],Rc_addr[1],Rc_addr[0]}),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D_0}),
        .S({S,S2_out,S4_out,S6_out}));
LUT4 #(
    .INIT(16'h8828)) 
     \Addr_Counters[0].MUXCY_L_I_i_1__1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ),
        .I1(Rc_addr[0]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S6_out));
LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
     \Addr_Counters[0].MUXCY_L_I_i_2__1 
       (.I0(I3),
        .I1(Rc_addr[0]),
        .I2(Rc_addr[1]),
        .I3(Rc_addr[3]),
        .I4(Rc_addr[2]),
        .I5(I4),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
     \Addr_Counters[0].MUXCY_L_I_i_3__0 
       (.I0(Rc_fifo_wr_d),
        .I1(Rc_fifo_wr),
        .I2(Rc_addr[2]),
        .I3(Rc_addr[3]),
        .I4(Rc_addr[1]),
        .I5(Rc_addr[0]),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(Rc_addr[1]),
        .R(I1));
LUT4 #(
    .INIT(16'h8828)) 
     \Addr_Counters[1].MUXCY_L_I_i_1__1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ),
        .I1(Rc_addr[1]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S4_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(Rc_addr[2]),
        .R(I1));
LUT4 #(
    .INIT(16'h8828)) 
     \Addr_Counters[2].MUXCY_L_I_i_1__1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ),
        .I1(Rc_addr[2]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S2_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Rc_Data_Exists),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(Rc_addr[3]),
        .R(I1));
LUT4 #(
    .INIT(16'h8828)) 
     \Addr_Counters[3].XORCY_I_i_1__1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__0 ),
        .I1(Rc_addr[3]),
        .I2(Rc_fifo_rd),
        .I3(Rc_fifo_rd_d),
        .O(S));
(* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(Rc_Data_Exists),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     Data_Exists_DFF_i_2__0
       (.I0(Rc_addr[0]),
        .I1(Rc_addr[1]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[2]),
        .O(buffer_Empty));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O7[7]),
        .Q(Rc_fifo_data[0]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[1].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O7[6]),
        .Q(Rc_fifo_data[1]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[2].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O7[5]),
        .Q(Rc_fifo_data[2]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[3].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O7[4]),
        .Q(Rc_fifo_data[3]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[4].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O7[3]),
        .Q(Rc_fifo_data[4]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[5].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O7[2]),
        .Q(Rc_fifo_data[5]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[6].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O7[1]),
        .Q(Rc_fifo_data[6]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[7].SRL16E_I 
       (.A0(Rc_addr[0]),
        .A1(Rc_addr[1]),
        .A2(Rc_addr[2]),
        .A3(Rc_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__1 ),
        .CLK(s_axi_aclk),
        .D(O7[0]),
        .Q(Rc_fifo_data[7]));
LUT1 #(
    .INIT(2'h1)) 
     \sr_i[1]_i_1 
       (.I0(Rc_Data_Exists),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \sr_i[2]_i_1 
       (.I0(Rc_addr[0]),
        .I1(Rc_addr[1]),
        .I2(Rc_addr[3]),
        .I3(Rc_addr[2]),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module axi_iic_0_SRL_FIFO_0
   (Tx_data_exists,
    Tx_addr,
    Tx_fifo_data,
    p_3_in,
    O1,
    O2,
    I14,
    buffer_Empty,
    I22,
    Tx_fifo_rst,
    I1,
    s_axi_aclk,
    s_axi_wdata,
    Tx_fifo_wr_d,
    Tx_fifo_wr,
    dynamic_MSMS,
    Tx_fifo_rd_d,
    Tx_fifo_rd,
    I2,
    txFifoRd,
    rdCntrFrmTxFifo,
    sda_clean,
    shift_reg_ld);
  output Tx_data_exists;
  output [0:3]Tx_addr;
  output [0:7]Tx_fifo_data;
  output p_3_in;
  output O1;
  output O2;
  output [0:0]I14;
  output buffer_Empty;
  output [0:0]I22;
  input Tx_fifo_rst;
  input I1;
  input s_axi_aclk;
  input [7:0]s_axi_wdata;
  input Tx_fifo_wr_d;
  input Tx_fifo_wr;
  input [0:0]dynamic_MSMS;
  input Tx_fifo_rd_d;
  input Tx_fifo_rd;
  input I2;
  input txFifoRd;
  input rdCntrFrmTxFifo;
  input sda_clean;
  input shift_reg_ld;

  wire CI;
  wire D;
  wire I1;
  wire [0:0]I14;
  wire I2;
  wire [0:0]I22;
  wire O1;
  wire O2;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire buffer_Empty;
  wire [0:0]dynamic_MSMS;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_3 ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire p_3_in;
  wire rdCntrFrmTxFifo;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire sda_clean;
  wire shift_reg_ld;
  wire txFifoRd;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(D),
        .Q(Tx_addr[0]),
        .R(Tx_fifo_rst));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],Tx_addr[2],Tx_addr[1],Tx_addr[0]}),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D}),
        .S({S,S2_out,S4_out,S6_out}));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[0].MUXCY_L_I_i_1__0 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(Tx_addr[0]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S6_out));
LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
     \Addr_Counters[0].MUXCY_L_I_i_2__0 
       (.I0(I2),
        .I1(Tx_addr[0]),
        .I2(Tx_addr[1]),
        .I3(Tx_addr[3]),
        .I4(Tx_addr[2]),
        .I5(txFifoRd),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
     \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(Tx_fifo_wr_d),
        .I1(Tx_fifo_wr),
        .I2(Tx_addr[2]),
        .I3(Tx_addr[3]),
        .I4(Tx_addr[1]),
        .I5(Tx_addr[0]),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(Tx_addr[1]),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[1].MUXCY_L_I_i_1__0 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(Tx_addr[1]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S4_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(Tx_addr[2]),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[2].MUXCY_L_I_i_1__0 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(Tx_addr[2]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S2_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(Tx_data_exists),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(Tx_addr[3]),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[3].XORCY_I_i_1__0 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3 ),
        .I1(Tx_addr[3]),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S));
(* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(Tx_data_exists),
        .R(Tx_fifo_rst));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     Data_Exists_DFF_i_2
       (.I0(Tx_addr[0]),
        .I1(Tx_addr[1]),
        .I2(Tx_addr[3]),
        .I3(Tx_addr[2]),
        .O(buffer_Empty));
LUT1 #(
    .INIT(2'h1)) 
     \FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1 
       (.I0(Tx_addr[3]),
        .O(O2));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[7]),
        .Q(Tx_fifo_data[0]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[1].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[6]),
        .Q(Tx_fifo_data[1]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[2].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[5]),
        .Q(Tx_fifo_data[2]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[3].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[4]),
        .Q(Tx_fifo_data[3]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[4].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[3]),
        .Q(Tx_fifo_data[4]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[5].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[2]),
        .Q(Tx_fifo_data[5]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[6].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[1]),
        .Q(Tx_fifo_data[6]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[7].SRL16E_I 
       (.A0(Tx_addr[0]),
        .A1(Tx_addr[1]),
        .A2(Tx_addr[2]),
        .A3(Tx_addr[3]),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2__0 ),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[0]),
        .Q(Tx_fifo_data[7]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'h0800)) 
     callingReadAccess_i_1
       (.I0(Tx_data_exists),
        .I1(dynamic_MSMS),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .O(p_3_in));
LUT3 #(
    .INIT(8'hAC)) 
     \data_int[0]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(sda_clean),
        .I2(shift_reg_ld),
        .O(I22));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \sr_i[0]_i_1 
       (.I0(Tx_data_exists),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \sr_i[3]_i_1 
       (.I0(Tx_addr[0]),
        .I1(Tx_addr[1]),
        .I2(Tx_addr[3]),
        .I3(Tx_addr[2]),
        .O(I14));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module axi_iic_0_SRL_FIFO__parameterized0
   (O1,
    dynamic_MSMS,
    p_4_in,
    buffer_Empty,
    Tx_fifo_rst,
    I1,
    s_axi_aclk,
    I2,
    I3,
    ctrl_fifo_wr_i,
    Tx_data_exists,
    txFifoRd,
    Tx_fifo_rd_d,
    Tx_fifo_rd,
    rdCntrFrmTxFifo);
  output O1;
  output [0:1]dynamic_MSMS;
  output p_4_in;
  output buffer_Empty;
  input Tx_fifo_rst;
  input I1;
  input s_axi_aclk;
  input I2;
  input I3;
  input ctrl_fifo_wr_i;
  input Tx_data_exists;
  input txFifoRd;
  input Tx_fifo_rd_d;
  input Tx_fifo_rd;
  input rdCntrFrmTxFifo;

  wire CI;
  wire D;
  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire Tx_data_exists;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire buffer_Empty;
  wire ctrl_fifo_wr_i;
  wire [0:1]dynamic_MSMS;
  wire \n_0_Addr_Counters[0].FDRE_I ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2 ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ;
  wire \n_0_Addr_Counters[1].FDRE_I ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].FDRE_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].FDRE_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire p_4_in;
  wire rdCntrFrmTxFifo;
  wire s_axi_aclk;
  wire txFifoRd;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(O1),
        .D(D),
        .Q(\n_0_Addr_Counters[0].FDRE_I ),
        .R(Tx_fifo_rst));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\n_0_Addr_Counters[2].FDRE_I ,\n_0_Addr_Counters[1].FDRE_I ,\n_0_Addr_Counters[0].FDRE_I }),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D}),
        .S({S,S2_out,S4_out,S6_out}));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ),
        .I1(\n_0_Addr_Counters[0].FDRE_I ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S6_out));
LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
     \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(ctrl_fifo_wr_i),
        .I1(\n_0_Addr_Counters[0].FDRE_I ),
        .I2(\n_0_Addr_Counters[1].FDRE_I ),
        .I3(\n_0_Addr_Counters[3].FDRE_I ),
        .I4(\n_0_Addr_Counters[2].FDRE_I ),
        .I5(txFifoRd),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \Addr_Counters[0].MUXCY_L_I_i_3__1 
       (.I0(ctrl_fifo_wr_i),
        .I1(\n_0_Addr_Counters[2].FDRE_I ),
        .I2(\n_0_Addr_Counters[3].FDRE_I ),
        .I3(\n_0_Addr_Counters[1].FDRE_I ),
        .I4(\n_0_Addr_Counters[0].FDRE_I ),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(O1),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(\n_0_Addr_Counters[1].FDRE_I ),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ),
        .I1(\n_0_Addr_Counters[1].FDRE_I ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S4_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(O1),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(\n_0_Addr_Counters[2].FDRE_I ),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ),
        .I1(\n_0_Addr_Counters[2].FDRE_I ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S2_out));
(* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(O1),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(\n_0_Addr_Counters[3].FDRE_I ),
        .R(Tx_fifo_rst));
LUT5 #(
    .INIT(32'h22228288)) 
     \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\n_0_Addr_Counters[0].MUXCY_L_I_i_3__1 ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(Tx_fifo_rd_d),
        .I3(Tx_fifo_rd),
        .I4(rdCntrFrmTxFifo),
        .O(S));
(* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(O1),
        .R(Tx_fifo_rst));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     Data_Exists_DFF_i_3__0
       (.I0(\n_0_Addr_Counters[0].FDRE_I ),
        .I1(\n_0_Addr_Counters[1].FDRE_I ),
        .I2(\n_0_Addr_Counters[3].FDRE_I ),
        .I3(\n_0_Addr_Counters[2].FDRE_I ),
        .O(buffer_Empty));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(I2),
        .Q(dynamic_MSMS[0]));
(* box_type = "PRIMITIVE" *) 
   (* srl_bus_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM " *) 
   (* srl_name = "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[1].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(I3),
        .Q(dynamic_MSMS[1]));
LUT2 #(
    .INIT(4'h8)) 
     \cr_i[5]_i_3 
       (.I0(dynamic_MSMS[1]),
        .I1(Tx_data_exists),
        .O(p_4_in));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module axi_iic_0_address_decoder
   (p_18_in,
    O1,
    O2,
    O3,
    O4,
    O5,
    IIC2Bus_Data1,
    O6,
    O7,
    O9,
    I26,
    I25,
    I24,
    I23,
    I22,
    I21,
    I20,
    I19,
    I18,
    I17,
    O10,
    E,
    O11,
    O8,
    O12,
    O13,
    reset2Bus_Error,
    AXI_IP2Bus_RdAck0,
    D,
    Bus2IIC_RdCE,
    irpt_wrack,
    O16,
    O17,
    O14,
    s_axi_aclk,
    AXI_IP2Bus_WrAck,
    Q,
    AXI_IP2Bus_RdAck,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_araddr,
    sw_rst_cond_d1,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    I1,
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
    I27,
    I28,
    I29,
    I30,
    I31,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    I32,
    ipif_glbl_irpt_enable_reg,
    gpo,
    s_axi_bresp);
  output p_18_in;
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output IIC2Bus_Data1;
  output O6;
  output O7;
  output O9;
  output [0:0]I26;
  output [0:0]I25;
  output [0:0]I24;
  output [0:0]I23;
  output [0:0]I22;
  output [0:0]I21;
  output [0:0]I20;
  output [0:0]I19;
  output [0:0]I18;
  output [0:0]I17;
  output O10;
  output [0:0]E;
  output [0:0]O11;
  output O8;
  output O12;
  output O13;
  output reset2Bus_Error;
  output AXI_IP2Bus_RdAck0;
  output [8:0]D;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output O16;
  output O17;
  output O14;
  input s_axi_aclk;
  input AXI_IP2Bus_WrAck;
  input [0:0]Q;
  input AXI_IP2Bus_RdAck;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input I1;
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
  input I27;
  input I28;
  input I29;
  input I30;
  input [7:0]I31;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input I32;
  input ipif_glbl_irpt_enable_reg;
  input [0:0]gpo;
  input [0:0]s_axi_bresp;

  wire [0:2]AXI_Bus2IP_CS;
  wire AXI_IP2Bus_RdAck;
  wire AXI_IP2Bus_RdAck0;
  wire AXI_IP2Bus_WrAck;
  wire [0:0]Bus2IIC_Addr;
  wire [0:0]Bus2IIC_RdCE;
  wire [8:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire [0:0]I22;
  wire [0:0]I23;
  wire [0:0]I24;
  wire [0:0]I25;
  wire [0:0]I26;
  wire I27;
  wire I28;
  wire I29;
  wire I3;
  wire I30;
  wire [7:0]I31;
  wire I32;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire IIC2Bus_Data1;
  wire [24:31]Intr2Bus_DBus__0;
  wire \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ;
  wire O1;
  wire O10;
  wire [0:0]O11;
  wire O12;
  wire O13;
  wire O14;
  wire O16;
  wire O17;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire [0:0]gpo;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire n_0_Bus_RNW_reg_i_1;
  wire \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ;
  wire \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ;
  wire \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2 ;
  wire \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_4 ;
  wire \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ;
  wire \n_0_s_axi_rdata_i[7]_i_3 ;
  wire \n_0_s_axi_rdata_i[9]_i_10 ;
  wire \n_0_s_axi_rdata_i[9]_i_7 ;
  wire \n_0_s_axi_rdata_i[9]_i_8 ;
  wire \n_0_s_axi_rdata_i[9]_i_9 ;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_1_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_25_in;
  wire p_28_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire reset2Bus_Error;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bresp;
  wire [4:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start;
  wire sw_rst_cond_d1;

(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT4 #(
    .INIT(16'hFE00)) 
     AXI_IP2Bus_RdAck_i_1
       (.I0(AXI_Bus2IP_CS[2]),
        .I1(AXI_Bus2IP_CS[0]),
        .I2(AXI_Bus2IP_CS[1]),
        .I3(s_axi_arvalid),
        .O(AXI_IP2Bus_RdAck0));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT4 #(
    .INIT(16'h00FE)) 
     AXI_IP2Bus_WrAck_i_1
       (.I0(AXI_Bus2IP_CS[2]),
        .I1(AXI_Bus2IP_CS[0]),
        .I2(AXI_Bus2IP_CS[1]),
        .I3(s_axi_arvalid),
        .O(O9));
LUT6 #(
    .INIT(64'hFFFFFFF7000000F0)) 
     Bus_RNW_reg_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(I1),
        .I4(I2),
        .I5(O2),
        .O(n_0_Bus_RNW_reg_i_1));
FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Bus_RNW_reg_i_1),
        .Q(O2),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FIFO_GEN_DTR.Tx_fifo_wr_i_1 
       (.I0(p_16_in),
        .I1(O2),
        .O(O10));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT5 #(
    .INIT(32'h00400000)) 
     \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(O12),
        .I1(O5),
        .I2(p_1_in),
        .I3(O4),
        .I4(O8),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 ),
        .Q(p_25_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(O4),
        .I1(O3),
        .I2(O5),
        .I3(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I4(O8),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 ),
        .Q(p_18_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(O5),
        .I1(O3),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(O4),
        .I4(O8),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 ),
        .Q(p_17_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(O4),
        .I1(O3),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(O5),
        .I4(O8),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 ),
        .Q(p_16_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(O12),
        .I1(O3),
        .I2(O5),
        .I3(O4),
        .I4(O8),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 ),
        .Q(p_15_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 
       (.I0(O5),
        .I1(O3),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(O12),
        .I4(O8),
        .I5(O4),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1 ),
        .Q(p_14_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 
       (.I0(O5),
        .I1(O3),
        .I2(O12),
        .I3(O4),
        .I4(O8),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1 ),
        .Q(p_13_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 
       (.I0(O4),
        .I1(O3),
        .I2(O5),
        .I3(O12),
        .I4(O8),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1 ),
        .Q(p_12_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 
       (.I0(O8),
        .I1(O3),
        .I2(O5),
        .I3(O4),
        .I4(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1 ),
        .Q(p_11_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 
       (.I0(O5),
        .I1(O3),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(O8),
        .I4(O4),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1 ),
        .Q(p_10_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 
       (.I0(O12),
        .I1(O3),
        .I2(O8),
        .I3(O4),
        .I4(O5),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1 ),
        .Q(p_9_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 
       (.I0(O12),
        .I1(O3),
        .I2(O5),
        .I3(O8),
        .I4(O4),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1 ),
        .Q(p_8_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 
       (.I0(O12),
        .I1(O3),
        .I2(O5),
        .I3(O4),
        .I4(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I5(O8),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1 ),
        .Q(p_7_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 
       (.I0(O5),
        .I1(O3),
        .I2(O12),
        .I3(O8),
        .I4(O4),
        .I5(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1 ),
        .Q(p_6_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 
       (.I0(O5),
        .I1(O3),
        .I2(O8),
        .I3(O4),
        .I4(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1 ),
        .Q(p_5_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 
       (.I0(O4),
        .I1(O3),
        .I2(O5),
        .I3(O8),
        .I4(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1 ),
        .Q(p_4_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h2000000000000000)) 
     \GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 
       (.I0(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I1(O3),
        .I2(O5),
        .I3(O4),
        .I4(O8),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1 ),
        .Q(p_3_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     \GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 
       (.I0(O4),
        .I1(O5),
        .I2(O3),
        .I3(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I4(O8),
        .I5(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1 ),
        .Q(p_2_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT4 #(
    .INIT(16'hFEFF)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 
       (.I0(AXI_IP2Bus_WrAck),
        .I1(Q),
        .I2(AXI_IP2Bus_RdAck),
        .I3(s_axi_aresetn),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT5 #(
    .INIT(32'h000000F8)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(I1),
        .I4(I2),
        .O(start));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3 
       (.I0(O5),
        .I1(O12),
        .I2(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .I3(O4),
        .I4(O8),
        .I5(O3),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3 ));
LUT3 #(
    .INIT(8'hAC)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_4 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_arvalid),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_5 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_arvalid),
        .O(O12));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_6 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_arvalid),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_7 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid),
        .O(O3));
FDRE \GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3 ),
        .Q(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT5 #(
    .INIT(32'h40000000)) 
     \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(O8),
        .I1(O5),
        .I2(O4),
        .I3(p_1_in),
        .I4(O12),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 ),
        .Q(p_28_in),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT5 #(
    .INIT(32'h00000020)) 
     \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(p_1_in),
        .I1(O12),
        .I2(O8),
        .I3(O5),
        .I4(O4),
        .O(\n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ));
FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 ),
        .Q(O1),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     \GPO_GEN.gpo_i[31]_i_2 
       (.I0(s_axi_wdata[0]),
        .I1(p_9_in),
        .I2(O2),
        .I3(gpo),
        .O(O17));
LUT6 #(
    .INIT(64'h0000000011050000)) 
     \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(O3),
        .I1(s_axi_araddr[8]),
        .I2(s_axi_awaddr[8]),
        .I3(s_axi_arvalid),
        .I4(start),
        .I5(O13),
        .O(p_1_in));
FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(p_1_in),
        .Q(AXI_Bus2IP_CS[0]),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \MEM_DECODE_GEN[1].cs_out_i[1]_i_1 
       (.I0(\n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2 ),
        .I1(O3),
        .I2(O4),
        .I3(Bus2IIC_Addr),
        .I4(O5),
        .I5(\n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_4 ),
        .O(\MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT4 #(
    .INIT(16'hE4FF)) 
     \MEM_DECODE_GEN[1].cs_out_i[1]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awaddr[7]),
        .I2(s_axi_araddr[7]),
        .I3(start),
        .O(\n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MEM_DECODE_GEN[1].cs_out_i[1]_i_3 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_awaddr[8]),
        .I2(s_axi_arvalid),
        .O(Bus2IIC_Addr));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT5 #(
    .INIT(32'hFFFACFCA)) 
     \MEM_DECODE_GEN[1].cs_out_i[1]_i_4 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_araddr[5]),
        .I2(s_axi_arvalid),
        .I3(s_axi_awaddr[4]),
        .I4(s_axi_araddr[4]),
        .O(\n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_4 ));
FDRE \MEM_DECODE_GEN[1].cs_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS ),
        .Q(AXI_Bus2IP_CS[1]),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT4 #(
    .INIT(16'hE400)) 
     \MEM_DECODE_GEN[2].cs_out_i[2]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awaddr[8]),
        .I2(s_axi_araddr[8]),
        .I3(start),
        .O(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ));
FDRE \MEM_DECODE_GEN[2].cs_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(start),
        .D(\n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1 ),
        .Q(AXI_Bus2IP_CS[2]),
        .R(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \RD_FIFO_CNTRL.Rc_fifo_rd_i_1 
       (.I0(p_15_in),
        .I1(O2),
        .O(Bus2IIC_RdCE));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1 
       (.I0(p_10_in),
        .I1(O2),
        .O(I18));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \adr_i[0]_i_1 
       (.I0(p_14_in),
        .I1(O2),
        .O(I17));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \cr_i[0]_i_1 
       (.I0(p_18_in),
        .I1(O2),
        .O(E));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \ip_irpt_enable_reg[7]_i_1 
       (.I0(p_25_in),
        .I1(O2),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[4]),
        .I1(p_28_in),
        .I2(O2),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(O16));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'h0F0E)) 
     irpt_wrack_d1_i_1
       (.I0(p_25_in),
        .I1(p_28_in),
        .I2(O2),
        .I3(O1),
        .O(irpt_wrack));
LUT2 #(
    .INIT(4'h2)) 
     reset_trig_i_1
       (.I0(O7),
        .I1(sw_rst_cond_d1),
        .O(O6));
LUT4 #(
    .INIT(16'hFB08)) 
     \s_axi_bresp_i[1]_i_1 
       (.I0(reset2Bus_Error),
        .I1(I2),
        .I2(I1),
        .I3(s_axi_bresp),
        .O(O14));
LUT6 #(
    .INIT(64'hEEEAAAEAAAAAAAAA)) 
     \s_axi_rdata_i[0]_i_1 
       (.I0(Intr2Bus_DBus__0[31]),
        .I1(I27),
        .I2(I28),
        .I3(O4),
        .I4(I29),
        .I5(IIC2Bus_Data1),
        .O(D[0]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[0]_i_2 
       (.I0(I32),
        .I1(O1),
        .I2(O2),
        .I3(p_25_in),
        .I4(I31[0]),
        .O(Intr2Bus_DBus__0[31]));
LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAA)) 
     \s_axi_rdata_i[1]_i_1 
       (.I0(Intr2Bus_DBus__0[30]),
        .I1(\n_0_s_axi_rdata_i[7]_i_3 ),
        .I2(O13),
        .I3(I13),
        .I4(O4),
        .I5(I14),
        .O(D[1]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[1]_i_2 
       (.I0(p_1_in17_in),
        .I1(O1),
        .I2(O2),
        .I3(p_25_in),
        .I4(I31[1]),
        .O(Intr2Bus_DBus__0[30]));
LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAA)) 
     \s_axi_rdata_i[2]_i_1 
       (.I0(Intr2Bus_DBus__0[29]),
        .I1(\n_0_s_axi_rdata_i[7]_i_3 ),
        .I2(O13),
        .I3(I11),
        .I4(O4),
        .I5(I12),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[2]_i_2 
       (.I0(p_1_in14_in),
        .I1(O1),
        .I2(O2),
        .I3(p_25_in),
        .I4(I31[2]),
        .O(Intr2Bus_DBus__0[29]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT5 #(
    .INIT(32'h10000000)) 
     \s_axi_rdata_i[31]_i_2 
       (.I0(p_25_in),
        .I1(O1),
        .I2(p_28_in),
        .I3(O2),
        .I4(ipif_glbl_irpt_enable_reg),
        .O(D[8]));
LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAA)) 
     \s_axi_rdata_i[3]_i_1 
       (.I0(Intr2Bus_DBus__0[28]),
        .I1(\n_0_s_axi_rdata_i[7]_i_3 ),
        .I2(O13),
        .I3(I9),
        .I4(O4),
        .I5(I10),
        .O(D[3]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[3]_i_2 
       (.I0(p_1_in11_in),
        .I1(O1),
        .I2(O2),
        .I3(p_25_in),
        .I4(I31[3]),
        .O(Intr2Bus_DBus__0[28]));
LUT6 #(
    .INIT(64'hBAAABAAABAAABABB)) 
     \s_axi_rdata_i[4]_i_1 
       (.I0(Intr2Bus_DBus__0[27]),
        .I1(\n_0_s_axi_rdata_i[7]_i_3 ),
        .I2(I7),
        .I3(O4),
        .I4(O13),
        .I5(I8),
        .O(D[4]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[4]_i_2 
       (.I0(p_1_in8_in),
        .I1(O1),
        .I2(O2),
        .I3(p_25_in),
        .I4(I31[4]),
        .O(Intr2Bus_DBus__0[27]));
LUT6 #(
    .INIT(64'hBAAABAAABAAABABB)) 
     \s_axi_rdata_i[5]_i_1 
       (.I0(Intr2Bus_DBus__0[26]),
        .I1(\n_0_s_axi_rdata_i[7]_i_3 ),
        .I2(I5),
        .I3(O4),
        .I4(O13),
        .I5(I6),
        .O(D[5]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[5]_i_2 
       (.I0(p_1_in5_in),
        .I1(O1),
        .I2(O2),
        .I3(p_25_in),
        .I4(I31[5]),
        .O(Intr2Bus_DBus__0[26]));
LUT6 #(
    .INIT(64'hBAAABAAABAAABABB)) 
     \s_axi_rdata_i[6]_i_1 
       (.I0(Intr2Bus_DBus__0[25]),
        .I1(\n_0_s_axi_rdata_i[7]_i_3 ),
        .I2(I3),
        .I3(O4),
        .I4(O13),
        .I5(I4),
        .O(D[6]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[6]_i_2 
       (.I0(p_1_in2_in),
        .I1(O1),
        .I2(O2),
        .I3(p_25_in),
        .I4(I31[6]),
        .O(Intr2Bus_DBus__0[25]));
LUT6 #(
    .INIT(64'hBAAABAAABAAABABB)) 
     \s_axi_rdata_i[7]_i_1 
       (.I0(Intr2Bus_DBus__0[24]),
        .I1(\n_0_s_axi_rdata_i[7]_i_3 ),
        .I2(I15),
        .I3(O4),
        .I4(O13),
        .I5(I16),
        .O(D[7]));
LUT5 #(
    .INIT(32'hB0808080)) 
     \s_axi_rdata_i[7]_i_2 
       (.I0(I30),
        .I1(O1),
        .I2(O2),
        .I3(p_25_in),
        .I4(I31[7]),
        .O(Intr2Bus_DBus__0[24]));
LUT6 #(
    .INIT(64'hFFAFFCACFFFFFFFF)) 
     \s_axi_rdata_i[7]_i_3 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_awaddr[1]),
        .I5(IIC2Bus_Data1),
        .O(\n_0_s_axi_rdata_i[7]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \s_axi_rdata_i[7]_i_5 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_awaddr[7]),
        .I2(s_axi_arvalid),
        .O(O13));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
     \s_axi_rdata_i[9]_i_10 
       (.I0(p_5_in),
        .I1(p_15_in),
        .I2(O2),
        .I3(p_16_in),
        .I4(p_18_in),
        .I5(p_17_in),
        .O(\n_0_s_axi_rdata_i[9]_i_10 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \s_axi_rdata_i[9]_i_2 
       (.I0(\n_0_s_axi_rdata_i[9]_i_7 ),
        .I1(\n_0_s_axi_rdata_i[9]_i_8 ),
        .I2(\n_0_s_axi_rdata_i[9]_i_9 ),
        .I3(\n_0_s_axi_rdata_i[9]_i_10 ),
        .O(IIC2Bus_Data1));
LUT3 #(
    .INIT(8'hAC)) 
     \s_axi_rdata_i[9]_i_4 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(O4));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
     \s_axi_rdata_i[9]_i_7 
       (.I0(p_7_in),
        .I1(p_3_in),
        .I2(O2),
        .I3(p_4_in),
        .I4(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .I5(p_2_in),
        .O(\n_0_s_axi_rdata_i[9]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'hF0E0)) 
     \s_axi_rdata_i[9]_i_8 
       (.I0(p_8_in),
        .I1(p_6_in),
        .I2(O2),
        .I3(p_9_in),
        .O(\n_0_s_axi_rdata_i[9]_i_8 ));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
     \s_axi_rdata_i[9]_i_9 
       (.I0(p_10_in),
        .I1(p_13_in),
        .I2(O2),
        .I3(p_14_in),
        .I4(p_11_in),
        .I5(p_12_in),
        .O(\n_0_s_axi_rdata_i[9]_i_9 ));
LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
     \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[2]),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_wdata[0]),
        .I4(O2),
        .I5(AXI_Bus2IP_CS[1]),
        .O(reset2Bus_Error));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     sw_rst_cond_d1_i_1
       (.I0(O2),
        .I1(AXI_Bus2IP_CS[1]),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata[3]),
        .I5(s_axi_wdata[0]),
        .O(O7));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tbuf_i[9]_i_1 
       (.I0(p_4_in),
        .I1(O2),
        .O(I23));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_thddat_i[9]_i_1 
       (.I0(\n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34] ),
        .I1(O2),
        .O(I26));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_thdsta_i[9]_i_1 
       (.I0(p_6_in),
        .I1(O2),
        .O(I21));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_thigh_i[9]_i_1 
       (.I0(p_3_in),
        .I1(O2),
        .O(I24));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tlow_i[9]_i_1 
       (.I0(p_2_in),
        .I1(O2),
        .O(I25));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tsudat_i[9]_i_1 
       (.I0(p_5_in),
        .I1(O2),
        .O(I22));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tsusta_i[9]_i_1 
       (.I0(p_8_in),
        .I1(O2),
        .O(I19));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \timing_param_tsusto_i[9]_i_1 
       (.I0(p_7_in),
        .I1(O2),
        .O(I20));
endmodule

(* ORIG_REF_NAME = "axi_iic" *) 
module axi_iic_0_axi_iic__parameterized0
   (gpo,
    s_axi_arready,
    s_axi_awready,
    s_axi_rdata,
    s_axi_rresp,
    iic2intc_irpt,
    s_axi_bvalid,
    s_axi_rvalid,
    sda_t,
    scl_t,
    s_axi_bresp,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata,
    scl_i,
    s_axi_aclk,
    sda_i,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready);
  output [0:0]gpo;
  output s_axi_arready;
  output s_axi_awready;
  output [10:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output iic2intc_irpt;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output sda_t;
  output scl_t;
  output [0:0]s_axi_bresp;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;
  input [10:0]s_axi_wdata;
  input scl_i;
  input s_axi_aclk;
  input sda_i;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;

  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire scl_i;
  wire scl_t;
  wire sda_i;
  wire sda_t;

axi_iic_0_iic X_IIC
       (.gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .scl_i(scl_i),
        .scl_t(scl_t),
        .sda_i(sda_i),
        .sda_t(sda_t));
endmodule

(* ORIG_REF_NAME = "axi_ipif_ssp1" *) 
module axi_iic_0_axi_ipif_ssp1
   (p_18_in,
    s_axi_rresp,
    O1,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    O2,
    IIC2Bus_Data1,
    O3,
    I26,
    I25,
    I24,
    I23,
    I22,
    I21,
    I20,
    I19,
    I18,
    I17,
    O4,
    E,
    s_axi_arready,
    s_axi_awready,
    iic2intc_irpt,
    Bus2IIC_RdCE,
    O5,
    O6,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata,
    IIC2Bus_IntrEvent,
    s_axi_awvalid,
    s_axi_wvalid,
    I1,
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
    s_axi_bready,
    s_axi_rready,
    gpo,
    D);
  output p_18_in;
  output [0:0]s_axi_rresp;
  output O1;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output [5:0]O2;
  output IIC2Bus_Data1;
  output O3;
  output [0:0]I26;
  output [0:0]I25;
  output [0:0]I24;
  output [0:0]I23;
  output [0:0]I22;
  output [0:0]I21;
  output [0:0]I20;
  output [0:0]I19;
  output [0:0]I18;
  output [0:0]I17;
  output O4;
  output [0:0]E;
  output s_axi_arready;
  output s_axi_awready;
  output iic2intc_irpt;
  output [0:0]Bus2IIC_RdCE;
  output O5;
  output O6;
  output [10:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;
  input [8:0]s_axi_wdata;
  input [0:7]IIC2Bus_IntrEvent;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input I1;
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
  input s_axi_bready;
  input s_axi_rready;
  input [0:0]gpo;
  input [1:0]D;

  wire AXI_Bus2IP_Reset;
  wire AXI_IP2Bus_RdAck;
  wire AXI_IP2Bus_RdAck0;
  wire AXI_IP2Bus_WrAck;
  wire [0:0]Bus2IIC_RdCE;
  wire Bus_RNW_reg;
  wire [1:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire [0:0]I22;
  wire [0:0]I23;
  wire [0:0]I24;
  wire [0:0]I25;
  wire [0:0]I26;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire IIC2Bus_Data1;
  wire [0:7]IIC2Bus_IntrEvent;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ;
  wire O1;
  wire [5:0]O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire n_0_X_INTERRUPT_CONTROL;
  wire n_11_AXI_LITE_IPIF_I;
  wire n_12_AXI_LITE_IPIF_I;
  wire n_13_X_INTERRUPT_CONTROL;
  wire n_14_AXI_LITE_IPIF_I;
  wire n_15_X_INTERRUPT_CONTROL;
  wire n_16_X_INTERRUPT_CONTROL;
  wire n_27_AXI_LITE_IPIF_I;
  wire n_37_AXI_LITE_IPIF_I;
  wire n_7_X_INTERRUPT_CONTROL;
  wire p_0_in10_in;
  wire p_0_in13_in;
  wire p_0_in16_in;
  wire p_0_in1_in;
  wire p_0_in7_in;
  wire p_18_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [8:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sw_rst_cond_d1;

FDRE AXI_IP2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_IP2Bus_RdAck0),
        .Q(AXI_IP2Bus_RdAck),
        .R(1'b0));
FDRE AXI_IP2Bus_WrAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_14_AXI_LITE_IPIF_I),
        .Q(AXI_IP2Bus_WrAck),
        .R(1'b0));
axi_iic_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .AXI_IP2Bus_RdAck(AXI_IP2Bus_RdAck),
        .AXI_IP2Bus_RdAck0(AXI_IP2Bus_RdAck0),
        .AXI_IP2Bus_WrAck(AXI_IP2Bus_WrAck),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .D(D),
        .E(E),
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
        .I20(I20),
        .I21(I21),
        .I22(I22),
        .I23(I23),
        .I24(I24),
        .I25(I25),
        .I26(I26),
        .I27(n_7_X_INTERRUPT_CONTROL),
        .I28(n_0_X_INTERRUPT_CONTROL),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .IIC2Bus_Data1(IIC2Bus_Data1),
        .O1(Bus_RNW_reg),
        .O10(n_27_AXI_LITE_IPIF_I),
        .O11(O2[3]),
        .O12(O2[2]),
        .O13(O2[5]),
        .O14(O5),
        .O15(n_37_AXI_LITE_IPIF_I),
        .O16(O6),
        .O2(O2[4]),
        .O3(O2[0]),
        .O4(O2[1]),
        .O5(n_11_AXI_LITE_IPIF_I),
        .O6(n_12_AXI_LITE_IPIF_I),
        .O7(O3),
        .O8(n_14_AXI_LITE_IPIF_I),
        .O9(O4),
        .Q({p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,n_13_X_INTERRUPT_CONTROL,p_0_in1_in,n_15_X_INTERRUPT_CONTROL,n_16_X_INTERRUPT_CONTROL}),
        .gpo(gpo),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_18_in(p_18_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_27_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[8],s_axi_wdata[3:0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .sw_rst_cond_d1(sw_rst_cond_d1));
axi_iic_0_interrupt_control X_INTERRUPT_CONTROL
       (.E(n_27_AXI_LITE_IPIF_I),
        .I1(O1),
        .I2(n_37_AXI_LITE_IPIF_I),
        .I3(Bus_RNW_reg),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .O1(n_0_X_INTERRUPT_CONTROL),
        .O2(n_7_X_INTERRUPT_CONTROL),
        .Q({p_0_in16_in,p_0_in13_in,p_0_in10_in,p_0_in7_in,n_13_X_INTERRUPT_CONTROL,p_0_in1_in,n_15_X_INTERRUPT_CONTROL,n_16_X_INTERRUPT_CONTROL}),
        .iic2intc_irpt(iic2intc_irpt),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .p_27_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_27_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]));
axi_iic_0_soft_reset X_SOFT_RESET
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .I1(n_12_AXI_LITE_IPIF_I),
        .I2(n_11_AXI_LITE_IPIF_I),
        .O1(O1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .sw_rst_cond_d1(sw_rst_cond_d1));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module axi_iic_0_axi_lite_ipif
   (p_18_in,
    p_27_in,
    s_axi_rresp,
    O1,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    O2,
    O3,
    O4,
    IIC2Bus_Data1,
    O5,
    O6,
    O7,
    O8,
    I26,
    I25,
    I24,
    I23,
    I22,
    I21,
    I20,
    I19,
    I18,
    I17,
    O9,
    E,
    O10,
    O11,
    O12,
    s_axi_arready,
    O13,
    s_axi_awready,
    AXI_IP2Bus_RdAck0,
    Bus2IIC_RdCE,
    irpt_wrack,
    O14,
    O15,
    O16,
    s_axi_rdata,
    s_axi_aclk,
    AXI_Bus2IP_Reset,
    AXI_IP2Bus_WrAck,
    AXI_IP2Bus_RdAck,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_araddr,
    sw_rst_cond_d1,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    I1,
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
    I27,
    Q,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    I28,
    ipif_glbl_irpt_enable_reg,
    s_axi_bready,
    s_axi_rready,
    gpo,
    D);
  output p_18_in;
  output p_27_in;
  output [0:0]s_axi_rresp;
  output O1;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output O2;
  output O3;
  output O4;
  output IIC2Bus_Data1;
  output O5;
  output O6;
  output O7;
  output O8;
  output [0:0]I26;
  output [0:0]I25;
  output [0:0]I24;
  output [0:0]I23;
  output [0:0]I22;
  output [0:0]I21;
  output [0:0]I20;
  output [0:0]I19;
  output [0:0]I18;
  output [0:0]I17;
  output O9;
  output [0:0]E;
  output [0:0]O10;
  output O11;
  output O12;
  output s_axi_arready;
  output O13;
  output s_axi_awready;
  output AXI_IP2Bus_RdAck0;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output O14;
  output O15;
  output O16;
  output [10:0]s_axi_rdata;
  input s_axi_aclk;
  input AXI_Bus2IP_Reset;
  input AXI_IP2Bus_WrAck;
  input AXI_IP2Bus_RdAck;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input I1;
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
  input I27;
  input [7:0]Q;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input I28;
  input ipif_glbl_irpt_enable_reg;
  input s_axi_bready;
  input s_axi_rready;
  input [0:0]gpo;
  input [1:0]D;

  wire AXI_Bus2IP_Reset;
  wire AXI_IP2Bus_RdAck;
  wire AXI_IP2Bus_RdAck0;
  wire AXI_IP2Bus_WrAck;
  wire [0:0]Bus2IIC_RdCE;
  wire [1:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire [0:0]I22;
  wire [0:0]I23;
  wire [0:0]I24;
  wire [0:0]I25;
  wire [0:0]I26;
  wire I27;
  wire I28;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire IIC2Bus_Data1;
  wire O1;
  wire [0:0]O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire [0:0]gpo;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire p_18_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_27_in;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sw_rst_cond_d1;

axi_iic_0_slave_attachment I_SLAVE_ATTACHMENT
       (.AXI_Bus2IP_Reset(AXI_Bus2IP_Reset),
        .AXI_IP2Bus_RdAck(AXI_IP2Bus_RdAck),
        .AXI_IP2Bus_RdAck0(AXI_IP2Bus_RdAck0),
        .AXI_IP2Bus_WrAck(AXI_IP2Bus_WrAck),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .D(D),
        .E(E),
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
        .I20(I20),
        .I21(I21),
        .I22(I22),
        .I23(I23),
        .I24(I24),
        .I25(I25),
        .I26(I26),
        .I27(I27),
        .I28(I28),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .IIC2Bus_Data1(IIC2Bus_Data1),
        .O1(p_27_in),
        .O10(O9),
        .O11(O10),
        .O12(O11),
        .O13(O12),
        .O14(O13),
        .O15(O14),
        .O16(O15),
        .O17(O16),
        .O2(O1),
        .O3(O2),
        .O4(O3),
        .O5(O4),
        .O6(O5),
        .O7(O6),
        .O8(O7),
        .O9(O8),
        .Q(Q),
        .gpo(gpo),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_18_in(p_18_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .sw_rst_cond_d1(sw_rst_cond_d1));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_iic_0_cdc_sync
   (O1,
    Sda_clean,
    sda_rin_d1,
    sda_i,
    s_axi_aclk);
  output O1;
  output Sda_clean;
  input sda_rin_d1;
  input sda_i;
  input s_axi_aclk;

  wire O1;
  wire Q;
  wire Sda_clean;
  wire s_axi_aclk;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire sda_i;
  wire sda_rin_d1;

(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_i),
        .Q(Q),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(Sda_clean),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     detect_stop_i_3
       (.I0(Sda_clean),
        .I1(sda_rin_d1),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module axi_iic_0_cdc_sync_4
   (O2,
    Scl_clean,
    scl_rin_d1,
    scl_i,
    s_axi_aclk);
  output O2;
  output Scl_clean;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;

  wire O2;
  wire Q;
  wire Scl_clean;
  wire s_axi_aclk;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scl_i;
  wire scl_rin_d1;

(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_i),
        .Q(Q),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(Scl_clean),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     scl_rising_edge_i_1
       (.I0(Scl_clean),
        .I1(scl_rin_d1),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module axi_iic_0_debounce
   (O2,
    Scl_clean,
    scl_rin_d1,
    scl_i,
    s_axi_aclk);
  output O2;
  output Scl_clean;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;

  wire O2;
  wire Scl_clean;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;

axi_iic_0_cdc_sync_4 INPUT_DOUBLE_REGS
       (.O2(O2),
        .Scl_clean(Scl_clean),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module axi_iic_0_debounce_3
   (O1,
    Sda_clean,
    sda_rin_d1,
    sda_i,
    s_axi_aclk);
  output O1;
  output Sda_clean;
  input sda_rin_d1;
  input sda_i;
  input s_axi_aclk;

  wire O1;
  wire Sda_clean;
  wire s_axi_aclk;
  wire sda_i;
  wire sda_rin_d1;

axi_iic_0_cdc_sync INPUT_DOUBLE_REGS
       (.O1(O1),
        .Sda_clean(Sda_clean),
        .s_axi_aclk(s_axi_aclk),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
endmodule

(* ORIG_REF_NAME = "dynamic_master" *) 
module axi_iic_0_dynamic_master
   (callingReadAccess,
    rdCntrFrmTxFifo,
    rxCntDone,
    firstDynStartSeen,
    D,
    txak,
    Tx_fifo_rst,
    ackDataState,
    s_axi_aclk,
    p_3_in,
    Tx_fifo_data,
    rdCntrFrmTxFifo0,
    earlyAckDataState,
    I1,
    s_axi_wdata,
    Q,
    p_18_in,
    Bus_RNW_reg,
    earlyAckHdr);
  output callingReadAccess;
  output rdCntrFrmTxFifo;
  output rxCntDone;
  output firstDynStartSeen;
  output [0:0]D;
  output txak;
  input Tx_fifo_rst;
  input ackDataState;
  input s_axi_aclk;
  input p_3_in;
  input [0:7]Tx_fifo_data;
  input rdCntrFrmTxFifo0;
  input earlyAckDataState;
  input I1;
  input [0:0]s_axi_wdata;
  input [1:0]Q;
  input p_18_in;
  input Bus_RNW_reg;
  input earlyAckHdr;

  wire Bus_RNW_reg;
  wire [0:0]D;
  wire I1;
  wire [1:0]Q;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rst;
  wire ackDataState;
  wire ackDataState_d1;
  wire callingReadAccess;
  wire cr_txModeSelect_clr;
  wire cr_txModeSelect_set;
  wire earlyAckDataState;
  wire earlyAckDataState_d1;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire n_0_Cr_txModeSelect_clr_i_1;
  wire n_0_Cr_txModeSelect_set_i_1;
  wire \n_0_rdByteCntr[0]_i_1 ;
  wire \n_0_rdByteCntr[0]_i_3 ;
  wire \n_0_rdByteCntr[0]_i_4 ;
  wire \n_0_rdByteCntr[2]_i_2 ;
  wire \n_0_rdByteCntr[3]_i_2 ;
  wire n_0_rxCntDone_i_2;
  wire [7:0]p_0_in;
  wire p_18_in;
  wire p_3_in;
  wire [0:7]rdByteCntr_reg__0;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rxCntDone;
  wire rxCntDone0;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;
  wire txak;

(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     Cr_txModeSelect_clr_i_1
       (.I0(callingReadAccess),
        .I1(earlyAckHdr),
        .I2(firstDynStartSeen),
        .I3(Tx_fifo_rst),
        .O(n_0_Cr_txModeSelect_clr_i_1));
FDRE Cr_txModeSelect_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Cr_txModeSelect_clr_i_1),
        .Q(cr_txModeSelect_clr),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     Cr_txModeSelect_set_i_1
       (.I0(callingReadAccess),
        .I1(earlyAckHdr),
        .I2(firstDynStartSeen),
        .I3(Tx_fifo_rst),
        .O(n_0_Cr_txModeSelect_set_i_1));
FDRE Cr_txModeSelect_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Cr_txModeSelect_set_i_1),
        .Q(cr_txModeSelect_set),
        .R(1'b0));
FDRE ackDataState_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ackDataState),
        .Q(ackDataState_d1),
        .R(Tx_fifo_rst));
FDRE callingReadAccess_reg
       (.C(s_axi_aclk),
        .CE(p_3_in),
        .D(Tx_fifo_data[7]),
        .Q(callingReadAccess),
        .R(Tx_fifo_rst));
LUT6 #(
    .INIT(64'h33303330AAAA3330)) 
     \cr_i[4]_i_1 
       (.I0(s_axi_wdata),
        .I1(cr_txModeSelect_clr),
        .I2(cr_txModeSelect_set),
        .I3(Q[0]),
        .I4(p_18_in),
        .I5(Bus_RNW_reg),
        .O(D));
FDRE earlyAckDataState_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(earlyAckDataState),
        .Q(earlyAckDataState_d1),
        .R(Tx_fifo_rst));
FDRE firstDynStartSeen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(firstDynStartSeen),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAAAAAAFFFEAAAA)) 
     \rdByteCntr[0]_i_1 
       (.I0(rdCntrFrmTxFifo),
        .I1(rdByteCntr_reg__0[0]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(\n_0_rdByteCntr[0]_i_3 ),
        .I4(earlyAckDataState),
        .I5(earlyAckDataState_d1),
        .O(\n_0_rdByteCntr[0]_i_1 ));
LUT5 #(
    .INIT(32'hBBB8888B)) 
     \rdByteCntr[0]_i_2 
       (.I0(Tx_fifo_data[0]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[1]),
        .I3(\n_0_rdByteCntr[0]_i_4 ),
        .I4(rdByteCntr_reg__0[0]),
        .O(p_0_in[7]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rdByteCntr[0]_i_3 
       (.I0(rdByteCntr_reg__0[1]),
        .I1(rdByteCntr_reg__0[2]),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[5]),
        .I4(rdByteCntr_reg__0[4]),
        .I5(rdByteCntr_reg__0[3]),
        .O(\n_0_rdByteCntr[0]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rdByteCntr[0]_i_4 
       (.I0(rdByteCntr_reg__0[3]),
        .I1(rdByteCntr_reg__0[5]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(rdByteCntr_reg__0[4]),
        .I5(rdByteCntr_reg__0[2]),
        .O(\n_0_rdByteCntr[0]_i_4 ));
LUT4 #(
    .INIT(16'hB88B)) 
     \rdByteCntr[1]_i_1 
       (.I0(Tx_fifo_data[1]),
        .I1(rdCntrFrmTxFifo),
        .I2(\n_0_rdByteCntr[0]_i_4 ),
        .I3(rdByteCntr_reg__0[1]),
        .O(p_0_in[6]));
LUT4 #(
    .INIT(16'hB88B)) 
     \rdByteCntr[2]_i_1 
       (.I0(Tx_fifo_data[2]),
        .I1(rdCntrFrmTxFifo),
        .I2(\n_0_rdByteCntr[2]_i_2 ),
        .I3(rdByteCntr_reg__0[2]),
        .O(p_0_in[5]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \rdByteCntr[2]_i_2 
       (.I0(rdByteCntr_reg__0[4]),
        .I1(rdByteCntr_reg__0[6]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[5]),
        .I4(rdByteCntr_reg__0[3]),
        .O(\n_0_rdByteCntr[2]_i_2 ));
LUT4 #(
    .INIT(16'hB88B)) 
     \rdByteCntr[3]_i_1 
       (.I0(Tx_fifo_data[3]),
        .I1(rdCntrFrmTxFifo),
        .I2(\n_0_rdByteCntr[3]_i_2 ),
        .I3(rdByteCntr_reg__0[3]),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \rdByteCntr[3]_i_2 
       (.I0(rdByteCntr_reg__0[5]),
        .I1(rdByteCntr_reg__0[7]),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[4]),
        .O(\n_0_rdByteCntr[3]_i_2 ));
LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
     \rdByteCntr[4]_i_1 
       (.I0(Tx_fifo_data[4]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[5]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(rdByteCntr_reg__0[6]),
        .I5(rdByteCntr_reg__0[4]),
        .O(p_0_in[3]));
LUT5 #(
    .INIT(32'hBBB8888B)) 
     \rdByteCntr[5]_i_1 
       (.I0(Tx_fifo_data[5]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[6]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(rdByteCntr_reg__0[5]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'hB88B)) 
     \rdByteCntr[6]_i_1 
       (.I0(Tx_fifo_data[6]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .I3(rdByteCntr_reg__0[6]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h8B)) 
     \rdByteCntr[7]_i_1 
       (.I0(Tx_fifo_data[7]),
        .I1(rdCntrFrmTxFifo),
        .I2(rdByteCntr_reg__0[7]),
        .O(p_0_in[0]));
(* counter = "8" *) 
   FDRE \rdByteCntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[7]),
        .Q(rdByteCntr_reg__0[0]),
        .R(Tx_fifo_rst));
(* counter = "8" *) 
   FDRE \rdByteCntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[6]),
        .Q(rdByteCntr_reg__0[1]),
        .R(Tx_fifo_rst));
(* counter = "8" *) 
   FDRE \rdByteCntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[5]),
        .Q(rdByteCntr_reg__0[2]),
        .R(Tx_fifo_rst));
(* counter = "8" *) 
   FDRE \rdByteCntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[4]),
        .Q(rdByteCntr_reg__0[3]),
        .R(Tx_fifo_rst));
(* counter = "8" *) 
   FDRE \rdByteCntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[3]),
        .Q(rdByteCntr_reg__0[4]),
        .R(Tx_fifo_rst));
(* counter = "8" *) 
   FDRE \rdByteCntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[2]),
        .Q(rdByteCntr_reg__0[5]),
        .R(Tx_fifo_rst));
(* counter = "8" *) 
   FDRE \rdByteCntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[1]),
        .Q(rdByteCntr_reg__0[6]),
        .R(Tx_fifo_rst));
(* counter = "8" *) 
   FDRE \rdByteCntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_rdByteCntr[0]_i_1 ),
        .D(p_0_in[0]),
        .Q(rdByteCntr_reg__0[7]),
        .R(Tx_fifo_rst));
FDRE rdCntrFrmTxFifo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdCntrFrmTxFifo0),
        .Q(rdCntrFrmTxFifo),
        .R(Tx_fifo_rst));
LUT6 #(
    .INIT(64'h0100000000000000)) 
     rxCntDone_i_1
       (.I0(ackDataState_d1),
        .I1(rdByteCntr_reg__0[0]),
        .I2(rdByteCntr_reg__0[7]),
        .I3(callingReadAccess),
        .I4(n_0_rxCntDone_i_2),
        .I5(ackDataState),
        .O(rxCntDone0));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     rxCntDone_i_2
       (.I0(rdByteCntr_reg__0[2]),
        .I1(rdByteCntr_reg__0[1]),
        .I2(rdByteCntr_reg__0[5]),
        .I3(rdByteCntr_reg__0[6]),
        .I4(rdByteCntr_reg__0[3]),
        .I5(rdByteCntr_reg__0[4]),
        .O(n_0_rxCntDone_i_2));
FDRE rxCntDone_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rxCntDone0),
        .Q(rxCntDone),
        .R(Tx_fifo_rst));
LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
     slave_sda_i_2
       (.I0(Q[1]),
        .I1(earlyAckDataState),
        .I2(rdByteCntr_reg__0[0]),
        .I3(rdByteCntr_reg__0[7]),
        .I4(callingReadAccess),
        .I5(n_0_rxCntDone_i_2),
        .O(txak));
endmodule

(* ORIG_REF_NAME = "filter" *) 
module axi_iic_0_filter
   (O1,
    Sda_clean,
    O2,
    Scl_clean,
    sda_rin_d1,
    scl_rin_d1,
    scl_i,
    s_axi_aclk,
    sda_i);
  output O1;
  output Sda_clean;
  output O2;
  output Scl_clean;
  input sda_rin_d1;
  input scl_rin_d1;
  input scl_i;
  input s_axi_aclk;
  input sda_i;

  wire O1;
  wire O2;
  wire Scl_clean;
  wire Sda_clean;
  wire s_axi_aclk;
  wire scl_i;
  wire scl_rin_d1;
  wire sda_i;
  wire sda_rin_d1;

axi_iic_0_debounce SCL_DEBOUNCE
       (.O2(O2),
        .Scl_clean(Scl_clean),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1));
axi_iic_0_debounce_3 SDA_DEBOUNCE
       (.O1(O1),
        .Sda_clean(Sda_clean),
        .s_axi_aclk(s_axi_aclk),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
endmodule

(* ORIG_REF_NAME = "iic" *) 
module axi_iic_0_iic
   (gpo,
    s_axi_arready,
    s_axi_awready,
    s_axi_rdata,
    s_axi_rresp,
    iic2intc_irpt,
    s_axi_bvalid,
    s_axi_rvalid,
    sda_t,
    scl_t,
    s_axi_bresp,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wdata,
    scl_i,
    s_axi_aclk,
    sda_i,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready);
  output [0:0]gpo;
  output s_axi_arready;
  output s_axi_awready;
  output [10:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  output iic2intc_irpt;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output sda_t;
  output scl_t;
  output [0:0]s_axi_bresp;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;
  input [10:0]s_axi_wdata;
  input scl_i;
  input s_axi_aclk;
  input sda_i;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;

  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ;
  wire Aas;
  wire Abgc;
  wire Al;
  wire Bb;
  wire [1:6]Bus2IIC_Addr;
  wire [3:3]Bus2IIC_RdCE;
  wire [0:0]\CLKCNT/q_int_reg__0 ;
  wire [1:7]Cr;
  wire [0:7]Data_i2c;
  wire IIC2Bus_Data1;
  wire [0:7]IIC2Bus_IntrEvent;
  wire Msms_set;
  wire New_rcv_dta;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_full;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire Ro_prev;
  wire [0:0]\SETUP_CNT/q_int_reg__0 ;
  wire Srw;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_full;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire Tx_under_prev;
  wire Txer;
  wire ackDataState;
  wire arb_lost;
  wire buffer_Empty;
  wire buffer_Empty_0;
  wire buffer_Empty_1;
  wire callingReadAccess;
  wire ctrl_fifo_wr_i;
  wire dtre_d1;
  wire [0:1]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire [0:0]gpo;
  wire iic2intc_irpt;
  wire n_0_FILTER_I;
  wire n_0_WRITE_FIFO_CTRL_I;
  wire n_108_REG_INTERFACE_I;
  wire n_109_REG_INTERFACE_I;
  wire n_10_IIC_CONTROL_I;
  wire n_110_REG_INTERFACE_I;
  wire n_111_REG_INTERFACE_I;
  wire n_112_REG_INTERFACE_I;
  wire n_114_REG_INTERFACE_I;
  wire n_116_REG_INTERFACE_I;
  wire n_117_REG_INTERFACE_I;
  wire n_118_REG_INTERFACE_I;
  wire n_119_REG_INTERFACE_I;
  wire n_120_REG_INTERFACE_I;
  wire n_121_REG_INTERFACE_I;
  wire n_122_REG_INTERFACE_I;
  wire n_123_REG_INTERFACE_I;
  wire n_124_REG_INTERFACE_I;
  wire n_125_REG_INTERFACE_I;
  wire n_126_REG_INTERFACE_I;
  wire n_127_REG_INTERFACE_I;
  wire n_128_REG_INTERFACE_I;
  wire n_129_REG_INTERFACE_I;
  wire n_130_REG_INTERFACE_I;
  wire n_131_REG_INTERFACE_I;
  wire n_132_REG_INTERFACE_I;
  wire n_133_REG_INTERFACE_I;
  wire n_134_REG_INTERFACE_I;
  wire n_135_REG_INTERFACE_I;
  wire n_136_REG_INTERFACE_I;
  wire n_137_REG_INTERFACE_I;
  wire n_138_REG_INTERFACE_I;
  wire n_139_REG_INTERFACE_I;
  wire n_140_REG_INTERFACE_I;
  wire n_141_REG_INTERFACE_I;
  wire n_142_REG_INTERFACE_I;
  wire n_143_REG_INTERFACE_I;
  wire n_14_WRITE_FIFO_I;
  wire n_14_X_AXI_IPIF_SSP1;
  wire n_15_WRITE_FIFO_I;
  wire n_15_X_AXI_IPIF_SSP1;
  wire n_16_X_AXI_IPIF_SSP1;
  wire n_17_X_AXI_IPIF_SSP1;
  wire n_18_WRITE_FIFO_I;
  wire n_18_X_AXI_IPIF_SSP1;
  wire n_19_IIC_CONTROL_I;
  wire n_19_X_AXI_IPIF_SSP1;
  wire n_20_X_AXI_IPIF_SSP1;
  wire n_21_X_AXI_IPIF_SSP1;
  wire n_22_X_AXI_IPIF_SSP1;
  wire n_23_IIC_CONTROL_I;
  wire n_23_X_AXI_IPIF_SSP1;
  wire n_24_IIC_CONTROL_I;
  wire n_24_REG_INTERFACE_I;
  wire n_24_X_AXI_IPIF_SSP1;
  wire n_25_IIC_CONTROL_I;
  wire n_25_REG_INTERFACE_I;
  wire n_25_X_AXI_IPIF_SSP1;
  wire n_26_REG_INTERFACE_I;
  wire n_26_X_AXI_IPIF_SSP1;
  wire n_27_REG_INTERFACE_I;
  wire n_2_FILTER_I;
  wire n_2_X_AXI_IPIF_SSP1;
  wire n_31_X_AXI_IPIF_SSP1;
  wire n_32_X_AXI_IPIF_SSP1;
  wire n_4_DYN_MASTER_I;
  wire n_82_REG_INTERFACE_I;
  wire n_83_REG_INTERFACE_I;
  wire n_84_REG_INTERFACE_I;
  wire n_85_REG_INTERFACE_I;
  wire n_86_REG_INTERFACE_I;
  wire n_96_REG_INTERFACE_I;
  wire n_97_REG_INTERFACE_I;
  wire n_98_REG_INTERFACE_I;
  wire new_rcv_dta_d1;
  wire [0:0]p_0_out;
  wire [6:6]p_1_out;
  wire p_3_in;
  wire p_4_in;
  wire rdCntrFrmTxFifo;
  wire rdCntrFrmTxFifo0;
  wire rdy_new_xmt_i;
  wire rsta_d1;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [10:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire scl_clean;
  wire scl_i;
  wire scl_rin_d1;
  wire scl_t;
  wire sda_clean;
  wire sda_i;
  wire sda_rin_d1;
  wire sda_t;
  wire shift_reg_ld;
  wire [0:0]sr_i;
  wire [8:0]timing_param_tbuf_i;
  wire [8:0]timing_param_thddat_i;
  wire [8:0]timing_param_thdsta_i;
  wire [8:0]timing_param_thigh_i;
  wire [8:0]timing_param_tlow_i;
  wire [8:0]timing_param_tsudat_i;
  wire [8:0]timing_param_tsusta_i;
  wire [8:0]timing_param_tsusto_i;
  wire txFifoRd;
  wire txak;

axi_iic_0_dynamic_master DYN_MASTER_I
       (.Bus_RNW_reg(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D(n_4_DYN_MASTER_I),
        .I1(n_143_REG_INTERFACE_I),
        .Q({Cr[3],Cr[4]}),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rst(Tx_fifo_rst),
        .ackDataState(ackDataState),
        .callingReadAccess(callingReadAccess),
        .earlyAckDataState(earlyAckDataState),
        .earlyAckHdr(earlyAckHdr),
        .firstDynStartSeen(firstDynStartSeen),
        .p_18_in(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdCntrFrmTxFifo0(rdCntrFrmTxFifo0),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[3]),
        .txak(txak));
axi_iic_0_filter FILTER_I
       (.O1(n_0_FILTER_I),
        .O2(n_2_FILTER_I),
        .Scl_clean(scl_clean),
        .Sda_clean(sda_clean),
        .s_axi_aclk(s_axi_aclk),
        .scl_i(scl_i),
        .scl_rin_d1(scl_rin_d1),
        .sda_i(sda_i),
        .sda_rin_d1(sda_rin_d1));
axi_iic_0_iic_control IIC_CONTROL_I
       (.Aas(Aas),
        .Bb(Bb),
        .D({Al,Txer,n_10_IIC_CONTROL_I,p_0_out}),
        .E(n_26_X_AXI_IPIF_SSP1),
        .I1(n_2_FILTER_I),
        .I10(n_98_REG_INTERFACE_I),
        .I11(n_108_REG_INTERFACE_I),
        .I12(timing_param_tsusto_i),
        .I13(timing_param_thigh_i),
        .I14(timing_param_tsusta_i),
        .I15(timing_param_thddat_i),
        .I16(timing_param_thdsta_i),
        .I17(timing_param_tlow_i),
        .I18(timing_param_tbuf_i),
        .I19(timing_param_tsudat_i),
        .I2(n_142_REG_INTERFACE_I),
        .I20(n_117_REG_INTERFACE_I),
        .I21(n_0_FILTER_I),
        .I22(n_18_WRITE_FIFO_I),
        .I3({n_135_REG_INTERFACE_I,n_136_REG_INTERFACE_I,n_137_REG_INTERFACE_I,n_138_REG_INTERFACE_I,n_139_REG_INTERFACE_I,n_140_REG_INTERFACE_I,n_141_REG_INTERFACE_I}),
        .I4(n_83_REG_INTERFACE_I),
        .I5(n_84_REG_INTERFACE_I),
        .I6(n_85_REG_INTERFACE_I),
        .I7(n_86_REG_INTERFACE_I),
        .I8(n_96_REG_INTERFACE_I),
        .I9(n_97_REG_INTERFACE_I),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .O1({Srw,Abgc}),
        .O2(n_19_IIC_CONTROL_I),
        .O3(\CLKCNT/q_int_reg__0 ),
        .O4(\SETUP_CNT/q_int_reg__0 ),
        .O5(n_23_IIC_CONTROL_I),
        .O6({n_24_IIC_CONTROL_I,n_25_IIC_CONTROL_I}),
        .O7({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .Q({Cr[1],Cr[2],Cr[4],Cr[5],Cr[7]}),
        .Ro_prev(Ro_prev),
        .S(n_82_REG_INTERFACE_I),
        .SR(n_116_REG_INTERFACE_I),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data({Tx_fifo_data[0],Tx_fifo_data[1],Tx_fifo_data[2],Tx_fifo_data[3],Tx_fifo_data[4],Tx_fifo_data[5],Tx_fifo_data[6]}),
        .Tx_under_prev(Tx_under_prev),
        .ackDataState(ackDataState),
        .arb_lost(arb_lost),
        .callingReadAccess(callingReadAccess),
        .dtre_d1(dtre_d1),
        .dynamic_MSMS(dynamic_MSMS[0]),
        .earlyAckDataState(earlyAckDataState),
        .earlyAckHdr(earlyAckHdr),
        .firstDynStartSeen(firstDynStartSeen),
        .new_rcv_dta_d1(new_rcv_dta_d1),
        .p_3_in(p_3_in),
        .p_4_in(p_4_in),
        .rdCntrFrmTxFifo0(rdCntrFrmTxFifo0),
        .rdy_new_xmt_i(rdy_new_xmt_i),
        .rsta_d1(rsta_d1),
        .rxCntDone(rxCntDone),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata({s_axi_wdata[5],s_axi_wdata[2]}),
        .scl_clean(scl_clean),
        .scl_rin_d1(scl_rin_d1),
        .scl_t(scl_t),
        .sda_clean(sda_clean),
        .sda_rin_d1(sda_rin_d1),
        .sda_t(sda_t),
        .shift_reg_ld(shift_reg_ld),
        .sr_i(sr_i),
        .txak(txak));
axi_iic_0_SRL_FIFO READ_FIFO_I
       (.D({p_1_out,Rc_fifo_full}),
        .I1(n_2_X_AXI_IPIF_SSP1),
        .I2(n_118_REG_INTERFACE_I),
        .I3(n_110_REG_INTERFACE_I),
        .I4(n_111_REG_INTERFACE_I),
        .O7({Data_i2c[0],Data_i2c[1],Data_i2c[2],Data_i2c[3],Data_i2c[4],Data_i2c[5],Data_i2c[6],Data_i2c[7]}),
        .Rc_Data_Exists(Rc_Data_Exists),
        .Rc_addr(Rc_addr),
        .Rc_fifo_data(Rc_fifo_data),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_rd_d(Rc_fifo_rd_d),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rc_fifo_wr_d(Rc_fifo_wr_d),
        .buffer_Empty(buffer_Empty),
        .s_axi_aclk(s_axi_aclk));
axi_iic_0_reg_interface REG_INTERFACE_I
       (.Aas(Aas),
        .Bus2IIC_Addr({Bus2IIC_Addr[1],Bus2IIC_Addr[2],Bus2IIC_Addr[3],Bus2IIC_Addr[4],Bus2IIC_Addr[5],Bus2IIC_Addr[6]}),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .D(Ro_prev),
        .E(n_26_X_AXI_IPIF_SSP1),
        .I1(n_2_X_AXI_IPIF_SSP1),
        .I10(n_98_REG_INTERFACE_I),
        .I11(\SETUP_CNT/q_int_reg__0 ),
        .I12(n_0_WRITE_FIFO_CTRL_I),
        .I13(n_14_X_AXI_IPIF_SSP1),
        .I14({p_1_out,Rc_fifo_full,Tx_fifo_full,Srw,Bb,Abgc}),
        .I15(n_19_IIC_CONTROL_I),
        .I16({n_24_IIC_CONTROL_I,n_4_DYN_MASTER_I,n_25_IIC_CONTROL_I}),
        .I17(n_24_X_AXI_IPIF_SSP1),
        .I18(n_23_X_AXI_IPIF_SSP1),
        .I19(n_22_X_AXI_IPIF_SSP1),
        .I2(n_15_WRITE_FIFO_I),
        .I20(n_21_X_AXI_IPIF_SSP1),
        .I21(n_20_X_AXI_IPIF_SSP1),
        .I22(n_19_X_AXI_IPIF_SSP1),
        .I23(n_18_X_AXI_IPIF_SSP1),
        .I24(n_17_X_AXI_IPIF_SSP1),
        .I25(n_16_X_AXI_IPIF_SSP1),
        .I26(n_15_X_AXI_IPIF_SSP1),
        .I27({Al,Txer,Tx_under_prev,n_10_IIC_CONTROL_I,p_0_out}),
        .I3(n_25_X_AXI_IPIF_SSP1),
        .I4(n_23_IIC_CONTROL_I),
        .I5(n_14_WRITE_FIFO_I),
        .I6(n_32_X_AXI_IPIF_SSP1),
        .I7(n_31_X_AXI_IPIF_SSP1),
        .I8(\CLKCNT/q_int_reg__0 ),
        .I9(n_97_REG_INTERFACE_I),
        .IIC2Bus_Data1(IIC2Bus_Data1),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .Msms_set(Msms_set),
        .New_rcv_dta(New_rcv_dta),
        .O1(sr_i),
        .O10(timing_param_tlow_i),
        .O11(n_83_REG_INTERFACE_I),
        .O12(n_84_REG_INTERFACE_I),
        .O13(n_85_REG_INTERFACE_I),
        .O14(n_86_REG_INTERFACE_I),
        .O15(timing_param_thdsta_i),
        .O16(n_96_REG_INTERFACE_I),
        .O17(timing_param_tsudat_i),
        .O18(n_108_REG_INTERFACE_I),
        .O19(n_109_REG_INTERFACE_I),
        .O2({n_24_REG_INTERFACE_I,n_25_REG_INTERFACE_I}),
        .O20(n_110_REG_INTERFACE_I),
        .O21(n_111_REG_INTERFACE_I),
        .O22(n_112_REG_INTERFACE_I),
        .O23(n_114_REG_INTERFACE_I),
        .O24(n_117_REG_INTERFACE_I),
        .O25(n_118_REG_INTERFACE_I),
        .O26(n_119_REG_INTERFACE_I),
        .O27(n_120_REG_INTERFACE_I),
        .O28(n_121_REG_INTERFACE_I),
        .O29(n_122_REG_INTERFACE_I),
        .O3(n_26_REG_INTERFACE_I),
        .O30(n_123_REG_INTERFACE_I),
        .O31(n_124_REG_INTERFACE_I),
        .O32(n_125_REG_INTERFACE_I),
        .O33(n_126_REG_INTERFACE_I),
        .O34(n_127_REG_INTERFACE_I),
        .O35(n_128_REG_INTERFACE_I),
        .O36(n_129_REG_INTERFACE_I),
        .O37(n_130_REG_INTERFACE_I),
        .O38(n_131_REG_INTERFACE_I),
        .O39(n_132_REG_INTERFACE_I),
        .O4(n_27_REG_INTERFACE_I),
        .O40(n_133_REG_INTERFACE_I),
        .O41(n_134_REG_INTERFACE_I),
        .O42({n_135_REG_INTERFACE_I,n_136_REG_INTERFACE_I,n_137_REG_INTERFACE_I,n_138_REG_INTERFACE_I,n_139_REG_INTERFACE_I,n_140_REG_INTERFACE_I,n_141_REG_INTERFACE_I}),
        .O43(n_142_REG_INTERFACE_I),
        .O44(n_143_REG_INTERFACE_I),
        .O5(timing_param_tsusto_i),
        .O6(timing_param_thigh_i),
        .O7(timing_param_tsusta_i),
        .O8(timing_param_tbuf_i),
        .O9(timing_param_thddat_i),
        .Q({Cr[1],Cr[2],Cr[3],Cr[4],Cr[5],Cr[7]}),
        .Rc_Data_Exists(Rc_Data_Exists),
        .Rc_addr(Rc_addr),
        .Rc_fifo_data(Rc_fifo_data),
        .Rc_fifo_rd(Rc_fifo_rd),
        .Rc_fifo_rd_d(Rc_fifo_rd_d),
        .Rc_fifo_wr(Rc_fifo_wr),
        .Rc_fifo_wr_d(Rc_fifo_wr_d),
        .S(n_82_REG_INTERFACE_I),
        .SR(n_116_REG_INTERFACE_I),
        .Tx_addr(Tx_addr),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_fifo_wr_d(Tx_fifo_wr_d),
        .arb_lost(arb_lost),
        .buffer_Empty(buffer_Empty_0),
        .buffer_Empty_0(buffer_Empty_1),
        .buffer_Empty_1(buffer_Empty),
        .ctrl_fifo_wr_i(ctrl_fifo_wr_i),
        .dtre_d1(dtre_d1),
        .firstDynStartSeen(firstDynStartSeen),
        .gpo(gpo),
        .new_rcv_dta_d1(new_rcv_dta_d1),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .rdy_new_xmt_i(rdy_new_xmt_i),
        .rsta_d1(rsta_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[6:5]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[6:5]),
        .s_axi_wdata(s_axi_wdata[9:0]),
        .txFifoRd(txFifoRd));
FDRE Rc_fifo_rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rc_fifo_rd),
        .Q(Rc_fifo_rd_d),
        .R(n_2_X_AXI_IPIF_SSP1));
FDRE Rc_fifo_wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rc_fifo_wr),
        .Q(Rc_fifo_wr_d),
        .R(n_2_X_AXI_IPIF_SSP1));
FDRE Tx_fifo_rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_fifo_rd),
        .Q(Tx_fifo_rd_d),
        .R(n_2_X_AXI_IPIF_SSP1));
FDRE Tx_fifo_wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_fifo_wr),
        .Q(Tx_fifo_wr_d),
        .R(n_2_X_AXI_IPIF_SSP1));
axi_iic_0_SRL_FIFO__parameterized0 WRITE_FIFO_CTRL_I
       (.I1(n_112_REG_INTERFACE_I),
        .I2(n_27_REG_INTERFACE_I),
        .I3(n_26_REG_INTERFACE_I),
        .O1(n_0_WRITE_FIFO_CTRL_I),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .buffer_Empty(buffer_Empty_0),
        .ctrl_fifo_wr_i(ctrl_fifo_wr_i),
        .dynamic_MSMS(dynamic_MSMS),
        .p_4_in(p_4_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .s_axi_aclk(s_axi_aclk),
        .txFifoRd(txFifoRd));
axi_iic_0_SRL_FIFO_0 WRITE_FIFO_I
       (.I1(n_114_REG_INTERFACE_I),
        .I14(Tx_fifo_full),
        .I2(n_109_REG_INTERFACE_I),
        .I22(n_18_WRITE_FIFO_I),
        .O1(n_14_WRITE_FIFO_I),
        .O2(n_15_WRITE_FIFO_I),
        .Tx_addr(Tx_addr),
        .Tx_data_exists(Tx_data_exists),
        .Tx_fifo_data(Tx_fifo_data),
        .Tx_fifo_rd(Tx_fifo_rd),
        .Tx_fifo_rd_d(Tx_fifo_rd_d),
        .Tx_fifo_rst(Tx_fifo_rst),
        .Tx_fifo_wr(Tx_fifo_wr),
        .Tx_fifo_wr_d(Tx_fifo_wr_d),
        .buffer_Empty(buffer_Empty_1),
        .dynamic_MSMS(dynamic_MSMS[1]),
        .p_3_in(p_3_in),
        .rdCntrFrmTxFifo(rdCntrFrmTxFifo),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .sda_clean(sda_clean),
        .shift_reg_ld(shift_reg_ld),
        .txFifoRd(txFifoRd));
axi_iic_0_axi_ipif_ssp1 X_AXI_IPIF_SSP1
       (.Bus2IIC_RdCE(Bus2IIC_RdCE),
        .Bus_RNW_reg(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .D({n_24_REG_INTERFACE_I,n_25_REG_INTERFACE_I}),
        .E(n_26_X_AXI_IPIF_SSP1),
        .I1(n_132_REG_INTERFACE_I),
        .I10(n_123_REG_INTERFACE_I),
        .I11(n_122_REG_INTERFACE_I),
        .I12(n_121_REG_INTERFACE_I),
        .I13(n_134_REG_INTERFACE_I),
        .I14(n_133_REG_INTERFACE_I),
        .I15(n_119_REG_INTERFACE_I),
        .I16(n_120_REG_INTERFACE_I),
        .I17(n_24_X_AXI_IPIF_SSP1),
        .I18(n_23_X_AXI_IPIF_SSP1),
        .I19(n_22_X_AXI_IPIF_SSP1),
        .I2(n_131_REG_INTERFACE_I),
        .I20(n_21_X_AXI_IPIF_SSP1),
        .I21(n_20_X_AXI_IPIF_SSP1),
        .I22(n_19_X_AXI_IPIF_SSP1),
        .I23(n_18_X_AXI_IPIF_SSP1),
        .I24(n_17_X_AXI_IPIF_SSP1),
        .I25(n_16_X_AXI_IPIF_SSP1),
        .I26(n_15_X_AXI_IPIF_SSP1),
        .I3(n_130_REG_INTERFACE_I),
        .I4(n_129_REG_INTERFACE_I),
        .I5(n_128_REG_INTERFACE_I),
        .I6(n_127_REG_INTERFACE_I),
        .I7(n_126_REG_INTERFACE_I),
        .I8(n_125_REG_INTERFACE_I),
        .I9(n_124_REG_INTERFACE_I),
        .IIC2Bus_Data1(IIC2Bus_Data1),
        .IIC2Bus_IntrEvent(IIC2Bus_IntrEvent),
        .O1(n_2_X_AXI_IPIF_SSP1),
        .O2({Bus2IIC_Addr[1],Bus2IIC_Addr[2],Bus2IIC_Addr[3],Bus2IIC_Addr[4],Bus2IIC_Addr[5],Bus2IIC_Addr[6]}),
        .O3(n_14_X_AXI_IPIF_SSP1),
        .O4(n_25_X_AXI_IPIF_SSP1),
        .O5(n_31_X_AXI_IPIF_SSP1),
        .O6(n_32_X_AXI_IPIF_SSP1),
        .gpo(gpo),
        .iic2intc_irpt(iic2intc_irpt),
        .p_18_in(\AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[10],s_axi_wdata[7:0]}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "iic_control" *) 
module axi_iic_0_iic_control
   (New_rcv_dta,
    shift_reg_ld,
    scl_rin_d1,
    sda_rin_d1,
    Tx_under_prev,
    rsta_d1,
    dtre_d1,
    Bb,
    D,
    earlyAckHdr,
    earlyAckDataState,
    ackDataState,
    O1,
    arb_lost,
    Aas,
    O2,
    rdy_new_xmt_i,
    O3,
    O4,
    O5,
    O6,
    sda_t,
    scl_t,
    rdCntrFrmTxFifo0,
    O7,
    SR,
    s_axi_aclk,
    Ro_prev,
    scl_clean,
    sda_clean,
    I1,
    Q,
    sr_i,
    I2,
    I3,
    new_rcv_dta_d1,
    S,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    txak,
    s_axi_wdata,
    p_4_in,
    E,
    rxCntDone,
    dynamic_MSMS,
    Tx_data_exists,
    I11,
    p_3_in,
    firstDynStartSeen,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    Msms_set,
    callingReadAccess,
    Tx_fifo_data,
    I21,
    I22);
  output New_rcv_dta;
  output shift_reg_ld;
  output scl_rin_d1;
  output sda_rin_d1;
  output Tx_under_prev;
  output rsta_d1;
  output dtre_d1;
  output Bb;
  output [3:0]D;
  output earlyAckHdr;
  output earlyAckDataState;
  output ackDataState;
  output [1:0]O1;
  output arb_lost;
  output Aas;
  output O2;
  output rdy_new_xmt_i;
  output [0:0]O3;
  output [0:0]O4;
  output O5;
  output [1:0]O6;
  output sda_t;
  output scl_t;
  output rdCntrFrmTxFifo0;
  output [7:0]O7;
  input [0:0]SR;
  input s_axi_aclk;
  input Ro_prev;
  input scl_clean;
  input sda_clean;
  input I1;
  input [4:0]Q;
  input [0:0]sr_i;
  input I2;
  input [6:0]I3;
  input new_rcv_dta_d1;
  input [0:0]S;
  input [0:0]I4;
  input [0:0]I5;
  input [0:0]I6;
  input [0:0]I7;
  input [0:0]I8;
  input [0:0]I9;
  input [0:0]I10;
  input txak;
  input [1:0]s_axi_wdata;
  input p_4_in;
  input [0:0]E;
  input rxCntDone;
  input [0:0]dynamic_MSMS;
  input Tx_data_exists;
  input I11;
  input p_3_in;
  input firstDynStartSeen;
  input [8:0]I12;
  input [8:0]I13;
  input [8:0]I14;
  input [8:0]I15;
  input [8:0]I16;
  input [8:0]I17;
  input [8:0]I18;
  input [8:0]I19;
  input I20;
  input Msms_set;
  input callingReadAccess;
  input [6:0]Tx_fifo_data;
  input I21;
  input [0:0]I22;

  wire Aas;
  wire AckDataState0_out;
  wire Bb;
  wire [3:0]D;
  wire [0:0]E;
  wire EarlyAckDataState0;
  wire EarlyAckHdr0;
  wire I1;
  wire [0:0]I10;
  wire I11;
  wire [8:0]I12;
  wire [8:0]I13;
  wire [8:0]I14;
  wire [8:0]I15;
  wire [8:0]I16;
  wire [8:0]I17;
  wire [8:0]I18;
  wire [8:0]I19;
  wire I2;
  wire I20;
  wire I21;
  wire [0:0]I22;
  wire [6:0]I3;
  wire [0:0]I4;
  wire [0:0]I5;
  wire [0:0]I6;
  wire [0:0]I7;
  wire [0:0]I8;
  wire [0:0]I9;
  wire Msms_rst;
  wire Msms_set;
  wire New_rcv_dta;
  wire [1:0]O1;
  wire O2;
  wire [0:0]O3;
  wire [0:0]O4;
  wire O5;
  wire [1:0]O6;
  wire [7:0]O7;
  wire [4:0]Q;
  wire Ro_prev;
  wire Rsta_rst;
  wire [0:0]S;
  wire [0:0]SR;
  wire Tx_data_exists;
  wire [6:0]Tx_fifo_data;
  wire Tx_under_prev;
  wire aas_i;
  wire ackDataState;
  wire al_i0;
  wire arb_lost;
  wire arb_lost0;
  wire bit_cnt_en;
  wire bit_cnt_en0;
  wire bit_cnt_en3;
  wire bus_busy_d1;
  wire callingReadAccess;
  wire data_i2c_i0;
  wire detect_start;
  wire dtc_i;
  wire dtc_i_d1;
  wire dtc_i_d2;
  wire dtre_d1;
  wire [0:0]dynamic_MSMS;
  wire earlyAckDataState;
  wire earlyAckHdr;
  wire firstDynStartSeen;
  wire gen_stop_d1;
  wire i2c_header_en;
  wire i2c_header_en0;
  wire master_slave;
  wire msms_d1;
  wire msms_d2;
  wire msms_rst_i;
  wire n_0_AckDataState_i_2;
  wire \n_0_FSM_onehot_scl_state[1]_i_2 ;
  wire \n_0_FSM_onehot_scl_state[2]_i_1 ;
  wire \n_0_FSM_onehot_scl_state[2]_i_2 ;
  wire \n_0_FSM_onehot_scl_state[2]_i_3 ;
  wire \n_0_FSM_onehot_scl_state[3]_i_3 ;
  wire \n_0_FSM_onehot_scl_state[4]_i_3 ;
  wire \n_0_FSM_onehot_scl_state[5]_i_3 ;
  wire \n_0_FSM_onehot_scl_state[6]_i_3 ;
  wire \n_0_FSM_onehot_scl_state[6]_i_8 ;
  wire \n_0_FSM_onehot_scl_state[7]_i_1 ;
  wire \n_0_FSM_onehot_scl_state[7]_i_2 ;
  wire \n_0_FSM_onehot_scl_state[8]_i_1 ;
  wire \n_0_FSM_onehot_scl_state[8]_i_2 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_5 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_7 ;
  wire \n_0_FSM_onehot_scl_state_reg[1] ;
  wire \n_0_FSM_onehot_scl_state_reg[2] ;
  wire \n_0_FSM_onehot_scl_state_reg[3] ;
  wire \n_0_FSM_onehot_scl_state_reg[4] ;
  wire \n_0_FSM_onehot_scl_state_reg[5] ;
  wire \n_0_FSM_onehot_scl_state_reg[6] ;
  wire \n_0_FSM_onehot_scl_state_reg[7] ;
  wire \n_0_FSM_onehot_scl_state_reg[8] ;
  wire \n_0_FSM_onehot_scl_state_reg[9] ;
  wire \n_0_FSM_onehot_state[1]_i_2 ;
  wire \n_0_FSM_onehot_state[1]_i_4 ;
  wire \n_0_FSM_onehot_state[2]_i_1 ;
  wire \n_0_FSM_onehot_state[2]_i_2 ;
  wire \n_0_FSM_onehot_state[3]_i_1 ;
  wire \n_0_FSM_onehot_state[3]_i_2 ;
  wire \n_0_FSM_onehot_state[4]_i_4 ;
  wire \n_0_FSM_onehot_state[5]_i_2 ;
  wire \n_0_FSM_onehot_state[6]_i_3 ;
  wire \n_0_FSM_onehot_state[7]_i_1 ;
  wire \n_0_FSM_onehot_state[7]_i_3 ;
  wire \n_0_FSM_onehot_state[7]_i_6 ;
  wire \n_0_FSM_onehot_state_reg[1] ;
  wire \n_0_FSM_onehot_state_reg[2] ;
  wire \n_0_FSM_onehot_state_reg[3] ;
  wire \n_0_FSM_onehot_state_reg[4] ;
  wire \n_0_FSM_onehot_state_reg[5] ;
  wire \n_0_FSM_onehot_state_reg[6] ;
  wire \n_0_FSM_onehot_state_reg[7] ;
  wire n_0_I2CDATA_REG;
  wire n_0_I2CHEADER_REG;
  wire \n_0_LEVEL_1_GEN.master_sda_i_4 ;
  wire \n_0_LEVEL_1_GEN.master_sda_reg ;
  wire n_0_al_i_i_1;
  wire n_0_al_prevent_i_1;
  wire n_0_al_prevent_reg;
  wire n_0_arb_lost_i_1;
  wire n_0_bus_busy_i_1;
  wire \n_0_cr_i[2]_i_3 ;
  wire n_0_detect_start_i_1;
  wire n_0_detect_stop_i_1;
  wire n_0_detect_stop_i_2;
  wire n_0_detect_stop_reg;
  wire n_0_gen_start_i_1;
  wire n_0_gen_start_reg;
  wire n_0_gen_stop_i_1;
  wire n_0_gen_stop_reg;
  wire n_0_master_slave_i_1;
  wire n_0_msms_d1_i_1;
  wire n_0_msms_d1_i_2;
  wire n_0_msms_rst_i_i_1;
  wire n_0_msms_rst_i_i_2;
  wire n_0_msms_rst_i_i_3;
  wire n_0_msms_rst_i_i_5;
  wire n_0_new_rcv_dta_i_i_2;
  wire n_0_rdy_new_xmt_i_i_1;
  wire n_0_scl_cout_reg_i_1;
  wire n_0_scl_cout_reg_i_2;
  wire n_0_scl_falling_edge_i_1;
  wire n_0_sda_cout_reg_i_6;
  wire n_0_sda_cout_reg_i_7;
  wire n_0_sda_sample_i_1;
  wire n_0_sda_setup_reg;
  wire n_0_shift_reg_en_i_2;
  wire n_0_slave_sda_i_3;
  wire n_0_slave_sda_reg;
  wire n_0_sm_stop_i_1;
  wire n_0_sm_stop_i_2;
  wire n_0_sm_stop_i_3;
  wire n_0_sm_stop_reg;
  wire n_0_stop_scl_reg_i_2;
  wire n_0_stop_scl_reg_i_4;
  wire n_0_stop_scl_reg_i_5;
  wire n_0_stop_scl_reg_i_7;
  wire n_0_tx_under_prev_i_i_1;
  wire n_0_tx_under_prev_i_i_2;
  wire n_0_txer_edge_i_1;
  wire n_0_txer_i_i_1;
  wire n_0_txer_i_reg;
  wire n_10_CLKCNT;
  wire n_1_BITCNT;
  wire n_1_CLKCNT;
  wire n_1_I2CHEADER_REG;
  wire n_1_SETUP_CNT;
  wire n_2_CLKCNT;
  wire n_2_I2CDATA_REG;
  wire n_2_I2CHEADER_REG;
  wire n_3_BITCNT;
  wire n_3_CLKCNT;
  wire n_3_I2CDATA_REG;
  wire n_3_I2CHEADER_REG;
  wire n_4_CLKCNT;
  wire n_4_I2CDATA_REG;
  wire n_4_I2CHEADER_REG;
  wire n_5_CLKCNT;
  wire n_5_I2CDATA_REG;
  wire n_6_CLKCNT;
  wire n_6_I2CDATA_REG;
  wire n_6_I2CHEADER_REG;
  wire n_7_CLKCNT;
  wire n_7_I2CDATA_REG;
  wire n_7_I2CHEADER_REG;
  wire n_8_CLKCNT;
  wire n_8_I2CDATA_REG;
  wire n_8_I2CHEADER_REG;
  wire n_9_CLKCNT;
  wire new_rcv_dta_d1;
  wire next_scl_state0;
  wire p_0_in;
  wire p_1_in24_in;
  wire p_1_in25_in;
  wire p_3_in;
  wire p_4_in;
  wire rdCntrFrmTxFifo0;
  wire rdy_new_xmt_i;
  wire ro_prev_d1;
  wire rsta_d1;
  wire rxCntDone;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;
  wire scl_clean;
  wire scl_cout_reg;
  wire scl_f_edg_d1;
  wire scl_f_edg_d2;
  wire scl_f_edg_d3;
  wire scl_rin_d1;
  wire scl_rising_edge;
  wire scl_t;
  wire sda_clean;
  wire sda_cout1;
  wire sda_cout_reg;
  wire sda_rin_d1;
  wire sda_sample;
  wire sda_t;
  wire [7:7]shift_reg;
  wire shift_reg_en;
  wire shift_reg_en0;
  wire shift_reg_ld;
  wire shift_reg_ld0;
  wire shift_reg_ld_d1;
  wire slave_sda;
  wire [0:0]sr_i;
  wire [2:0]state_reg;
  wire stop_scl_reg;
  wire tx_under_prev_d1;
  wire tx_under_prev_i0;
  wire tx_under_prev_i4;
  wire txak;
  wire txer_i;

LUT6 #(
    .INIT(64'h0004000000000000)) 
     AckDataState_i_1
       (.I0(n_0_AckDataState_i_2),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state[3]_i_2 ),
        .I5(Q[0]),
        .O(AckDataState0_out));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT2 #(
    .INIT(4'hE)) 
     AckDataState_i_2
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .O(n_0_AckDataState_i_2));
FDRE AckDataState_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AckDataState0_out),
        .Q(ackDataState),
        .R(1'b0));
axi_iic_0_upcnt_n__parameterized0 BITCNT
       (.E(n_1_BITCNT),
        .EarlyAckDataState0(EarlyAckDataState0),
        .I1(n_0_new_rcv_dta_i_i_2),
        .I2(Q[0]),
        .O1(n_3_BITCNT),
        .Q({\n_0_FSM_onehot_state_reg[7] ,\n_0_FSM_onehot_state_reg[6] ,\n_0_FSM_onehot_state_reg[5] ,\n_0_FSM_onehot_state_reg[4] ,\n_0_FSM_onehot_state_reg[3] ,\n_0_FSM_onehot_state_reg[2] ,\n_0_FSM_onehot_state_reg[1] }),
        .Ro_prev(Ro_prev),
        .SR(SR),
        .bit_cnt_en(bit_cnt_en),
        .bit_cnt_en3(bit_cnt_en3),
        .detect_start(detect_start),
        .dtc_i(dtc_i),
        .p_1_in24_in(p_1_in24_in),
        .ro_prev_d1(ro_prev_d1),
        .s_axi_aclk(s_axi_aclk),
        .scl_f_edg_d2(scl_f_edg_d2),
        .state_reg(state_reg[0]));
axi_iic_0_upcnt_n CLKCNT
       (.D({n_3_CLKCNT,n_4_CLKCNT,n_5_CLKCNT,n_6_CLKCNT,n_7_CLKCNT,n_8_CLKCNT}),
        .E(n_2_CLKCNT),
        .I1(\n_0_LEVEL_1_GEN.master_sda_reg ),
        .I10(I6),
        .I11(I7),
        .I12(I8),
        .I13(I9),
        .I14(I12),
        .I15(I13),
        .I16(I14),
        .I17(I15),
        .I18(I16),
        .I19(I17),
        .I2({\n_0_FSM_onehot_scl_state_reg[9] ,\n_0_FSM_onehot_scl_state_reg[8] ,\n_0_FSM_onehot_scl_state_reg[7] ,\n_0_FSM_onehot_scl_state_reg[6] ,\n_0_FSM_onehot_scl_state_reg[5] ,\n_0_FSM_onehot_scl_state_reg[4] ,\n_0_FSM_onehot_scl_state_reg[3] ,\n_0_FSM_onehot_scl_state_reg[2] ,\n_0_FSM_onehot_scl_state_reg[1] }),
        .I20(I18),
        .I21(\n_0_FSM_onehot_scl_state[1]_i_2 ),
        .I22(\n_0_FSM_onehot_scl_state[4]_i_3 ),
        .I23(\n_0_FSM_onehot_scl_state[9]_i_7 ),
        .I24(n_0_stop_scl_reg_i_5),
        .I25(\n_0_FSM_onehot_scl_state[6]_i_3 ),
        .I26(\n_0_FSM_onehot_scl_state[5]_i_3 ),
        .I27(\n_0_FSM_onehot_scl_state[3]_i_3 ),
        .I28(n_0_stop_scl_reg_i_2),
        .I3(arb_lost),
        .I4(n_0_sda_cout_reg_i_6),
        .I5(n_0_sda_cout_reg_i_7),
        .I6(n_0_stop_scl_reg_i_7),
        .I7(\n_0_FSM_onehot_scl_state[9]_i_5 ),
        .I8(I4),
        .I9(I5),
        .O1(n_1_CLKCNT),
        .O2(n_9_CLKCNT),
        .O3(O3),
        .O4(n_10_CLKCNT),
        .Q(Q[3]),
        .S(S),
        .SR(SR),
        .next_scl_state0(next_scl_state0),
        .s_axi_aclk(s_axi_aclk),
        .scl_clean(scl_clean),
        .sda_clean(sda_clean),
        .sda_cout1(sda_cout1),
        .sda_cout_reg(sda_cout_reg),
        .stop_scl_reg(stop_scl_reg));
LUT6 #(
    .INIT(64'h0003000200030000)) 
     EarlyAckDataState_i_2
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[3] ),
        .O(p_1_in24_in));
FDRE EarlyAckDataState_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EarlyAckDataState0),
        .Q(earlyAckDataState),
        .R(SR));
LUT2 #(
    .INIT(4'h8)) 
     EarlyAckHdr_i_1
       (.I0(scl_f_edg_d3),
        .I1(n_0_slave_sda_i_3),
        .O(EarlyAckHdr0));
FDRE EarlyAckHdr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EarlyAckHdr0),
        .Q(earlyAckHdr),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_scl_state[1]_i_2 
       (.I0(\n_0_FSM_onehot_scl_state_reg[4] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[3] ),
        .O(\n_0_FSM_onehot_scl_state[1]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000020202)) 
     \FSM_onehot_scl_state[2]_i_1 
       (.I0(\n_0_FSM_onehot_scl_state[2]_i_2 ),
        .I1(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[4] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I4(arb_lost),
        .I5(\n_0_FSM_onehot_scl_state[2]_i_3 ),
        .O(\n_0_FSM_onehot_scl_state[2]_i_1 ));
LUT6 #(
    .INIT(64'h0033000030883088)) 
     \FSM_onehot_scl_state[2]_i_2 
       (.I0(Q[3]),
        .I1(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I2(next_scl_state0),
        .I3(\n_0_FSM_onehot_scl_state_reg[1] ),
        .I4(sda_clean),
        .I5(\n_0_FSM_onehot_scl_state_reg[2] ),
        .O(\n_0_FSM_onehot_scl_state[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_scl_state[2]_i_3 
       (.I0(\n_0_FSM_onehot_scl_state_reg[5] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[9] ),
        .O(\n_0_FSM_onehot_scl_state[2]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \FSM_onehot_scl_state[2]_i_4 
       (.I0(Bb),
        .I1(master_slave),
        .I2(n_0_gen_start_reg),
        .O(next_scl_state0));
LUT6 #(
    .INIT(64'h0000000000010000)) 
     \FSM_onehot_scl_state[3]_i_3 
       (.I0(\n_0_FSM_onehot_scl_state_reg[9] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I4(n_1_CLKCNT),
        .I5(\n_0_FSM_onehot_scl_state_reg[1] ),
        .O(\n_0_FSM_onehot_scl_state[3]_i_3 ));
LUT6 #(
    .INIT(64'h0000000000001115)) 
     \FSM_onehot_scl_state[4]_i_3 
       (.I0(\n_0_FSM_onehot_scl_state[2]_i_3 ),
        .I1(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I2(arb_lost),
        .I3(Q[3]),
        .I4(\n_0_FSM_onehot_scl_state_reg[2] ),
        .I5(\n_0_FSM_onehot_scl_state_reg[1] ),
        .O(\n_0_FSM_onehot_scl_state[4]_i_3 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_scl_state[5]_i_3 
       (.I0(\n_0_FSM_onehot_scl_state[6]_i_8 ),
        .I1(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[1] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I5(\n_0_FSM_onehot_scl_state_reg[2] ),
        .O(\n_0_FSM_onehot_scl_state[5]_i_3 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_scl_state[6]_i_3 
       (.I0(\n_0_FSM_onehot_scl_state[6]_i_8 ),
        .I1(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[4] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[1] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I5(\n_0_FSM_onehot_scl_state_reg[2] ),
        .O(\n_0_FSM_onehot_scl_state[6]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_scl_state[6]_i_8 
       (.I0(\n_0_FSM_onehot_scl_state_reg[9] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[8] ),
        .O(\n_0_FSM_onehot_scl_state[6]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'h00010000)) 
     \FSM_onehot_scl_state[7]_i_1 
       (.I0(\n_0_FSM_onehot_scl_state_reg[4] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[5] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[2] ),
        .I4(\n_0_FSM_onehot_scl_state[7]_i_2 ),
        .O(\n_0_FSM_onehot_scl_state[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000008)) 
     \FSM_onehot_scl_state[7]_i_2 
       (.I0(scl_clean),
        .I1(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[9] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[1] ),
        .I5(\n_0_FSM_onehot_scl_state_reg[7] ),
        .O(\n_0_FSM_onehot_scl_state[7]_i_2 ));
LUT6 #(
    .INIT(64'h0500000005008800)) 
     \FSM_onehot_scl_state[8]_i_1 
       (.I0(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I1(stop_scl_reg),
        .I2(sda_clean),
        .I3(\n_0_FSM_onehot_scl_state[8]_i_2 ),
        .I4(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I5(I20),
        .O(\n_0_FSM_onehot_scl_state[8]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_scl_state[8]_i_2 
       (.I0(n_1_CLKCNT),
        .I1(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[9] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[1] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I5(\n_0_FSM_onehot_scl_state_reg[2] ),
        .O(\n_0_FSM_onehot_scl_state[8]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
     \FSM_onehot_scl_state[9]_i_5 
       (.I0(\n_0_FSM_onehot_scl_state_reg[1] ),
        .I1(arb_lost),
        .I2(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I5(\n_0_FSM_onehot_scl_state_reg[9] ),
        .O(\n_0_FSM_onehot_scl_state[9]_i_5 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_scl_state[9]_i_7 
       (.I0(n_1_CLKCNT),
        .I1(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[1] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I5(\n_0_FSM_onehot_scl_state_reg[2] ),
        .O(\n_0_FSM_onehot_scl_state[9]_i_7 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_scl_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(n_8_CLKCNT),
        .Q(\n_0_FSM_onehot_scl_state_reg[1] ),
        .S(SR));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_scl_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(\n_0_FSM_onehot_scl_state[2]_i_1 ),
        .Q(\n_0_FSM_onehot_scl_state_reg[2] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_scl_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(n_7_CLKCNT),
        .Q(\n_0_FSM_onehot_scl_state_reg[3] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_scl_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(n_6_CLKCNT),
        .Q(\n_0_FSM_onehot_scl_state_reg[4] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_scl_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(n_5_CLKCNT),
        .Q(\n_0_FSM_onehot_scl_state_reg[5] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_scl_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(n_4_CLKCNT),
        .Q(\n_0_FSM_onehot_scl_state_reg[6] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_scl_state_reg[7] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(\n_0_FSM_onehot_scl_state[7]_i_1 ),
        .Q(\n_0_FSM_onehot_scl_state_reg[7] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_scl_state_reg[8] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(\n_0_FSM_onehot_scl_state[8]_i_1 ),
        .Q(\n_0_FSM_onehot_scl_state_reg[8] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_scl_state_reg[9] 
       (.C(s_axi_aclk),
        .CE(n_2_CLKCNT),
        .D(n_3_CLKCNT),
        .Q(\n_0_FSM_onehot_scl_state_reg[9] ),
        .R(SR));
LUT5 #(
    .INIT(32'hFFFEEEEE)) 
     \FSM_onehot_state[1]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(detect_start),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .O(\n_0_FSM_onehot_state[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[1]_i_4 
       (.I0(sda_sample),
        .I1(arb_lost),
        .O(\n_0_FSM_onehot_state[1]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'h444A0000)) 
     \FSM_onehot_state[2]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(detect_start),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state[2]_i_2 ),
        .O(\n_0_FSM_onehot_state[2]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000010101)) 
     \FSM_onehot_state[2]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[7] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_FSM_onehot_state[2]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000020)) 
     \FSM_onehot_state[3]_i_1 
       (.I0(\n_0_FSM_onehot_state[3]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(\n_0_FSM_onehot_state_reg[7] ),
        .I5(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_FSM_onehot_state[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_state[3]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .O(\n_0_FSM_onehot_state[3]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[4]_i_4 
       (.I0(\n_0_FSM_onehot_state_reg[7] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_FSM_onehot_state[4]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_state[5]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .O(\n_0_FSM_onehot_state[5]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h0000000B)) 
     \FSM_onehot_state[6]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(detect_start),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state[7]_i_6 ),
        .O(\n_0_FSM_onehot_state[6]_i_3 ));
LUT2 #(
    .INIT(4'hB)) 
     \FSM_onehot_state[7]_i_1 
       (.I0(n_0_detect_stop_reg),
        .I1(Q[0]),
        .O(\n_0_FSM_onehot_state[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_state[7]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state[7]_i_6 ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(detect_start),
        .O(\n_0_FSM_onehot_state[7]_i_3 ));
LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_state[7]_i_6 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .O(\n_0_FSM_onehot_state[7]_i_6 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(n_1_BITCNT),
        .D(n_3_I2CHEADER_REG),
        .Q(\n_0_FSM_onehot_state_reg[1] ),
        .S(\n_0_FSM_onehot_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(n_1_BITCNT),
        .D(\n_0_FSM_onehot_state[2]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(n_1_BITCNT),
        .D(\n_0_FSM_onehot_state[3]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(n_1_BITCNT),
        .D(n_2_I2CHEADER_REG),
        .Q(\n_0_FSM_onehot_state_reg[4] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(n_1_BITCNT),
        .D(n_1_I2CHEADER_REG),
        .Q(\n_0_FSM_onehot_state_reg[5] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(n_1_BITCNT),
        .D(n_0_I2CHEADER_REG),
        .Q(\n_0_FSM_onehot_state_reg[6] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[7] 
       (.C(s_axi_aclk),
        .CE(n_1_BITCNT),
        .D(\n_0_FSM_onehot_state[7]_i_3 ),
        .Q(\n_0_FSM_onehot_state_reg[7] ),
        .R(\n_0_FSM_onehot_state[7]_i_1 ));
axi_iic_0_shift8 I2CDATA_REG
       (.I1(shift_reg_ld),
        .I2(Tx_under_prev),
        .I22(I22),
        .I3(\n_0_LEVEL_1_GEN.master_sda_i_4 ),
        .I4({\n_0_FSM_onehot_state_reg[7] ,\n_0_FSM_onehot_state_reg[6] ,\n_0_FSM_onehot_state_reg[5] ,\n_0_FSM_onehot_state_reg[4] }),
        .I5(\n_0_FSM_onehot_state[7]_i_6 ),
        .O1(n_0_I2CDATA_REG),
        .Q({shift_reg,n_2_I2CDATA_REG,n_3_I2CDATA_REG,n_4_I2CDATA_REG,n_5_I2CDATA_REG,n_6_I2CDATA_REG,n_7_I2CDATA_REG,n_8_I2CDATA_REG}),
        .SR(SR),
        .Tx_fifo_data(Tx_fifo_data),
        .p_0_in(p_0_in),
        .p_1_in25_in(p_1_in25_in),
        .s_axi_aclk(s_axi_aclk),
        .shift_reg_en(shift_reg_en),
        .slave_sda(slave_sda));
axi_iic_0_shift8_1 I2CHEADER_REG
       (.D({n_0_I2CHEADER_REG,n_1_I2CHEADER_REG,n_2_I2CHEADER_REG,n_3_I2CHEADER_REG}),
        .E(i2c_header_en),
        .I1(\n_0_FSM_onehot_state[6]_i_3 ),
        .I10(\n_0_FSM_onehot_state[4]_i_4 ),
        .I11(O1),
        .I12(Tx_under_prev),
        .I13(n_0_tx_under_prev_i_i_2),
        .I14(n_0_detect_stop_reg),
        .I15(Aas),
        .I2(\n_0_FSM_onehot_state[1]_i_2 ),
        .I3(I3),
        .I4(\n_0_FSM_onehot_state[1]_i_4 ),
        .I5(n_0_new_rcv_dta_i_i_2),
        .I6(n_0_slave_sda_i_3),
        .I7(arb_lost),
        .I8(\n_0_FSM_onehot_state[5]_i_2 ),
        .I9({Q[4],Q[2],Q[0]}),
        .O1(n_4_I2CHEADER_REG),
        .O2(n_6_I2CHEADER_REG),
        .O3(n_7_I2CHEADER_REG),
        .O4(n_8_I2CHEADER_REG),
        .Q({\n_0_FSM_onehot_state_reg[7] ,\n_0_FSM_onehot_state_reg[6] ,\n_0_FSM_onehot_state_reg[5] ,\n_0_FSM_onehot_state_reg[4] ,\n_0_FSM_onehot_state_reg[3] ,\n_0_FSM_onehot_state_reg[2] ,\n_0_FSM_onehot_state_reg[1] }),
        .Ro_prev(Ro_prev),
        .SR(SR),
        .aas_i(aas_i),
        .detect_start(detect_start),
        .master_slave(master_slave),
        .s_axi_aclk(s_axi_aclk),
        .sda_clean(sda_clean),
        .sda_sample(sda_sample),
        .shift_reg_ld0(shift_reg_ld0),
        .slave_sda(slave_sda),
        .state_reg(state_reg),
        .txak(txak));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \IIC2Bus_IntrEvent[4]_i_1 
       (.I0(Bb),
        .O(D[1]));
LUT1 #(
    .INIT(2'h1)) 
     \IIC2Bus_IntrEvent[6]_i_1 
       (.I0(Aas),
        .O(D[0]));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \LEVEL_1_GEN.master_sda_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[3] ),
        .O(p_1_in25_in));
LUT6 #(
    .INIT(64'h0003000300020000)) 
     \LEVEL_1_GEN.master_sda_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .I5(\n_0_FSM_onehot_state_reg[5] ),
        .O(p_0_in));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \LEVEL_1_GEN.master_sda_i_4 
       (.I0(\n_0_FSM_onehot_state[3]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(txak),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[2] ),
        .O(\n_0_LEVEL_1_GEN.master_sda_i_4 ));
FDSE \LEVEL_1_GEN.master_sda_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_I2CDATA_REG),
        .Q(\n_0_LEVEL_1_GEN.master_sda_reg ),
        .S(SR));
LUT2 #(
    .INIT(4'h2)) 
     \RD_FIFO_CNTRL.Rc_fifo_wr_i_1 
       (.I0(New_rcv_dta),
        .I1(new_rcv_dta_d1),
        .O(O5));
axi_iic_0_upcnt_n_2 SETUP_CNT
       (.I1(n_0_sda_setup_reg),
        .I10(I10),
        .I19(I19),
        .I2(Tx_under_prev),
        .I3(n_0_gen_stop_reg),
        .O1(n_1_SETUP_CNT),
        .O4(O4),
        .Q({Q[3],Q[0]}),
        .SR(SR),
        .gen_stop_d1(gen_stop_d1),
        .rsta_d1(rsta_d1),
        .s_axi_aclk(s_axi_aclk),
        .scl_clean(scl_clean),
        .sda_clean(sda_clean),
        .sda_rin_d1(sda_rin_d1),
        .tx_under_prev_d1(tx_under_prev_d1));
LUT6 #(
    .INIT(64'h0000000000020000)) 
     aas_i_i_2
       (.I0(\n_0_FSM_onehot_state[3]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[2] ),
        .O(aas_i));
FDRE aas_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_7_I2CHEADER_REG),
        .Q(Aas),
        .R(1'b0));
FDRE abgc_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_6_I2CHEADER_REG),
        .Q(O1[0]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     al_i_i_1
       (.I0(al_i0),
        .I1(master_slave),
        .I2(Q[3]),
        .O(n_0_al_i_i_1));
LUT6 #(
    .INIT(64'hFFFFAAAEAAAEAAAE)) 
     al_i_i_2
       (.I0(arb_lost),
        .I1(n_0_detect_stop_reg),
        .I2(n_0_sm_stop_reg),
        .I3(n_0_al_prevent_reg),
        .I4(bus_busy_d1),
        .I5(n_0_gen_start_reg),
        .O(al_i0));
FDRE al_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_al_i_i_1),
        .Q(D[3]),
        .R(SR));
LUT5 #(
    .INIT(32'h22222220)) 
     al_prevent_i_1
       (.I0(Q[0]),
        .I1(detect_start),
        .I2(n_0_gen_stop_reg),
        .I3(n_0_sm_stop_reg),
        .I4(n_0_al_prevent_reg),
        .O(n_0_al_prevent_i_1));
FDRE al_prevent_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_al_prevent_i_1),
        .Q(n_0_al_prevent_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000EA2A0000)) 
     arb_lost_i_1
       (.I0(arb_lost),
        .I1(arb_lost0),
        .I2(master_slave),
        .I3(n_0_msms_rst_i_i_2),
        .I4(Q[0]),
        .I5(n_0_msms_rst_i_i_3),
        .O(n_0_arb_lost_i_1));
FDRE arb_lost_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_arb_lost_i_1),
        .Q(arb_lost),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0002AAAA00000000)) 
     bit_cnt_en_i_1
       (.I0(bit_cnt_en3),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(state_reg[2]),
        .I5(state_reg[0]),
        .O(bit_cnt_en0));
FDRE bit_cnt_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bit_cnt_en0),
        .Q(bit_cnt_en),
        .R(SR));
FDRE bus_busy_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bb),
        .Q(bus_busy_d1),
        .R(SR));
LUT4 #(
    .INIT(16'h00E0)) 
     bus_busy_i_1
       (.I0(Bb),
        .I1(detect_start),
        .I2(Q[0]),
        .I3(n_0_detect_stop_reg),
        .O(n_0_bus_busy_i_1));
FDRE bus_busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_bus_busy_i_1),
        .Q(Bb),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAAAAAA33333000)) 
     \cr_i[2]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(Rsta_rst),
        .I2(p_3_in),
        .I3(firstDynStartSeen),
        .I4(Q[3]),
        .I5(E),
        .O(O6[1]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h00000010)) 
     \cr_i[2]_i_2 
       (.I0(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[5] ),
        .I2(\n_0_cr_i[2]_i_3 ),
        .I3(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[7] ),
        .O(Rsta_rst));
LUT6 #(
    .INIT(64'h0000000000040000)) 
     \cr_i[2]_i_3 
       (.I0(\n_0_FSM_onehot_scl_state_reg[4] ),
        .I1(Q[3]),
        .I2(\n_0_FSM_onehot_scl_state_reg[1] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[9] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I5(\n_0_FSM_onehot_scl_state_reg[2] ),
        .O(\n_0_cr_i[2]_i_3 ));
LUT6 #(
    .INIT(64'hAAAAAAAA33330300)) 
     \cr_i[5]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(Msms_rst),
        .I2(Bb),
        .I3(p_4_in),
        .I4(Q[1]),
        .I5(E),
        .O(O6[0]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
     \cr_i[5]_i_2 
       (.I0(rxCntDone),
        .I1(dynamic_MSMS),
        .I2(Tx_data_exists),
        .I3(I11),
        .I4(msms_rst_i),
        .I5(n_0_sm_stop_reg),
        .O(Msms_rst));
FDRE \data_i2c_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(n_8_I2CDATA_REG),
        .Q(O7[0]),
        .R(SR));
FDRE \data_i2c_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(n_7_I2CDATA_REG),
        .Q(O7[1]),
        .R(SR));
FDRE \data_i2c_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(n_6_I2CDATA_REG),
        .Q(O7[2]),
        .R(SR));
FDRE \data_i2c_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(n_5_I2CDATA_REG),
        .Q(O7[3]),
        .R(SR));
FDRE \data_i2c_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(n_4_I2CDATA_REG),
        .Q(O7[4]),
        .R(SR));
FDRE \data_i2c_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(n_3_I2CDATA_REG),
        .Q(O7[5]),
        .R(SR));
FDRE \data_i2c_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(n_2_I2CDATA_REG),
        .Q(O7[6]),
        .R(SR));
FDRE \data_i2c_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(data_i2c_i0),
        .D(shift_reg),
        .Q(O7[7]),
        .R(SR));
LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
     detect_start_i_1
       (.I0(detect_start),
        .I1(sda_clean),
        .I2(sda_rin_d1),
        .I3(scl_clean),
        .I4(Q[0]),
        .I5(p_1_in25_in),
        .O(n_0_detect_start_i_1));
FDRE detect_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_detect_start_i_1),
        .Q(detect_start),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000F2020000)) 
     detect_stop_i_1
       (.I0(n_0_detect_stop_reg),
        .I1(n_0_detect_stop_i_2),
        .I2(I21),
        .I3(scl_clean),
        .I4(Q[0]),
        .I5(detect_start),
        .O(n_0_detect_stop_i_1));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h2)) 
     detect_stop_i_2
       (.I0(msms_d1),
        .I1(msms_d2),
        .O(n_0_detect_stop_i_2));
FDRE detect_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_detect_stop_i_1),
        .Q(n_0_detect_stop_reg),
        .R(1'b0));
FDRE dtc_i_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtc_i),
        .Q(dtc_i_d1),
        .R(SR));
FDRE dtc_i_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dtc_i_d1),
        .Q(dtc_i_d2),
        .R(SR));
FDRE dtc_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_3_BITCNT),
        .Q(dtc_i),
        .R(1'b0));
FDRE dtre_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sr_i),
        .Q(dtre_d1),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h22A200A0)) 
     gen_start_i_1
       (.I0(Q[0]),
        .I1(detect_start),
        .I2(msms_d1),
        .I3(msms_d2),
        .I4(n_0_gen_start_reg),
        .O(n_0_gen_start_i_1));
FDRE gen_start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_gen_start_i_1),
        .Q(n_0_gen_start_reg),
        .R(1'b0));
FDRE gen_stop_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_gen_stop_reg),
        .Q(gen_stop_d1),
        .R(SR));
LUT6 #(
    .INIT(64'h22222A2200000A00)) 
     gen_stop_i_1
       (.I0(Q[0]),
        .I1(n_0_detect_stop_reg),
        .I2(msms_d1),
        .I3(msms_d2),
        .I4(arb_lost),
        .I5(n_0_gen_stop_reg),
        .O(n_0_gen_stop_i_1));
FDRE gen_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_gen_stop_i_1),
        .Q(n_0_gen_stop_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT2 #(
    .INIT(4'h8)) 
     i2c_header_en_i_1
       (.I0(p_1_in25_in),
        .I1(scl_rising_edge),
        .O(i2c_header_en0));
FDRE i2c_header_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(i2c_header_en0),
        .Q(i2c_header_en),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'h00C0A0A0)) 
     master_slave_i_1
       (.I0(msms_d1),
        .I1(master_slave),
        .I2(Q[0]),
        .I3(arb_lost),
        .I4(Bb),
        .O(n_0_master_slave_i_1));
FDRE master_slave_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_master_slave_i_1),
        .Q(master_slave),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     msms_d1_i_1
       (.I0(n_0_msms_d1_i_2),
        .I1(msms_rst_i),
        .O(n_0_msms_d1_i_1));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFAA)) 
     msms_d1_i_2
       (.I0(Q[1]),
        .I1(dtc_i_d2),
        .I2(dtc_i_d1),
        .I3(msms_d1),
        .I4(n_0_txer_i_reg),
        .I5(Msms_set),
        .O(n_0_msms_d1_i_2));
FDRE msms_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_msms_d1_i_1),
        .Q(msms_d1),
        .R(SR));
FDRE msms_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(msms_d1),
        .Q(msms_d2),
        .R(SR));
LUT6 #(
    .INIT(64'h0C000A0A00000000)) 
     msms_rst_i_i_1
       (.I0(msms_rst_i),
        .I1(n_0_msms_rst_i_i_2),
        .I2(n_0_msms_rst_i_i_3),
        .I3(arb_lost0),
        .I4(master_slave),
        .I5(Q[0]),
        .O(n_0_msms_rst_i_i_1));
LUT2 #(
    .INIT(4'h2)) 
     msms_rst_i_i_2
       (.I0(sda_cout_reg),
        .I1(sda_clean),
        .O(n_0_msms_rst_i_i_2));
LUT5 #(
    .INIT(32'h00010000)) 
     msms_rst_i_i_3
       (.I0(\n_0_FSM_onehot_scl_state_reg[4] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I4(n_0_msms_rst_i_i_5),
        .O(n_0_msms_rst_i_i_3));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hA8)) 
     msms_rst_i_i_4
       (.I0(scl_rising_edge),
        .I1(p_0_in),
        .I2(p_1_in25_in),
        .O(arb_lost0));
LUT5 #(
    .INIT(32'h00000001)) 
     msms_rst_i_i_5
       (.I0(\n_0_FSM_onehot_scl_state_reg[2] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[4] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[5] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[6] ),
        .O(n_0_msms_rst_i_i_5));
FDRE msms_rst_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_msms_rst_i_i_1),
        .Q(msms_rst_i),
        .R(1'b0));
LUT3 #(
    .INIT(8'h20)) 
     new_rcv_dta_i_i_1
       (.I0(bit_cnt_en3),
        .I1(Ro_prev),
        .I2(n_0_new_rcv_dta_i_i_2),
        .O(data_i2c_i0));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     new_rcv_dta_i_i_2
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .I5(\n_0_FSM_onehot_state_reg[4] ),
        .O(n_0_new_rcv_dta_i_i_2));
FDRE new_rcv_dta_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data_i2c_i0),
        .Q(New_rcv_dta),
        .R(SR));
LUT3 #(
    .INIT(8'h80)) 
     rdCntrFrmTxFifo_i_1
       (.I0(earlyAckHdr),
        .I1(Tx_data_exists),
        .I2(callingReadAccess),
        .O(rdCntrFrmTxFifo0));
LUT6 #(
    .INIT(64'h222F2F2F22202020)) 
     rdy_new_xmt_i_i_1
       (.I0(shift_reg_ld_d1),
        .I1(shift_reg_ld),
        .I2(p_0_in),
        .I3(p_1_in25_in),
        .I4(Q[1]),
        .I5(rdy_new_xmt_i),
        .O(n_0_rdy_new_xmt_i_i_1));
FDRE rdy_new_xmt_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_rdy_new_xmt_i_i_1),
        .Q(rdy_new_xmt_i),
        .R(SR));
FDRE ro_prev_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Ro_prev),
        .Q(ro_prev_d1),
        .R(SR));
FDRE rsta_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(rsta_d1),
        .R(SR));
FDRE rsta_tx_under_prev_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(O2),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
     scl_cout_reg_i_1
       (.I0(n_0_scl_cout_reg_i_2),
        .I1(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[9] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I5(Ro_prev),
        .O(n_0_scl_cout_reg_i_1));
LUT5 #(
    .INIT(32'hFFFFFEEF)) 
     scl_cout_reg_i_2
       (.I0(\n_0_FSM_onehot_scl_state_reg[2] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[4] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[5] ),
        .I4(\n_0_FSM_onehot_scl_state_reg[1] ),
        .O(n_0_scl_cout_reg_i_2));
FDSE scl_cout_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_scl_cout_reg_i_1),
        .Q(scl_cout_reg),
        .S(SR));
FDRE scl_f_edg_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bit_cnt_en3),
        .Q(scl_f_edg_d1),
        .R(SR));
FDRE scl_f_edg_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_f_edg_d1),
        .Q(scl_f_edg_d2),
        .R(SR));
FDRE scl_f_edg_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_f_edg_d2),
        .Q(scl_f_edg_d3),
        .R(SR));
LUT2 #(
    .INIT(4'h2)) 
     scl_falling_edge_i_1
       (.I0(scl_rin_d1),
        .I1(scl_clean),
        .O(n_0_scl_falling_edge_i_1));
FDRE scl_falling_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_scl_falling_edge_i_1),
        .Q(bit_cnt_en3),
        .R(SR));
FDRE scl_rin_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(scl_clean),
        .Q(scl_rin_d1),
        .R(1'b0));
FDRE scl_rising_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(scl_rising_edge),
        .R(SR));
LUT4 #(
    .INIT(16'h0010)) 
     scl_t_INST_0
       (.I0(Ro_prev),
        .I1(O2),
        .I2(scl_cout_reg),
        .I3(n_0_sda_setup_reg),
        .O(scl_t));
LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
     sda_cout_reg_i_4
       (.I0(n_0_sm_stop_reg),
        .I1(n_0_gen_stop_reg),
        .I2(n_0_stop_scl_reg_i_4),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .I5(\n_0_FSM_onehot_state_reg[5] ),
        .O(sda_cout1));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     sda_cout_reg_i_6
       (.I0(\n_0_FSM_onehot_scl_state_reg[8] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[3] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[9] ),
        .I3(\n_0_FSM_onehot_scl_state_reg[4] ),
        .O(n_0_sda_cout_reg_i_6));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT2 #(
    .INIT(4'hE)) 
     sda_cout_reg_i_7
       (.I0(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[7] ),
        .O(n_0_sda_cout_reg_i_7));
FDSE sda_cout_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_10_CLKCNT),
        .Q(sda_cout_reg),
        .S(SR));
FDRE sda_rin_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_clean),
        .Q(sda_rin_d1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     sda_sample_i_1
       (.I0(sda_clean),
        .I1(scl_rising_edge),
        .I2(sda_sample),
        .O(n_0_sda_sample_i_1));
FDRE sda_sample_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_sda_sample_i_1),
        .Q(sda_sample),
        .R(SR));
FDRE sda_setup_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_1_SETUP_CNT),
        .Q(n_0_sda_setup_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'h55455040)) 
     sda_t_INST_0
       (.I0(stop_scl_reg),
        .I1(sda_cout_reg),
        .I2(master_slave),
        .I3(arb_lost),
        .I4(n_0_slave_sda_reg),
        .O(sda_t));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'hFF80)) 
     shift_reg_en_i_1
       (.I0(master_slave),
        .I1(p_1_in25_in),
        .I2(scl_rising_edge),
        .I3(n_0_shift_reg_en_i_2),
        .O(shift_reg_en0));
LUT5 #(
    .INIT(32'h0000F888)) 
     shift_reg_en_i_2
       (.I0(p_1_in24_in),
        .I1(scl_rising_edge),
        .I2(p_0_in),
        .I3(scl_f_edg_d2),
        .I4(detect_start),
        .O(n_0_shift_reg_en_i_2));
FDRE shift_reg_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_en0),
        .Q(shift_reg_en),
        .R(SR));
FDRE shift_reg_ld_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_ld),
        .Q(shift_reg_ld_d1),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     shift_reg_ld_i_3
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .O(state_reg[2]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     shift_reg_ld_i_4
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .O(state_reg[1]));
FDRE shift_reg_ld_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(shift_reg_ld0),
        .Q(shift_reg_ld),
        .R(SR));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     slave_sda_i_3
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .I5(\n_0_FSM_onehot_state_reg[4] ),
        .O(n_0_slave_sda_i_3));
FDSE slave_sda_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_4_I2CHEADER_REG),
        .Q(n_0_slave_sda_reg),
        .S(SR));
LUT6 #(
    .INIT(64'h00000000AEEAA22A)) 
     sm_stop_i_1
       (.I0(n_0_sm_stop_reg),
        .I1(n_0_sm_stop_i_2),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(master_slave),
        .I5(\n_0_FSM_onehot_state[7]_i_1 ),
        .O(n_0_sm_stop_i_1));
LUT6 #(
    .INIT(64'h4044404000000000)) 
     sm_stop_i_2
       (.I0(arb_lost),
        .I1(master_slave),
        .I2(scl_f_edg_d2),
        .I3(Ro_prev),
        .I4(ro_prev_d1),
        .I5(n_0_sm_stop_i_3),
        .O(n_0_sm_stop_i_2));
LUT6 #(
    .INIT(64'h0000000000010000)) 
     sm_stop_i_3
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .I4(sda_sample),
        .I5(\n_0_FSM_onehot_state_reg[1] ),
        .O(n_0_sm_stop_i_3));
FDRE sm_stop_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_sm_stop_i_1),
        .Q(n_0_sm_stop_reg),
        .R(1'b0));
FDRE srw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_8_I2CHEADER_REG),
        .Q(O1[1]),
        .R(SR));
LUT6 #(
    .INIT(64'hEEE0EEE0EEE00000)) 
     stop_scl_reg_i_2
       (.I0(\n_0_FSM_onehot_scl_state_reg[5] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[6] ),
        .I2(state_reg[0]),
        .I3(n_0_stop_scl_reg_i_4),
        .I4(n_0_gen_stop_reg),
        .I5(n_0_sm_stop_reg),
        .O(n_0_stop_scl_reg_i_2));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     stop_scl_reg_i_4
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .O(n_0_stop_scl_reg_i_4));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'h01)) 
     stop_scl_reg_i_5
       (.I0(\n_0_FSM_onehot_scl_state_reg[9] ),
        .I1(\n_0_FSM_onehot_scl_state_reg[7] ),
        .I2(\n_0_FSM_onehot_scl_state_reg[6] ),
        .O(n_0_stop_scl_reg_i_5));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hFB)) 
     stop_scl_reg_i_7
       (.I0(Q[3]),
        .I1(stop_scl_reg),
        .I2(arb_lost),
        .O(n_0_stop_scl_reg_i_7));
FDRE stop_scl_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_9_CLKCNT),
        .Q(stop_scl_reg),
        .R(SR));
FDRE tx_under_prev_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_under_prev),
        .Q(tx_under_prev_d1),
        .R(SR));
LUT6 #(
    .INIT(64'hAAAA0020AAAA0000)) 
     tx_under_prev_i_i_1
       (.I0(Q[0]),
        .I1(p_1_in24_in),
        .I2(sr_i),
        .I3(n_0_tx_under_prev_i_i_2),
        .I4(tx_under_prev_i0),
        .I5(Tx_under_prev),
        .O(n_0_tx_under_prev_i_i_1));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     tx_under_prev_i_i_2
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .I5(\n_0_FSM_onehot_state_reg[4] ),
        .O(n_0_tx_under_prev_i_i_2));
LUT6 #(
    .INIT(64'h4100000000000000)) 
     tx_under_prev_i_i_3
       (.I0(n_0_gen_stop_reg),
        .I1(Aas),
        .I2(O1[1]),
        .I3(tx_under_prev_i4),
        .I4(bit_cnt_en3),
        .I5(sr_i),
        .O(tx_under_prev_i0));
FDRE tx_under_prev_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_tx_under_prev_i_i_1),
        .Q(Tx_under_prev),
        .R(1'b0));
LUT6 #(
    .INIT(64'hE200E2000000E200)) 
     txer_edge_i_1
       (.I0(D[2]),
        .I1(txer_i),
        .I2(sda_sample),
        .I3(Q[0]),
        .I4(scl_f_edg_d2),
        .I5(bit_cnt_en3),
        .O(n_0_txer_edge_i_1));
LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
     txer_edge_i_2
       (.I0(bit_cnt_en3),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(state_reg[2]),
        .I5(state_reg[0]),
        .O(txer_i));
FDRE txer_edge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_txer_edge_i_1),
        .Q(D[2]),
        .R(1'b0));
LUT5 #(
    .INIT(32'hBBBF8880)) 
     txer_i_i_1
       (.I0(sda_sample),
        .I1(bit_cnt_en3),
        .I2(tx_under_prev_i4),
        .I3(n_0_new_rcv_dta_i_i_2),
        .I4(n_0_txer_i_reg),
        .O(n_0_txer_i_i_1));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'h00000032)) 
     txer_i_i_2
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .O(tx_under_prev_i4));
FDRE txer_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_txer_i_i_1),
        .Q(n_0_txer_i_reg),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "interrupt_control" *) 
module axi_iic_0_interrupt_control
   (O1,
    p_1_in17_in,
    p_1_in14_in,
    p_1_in11_in,
    p_1_in8_in,
    p_1_in5_in,
    p_1_in2_in,
    O2,
    ipif_glbl_irpt_enable_reg,
    Q,
    iic2intc_irpt,
    I1,
    irpt_wrack,
    s_axi_aclk,
    I2,
    I3,
    p_27_in,
    s_axi_wdata,
    IIC2Bus_IntrEvent,
    E);
  output O1;
  output p_1_in17_in;
  output p_1_in14_in;
  output p_1_in11_in;
  output p_1_in8_in;
  output p_1_in5_in;
  output p_1_in2_in;
  output O2;
  output ipif_glbl_irpt_enable_reg;
  output [7:0]Q;
  output iic2intc_irpt;
  input I1;
  input irpt_wrack;
  input s_axi_aclk;
  input I2;
  input I3;
  input p_27_in;
  input [7:0]s_axi_wdata;
  input [0:7]IIC2Bus_IntrEvent;
  input [0:0]E;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire [0:7]IIC2Bus_IntrEvent;
  wire O1;
  wire O2;
  wire [7:0]Q;
  wire iic2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 ;
  wire \n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 ;
  wire n_0_iic2intc_irpt_INST_0_i_1;
  wire n_0_iic2intc_irpt_INST_0_i_2;
  wire n_0_iic2intc_irpt_INST_0_i_3;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_27_in;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;

LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[0]),
        .I4(O1),
        .I5(IIC2Bus_IntrEvent[0]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 ),
        .Q(O1),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[1]),
        .I4(p_1_in17_in),
        .I5(IIC2Bus_IntrEvent[1]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 ),
        .Q(p_1_in17_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[2]),
        .I4(p_1_in14_in),
        .I5(IIC2Bus_IntrEvent[2]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1 ),
        .Q(p_1_in14_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[3]),
        .I4(p_1_in11_in),
        .I5(IIC2Bus_IntrEvent[3]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1 ),
        .Q(p_1_in11_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[4]),
        .I4(p_1_in8_in),
        .I5(IIC2Bus_IntrEvent[4]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1 ),
        .Q(p_1_in8_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[5]),
        .I4(p_1_in5_in),
        .I5(IIC2Bus_IntrEvent[5]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1 ),
        .Q(p_1_in5_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[6]),
        .I4(p_1_in2_in),
        .I5(IIC2Bus_IntrEvent[6]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1 ),
        .Q(p_1_in2_in),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFF1000)) 
     \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 
       (.I0(irpt_wrack_d1),
        .I1(I3),
        .I2(p_27_in),
        .I3(s_axi_wdata[7]),
        .I4(O2),
        .I5(IIC2Bus_IntrEvent[7]),
        .O(\n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 ));
FDRE \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1 ),
        .Q(O2),
        .R(I1));
LUT4 #(
    .INIT(16'hAAA8)) 
     iic2intc_irpt_INST_0
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(n_0_iic2intc_irpt_INST_0_i_1),
        .I2(n_0_iic2intc_irpt_INST_0_i_2),
        .I3(n_0_iic2intc_irpt_INST_0_i_3),
        .O(iic2intc_irpt));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     iic2intc_irpt_INST_0_i_1
       (.I0(Q[3]),
        .I1(p_1_in11_in),
        .I2(p_1_in5_in),
        .I3(Q[5]),
        .I4(p_1_in8_in),
        .I5(Q[4]),
        .O(n_0_iic2intc_irpt_INST_0_i_1));
LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
     iic2intc_irpt_INST_0_i_2
       (.I0(Q[6]),
        .I1(p_1_in2_in),
        .I2(O1),
        .I3(Q[0]),
        .I4(O2),
        .I5(Q[7]),
        .O(n_0_iic2intc_irpt_INST_0_i_2));
LUT4 #(
    .INIT(16'hF888)) 
     iic2intc_irpt_INST_0_i_3
       (.I0(Q[2]),
        .I1(p_1_in14_in),
        .I2(Q[1]),
        .I3(p_1_in17_in),
        .O(n_0_iic2intc_irpt_INST_0_i_3));
FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(Q[5]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[6]),
        .R(I1));
FDRE \ip_irpt_enable_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Q[7]),
        .R(I1));
FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(I1));
FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(I1));
endmodule

(* ORIG_REF_NAME = "reg_interface" *) 
module axi_iic_0_reg_interface
   (IIC2Bus_IntrEvent,
    Q,
    D,
    Tx_fifo_wr,
    Tx_fifo_rd,
    Tx_fifo_rst,
    new_rcv_dta_d1,
    Rc_fifo_wr,
    Rc_fifo_rd,
    O1,
    gpo,
    Msms_set,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    S,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    I9,
    I10,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    ctrl_fifo_wr_i,
    O23,
    txFifoRd,
    SR,
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
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O42,
    O43,
    O44,
    I1,
    I2,
    s_axi_aclk,
    I3,
    rdy_new_xmt_i,
    New_rcv_dta,
    I4,
    Bus2IIC_RdCE,
    I5,
    Aas,
    I6,
    Rc_Data_Exists,
    Rc_addr,
    IIC2Bus_Data1,
    Bus2IIC_Addr,
    I7,
    s_axi_wdata,
    Rc_fifo_data,
    Tx_fifo_data,
    I8,
    I11,
    Tx_fifo_rd_d,
    Tx_fifo_wr_d,
    Rc_fifo_wr_d,
    Rc_fifo_rd_d,
    buffer_Empty,
    rdCntrFrmTxFifo,
    I12,
    buffer_Empty_0,
    Tx_data_exists,
    arb_lost,
    buffer_Empty_1,
    I13,
    Tx_addr,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_arvalid,
    I14,
    dtre_d1,
    rsta_d1,
    I15,
    firstDynStartSeen,
    p_3_in,
    E,
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
    I27);
  output [0:7]IIC2Bus_IntrEvent;
  output [5:0]Q;
  output [0:0]D;
  output Tx_fifo_wr;
  output Tx_fifo_rd;
  output Tx_fifo_rst;
  output new_rcv_dta_d1;
  output Rc_fifo_wr;
  output Rc_fifo_rd;
  output [0:0]O1;
  output [0:0]gpo;
  output Msms_set;
  output [1:0]O2;
  output O3;
  output O4;
  output [8:0]O5;
  output [8:0]O6;
  output [8:0]O7;
  output [8:0]O8;
  output [8:0]O9;
  output [8:0]O10;
  output [0:0]S;
  output [0:0]O11;
  output [0:0]O12;
  output [0:0]O13;
  output [0:0]O14;
  output [8:0]O15;
  output [0:0]O16;
  output [0:0]I9;
  output [0:0]I10;
  output [8:0]O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output ctrl_fifo_wr_i;
  output O23;
  output txFifoRd;
  output [0:0]SR;
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
  output O36;
  output O37;
  output O38;
  output O39;
  output O40;
  output O41;
  output [6:0]O42;
  output O43;
  output O44;
  input I1;
  input I2;
  input s_axi_aclk;
  input I3;
  input rdy_new_xmt_i;
  input New_rcv_dta;
  input I4;
  input [0:0]Bus2IIC_RdCE;
  input I5;
  input Aas;
  input I6;
  input Rc_Data_Exists;
  input [0:3]Rc_addr;
  input IIC2Bus_Data1;
  input [5:0]Bus2IIC_Addr;
  input I7;
  input [9:0]s_axi_wdata;
  input [0:7]Rc_fifo_data;
  input [0:7]Tx_fifo_data;
  input [0:0]I8;
  input [0:0]I11;
  input Tx_fifo_rd_d;
  input Tx_fifo_wr_d;
  input Rc_fifo_wr_d;
  input Rc_fifo_rd_d;
  input buffer_Empty;
  input rdCntrFrmTxFifo;
  input I12;
  input buffer_Empty_0;
  input Tx_data_exists;
  input arb_lost;
  input buffer_Empty_1;
  input I13;
  input [0:3]Tx_addr;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;
  input s_axi_arvalid;
  input [5:0]I14;
  input dtre_d1;
  input rsta_d1;
  input I15;
  input firstDynStartSeen;
  input p_3_in;
  input [0:0]E;
  input [2:0]I16;
  input [0:0]I17;
  input [0:0]I18;
  input [0:0]I19;
  input [0:0]I20;
  input [0:0]I21;
  input [0:0]I22;
  input [0:0]I23;
  input [0:0]I24;
  input [0:0]I25;
  input [0:0]I26;
  input [4:0]I27;

  wire Aas;
  wire [5:0]Bus2IIC_Addr;
  wire [0:0]Bus2IIC_RdCE;
  wire [0:6]Cr;
  wire [0:0]D;
  wire [0:0]E;
  wire I1;
  wire [0:0]I10;
  wire [0:0]I11;
  wire I12;
  wire I13;
  wire [5:0]I14;
  wire I15;
  wire [2:0]I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire [0:0]I22;
  wire [0:0]I23;
  wire [0:0]I24;
  wire [0:0]I25;
  wire [0:0]I26;
  wire [4:0]I27;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire [0:0]I8;
  wire [0:0]I9;
  wire IIC2Bus_Data1;
  wire [0:7]IIC2Bus_IntrEvent;
  wire Msms_set;
  wire New_rcv_dta;
  wire [0:0]O1;
  wire [8:0]O10;
  wire [0:0]O11;
  wire [0:0]O12;
  wire [0:0]O13;
  wire [0:0]O14;
  wire [8:0]O15;
  wire [0:0]O16;
  wire [8:0]O17;
  wire O18;
  wire O19;
  wire [1:0]O2;
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
  wire O36;
  wire O37;
  wire O38;
  wire O39;
  wire O4;
  wire O40;
  wire O41;
  wire [6:0]O42;
  wire O43;
  wire O44;
  wire [8:0]O5;
  wire [8:0]O6;
  wire [8:0]O7;
  wire [8:0]O8;
  wire [8:0]O9;
  wire [5:0]Q;
  wire Rc_Data_Exists;
  wire [0:3]Rc_addr;
  wire [0:7]Rc_fifo_data;
  wire Rc_fifo_rd;
  wire Rc_fifo_rd_d;
  wire Rc_fifo_wr;
  wire Rc_fifo_wr_d;
  wire [0:0]S;
  wire [0:0]SR;
  wire [0:3]Tx_addr;
  wire Tx_data_exists;
  wire [0:7]Tx_fifo_data;
  wire Tx_fifo_rd;
  wire Tx_fifo_rd_d;
  wire Tx_fifo_rst;
  wire Tx_fifo_wr;
  wire Tx_fifo_wr_d;
  wire arb_lost;
  wire buffer_Empty;
  wire buffer_Empty_0;
  wire buffer_Empty_1;
  wire ctrl_fifo_wr_i;
  wire dtre_d1;
  wire firstDynStartSeen;
  wire [0:0]gpo;
  wire msms_d1;
  wire \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ;
  wire \n_0_RD_FIFO_CNTRL.ro_prev_i_i_1 ;
  wire \n_0_RD_FIFO_CNTRL.ro_prev_i_i_2 ;
  wire \n_0_RD_FIFO_CNTRL.ro_prev_i_i_3 ;
  wire n_0_msms_set_i_i_1;
  wire \n_0_s_axi_rdata_i[0]_i_10 ;
  wire \n_0_s_axi_rdata_i[0]_i_6 ;
  wire \n_0_s_axi_rdata_i[0]_i_7 ;
  wire \n_0_s_axi_rdata_i[0]_i_8 ;
  wire \n_0_s_axi_rdata_i[0]_i_9 ;
  wire \n_0_s_axi_rdata_i[1]_i_10 ;
  wire \n_0_s_axi_rdata_i[1]_i_5 ;
  wire \n_0_s_axi_rdata_i[1]_i_6 ;
  wire \n_0_s_axi_rdata_i[1]_i_7 ;
  wire \n_0_s_axi_rdata_i[1]_i_8 ;
  wire \n_0_s_axi_rdata_i[1]_i_9 ;
  wire \n_0_s_axi_rdata_i[2]_i_10 ;
  wire \n_0_s_axi_rdata_i[2]_i_5 ;
  wire \n_0_s_axi_rdata_i[2]_i_6 ;
  wire \n_0_s_axi_rdata_i[2]_i_7 ;
  wire \n_0_s_axi_rdata_i[2]_i_8 ;
  wire \n_0_s_axi_rdata_i[2]_i_9 ;
  wire \n_0_s_axi_rdata_i[3]_i_10 ;
  wire \n_0_s_axi_rdata_i[3]_i_11 ;
  wire \n_0_s_axi_rdata_i[3]_i_5 ;
  wire \n_0_s_axi_rdata_i[3]_i_6 ;
  wire \n_0_s_axi_rdata_i[3]_i_7 ;
  wire \n_0_s_axi_rdata_i[3]_i_9 ;
  wire \n_0_s_axi_rdata_i[4]_i_10 ;
  wire \n_0_s_axi_rdata_i[4]_i_5 ;
  wire \n_0_s_axi_rdata_i[4]_i_6 ;
  wire \n_0_s_axi_rdata_i[4]_i_7 ;
  wire \n_0_s_axi_rdata_i[4]_i_8 ;
  wire \n_0_s_axi_rdata_i[4]_i_9 ;
  wire \n_0_s_axi_rdata_i[5]_i_10 ;
  wire \n_0_s_axi_rdata_i[5]_i_5 ;
  wire \n_0_s_axi_rdata_i[5]_i_6 ;
  wire \n_0_s_axi_rdata_i[5]_i_7 ;
  wire \n_0_s_axi_rdata_i[5]_i_8 ;
  wire \n_0_s_axi_rdata_i[5]_i_9 ;
  wire \n_0_s_axi_rdata_i[6]_i_10 ;
  wire \n_0_s_axi_rdata_i[6]_i_5 ;
  wire \n_0_s_axi_rdata_i[6]_i_6 ;
  wire \n_0_s_axi_rdata_i[6]_i_7 ;
  wire \n_0_s_axi_rdata_i[6]_i_8 ;
  wire \n_0_s_axi_rdata_i[6]_i_9 ;
  wire \n_0_s_axi_rdata_i[7]_i_10 ;
  wire \n_0_s_axi_rdata_i[7]_i_11 ;
  wire \n_0_s_axi_rdata_i[7]_i_12 ;
  wire \n_0_s_axi_rdata_i[7]_i_7 ;
  wire \n_0_s_axi_rdata_i[7]_i_8 ;
  wire \n_0_s_axi_rdata_i[7]_i_9 ;
  wire \n_0_s_axi_rdata_i[8]_i_2 ;
  wire \n_0_s_axi_rdata_i[8]_i_3 ;
  wire \n_0_s_axi_rdata_i[9]_i_3 ;
  wire \n_0_s_axi_rdata_i[9]_i_5 ;
  wire new_rcv_dta_d1;
  wire p_1_in;
  wire p_1_in4_in;
  wire p_1_in6_in;
  wire p_3_in;
  wire rdCntrFrmTxFifo;
  wire rdy_new_xmt_i;
  wire rsta_d1;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire [9:0]s_axi_wdata;
  wire [1:7]sr_i;
  wire [9:9]timing_param_tbuf_i;
  wire [9:9]timing_param_thddat_i;
  wire [9:9]timing_param_thdsta_i;
  wire [9:9]timing_param_thigh_i;
  wire [9:9]timing_param_tlow_i;
  wire [9:9]timing_param_tsudat_i;
  wire [9:9]timing_param_tsusta_i;
  wire [9:9]timing_param_tsusto_i;
  wire txFifoRd;

(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .O(O19));
LUT2 #(
    .INIT(4'h2)) 
     \Addr_Counters[0].MUXCY_L_I_i_4__0 
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .O(O20));
LUT2 #(
    .INIT(4'h2)) 
     \Addr_Counters[0].MUXCY_L_I_i_5 
       (.I0(Rc_fifo_rd),
        .I1(Rc_fifo_rd_d),
        .O(O21));
LUT6 #(
    .INIT(64'hBFBFBBBF88888888)) 
     Data_Exists_DFF_i_1
       (.I0(ctrl_fifo_wr_i),
        .I1(buffer_Empty),
        .I2(rdCntrFrmTxFifo),
        .I3(Tx_fifo_rd),
        .I4(Tx_fifo_rd_d),
        .I5(I12),
        .O(O22));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT5 #(
    .INIT(32'h2FFF2020)) 
     Data_Exists_DFF_i_1__0
       (.I0(Tx_fifo_wr),
        .I1(Tx_fifo_wr_d),
        .I2(buffer_Empty_0),
        .I3(txFifoRd),
        .I4(Tx_data_exists),
        .O(O23));
LUT6 #(
    .INIT(64'hFF2FFFFF20202020)) 
     Data_Exists_DFF_i_1__1
       (.I0(Rc_fifo_wr),
        .I1(Rc_fifo_wr_d),
        .I2(buffer_Empty_1),
        .I3(Rc_fifo_rd_d),
        .I4(Rc_fifo_rd),
        .I5(Rc_Data_Exists),
        .O(O25));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'hFFF4)) 
     Data_Exists_DFF_i_2__1
       (.I0(Tx_fifo_wr_d),
        .I1(Tx_fifo_wr),
        .I2(Tx_fifo_rst),
        .I3(I1),
        .O(ctrl_fifo_wr_i));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     Data_Exists_DFF_i_3
       (.I0(Tx_fifo_rd_d),
        .I1(Tx_fifo_rd),
        .I2(rdCntrFrmTxFifo),
        .O(txFifoRd));
FDRE \FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(IIC2Bus_IntrEvent[7]),
        .R(I1));
FDRE \FIFO_GEN_DTR.Tx_fifo_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rdy_new_xmt_i),
        .Q(Tx_fifo_rd),
        .R(I1));
FDSE \FIFO_GEN_DTR.Tx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Cr[6]),
        .Q(Tx_fifo_rst),
        .S(I1));
FDRE \FIFO_GEN_DTR.Tx_fifo_wr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I3),
        .Q(Tx_fifo_wr),
        .R(I1));
LUT3 #(
    .INIT(8'h02)) 
     \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(s_axi_wdata[9]),
        .I1(Tx_fifo_rst),
        .I2(I1),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \FIFO_RAM[1].SRL16E_I_i_1 
       (.I0(s_axi_wdata[8]),
        .I1(Tx_fifo_rst),
        .I2(I1),
        .O(O3));
LUT2 #(
    .INIT(4'h9)) 
     \FSM_onehot_scl_state[3]_i_4 
       (.I0(timing_param_thdsta_i),
        .I1(I8),
        .O(O14));
LUT2 #(
    .INIT(4'h9)) 
     \FSM_onehot_scl_state[5]_i_4 
       (.I0(timing_param_thddat_i),
        .I1(I8),
        .O(O13));
LUT2 #(
    .INIT(4'h9)) 
     \FSM_onehot_scl_state[6]_i_4 
       (.I0(timing_param_tlow_i),
        .I1(I8),
        .O(O16));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_scl_state[8]_i_3 
       (.I0(Q[4]),
        .I1(arb_lost),
        .O(O24));
LUT1 #(
    .INIT(2'h1)) 
     \FSM_onehot_scl_state[9]_i_1 
       (.I0(Q[0]),
        .O(SR));
LUT2 #(
    .INIT(4'h9)) 
     \FSM_onehot_scl_state[9]_i_11 
       (.I0(timing_param_tbuf_i),
        .I1(I8),
        .O(I9));
LUT2 #(
    .INIT(4'h9)) 
     \FSM_onehot_scl_state[9]_i_16 
       (.I0(timing_param_tsusta_i),
        .I1(I8),
        .O(O12));
LUT2 #(
    .INIT(4'h9)) 
     \FSM_onehot_scl_state[9]_i_20 
       (.I0(timing_param_tsusto_i),
        .I1(I8),
        .O(S));
LUT2 #(
    .INIT(4'h9)) 
     \FSM_onehot_scl_state[9]_i_24 
       (.I0(timing_param_thigh_i),
        .I1(I8),
        .O(O11));
FDRE \GPO_GEN.gpo_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I6),
        .Q(gpo),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I27[4]),
        .Q(IIC2Bus_IntrEvent[0]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I27[3]),
        .Q(IIC2Bus_IntrEvent[1]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I27[2]),
        .Q(IIC2Bus_IntrEvent[2]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(IIC2Bus_IntrEvent[3]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I27[1]),
        .Q(IIC2Bus_IntrEvent[4]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Aas),
        .Q(IIC2Bus_IntrEvent[5]),
        .R(I1));
FDRE \IIC2Bus_IntrEvent_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I27[0]),
        .Q(IIC2Bus_IntrEvent[6]),
        .R(I1));
FDRE \RD_FIFO_CNTRL.Rc_fifo_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus2IIC_RdCE),
        .Q(Rc_fifo_rd),
        .R(I1));
FDRE \RD_FIFO_CNTRL.Rc_fifo_wr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I4),
        .Q(Rc_fifo_wr),
        .R(I1));
FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[3]),
        .Q(p_1_in6_in),
        .R(I1));
FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[2]),
        .Q(p_1_in4_in),
        .R(I1));
FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[1]),
        .Q(p_1_in),
        .R(I1));
FDRE \RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I18),
        .D(s_axi_wdata[0]),
        .Q(\n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .R(I1));
LUT5 #(
    .INIT(32'h00200000)) 
     \RD_FIFO_CNTRL.ro_prev_i_i_1 
       (.I0(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_2 ),
        .I1(Msms_set),
        .I2(Rc_Data_Exists),
        .I3(I1),
        .I4(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_3 ),
        .O(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_1 ));
LUT4 #(
    .INIT(16'h9009)) 
     \RD_FIFO_CNTRL.ro_prev_i_i_2 
       (.I0(p_1_in4_in),
        .I1(Rc_addr[2]),
        .I2(p_1_in),
        .I3(Rc_addr[1]),
        .O(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_2 ));
LUT4 #(
    .INIT(16'h9009)) 
     \RD_FIFO_CNTRL.ro_prev_i_i_3 
       (.I0(\n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .I1(Rc_addr[0]),
        .I2(p_1_in6_in),
        .I3(Rc_addr[3]),
        .O(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_3 ));
FDRE \RD_FIFO_CNTRL.ro_prev_i_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_RD_FIFO_CNTRL.ro_prev_i_i_1 ),
        .Q(D),
        .R(1'b0));
FDRE \adr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[7]),
        .Q(O42[6]),
        .R(I1));
FDRE \adr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[6]),
        .Q(O42[5]),
        .R(I1));
FDRE \adr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[5]),
        .Q(O42[4]),
        .R(I1));
FDRE \adr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[4]),
        .Q(O42[3]),
        .R(I1));
FDRE \adr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[3]),
        .Q(O42[2]),
        .R(I1));
FDRE \adr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[2]),
        .Q(O42[1]),
        .R(I1));
FDRE \adr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I17),
        .D(s_axi_wdata[1]),
        .Q(O42[0]),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \cr_i[5]_i_4 
       (.I0(Tx_fifo_rd),
        .I1(Tx_fifo_rd_d),
        .O(O18));
FDRE \cr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(Cr[0]),
        .R(I1));
FDRE \cr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(Q[5]),
        .R(I1));
FDRE \cr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I16[2]),
        .Q(Q[4]),
        .R(I1));
FDRE \cr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(Q[3]),
        .R(I1));
FDRE \cr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I16[1]),
        .Q(Q[2]),
        .R(I1));
FDRE \cr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I16[0]),
        .Q(Q[1]),
        .R(I1));
FDRE \cr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Cr[6]),
        .R(I1));
FDRE \cr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(I1));
LUT4 #(
    .INIT(16'h00E0)) 
     firstDynStartSeen_i_1
       (.I0(firstDynStartSeen),
        .I1(p_3_in),
        .I2(Q[1]),
        .I3(Tx_fifo_rst),
        .O(O44));
FDRE msms_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(msms_d1),
        .R(I1));
LUT6 #(
    .INIT(64'h3032003000220000)) 
     msms_set_i_i_1
       (.I0(D),
        .I1(I1),
        .I2(I14[1]),
        .I3(Q[1]),
        .I4(msms_d1),
        .I5(Msms_set),
        .O(n_0_msms_set_i_i_1));
FDRE msms_set_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_msms_set_i_i_1),
        .Q(Msms_set),
        .R(1'b0));
FDRE new_rcv_dta_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(New_rcv_dta),
        .Q(new_rcv_dta_d1),
        .R(I1));
LUT6 #(
    .INIT(64'hA2A2A2A200A00000)) 
     rsta_tx_under_prev_i_1
       (.I0(Q[0]),
        .I1(dtre_d1),
        .I2(O1),
        .I3(rsta_d1),
        .I4(Q[4]),
        .I5(I15),
        .O(O43));
LUT6 #(
    .INIT(64'h0000000033E200E2)) 
     \s_axi_rdata_i[0]_i_10 
       (.I0(sr_i[7]),
        .I1(Bus2IIC_Addr[4]),
        .I2(O9[0]),
        .I3(Bus2IIC_Addr[3]),
        .I4(gpo),
        .I5(Bus2IIC_Addr[5]),
        .O(\n_0_s_axi_rdata_i[0]_i_10 ));
LUT6 #(
    .INIT(64'h00003B0B00000808)) 
     \s_axi_rdata_i[0]_i_4 
       (.I0(\n_0_s_axi_rdata_i[0]_i_6 ),
        .I1(Bus2IIC_Addr[1]),
        .I2(Bus2IIC_Addr[4]),
        .I3(O10[0]),
        .I4(Bus2IIC_Addr[5]),
        .I5(\n_0_s_axi_rdata_i[0]_i_7 ),
        .O(O26));
LUT6 #(
    .INIT(64'hB080B3B3B0808080)) 
     \s_axi_rdata_i[0]_i_5 
       (.I0(\n_0_s_axi_rdata_i[0]_i_8 ),
        .I1(Bus2IIC_Addr[1]),
        .I2(I13),
        .I3(\n_0_s_axi_rdata_i[0]_i_9 ),
        .I4(Bus2IIC_Addr[2]),
        .I5(\n_0_s_axi_rdata_i[0]_i_10 ),
        .O(O27));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \s_axi_rdata_i[0]_i_6 
       (.I0(O8[0]),
        .I1(Rc_addr[0]),
        .I2(Bus2IIC_Addr[2]),
        .I3(O7[0]),
        .I4(Bus2IIC_Addr[3]),
        .I5(Tx_fifo_data[7]),
        .O(\n_0_s_axi_rdata_i[0]_i_6 ));
LUT6 #(
    .INIT(64'h0033B8330033B800)) 
     \s_axi_rdata_i[0]_i_7 
       (.I0(O15[0]),
        .I1(Bus2IIC_Addr[2]),
        .I2(\n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7] ),
        .I3(Bus2IIC_Addr[3]),
        .I4(Bus2IIC_Addr[4]),
        .I5(Q[0]),
        .O(\n_0_s_axi_rdata_i[0]_i_7 ));
LUT5 #(
    .INIT(32'hB833B800)) 
     \s_axi_rdata_i[0]_i_8 
       (.I0(O6[0]),
        .I1(Bus2IIC_Addr[2]),
        .I2(O5[0]),
        .I3(Bus2IIC_Addr[3]),
        .I4(Rc_fifo_data[7]),
        .O(\n_0_s_axi_rdata_i[0]_i_8 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[0]_i_9 
       (.I0(O17[0]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_arvalid),
        .I4(Tx_addr[0]),
        .O(\n_0_s_axi_rdata_i[0]_i_9 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[1]_i_10 
       (.I0(O9[1]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(IIC2Bus_IntrEvent[5]),
        .O(\n_0_s_axi_rdata_i[1]_i_10 ));
LUT6 #(
    .INIT(64'hB080B3B3B0808080)) 
     \s_axi_rdata_i[1]_i_4 
       (.I0(\n_0_s_axi_rdata_i[1]_i_7 ),
        .I1(Bus2IIC_Addr[1]),
        .I2(I13),
        .I3(\n_0_s_axi_rdata_i[1]_i_8 ),
        .I4(Bus2IIC_Addr[2]),
        .I5(\n_0_s_axi_rdata_i[1]_i_9 ),
        .O(O28));
LUT6 #(
    .INIT(64'hAFFFBB00AFFFBBFF)) 
     \s_axi_rdata_i[1]_i_5 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Tx_addr[1]),
        .I2(O17[1]),
        .I3(Bus2IIC_Addr[2]),
        .I4(Bus2IIC_Addr[3]),
        .I5(\n_0_s_axi_rdata_i[1]_i_10 ),
        .O(\n_0_s_axi_rdata_i[1]_i_5 ));
LUT6 #(
    .INIT(64'hAFAFABFBFFFFABFB)) 
     \s_axi_rdata_i[1]_i_6 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Rc_fifo_data[6]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O5[1]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O6[1]),
        .O(\n_0_s_axi_rdata_i[1]_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \s_axi_rdata_i[1]_i_7 
       (.I0(O8[1]),
        .I1(Rc_addr[1]),
        .I2(Bus2IIC_Addr[2]),
        .I3(O7[1]),
        .I4(Bus2IIC_Addr[3]),
        .I5(Tx_fifo_data[6]),
        .O(\n_0_s_axi_rdata_i[1]_i_7 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[1]_i_8 
       (.I0(O15[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_arvalid),
        .I4(O42[0]),
        .O(\n_0_s_axi_rdata_i[1]_i_8 ));
LUT6 #(
    .INIT(64'h0000000033E200E2)) 
     \s_axi_rdata_i[1]_i_9 
       (.I0(Cr[6]),
        .I1(Bus2IIC_Addr[4]),
        .I2(O10[1]),
        .I3(Bus2IIC_Addr[3]),
        .I4(p_1_in),
        .I5(Bus2IIC_Addr[5]),
        .O(\n_0_s_axi_rdata_i[1]_i_9 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[2]_i_10 
       (.I0(O9[2]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(sr_i[5]),
        .O(\n_0_s_axi_rdata_i[2]_i_10 ));
LUT6 #(
    .INIT(64'hB080B3B3B0808080)) 
     \s_axi_rdata_i[2]_i_4 
       (.I0(\n_0_s_axi_rdata_i[2]_i_7 ),
        .I1(Bus2IIC_Addr[1]),
        .I2(I13),
        .I3(\n_0_s_axi_rdata_i[2]_i_8 ),
        .I4(Bus2IIC_Addr[2]),
        .I5(\n_0_s_axi_rdata_i[2]_i_9 ),
        .O(O30));
LUT6 #(
    .INIT(64'hAFFFBB00AFFFBBFF)) 
     \s_axi_rdata_i[2]_i_5 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Tx_addr[2]),
        .I2(O17[2]),
        .I3(Bus2IIC_Addr[2]),
        .I4(Bus2IIC_Addr[3]),
        .I5(\n_0_s_axi_rdata_i[2]_i_10 ),
        .O(\n_0_s_axi_rdata_i[2]_i_5 ));
LUT6 #(
    .INIT(64'hAFAFABFBFFFFABFB)) 
     \s_axi_rdata_i[2]_i_6 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Rc_fifo_data[5]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O5[2]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O6[2]),
        .O(\n_0_s_axi_rdata_i[2]_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \s_axi_rdata_i[2]_i_7 
       (.I0(O8[2]),
        .I1(Rc_addr[2]),
        .I2(Bus2IIC_Addr[2]),
        .I3(O7[2]),
        .I4(Bus2IIC_Addr[3]),
        .I5(Tx_fifo_data[5]),
        .O(\n_0_s_axi_rdata_i[2]_i_7 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[2]_i_8 
       (.I0(O15[2]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_arvalid),
        .I4(O42[1]),
        .O(\n_0_s_axi_rdata_i[2]_i_8 ));
LUT6 #(
    .INIT(64'h0000000033E200E2)) 
     \s_axi_rdata_i[2]_i_9 
       (.I0(Q[1]),
        .I1(Bus2IIC_Addr[4]),
        .I2(O10[2]),
        .I3(Bus2IIC_Addr[3]),
        .I4(p_1_in4_in),
        .I5(Bus2IIC_Addr[5]),
        .O(\n_0_s_axi_rdata_i[2]_i_9 ));
LUT6 #(
    .INIT(64'h0000000033E200E2)) 
     \s_axi_rdata_i[3]_i_10 
       (.I0(Q[2]),
        .I1(Bus2IIC_Addr[4]),
        .I2(O10[3]),
        .I3(Bus2IIC_Addr[3]),
        .I4(p_1_in6_in),
        .I5(Bus2IIC_Addr[5]),
        .O(\n_0_s_axi_rdata_i[3]_i_10 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[3]_i_11 
       (.I0(O9[3]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(sr_i[4]),
        .O(\n_0_s_axi_rdata_i[3]_i_11 ));
LUT6 #(
    .INIT(64'hB080B3B3B0808080)) 
     \s_axi_rdata_i[3]_i_4 
       (.I0(\n_0_s_axi_rdata_i[3]_i_7 ),
        .I1(Bus2IIC_Addr[1]),
        .I2(I13),
        .I3(\n_0_s_axi_rdata_i[3]_i_9 ),
        .I4(Bus2IIC_Addr[2]),
        .I5(\n_0_s_axi_rdata_i[3]_i_10 ),
        .O(O32));
LUT6 #(
    .INIT(64'hAFFFBB00AFFFBBFF)) 
     \s_axi_rdata_i[3]_i_5 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Tx_addr[3]),
        .I2(O17[3]),
        .I3(Bus2IIC_Addr[2]),
        .I4(Bus2IIC_Addr[3]),
        .I5(\n_0_s_axi_rdata_i[3]_i_11 ),
        .O(\n_0_s_axi_rdata_i[3]_i_5 ));
LUT6 #(
    .INIT(64'hAFAFABFBFFFFABFB)) 
     \s_axi_rdata_i[3]_i_6 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Rc_fifo_data[4]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O5[3]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O6[3]),
        .O(\n_0_s_axi_rdata_i[3]_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \s_axi_rdata_i[3]_i_7 
       (.I0(O8[3]),
        .I1(Rc_addr[3]),
        .I2(Bus2IIC_Addr[2]),
        .I3(O7[3]),
        .I4(Bus2IIC_Addr[3]),
        .I5(Tx_fifo_data[4]),
        .O(\n_0_s_axi_rdata_i[3]_i_7 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[3]_i_9 
       (.I0(O15[3]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_arvalid),
        .I4(O42[2]),
        .O(\n_0_s_axi_rdata_i[3]_i_9 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[4]_i_10 
       (.I0(O10[4]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(Q[3]),
        .O(\n_0_s_axi_rdata_i[4]_i_10 ));
LUT6 #(
    .INIT(64'h0000200F00002000)) 
     \s_axi_rdata_i[4]_i_5 
       (.I0(O17[4]),
        .I1(Bus2IIC_Addr[4]),
        .I2(Bus2IIC_Addr[2]),
        .I3(Bus2IIC_Addr[3]),
        .I4(Bus2IIC_Addr[5]),
        .I5(\n_0_s_axi_rdata_i[4]_i_9 ),
        .O(\n_0_s_axi_rdata_i[4]_i_5 ));
LUT6 #(
    .INIT(64'hA0A0A8080000A808)) 
     \s_axi_rdata_i[4]_i_6 
       (.I0(I13),
        .I1(Rc_fifo_data[3]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O5[4]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O6[4]),
        .O(\n_0_s_axi_rdata_i[4]_i_6 ));
LUT6 #(
    .INIT(64'hAFFFBB00AFFFBBFF)) 
     \s_axi_rdata_i[4]_i_7 
       (.I0(Bus2IIC_Addr[4]),
        .I1(O42[3]),
        .I2(O15[4]),
        .I3(Bus2IIC_Addr[2]),
        .I4(Bus2IIC_Addr[3]),
        .I5(\n_0_s_axi_rdata_i[4]_i_10 ),
        .O(\n_0_s_axi_rdata_i[4]_i_7 ));
LUT6 #(
    .INIT(64'hAFAFABFBFFFFABFB)) 
     \s_axi_rdata_i[4]_i_8 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Tx_fifo_data[3]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O7[4]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O8[4]),
        .O(\n_0_s_axi_rdata_i[4]_i_8 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[4]_i_9 
       (.I0(O9[4]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(sr_i[3]),
        .O(\n_0_s_axi_rdata_i[4]_i_9 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[5]_i_10 
       (.I0(O10[5]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(Q[4]),
        .O(\n_0_s_axi_rdata_i[5]_i_10 ));
LUT6 #(
    .INIT(64'h0000200F00002000)) 
     \s_axi_rdata_i[5]_i_5 
       (.I0(O17[5]),
        .I1(Bus2IIC_Addr[4]),
        .I2(Bus2IIC_Addr[2]),
        .I3(Bus2IIC_Addr[3]),
        .I4(Bus2IIC_Addr[5]),
        .I5(\n_0_s_axi_rdata_i[5]_i_9 ),
        .O(\n_0_s_axi_rdata_i[5]_i_5 ));
LUT6 #(
    .INIT(64'hA0A0A8080000A808)) 
     \s_axi_rdata_i[5]_i_6 
       (.I0(I13),
        .I1(Rc_fifo_data[2]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O5[5]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O6[5]),
        .O(\n_0_s_axi_rdata_i[5]_i_6 ));
LUT6 #(
    .INIT(64'hAFFFBB00AFFFBBFF)) 
     \s_axi_rdata_i[5]_i_7 
       (.I0(Bus2IIC_Addr[4]),
        .I1(O42[4]),
        .I2(O15[5]),
        .I3(Bus2IIC_Addr[2]),
        .I4(Bus2IIC_Addr[3]),
        .I5(\n_0_s_axi_rdata_i[5]_i_10 ),
        .O(\n_0_s_axi_rdata_i[5]_i_7 ));
LUT6 #(
    .INIT(64'hAFAFABFBFFFFABFB)) 
     \s_axi_rdata_i[5]_i_8 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Tx_fifo_data[2]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O7[5]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O8[5]),
        .O(\n_0_s_axi_rdata_i[5]_i_8 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[5]_i_9 
       (.I0(O9[5]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(sr_i[2]),
        .O(\n_0_s_axi_rdata_i[5]_i_9 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[6]_i_10 
       (.I0(O10[6]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(Q[5]),
        .O(\n_0_s_axi_rdata_i[6]_i_10 ));
LUT6 #(
    .INIT(64'h0000200F00002000)) 
     \s_axi_rdata_i[6]_i_5 
       (.I0(O17[6]),
        .I1(Bus2IIC_Addr[4]),
        .I2(Bus2IIC_Addr[2]),
        .I3(Bus2IIC_Addr[3]),
        .I4(Bus2IIC_Addr[5]),
        .I5(\n_0_s_axi_rdata_i[6]_i_9 ),
        .O(\n_0_s_axi_rdata_i[6]_i_5 ));
LUT6 #(
    .INIT(64'hA0A0A8080000A808)) 
     \s_axi_rdata_i[6]_i_6 
       (.I0(I13),
        .I1(Rc_fifo_data[1]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O5[6]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O6[6]),
        .O(\n_0_s_axi_rdata_i[6]_i_6 ));
LUT6 #(
    .INIT(64'hAFFFBB00AFFFBBFF)) 
     \s_axi_rdata_i[6]_i_7 
       (.I0(Bus2IIC_Addr[4]),
        .I1(O42[5]),
        .I2(O15[6]),
        .I3(Bus2IIC_Addr[2]),
        .I4(Bus2IIC_Addr[3]),
        .I5(\n_0_s_axi_rdata_i[6]_i_10 ),
        .O(\n_0_s_axi_rdata_i[6]_i_7 ));
LUT6 #(
    .INIT(64'hAFAFABFBFFFFABFB)) 
     \s_axi_rdata_i[6]_i_8 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Tx_fifo_data[1]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O7[6]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O8[6]),
        .O(\n_0_s_axi_rdata_i[6]_i_8 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[6]_i_9 
       (.I0(O9[6]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(sr_i[1]),
        .O(\n_0_s_axi_rdata_i[6]_i_9 ));
LUT6 #(
    .INIT(64'hAFAFABFBFFFFABFB)) 
     \s_axi_rdata_i[7]_i_10 
       (.I0(Bus2IIC_Addr[4]),
        .I1(Tx_fifo_data[0]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O7[7]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O8[7]),
        .O(\n_0_s_axi_rdata_i[7]_i_10 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[7]_i_11 
       (.I0(O9[7]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(O1),
        .O(\n_0_s_axi_rdata_i[7]_i_11 ));
LUT5 #(
    .INIT(32'hBBAF88A0)) 
     \s_axi_rdata_i[7]_i_12 
       (.I0(O10[7]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_arvalid),
        .I4(Cr[0]),
        .O(\n_0_s_axi_rdata_i[7]_i_12 ));
LUT6 #(
    .INIT(64'h0000200F00002000)) 
     \s_axi_rdata_i[7]_i_7 
       (.I0(O17[7]),
        .I1(Bus2IIC_Addr[4]),
        .I2(Bus2IIC_Addr[2]),
        .I3(Bus2IIC_Addr[3]),
        .I4(Bus2IIC_Addr[5]),
        .I5(\n_0_s_axi_rdata_i[7]_i_11 ),
        .O(\n_0_s_axi_rdata_i[7]_i_7 ));
LUT6 #(
    .INIT(64'hA0A0A8080000A808)) 
     \s_axi_rdata_i[7]_i_8 
       (.I0(I13),
        .I1(Rc_fifo_data[0]),
        .I2(Bus2IIC_Addr[3]),
        .I3(O5[7]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O6[7]),
        .O(\n_0_s_axi_rdata_i[7]_i_8 ));
LUT6 #(
    .INIT(64'hAFFFBB00AFFFBBFF)) 
     \s_axi_rdata_i[7]_i_9 
       (.I0(Bus2IIC_Addr[4]),
        .I1(O42[6]),
        .I2(O15[7]),
        .I3(Bus2IIC_Addr[2]),
        .I4(Bus2IIC_Addr[3]),
        .I5(\n_0_s_axi_rdata_i[7]_i_12 ),
        .O(\n_0_s_axi_rdata_i[7]_i_9 ));
LUT5 #(
    .INIT(32'h8A800000)) 
     \s_axi_rdata_i[8]_i_1 
       (.I0(IIC2Bus_Data1),
        .I1(\n_0_s_axi_rdata_i[8]_i_2 ),
        .I2(Bus2IIC_Addr[0]),
        .I3(\n_0_s_axi_rdata_i[8]_i_3 ),
        .I4(I7),
        .O(O2[0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \s_axi_rdata_i[8]_i_2 
       (.I0(O6[8]),
        .I1(O5[8]),
        .I2(Bus2IIC_Addr[1]),
        .I3(O17[8]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O9[8]),
        .O(\n_0_s_axi_rdata_i[8]_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \s_axi_rdata_i[8]_i_3 
       (.I0(O8[8]),
        .I1(O7[8]),
        .I2(Bus2IIC_Addr[1]),
        .I3(O15[8]),
        .I4(Bus2IIC_Addr[2]),
        .I5(O10[8]),
        .O(\n_0_s_axi_rdata_i[8]_i_3 ));
LUT5 #(
    .INIT(32'h8A800000)) 
     \s_axi_rdata_i[9]_i_1 
       (.I0(IIC2Bus_Data1),
        .I1(\n_0_s_axi_rdata_i[9]_i_3 ),
        .I2(Bus2IIC_Addr[0]),
        .I3(\n_0_s_axi_rdata_i[9]_i_5 ),
        .I4(I7),
        .O(O2[1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \s_axi_rdata_i[9]_i_3 
       (.I0(timing_param_thigh_i),
        .I1(timing_param_tsusto_i),
        .I2(Bus2IIC_Addr[1]),
        .I3(timing_param_tsudat_i),
        .I4(Bus2IIC_Addr[2]),
        .I5(timing_param_thddat_i),
        .O(\n_0_s_axi_rdata_i[9]_i_3 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \s_axi_rdata_i[9]_i_5 
       (.I0(timing_param_tbuf_i),
        .I1(timing_param_tsusta_i),
        .I2(Bus2IIC_Addr[1]),
        .I3(timing_param_thdsta_i),
        .I4(Bus2IIC_Addr[2]),
        .I5(timing_param_tlow_i),
        .O(\n_0_s_axi_rdata_i[9]_i_5 ));
MUXF7 \s_axi_rdata_i_reg[1]_i_3 
       (.I0(\n_0_s_axi_rdata_i[1]_i_5 ),
        .I1(\n_0_s_axi_rdata_i[1]_i_6 ),
        .O(O29),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[2]_i_3 
       (.I0(\n_0_s_axi_rdata_i[2]_i_5 ),
        .I1(\n_0_s_axi_rdata_i[2]_i_6 ),
        .O(O31),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[3]_i_3 
       (.I0(\n_0_s_axi_rdata_i[3]_i_5 ),
        .I1(\n_0_s_axi_rdata_i[3]_i_6 ),
        .O(O33),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[4]_i_3 
       (.I0(\n_0_s_axi_rdata_i[4]_i_5 ),
        .I1(\n_0_s_axi_rdata_i[4]_i_6 ),
        .O(O35),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[4]_i_4 
       (.I0(\n_0_s_axi_rdata_i[4]_i_7 ),
        .I1(\n_0_s_axi_rdata_i[4]_i_8 ),
        .O(O34),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[5]_i_3 
       (.I0(\n_0_s_axi_rdata_i[5]_i_5 ),
        .I1(\n_0_s_axi_rdata_i[5]_i_6 ),
        .O(O37),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[5]_i_4 
       (.I0(\n_0_s_axi_rdata_i[5]_i_7 ),
        .I1(\n_0_s_axi_rdata_i[5]_i_8 ),
        .O(O36),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[6]_i_3 
       (.I0(\n_0_s_axi_rdata_i[6]_i_5 ),
        .I1(\n_0_s_axi_rdata_i[6]_i_6 ),
        .O(O39),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[6]_i_4 
       (.I0(\n_0_s_axi_rdata_i[6]_i_7 ),
        .I1(\n_0_s_axi_rdata_i[6]_i_8 ),
        .O(O38),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[7]_i_4 
       (.I0(\n_0_s_axi_rdata_i[7]_i_7 ),
        .I1(\n_0_s_axi_rdata_i[7]_i_8 ),
        .O(O41),
        .S(Bus2IIC_Addr[1]));
MUXF7 \s_axi_rdata_i_reg[7]_i_6 
       (.I0(\n_0_s_axi_rdata_i[7]_i_9 ),
        .I1(\n_0_s_axi_rdata_i[7]_i_10 ),
        .O(O40),
        .S(Bus2IIC_Addr[1]));
LUT2 #(
    .INIT(4'h9)) 
     sda_setup_i_3
       (.I0(timing_param_tsudat_i),
        .I1(I11),
        .O(I10));
FDRE \sr_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I5),
        .Q(O1),
        .R(I1));
FDRE \sr_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I14[5]),
        .Q(sr_i[1]),
        .R(I1));
FDRE \sr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I14[4]),
        .Q(sr_i[2]),
        .R(I1));
FDRE \sr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I14[3]),
        .Q(sr_i[3]),
        .R(I1));
FDRE \sr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I14[2]),
        .Q(sr_i[4]),
        .R(I1));
FDRE \sr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I14[1]),
        .Q(sr_i[5]),
        .R(I1));
FDRE \sr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I14[0]),
        .Q(sr_i[7]),
        .R(I1));
FDRE \timing_param_tbuf_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[0]),
        .Q(O8[0]),
        .R(I1));
FDRE \timing_param_tbuf_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[1]),
        .Q(O8[1]),
        .R(I1));
FDSE \timing_param_tbuf_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[2]),
        .Q(O8[2]),
        .S(I1));
FDRE \timing_param_tbuf_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[3]),
        .Q(O8[3]),
        .R(I1));
FDSE \timing_param_tbuf_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[4]),
        .Q(O8[4]),
        .S(I1));
FDSE \timing_param_tbuf_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[5]),
        .Q(O8[5]),
        .S(I1));
FDSE \timing_param_tbuf_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[6]),
        .Q(O8[6]),
        .S(I1));
FDSE \timing_param_tbuf_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[7]),
        .Q(O8[7]),
        .S(I1));
FDSE \timing_param_tbuf_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[8]),
        .Q(O8[8]),
        .S(I1));
FDRE \timing_param_tbuf_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(I23),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tbuf_i),
        .R(I1));
FDSE \timing_param_thddat_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[0]),
        .Q(O9[0]),
        .S(I1));
FDRE \timing_param_thddat_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[1]),
        .Q(O9[1]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[2]),
        .Q(O9[2]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[3]),
        .Q(O9[3]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[4]),
        .Q(O9[4]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[5]),
        .Q(O9[5]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[6]),
        .Q(O9[6]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[7]),
        .Q(O9[7]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[8]),
        .Q(O9[8]),
        .R(I1));
FDRE \timing_param_thddat_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(I26),
        .D(s_axi_wdata[9]),
        .Q(timing_param_thddat_i),
        .R(I1));
FDRE \timing_param_thdsta_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[0]),
        .Q(O15[0]),
        .R(I1));
FDSE \timing_param_thdsta_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[1]),
        .Q(O15[1]),
        .S(I1));
FDSE \timing_param_thdsta_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[2]),
        .Q(O15[2]),
        .S(I1));
FDSE \timing_param_thdsta_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[3]),
        .Q(O15[3]),
        .S(I1));
FDRE \timing_param_thdsta_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[4]),
        .Q(O15[4]),
        .R(I1));
FDSE \timing_param_thdsta_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[5]),
        .Q(O15[5]),
        .S(I1));
FDRE \timing_param_thdsta_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[6]),
        .Q(O15[6]),
        .R(I1));
FDSE \timing_param_thdsta_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[7]),
        .Q(O15[7]),
        .S(I1));
FDSE \timing_param_thdsta_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[8]),
        .Q(O15[8]),
        .S(I1));
FDRE \timing_param_thdsta_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(I21),
        .D(s_axi_wdata[9]),
        .Q(timing_param_thdsta_i),
        .R(I1));
FDSE \timing_param_thigh_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[0]),
        .Q(O6[0]),
        .S(I1));
FDRE \timing_param_thigh_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[1]),
        .Q(O6[1]),
        .R(I1));
FDRE \timing_param_thigh_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[2]),
        .Q(O6[2]),
        .R(I1));
FDRE \timing_param_thigh_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[3]),
        .Q(O6[3]),
        .R(I1));
FDSE \timing_param_thigh_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[4]),
        .Q(O6[4]),
        .S(I1));
FDSE \timing_param_thigh_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[5]),
        .Q(O6[5]),
        .S(I1));
FDSE \timing_param_thigh_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[6]),
        .Q(O6[6]),
        .S(I1));
FDSE \timing_param_thigh_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[7]),
        .Q(O6[7]),
        .S(I1));
FDSE \timing_param_thigh_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[8]),
        .Q(O6[8]),
        .S(I1));
FDRE \timing_param_thigh_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(I24),
        .D(s_axi_wdata[9]),
        .Q(timing_param_thigh_i),
        .R(I1));
FDSE \timing_param_tlow_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[0]),
        .Q(O10[0]),
        .S(I1));
FDRE \timing_param_tlow_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[1]),
        .Q(O10[1]),
        .R(I1));
FDRE \timing_param_tlow_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[2]),
        .Q(O10[2]),
        .R(I1));
FDRE \timing_param_tlow_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[3]),
        .Q(O10[3]),
        .R(I1));
FDSE \timing_param_tlow_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[4]),
        .Q(O10[4]),
        .S(I1));
FDSE \timing_param_tlow_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[5]),
        .Q(O10[5]),
        .S(I1));
FDSE \timing_param_tlow_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[6]),
        .Q(O10[6]),
        .S(I1));
FDSE \timing_param_tlow_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[7]),
        .Q(O10[7]),
        .S(I1));
FDSE \timing_param_tlow_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[8]),
        .Q(O10[8]),
        .S(I1));
FDRE \timing_param_tlow_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(I25),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tlow_i),
        .R(I1));
FDSE \timing_param_tsudat_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[0]),
        .Q(O17[0]),
        .S(I1));
FDSE \timing_param_tsudat_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[1]),
        .Q(O17[1]),
        .S(I1));
FDSE \timing_param_tsudat_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[2]),
        .Q(O17[2]),
        .S(I1));
FDRE \timing_param_tsudat_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[3]),
        .Q(O17[3]),
        .R(I1));
FDSE \timing_param_tsudat_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[4]),
        .Q(O17[4]),
        .S(I1));
FDSE \timing_param_tsudat_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[5]),
        .Q(O17[5]),
        .S(I1));
FDRE \timing_param_tsudat_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[6]),
        .Q(O17[6]),
        .R(I1));
FDRE \timing_param_tsudat_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[7]),
        .Q(O17[7]),
        .R(I1));
FDRE \timing_param_tsudat_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[8]),
        .Q(O17[8]),
        .R(I1));
FDRE \timing_param_tsudat_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(I22),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tsudat_i),
        .R(I1));
FDRE \timing_param_tsusta_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[0]),
        .Q(O7[0]),
        .R(I1));
FDSE \timing_param_tsusta_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[1]),
        .Q(O7[1]),
        .S(I1));
FDRE \timing_param_tsusta_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[2]),
        .Q(O7[2]),
        .R(I1));
FDSE \timing_param_tsusta_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[3]),
        .Q(O7[3]),
        .S(I1));
FDSE \timing_param_tsusta_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[4]),
        .Q(O7[4]),
        .S(I1));
FDSE \timing_param_tsusta_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[5]),
        .Q(O7[5]),
        .S(I1));
FDRE \timing_param_tsusta_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[6]),
        .Q(O7[6]),
        .R(I1));
FDRE \timing_param_tsusta_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[7]),
        .Q(O7[7]),
        .R(I1));
FDRE \timing_param_tsusta_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[8]),
        .Q(O7[8]),
        .R(I1));
FDSE \timing_param_tsusta_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(I19),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tsusta_i),
        .S(I1));
FDRE \timing_param_tsusto_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[0]),
        .Q(O5[0]),
        .R(I1));
FDRE \timing_param_tsusto_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[1]),
        .Q(O5[1]),
        .R(I1));
FDSE \timing_param_tsusto_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[2]),
        .Q(O5[2]),
        .S(I1));
FDRE \timing_param_tsusto_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[3]),
        .Q(O5[3]),
        .R(I1));
FDSE \timing_param_tsusto_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[4]),
        .Q(O5[4]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[5]),
        .Q(O5[5]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[6]),
        .Q(O5[6]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[7]),
        .Q(O5[7]),
        .S(I1));
FDSE \timing_param_tsusto_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[8]),
        .Q(O5[8]),
        .S(I1));
FDRE \timing_param_tsusto_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(I20),
        .D(s_axi_wdata[9]),
        .Q(timing_param_tsusto_i),
        .R(I1));
endmodule

(* ORIG_REF_NAME = "shift8" *) 
module axi_iic_0_shift8
   (O1,
    Q,
    slave_sda,
    I1,
    shift_reg_en,
    p_1_in25_in,
    I2,
    p_0_in,
    I3,
    I4,
    I5,
    Tx_fifo_data,
    SR,
    s_axi_aclk,
    I22);
  output O1;
  output [7:0]Q;
  output slave_sda;
  input I1;
  input shift_reg_en;
  input p_1_in25_in;
  input I2;
  input p_0_in;
  input I3;
  input [3:0]I4;
  input I5;
  input [6:0]Tx_fifo_data;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]I22;

  wire I1;
  wire I2;
  wire [0:0]I22;
  wire I3;
  wire [3:0]I4;
  wire I5;
  wire O1;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [6:0]Tx_fifo_data;
  wire \n_0_data_int[1]_i_1 ;
  wire \n_0_data_int[2]_i_1 ;
  wire \n_0_data_int[3]_i_1 ;
  wire \n_0_data_int[4]_i_1 ;
  wire \n_0_data_int[5]_i_1 ;
  wire \n_0_data_int[6]_i_1 ;
  wire \n_0_data_int[7]_i_1 ;
  wire \n_0_data_int[7]_i_2 ;
  wire p_0_in;
  wire p_1_in25_in;
  wire s_axi_aclk;
  wire shift_reg_en;
  wire slave_sda;

LUT6 #(
    .INIT(64'hBA88BABBBABBBABB)) 
     \LEVEL_1_GEN.master_sda_i_1 
       (.I0(Q[7]),
        .I1(p_1_in25_in),
        .I2(I2),
        .I3(p_0_in),
        .I4(I3),
        .I5(I4[2]),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[1]_i_1 
       (.I0(Tx_fifo_data[0]),
        .I1(Q[0]),
        .I2(I1),
        .O(\n_0_data_int[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[2]_i_1 
       (.I0(Tx_fifo_data[1]),
        .I1(Q[1]),
        .I2(I1),
        .O(\n_0_data_int[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[3]_i_1 
       (.I0(Tx_fifo_data[2]),
        .I1(Q[2]),
        .I2(I1),
        .O(\n_0_data_int[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[4]_i_1 
       (.I0(Tx_fifo_data[3]),
        .I1(Q[3]),
        .I2(I1),
        .O(\n_0_data_int[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[5]_i_1 
       (.I0(Tx_fifo_data[4]),
        .I1(Q[4]),
        .I2(I1),
        .O(\n_0_data_int[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \data_int[6]_i_1 
       (.I0(Tx_fifo_data[5]),
        .I1(Q[5]),
        .I2(I1),
        .O(\n_0_data_int[6]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \data_int[7]_i_1 
       (.I0(I1),
        .I1(shift_reg_en),
        .O(\n_0_data_int[7]_i_1 ));
LUT3 #(
    .INIT(8'hAC)) 
     \data_int[7]_i_2 
       (.I0(Tx_fifo_data[6]),
        .I1(Q[6]),
        .I2(I1),
        .O(\n_0_data_int[7]_i_2 ));
FDRE \data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(I22),
        .Q(Q[0]),
        .R(SR));
FDRE \data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[1]_i_1 ),
        .Q(Q[1]),
        .R(SR));
FDRE \data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[2]_i_1 ),
        .Q(Q[2]),
        .R(SR));
FDRE \data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[3]_i_1 ),
        .Q(Q[3]),
        .R(SR));
FDRE \data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[4]_i_1 ),
        .Q(Q[4]),
        .R(SR));
FDRE \data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[5]_i_1 ),
        .Q(Q[5]),
        .R(SR));
FDRE \data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[6]_i_1 ),
        .Q(Q[6]),
        .R(SR));
FDRE \data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_data_int[7]_i_1 ),
        .D(\n_0_data_int[7]_i_2 ),
        .Q(Q[7]),
        .R(SR));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
     slave_sda_i_4
       (.I0(I4[1]),
        .I1(I5),
        .I2(I4[2]),
        .I3(I4[3]),
        .I4(I4[0]),
        .I5(Q[7]),
        .O(slave_sda));
endmodule

(* ORIG_REF_NAME = "shift8" *) 
module axi_iic_0_shift8_1
   (D,
    O1,
    shift_reg_ld0,
    O2,
    O3,
    O4,
    I3,
    master_slave,
    Q,
    Ro_prev,
    I1,
    I2,
    I4,
    txak,
    I5,
    I6,
    slave_sda,
    sda_sample,
    I7,
    I8,
    I9,
    I10,
    I11,
    detect_start,
    state_reg,
    I12,
    I13,
    I14,
    I15,
    aas_i,
    SR,
    E,
    s_axi_aclk,
    sda_clean);
  output [3:0]D;
  output O1;
  output shift_reg_ld0;
  output O2;
  output O3;
  output O4;
  input [6:0]I3;
  input master_slave;
  input [6:0]Q;
  input Ro_prev;
  input I1;
  input I2;
  input I4;
  input txak;
  input I5;
  input I6;
  input slave_sda;
  input sda_sample;
  input I7;
  input I8;
  input [2:0]I9;
  input I10;
  input [1:0]I11;
  input detect_start;
  input [2:0]state_reg;
  input I12;
  input I13;
  input I14;
  input I15;
  input aas_i;
  input [0:0]SR;
  input [0:0]E;
  input s_axi_aclk;
  input sda_clean;

  wire [3:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire [1:0]I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I2;
  wire [6:0]I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire [2:0]I9;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [6:0]Q;
  wire Ro_prev;
  wire [0:0]SR;
  wire aas_i;
  wire addr_match;
  wire detect_start;
  wire master_slave;
  wire \n_0_FSM_onehot_state[1]_i_3 ;
  wire \n_0_FSM_onehot_state[4]_i_2 ;
  wire \n_0_FSM_onehot_state[4]_i_3 ;
  wire \n_0_FSM_onehot_state[5]_i_3 ;
  wire \n_0_FSM_onehot_state[6]_i_4 ;
  wire \n_0_FSM_onehot_state[6]_i_5 ;
  wire n_0_abgc_i_i_2;
  wire n_0_abgc_i_i_3;
  wire \n_0_data_int_reg[0] ;
  wire n_0_shift_reg_ld_i_5;
  wire [6:0]p_1_in;
  wire s_axi_aclk;
  wire sda_clean;
  wire sda_sample;
  wire shift_reg_ld0;
  wire slave_sda;
  wire [2:0]state_reg;
  wire txak;

LUT4 #(
    .INIT(16'h0100)) 
     \FSM_onehot_state[1]_i_1 
       (.I0(I2),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\n_0_FSM_onehot_state[1]_i_3 ),
        .O(D[0]));
LUT6 #(
    .INIT(64'h5555000522260006)) 
     \FSM_onehot_state[1]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(addr_match),
        .I3(master_slave),
        .I4(I4),
        .I5(Q[6]),
        .O(\n_0_FSM_onehot_state[1]_i_3 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_state[4]_i_1 
       (.I0(\n_0_FSM_onehot_state[4]_i_2 ),
        .I1(Q[0]),
        .I2(\n_0_FSM_onehot_state[4]_i_3 ),
        .I3(I10),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[1]));
LUT6 #(
    .INIT(64'h0000740000FF7400)) 
     \FSM_onehot_state[4]_i_2 
       (.I0(I9[1]),
        .I1(master_slave),
        .I2(addr_match),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Ro_prev),
        .O(\n_0_FSM_onehot_state[4]_i_2 ));
LUT6 #(
    .INIT(64'h54545454FF545454)) 
     \FSM_onehot_state[4]_i_3 
       (.I0(Q[5]),
        .I1(I7),
        .I2(sda_sample),
        .I3(\n_0_data_int_reg[0] ),
        .I4(Q[2]),
        .I5(master_slave),
        .O(\n_0_FSM_onehot_state[4]_i_3 ));
LUT5 #(
    .INIT(32'h00010000)) 
     \FSM_onehot_state[5]_i_1 
       (.I0(Q[0]),
        .I1(sda_sample),
        .I2(I7),
        .I3(I8),
        .I4(\n_0_FSM_onehot_state[5]_i_3 ),
        .O(D[2]));
LUT6 #(
    .INIT(64'h0FC00FC00FA00000)) 
     \FSM_onehot_state[5]_i_3 
       (.I0(\n_0_data_int_reg[0] ),
        .I1(I9[1]),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(addr_match),
        .I5(master_slave),
        .O(\n_0_FSM_onehot_state[5]_i_3 ));
LUT6 #(
    .INIT(64'h0FE000E000000000)) 
     \FSM_onehot_state[6]_i_1 
       (.I0(master_slave),
        .I1(addr_match),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Ro_prev),
        .I5(I1),
        .O(D[3]));
LUT5 #(
    .INIT(32'hEAAAAAEA)) 
     \FSM_onehot_state[6]_i_2 
       (.I0(I11[0]),
        .I1(\n_0_FSM_onehot_state[6]_i_4 ),
        .I2(\n_0_FSM_onehot_state[6]_i_5 ),
        .I3(I3[6]),
        .I4(p_1_in[6]),
        .O(addr_match));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_state[6]_i_4 
       (.I0(p_1_in[0]),
        .I1(I3[0]),
        .I2(I3[2]),
        .I3(p_1_in[2]),
        .I4(I3[1]),
        .I5(p_1_in[1]),
        .O(\n_0_FSM_onehot_state[6]_i_4 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_state[6]_i_5 
       (.I0(p_1_in[3]),
        .I1(I3[3]),
        .I2(I3[5]),
        .I3(p_1_in[5]),
        .I4(I3[4]),
        .I5(p_1_in[4]),
        .O(\n_0_FSM_onehot_state[6]_i_5 ));
LUT5 #(
    .INIT(32'h00E00000)) 
     aas_i_i_1
       (.I0(I15),
        .I1(aas_i),
        .I2(I9[0]),
        .I3(I14),
        .I4(addr_match),
        .O(O3));
LUT4 #(
    .INIT(16'h0008)) 
     abgc_i_i_1
       (.I0(n_0_abgc_i_i_2),
        .I1(I9[0]),
        .I2(I14),
        .I3(detect_start),
        .O(O2));
LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
     abgc_i_i_2
       (.I0(\n_0_data_int_reg[0] ),
        .I1(p_1_in[6]),
        .I2(I9[2]),
        .I3(n_0_abgc_i_i_3),
        .I4(I6),
        .I5(I11[0]),
        .O(n_0_abgc_i_i_2));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     abgc_i_i_3
       (.I0(p_1_in[1]),
        .I1(p_1_in[0]),
        .I2(p_1_in[4]),
        .I3(p_1_in[5]),
        .I4(p_1_in[2]),
        .I5(p_1_in[3]),
        .O(n_0_abgc_i_i_3));
FDRE \data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(sda_clean),
        .Q(\n_0_data_int_reg[0] ),
        .R(SR));
FDRE \data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\n_0_data_int_reg[0] ),
        .Q(p_1_in[0]),
        .R(SR));
FDRE \data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(p_1_in[1]),
        .R(SR));
FDRE \data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(p_1_in[2]),
        .R(SR));
FDRE \data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(p_1_in[3]),
        .R(SR));
FDRE \data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(p_1_in[4]),
        .R(SR));
FDRE \data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(p_1_in[5]),
        .R(SR));
FDRE \data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(p_1_in[6]),
        .R(SR));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3800)) 
     shift_reg_ld_i_1
       (.I0(detect_start),
        .I1(state_reg[0]),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(I12),
        .I5(n_0_shift_reg_ld_i_5),
        .O(shift_reg_ld0));
LUT5 #(
    .INIT(32'hF8F8A808)) 
     shift_reg_ld_i_5
       (.I0(I6),
        .I1(\n_0_data_int_reg[0] ),
        .I2(master_slave),
        .I3(I9[1]),
        .I4(I13),
        .O(n_0_shift_reg_ld_i_5));
LUT5 #(
    .INIT(32'hABBBA888)) 
     slave_sda_i_1
       (.I0(txak),
        .I1(I5),
        .I2(I6),
        .I3(addr_match),
        .I4(slave_sda),
        .O(O1));
LUT3 #(
    .INIT(8'hB8)) 
     srw_i_i_1
       (.I0(\n_0_data_int_reg[0] ),
        .I1(aas_i),
        .I2(I11[1]),
        .O(O4));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module axi_iic_0_slave_attachment
   (p_18_in,
    O1,
    s_axi_rresp,
    O2,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    O3,
    O4,
    O5,
    IIC2Bus_Data1,
    O6,
    O7,
    O8,
    O9,
    I26,
    I25,
    I24,
    I23,
    I22,
    I21,
    I20,
    I19,
    I18,
    I17,
    O10,
    E,
    O11,
    O12,
    O13,
    s_axi_arready,
    O14,
    s_axi_awready,
    AXI_IP2Bus_RdAck0,
    Bus2IIC_RdCE,
    irpt_wrack,
    O15,
    O16,
    O17,
    s_axi_rdata,
    s_axi_aclk,
    AXI_Bus2IP_Reset,
    AXI_IP2Bus_WrAck,
    AXI_IP2Bus_RdAck,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_araddr,
    sw_rst_cond_d1,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    I1,
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
    I27,
    Q,
    p_1_in2_in,
    p_1_in5_in,
    p_1_in8_in,
    p_1_in11_in,
    p_1_in14_in,
    p_1_in17_in,
    I28,
    ipif_glbl_irpt_enable_reg,
    s_axi_bready,
    s_axi_rready,
    gpo,
    D);
  output p_18_in;
  output O1;
  output [0:0]s_axi_rresp;
  output O2;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output O3;
  output O4;
  output O5;
  output IIC2Bus_Data1;
  output O6;
  output O7;
  output O8;
  output O9;
  output [0:0]I26;
  output [0:0]I25;
  output [0:0]I24;
  output [0:0]I23;
  output [0:0]I22;
  output [0:0]I21;
  output [0:0]I20;
  output [0:0]I19;
  output [0:0]I18;
  output [0:0]I17;
  output O10;
  output [0:0]E;
  output [0:0]O11;
  output O12;
  output O13;
  output s_axi_arready;
  output O14;
  output s_axi_awready;
  output AXI_IP2Bus_RdAck0;
  output [0:0]Bus2IIC_RdCE;
  output irpt_wrack;
  output O15;
  output O16;
  output O17;
  output [10:0]s_axi_rdata;
  input s_axi_aclk;
  input AXI_Bus2IP_Reset;
  input AXI_IP2Bus_WrAck;
  input AXI_IP2Bus_RdAck;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;
  input sw_rst_cond_d1;
  input [4:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input I1;
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
  input I27;
  input [7:0]Q;
  input p_1_in2_in;
  input p_1_in5_in;
  input p_1_in8_in;
  input p_1_in11_in;
  input p_1_in14_in;
  input p_1_in17_in;
  input I28;
  input ipif_glbl_irpt_enable_reg;
  input s_axi_bready;
  input s_axi_rready;
  input [0:0]gpo;
  input [1:0]D;

  wire AXI_Bus2IP_Reset;
  wire [24:31]AXI_IP2Bus_Data;
  wire AXI_IP2Bus_RdAck;
  wire AXI_IP2Bus_RdAck0;
  wire AXI_IP2Bus_WrAck;
  wire [0:0]Bus2IIC_RdCE;
  wire [1:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire [0:0]I17;
  wire [0:0]I18;
  wire [0:0]I19;
  wire I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire [0:0]I22;
  wire [0:0]I23;
  wire [0:0]I24;
  wire [0:0]I25;
  wire [0:0]I26;
  wire I27;
  wire I28;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire IIC2Bus_Data1;
  wire [0:0]Intr2Bus_DBus;
  wire O1;
  wire O10;
  wire [0:0]O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [7:0]Q;
  wire [0:0]gpo;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_wrack;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ;
  wire \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  wire n_0_s_axi_bvalid_i_i_1;
  wire \n_0_s_axi_rdata_i[0]_i_3 ;
  wire \n_0_s_axi_rdata_i[31]_i_1 ;
  wire \n_0_s_axi_rdata_i[9]_i_11 ;
  wire \n_0_s_axi_rdata_i[9]_i_12 ;
  wire n_0_s_axi_rvalid_i_i_1;
  wire \n_0_state[0]_i_1 ;
  wire \n_0_state[1]_i_1 ;
  wire \n_0_state[1]_i_2 ;
  wire \n_0_state[1]_i_3 ;
  wire \n_0_state_reg[0] ;
  wire \n_0_state_reg[1] ;
  wire n_41_I_DECODER;
  wire p_18_in;
  wire p_1_in11_in;
  wire p_1_in14_in;
  wire p_1_in17_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_1_in8_in;
  wire p_2_out;
  wire [3:0]plusOp;
  wire reset2Bus_Error;
  wire rst;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [10:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [4:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sw_rst_cond_d1;
  wire timeout;

(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .I2(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .O(plusOp[2]));
LUT2 #(
    .INIT(4'h9)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\n_0_state_reg[1] ),
        .I1(\n_0_state_reg[0] ),
        .O(p_2_out));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .I1(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .I2(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .I3(timeout),
        .O(plusOp[3]));
(* counter = "4" *) 
   FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] ),
        .R(p_2_out));
(* counter = "4" *) 
   FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] ),
        .R(p_2_out));
(* counter = "4" *) 
   FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .R(p_2_out));
(* counter = "4" *) 
   FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(timeout),
        .R(p_2_out));
axi_iic_0_address_decoder I_DECODER
       (.AXI_IP2Bus_RdAck(AXI_IP2Bus_RdAck),
        .AXI_IP2Bus_RdAck0(AXI_IP2Bus_RdAck0),
        .AXI_IP2Bus_WrAck(AXI_IP2Bus_WrAck),
        .Bus2IIC_RdCE(Bus2IIC_RdCE),
        .D({Intr2Bus_DBus,AXI_IP2Bus_Data[24],AXI_IP2Bus_Data[25],AXI_IP2Bus_Data[26],AXI_IP2Bus_Data[27],AXI_IP2Bus_Data[28],AXI_IP2Bus_Data[29],AXI_IP2Bus_Data[30],AXI_IP2Bus_Data[31]}),
        .E(E),
        .I1(\n_0_state_reg[0] ),
        .I10(I8),
        .I11(I9),
        .I12(I10),
        .I13(I11),
        .I14(I12),
        .I15(I13),
        .I16(I14),
        .I17(I17),
        .I18(I18),
        .I19(I19),
        .I2(\n_0_state_reg[1] ),
        .I20(I20),
        .I21(I21),
        .I22(I22),
        .I23(I23),
        .I24(I24),
        .I25(I25),
        .I26(I26),
        .I27(\n_0_s_axi_rdata_i[0]_i_3 ),
        .I28(I15),
        .I29(I16),
        .I3(I1),
        .I30(I27),
        .I31(Q),
        .I32(I28),
        .I4(I2),
        .I5(I3),
        .I6(I4),
        .I7(I5),
        .I8(I6),
        .I9(I7),
        .IIC2Bus_Data1(IIC2Bus_Data1),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O13),
        .O13(O14),
        .O14(n_41_I_DECODER),
        .O16(O16),
        .O17(O17),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O12),
        .O9(O9),
        .Q(timeout),
        .gpo(gpo),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_wrack(irpt_wrack),
        .p_18_in(p_18_in),
        .p_1_in11_in(p_1_in11_in),
        .p_1_in14_in(p_1_in14_in),
        .p_1_in17_in(p_1_in17_in),
        .p_1_in2_in(p_1_in2_in),
        .p_1_in5_in(p_1_in5_in),
        .p_1_in8_in(p_1_in8_in),
        .reset2Bus_Error(reset2Bus_Error),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .sw_rst_cond_d1(sw_rst_cond_d1));
FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_Bus2IP_Reset),
        .Q(rst),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT2 #(
    .INIT(4'hE)) 
     s_axi_arready_INST_0
       (.I0(AXI_IP2Bus_RdAck),
        .I1(timeout),
        .O(s_axi_arready));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_41_I_DECODER),
        .Q(s_axi_bresp),
        .R(rst));
LUT6 #(
    .INIT(64'h000800FF00080008)) 
     s_axi_bvalid_i_i_1
       (.I0(s_axi_awready),
        .I1(\n_0_state_reg[1] ),
        .I2(\n_0_state_reg[0] ),
        .I3(rst),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(n_0_s_axi_bvalid_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_s_axi_bvalid_i_i_1),
        .Q(s_axi_bvalid),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT5 #(
    .INIT(32'h00053035)) 
     \s_axi_rdata_i[0]_i_3 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_arvalid),
        .I3(s_axi_awaddr[0]),
        .I4(s_axi_araddr[0]),
        .O(\n_0_s_axi_rdata_i[0]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \s_axi_rdata_i[31]_i_1 
       (.I0(\n_0_state_reg[0] ),
        .I1(\n_0_state_reg[1] ),
        .O(\n_0_s_axi_rdata_i[31]_i_1 ));
LUT5 #(
    .INIT(32'h00500353)) 
     \s_axi_rdata_i[3]_i_8 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid),
        .I3(s_axi_araddr[7]),
        .I4(s_axi_awaddr[7]),
        .O(O8));
LUT5 #(
    .INIT(32'hFFFACFCA)) 
     \s_axi_rdata_i[9]_i_11 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_arvalid),
        .I3(s_axi_awaddr[7]),
        .I4(s_axi_araddr[7]),
        .O(\n_0_s_axi_rdata_i[9]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \s_axi_rdata_i[9]_i_12 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(\n_0_s_axi_rdata_i[9]_i_12 ));
LUT6 #(
    .INIT(64'h0000000000015400)) 
     \s_axi_rdata_i[9]_i_6 
       (.I0(\n_0_s_axi_rdata_i[9]_i_11 ),
        .I1(O5),
        .I2(O13),
        .I3(O12),
        .I4(O3),
        .I5(\n_0_s_axi_rdata_i[9]_i_12 ),
        .O(O15));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[31]),
        .Q(s_axi_rdata[0]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[30]),
        .Q(s_axi_rdata[1]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[29]),
        .Q(s_axi_rdata[2]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(Intr2Bus_DBus),
        .Q(s_axi_rdata[10]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[28]),
        .Q(s_axi_rdata[3]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[27]),
        .Q(s_axi_rdata[4]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[26]),
        .Q(s_axi_rdata[5]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[25]),
        .Q(s_axi_rdata[6]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(AXI_IP2Bus_Data[24]),
        .Q(s_axi_rdata[7]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(D[0]),
        .Q(s_axi_rdata[8]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(D[1]),
        .Q(s_axi_rdata[9]),
        .R(rst));
FDRE #(
    .INIT(1'b0)) 
     \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_s_axi_rdata_i[31]_i_1 ),
        .D(reset2Bus_Error),
        .Q(s_axi_rresp),
        .R(rst));
LUT6 #(
    .INIT(64'h00E000FF00E000E0)) 
     s_axi_rvalid_i_i_1
       (.I0(AXI_IP2Bus_RdAck),
        .I1(timeout),
        .I2(\n_0_s_axi_rdata_i[31]_i_1 ),
        .I3(rst),
        .I4(s_axi_rready),
        .I5(s_axi_rvalid),
        .O(n_0_s_axi_rvalid_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_s_axi_rvalid_i_i_1),
        .Q(s_axi_rvalid),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT2 #(
    .INIT(4'hE)) 
     s_axi_wready_INST_0
       (.I0(AXI_IP2Bus_WrAck),
        .I1(timeout),
        .O(s_axi_awready));
LUT6 #(
    .INIT(64'h000000007F4F7C4C)) 
     \state[0]_i_1 
       (.I0(\n_0_state[1]_i_3 ),
        .I1(\n_0_state_reg[0] ),
        .I2(\n_0_state_reg[1] ),
        .I3(s_axi_awready),
        .I4(s_axi_arvalid),
        .I5(rst),
        .O(\n_0_state[0]_i_1 ));
LUT6 #(
    .INIT(64'h000000002F20EFEC)) 
     \state[1]_i_1 
       (.I0(s_axi_arready),
        .I1(\n_0_state_reg[1] ),
        .I2(\n_0_state_reg[0] ),
        .I3(\n_0_state[1]_i_2 ),
        .I4(\n_0_state[1]_i_3 ),
        .I5(rst),
        .O(\n_0_state[1]_i_1 ));
LUT4 #(
    .INIT(16'hBAAA)) 
     \state[1]_i_2 
       (.I0(\n_0_state_reg[1] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(\n_0_state[1]_i_2 ));
LUT4 #(
    .INIT(16'hF888)) 
     \state[1]_i_3 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(\n_0_state[1]_i_3 ));
FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_state[0]_i_1 ),
        .Q(\n_0_state_reg[0] ),
        .R(1'b0));
FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_state[1]_i_1 ),
        .Q(\n_0_state_reg[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "soft_reset" *) 
module axi_iic_0_soft_reset
   (sw_rst_cond_d1,
    AXI_Bus2IP_Reset,
    O1,
    I1,
    s_axi_aclk,
    I2,
    s_axi_aresetn);
  output sw_rst_cond_d1;
  output AXI_Bus2IP_Reset;
  output O1;
  input I1;
  input s_axi_aclk;
  input I2;
  input s_axi_aresetn;

  wire AXI_Bus2IP_Reset;
  wire I1;
  wire I2;
  wire O1;
  wire \n_0_RESET_FLOPS[0].RST_FLOPS ;
  wire \n_0_RESET_FLOPS[1].RST_FLOPS ;
  wire \n_0_RESET_FLOPS[1].RST_FLOPS_i_1 ;
  wire \n_0_RESET_FLOPS[2].RST_FLOPS ;
  wire \n_0_RESET_FLOPS[2].RST_FLOPS_i_1 ;
  wire \n_0_RESET_FLOPS[3].RST_FLOPS ;
  wire \n_0_RESET_FLOPS[3].RST_FLOPS_i_1 ;
  wire reset_trig;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire sw_rst_cond_d1;

LUT2 #(
    .INIT(4'hB)) 
     \GPO_GEN.gpo_i[31]_i_1 
       (.I0(\n_0_RESET_FLOPS[3].RST_FLOPS ),
        .I1(s_axi_aresetn),
        .O(O1));
(* IS_CE_INVERTED = "1'b0" *) 
   (* IS_S_INVERTED = "1'b0" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \RESET_FLOPS[0].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_trig),
        .Q(\n_0_RESET_FLOPS[0].RST_FLOPS ),
        .R(AXI_Bus2IP_Reset));
(* IS_CE_INVERTED = "1'b0" *) 
   (* IS_S_INVERTED = "1'b0" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \RESET_FLOPS[1].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_RESET_FLOPS[1].RST_FLOPS_i_1 ),
        .Q(\n_0_RESET_FLOPS[1].RST_FLOPS ),
        .R(AXI_Bus2IP_Reset));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \RESET_FLOPS[1].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(\n_0_RESET_FLOPS[0].RST_FLOPS ),
        .O(\n_0_RESET_FLOPS[1].RST_FLOPS_i_1 ));
(* IS_CE_INVERTED = "1'b0" *) 
   (* IS_S_INVERTED = "1'b0" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \RESET_FLOPS[2].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_RESET_FLOPS[2].RST_FLOPS_i_1 ),
        .Q(\n_0_RESET_FLOPS[2].RST_FLOPS ),
        .R(AXI_Bus2IP_Reset));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \RESET_FLOPS[2].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(\n_0_RESET_FLOPS[1].RST_FLOPS ),
        .O(\n_0_RESET_FLOPS[2].RST_FLOPS_i_1 ));
(* IS_CE_INVERTED = "1'b0" *) 
   (* IS_S_INVERTED = "1'b0" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \RESET_FLOPS[3].RST_FLOPS 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_RESET_FLOPS[3].RST_FLOPS_i_1 ),
        .Q(\n_0_RESET_FLOPS[3].RST_FLOPS ),
        .R(AXI_Bus2IP_Reset));
LUT2 #(
    .INIT(4'hE)) 
     \RESET_FLOPS[3].RST_FLOPS_i_1 
       (.I0(reset_trig),
        .I1(\n_0_RESET_FLOPS[2].RST_FLOPS ),
        .O(\n_0_RESET_FLOPS[3].RST_FLOPS_i_1 ));
FDRE reset_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I2),
        .Q(reset_trig),
        .R(AXI_Bus2IP_Reset));
LUT1 #(
    .INIT(2'h1)) 
     rst_i_1
       (.I0(s_axi_aresetn),
        .O(AXI_Bus2IP_Reset));
FDRE sw_rst_cond_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I1),
        .Q(sw_rst_cond_d1),
        .R(AXI_Bus2IP_Reset));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module axi_iic_0_upcnt_n
   (O3,
    O1,
    E,
    D,
    O2,
    O4,
    sda_cout1,
    Q,
    I1,
    I2,
    I3,
    scl_clean,
    I4,
    I5,
    I6,
    I7,
    S,
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
    stop_scl_reg,
    I22,
    sda_clean,
    I23,
    I24,
    I25,
    I26,
    I27,
    next_scl_state0,
    I28,
    sda_cout_reg,
    SR,
    s_axi_aclk);
  output [0:0]O3;
  output O1;
  output [0:0]E;
  output [5:0]D;
  output O2;
  output O4;
  input sda_cout1;
  input [0:0]Q;
  input I1;
  input [8:0]I2;
  input I3;
  input scl_clean;
  input I4;
  input I5;
  input I6;
  input I7;
  input [0:0]S;
  input [0:0]I8;
  input [0:0]I9;
  input [0:0]I10;
  input [0:0]I11;
  input [0:0]I12;
  input [0:0]I13;
  input [8:0]I14;
  input [8:0]I15;
  input [8:0]I16;
  input [8:0]I17;
  input [8:0]I18;
  input [8:0]I19;
  input [8:0]I20;
  input I21;
  input stop_scl_reg;
  input I22;
  input sda_clean;
  input I23;
  input I24;
  input I25;
  input I26;
  input I27;
  input next_scl_state0;
  input I28;
  input sda_cout_reg;
  input [0:0]SR;
  input s_axi_aclk;

  wire [5:0]D;
  wire [0:0]E;
  wire I1;
  wire [0:0]I10;
  wire [0:0]I11;
  wire [0:0]I12;
  wire [0:0]I13;
  wire [8:0]I14;
  wire [8:0]I15;
  wire [8:0]I16;
  wire [8:0]I17;
  wire [8:0]I18;
  wire [8:0]I19;
  wire [8:0]I2;
  wire [8:0]I20;
  wire I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire [0:0]I8;
  wire [0:0]I9;
  wire O1;
  wire O2;
  wire [0:0]O3;
  wire O4;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire clk_cnt_en1;
  wire clk_cnt_en11_out;
  wire clk_cnt_en12_out;
  wire clk_cnt_en2;
  wire clk_cnt_rst;
  wire \n_0_FSM_onehot_scl_state[1]_i_3 ;
  wire \n_0_FSM_onehot_scl_state[3]_i_5 ;
  wire \n_0_FSM_onehot_scl_state[3]_i_6 ;
  wire \n_0_FSM_onehot_scl_state[3]_i_7 ;
  wire \n_0_FSM_onehot_scl_state[4]_i_2 ;
  wire \n_0_FSM_onehot_scl_state[5]_i_5 ;
  wire \n_0_FSM_onehot_scl_state[5]_i_6 ;
  wire \n_0_FSM_onehot_scl_state[5]_i_7 ;
  wire \n_0_FSM_onehot_scl_state[6]_i_5 ;
  wire \n_0_FSM_onehot_scl_state[6]_i_6 ;
  wire \n_0_FSM_onehot_scl_state[6]_i_7 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_12 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_13 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_14 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_17 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_18 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_19 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_21 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_22 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_23 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_25 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_26 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_27 ;
  wire \n_0_FSM_onehot_scl_state[9]_i_4 ;
  wire \n_0_q_int[0]_i_10 ;
  wire \n_0_q_int[0]_i_11 ;
  wire \n_0_q_int[0]_i_12 ;
  wire \n_0_q_int[0]_i_13 ;
  wire \n_0_q_int[0]_i_14 ;
  wire \n_0_q_int[0]_i_15 ;
  wire \n_0_q_int[0]_i_16 ;
  wire \n_0_q_int[0]_i_1__0 ;
  wire \n_0_q_int[0]_i_2 ;
  wire \n_0_q_int[0]_i_4__0 ;
  wire \n_0_q_int[0]_i_5 ;
  wire \n_0_q_int[0]_i_6 ;
  wire \n_0_q_int[0]_i_7 ;
  wire \n_0_q_int[0]_i_8 ;
  wire \n_0_q_int[0]_i_9 ;
  wire \n_0_q_int[1]_i_1 ;
  wire \n_0_q_int[2]_i_1 ;
  wire \n_0_q_int[3]_i_1 ;
  wire \n_0_q_int[4]_i_1 ;
  wire \n_0_q_int[4]_i_2 ;
  wire \n_0_q_int[5]_i_1 ;
  wire \n_0_q_int[6]_i_1 ;
  wire \n_0_q_int[7]_i_1 ;
  wire \n_0_q_int[8]_i_1 ;
  wire \n_0_q_int[9]_i_1 ;
  wire n_0_sda_cout_reg_i_2;
  wire n_0_sda_cout_reg_i_5;
  wire n_0_stop_scl_reg_i_3;
  wire n_0_stop_scl_reg_i_6;
  wire \n_1_FSM_onehot_scl_state_reg[3]_i_2 ;
  wire \n_1_FSM_onehot_scl_state_reg[5]_i_2 ;
  wire \n_1_FSM_onehot_scl_state_reg[6]_i_2 ;
  wire \n_1_FSM_onehot_scl_state_reg[9]_i_10 ;
  wire \n_1_FSM_onehot_scl_state_reg[9]_i_6 ;
  wire \n_1_FSM_onehot_scl_state_reg[9]_i_8 ;
  wire \n_1_FSM_onehot_scl_state_reg[9]_i_9 ;
  wire \n_2_FSM_onehot_scl_state_reg[3]_i_2 ;
  wire \n_2_FSM_onehot_scl_state_reg[5]_i_2 ;
  wire \n_2_FSM_onehot_scl_state_reg[6]_i_2 ;
  wire \n_2_FSM_onehot_scl_state_reg[9]_i_10 ;
  wire \n_2_FSM_onehot_scl_state_reg[9]_i_6 ;
  wire \n_2_FSM_onehot_scl_state_reg[9]_i_8 ;
  wire \n_2_FSM_onehot_scl_state_reg[9]_i_9 ;
  wire \n_3_FSM_onehot_scl_state_reg[3]_i_2 ;
  wire \n_3_FSM_onehot_scl_state_reg[5]_i_2 ;
  wire \n_3_FSM_onehot_scl_state_reg[6]_i_2 ;
  wire \n_3_FSM_onehot_scl_state_reg[9]_i_10 ;
  wire \n_3_FSM_onehot_scl_state_reg[9]_i_6 ;
  wire \n_3_FSM_onehot_scl_state_reg[9]_i_8 ;
  wire \n_3_FSM_onehot_scl_state_reg[9]_i_9 ;
  wire next_scl_state0;
  wire next_scl_state1;
  wire next_scl_state10_out;
  wire next_scl_state13_out;
  wire [1:9]q_int_reg__0;
  wire s_axi_aclk;
  wire scl_clean;
  wire sda_clean;
  wire sda_cout;
  wire sda_cout1;
  wire sda_cout_reg;
  wire stop_scl_reg;
  wire [3:0]\NLW_FSM_onehot_scl_state_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_scl_state_reg[5]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_scl_state_reg[6]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_scl_state_reg[9]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_scl_state_reg[9]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_scl_state_reg[9]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_scl_state_reg[9]_i_9_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h0000000100000000)) 
     \FSM_onehot_scl_state[1]_i_1 
       (.I0(I21),
        .I1(I2[1]),
        .I2(I2[5]),
        .I3(I2[4]),
        .I4(I2[7]),
        .I5(\n_0_FSM_onehot_scl_state[1]_i_3 ),
        .O(D[0]));
LUT6 #(
    .INIT(64'h0033000030443044)) 
     \FSM_onehot_scl_state[1]_i_3 
       (.I0(next_scl_state0),
        .I1(I2[0]),
        .I2(I3),
        .I3(I2[6]),
        .I4(next_scl_state1),
        .I5(I2[8]),
        .O(\n_0_FSM_onehot_scl_state[1]_i_3 ));
LUT5 #(
    .INIT(32'h04340000)) 
     \FSM_onehot_scl_state[3]_i_1 
       (.I0(next_scl_state13_out),
        .I1(I2[2]),
        .I2(I2[1]),
        .I3(sda_clean),
        .I4(I27),
        .O(D[1]));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[3]_i_5 
       (.I0(q_int_reg__0[3]),
        .I1(I18[6]),
        .I2(I18[8]),
        .I3(q_int_reg__0[1]),
        .I4(I18[7]),
        .I5(q_int_reg__0[2]),
        .O(\n_0_FSM_onehot_scl_state[3]_i_5 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[3]_i_6 
       (.I0(q_int_reg__0[6]),
        .I1(I18[3]),
        .I2(I18[5]),
        .I3(q_int_reg__0[4]),
        .I4(I18[4]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_FSM_onehot_scl_state[3]_i_6 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[3]_i_7 
       (.I0(q_int_reg__0[9]),
        .I1(I18[0]),
        .I2(I18[2]),
        .I3(q_int_reg__0[7]),
        .I4(I18[1]),
        .I5(q_int_reg__0[8]),
        .O(\n_0_FSM_onehot_scl_state[3]_i_7 ));
LUT6 #(
    .INIT(64'h2222222E00000000)) 
     \FSM_onehot_scl_state[4]_i_1 
       (.I0(\n_0_FSM_onehot_scl_state[4]_i_2 ),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(stop_scl_reg),
        .I4(I2[2]),
        .I5(I22),
        .O(D[2]));
LUT5 #(
    .INIT(32'h38083838)) 
     \FSM_onehot_scl_state[4]_i_2 
       (.I0(next_scl_state13_out),
        .I1(I2[2]),
        .I2(I2[3]),
        .I3(scl_clean),
        .I4(clk_cnt_en2),
        .O(\n_0_FSM_onehot_scl_state[4]_i_2 ));
LUT6 #(
    .INIT(64'h0434040400000000)) 
     \FSM_onehot_scl_state[5]_i_1 
       (.I0(next_scl_state10_out),
        .I1(I2[4]),
        .I2(I2[3]),
        .I3(scl_clean),
        .I4(clk_cnt_en2),
        .I5(I26),
        .O(D[3]));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[5]_i_5 
       (.I0(q_int_reg__0[3]),
        .I1(I17[6]),
        .I2(I17[8]),
        .I3(q_int_reg__0[1]),
        .I4(I17[7]),
        .I5(q_int_reg__0[2]),
        .O(\n_0_FSM_onehot_scl_state[5]_i_5 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[5]_i_6 
       (.I0(q_int_reg__0[6]),
        .I1(I17[3]),
        .I2(I17[5]),
        .I3(q_int_reg__0[4]),
        .I4(I17[4]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_FSM_onehot_scl_state[5]_i_6 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[5]_i_7 
       (.I0(q_int_reg__0[9]),
        .I1(I17[0]),
        .I2(I17[2]),
        .I3(q_int_reg__0[7]),
        .I4(I17[1]),
        .I5(q_int_reg__0[8]),
        .O(\n_0_FSM_onehot_scl_state[5]_i_7 ));
LUT5 #(
    .INIT(32'h34040000)) 
     \FSM_onehot_scl_state[6]_i_1 
       (.I0(scl_clean),
        .I1(I2[5]),
        .I2(I2[4]),
        .I3(next_scl_state10_out),
        .I4(I25),
        .O(D[4]));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[6]_i_5 
       (.I0(q_int_reg__0[3]),
        .I1(I19[6]),
        .I2(I19[8]),
        .I3(q_int_reg__0[1]),
        .I4(I19[7]),
        .I5(q_int_reg__0[2]),
        .O(\n_0_FSM_onehot_scl_state[6]_i_5 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[6]_i_6 
       (.I0(q_int_reg__0[6]),
        .I1(I19[3]),
        .I2(I19[5]),
        .I3(q_int_reg__0[4]),
        .I4(I19[4]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_FSM_onehot_scl_state[6]_i_6 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[6]_i_7 
       (.I0(q_int_reg__0[9]),
        .I1(I19[0]),
        .I2(I19[2]),
        .I3(q_int_reg__0[7]),
        .I4(I19[1]),
        .I5(q_int_reg__0[8]),
        .O(\n_0_FSM_onehot_scl_state[6]_i_7 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_12 
       (.I0(q_int_reg__0[3]),
        .I1(I20[6]),
        .I2(I20[8]),
        .I3(q_int_reg__0[1]),
        .I4(I20[7]),
        .I5(q_int_reg__0[2]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_12 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_13 
       (.I0(q_int_reg__0[6]),
        .I1(I20[3]),
        .I2(I20[5]),
        .I3(q_int_reg__0[4]),
        .I4(I20[4]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_13 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_14 
       (.I0(q_int_reg__0[9]),
        .I1(I20[0]),
        .I2(I20[2]),
        .I3(q_int_reg__0[7]),
        .I4(I20[1]),
        .I5(q_int_reg__0[8]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_14 ));
LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_scl_state[9]_i_15 
       (.I0(I2[4]),
        .I1(I2[3]),
        .O(O1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_17 
       (.I0(q_int_reg__0[3]),
        .I1(I16[6]),
        .I2(I16[8]),
        .I3(q_int_reg__0[1]),
        .I4(I16[7]),
        .I5(q_int_reg__0[2]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_17 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_18 
       (.I0(q_int_reg__0[6]),
        .I1(I16[3]),
        .I2(I16[5]),
        .I3(q_int_reg__0[4]),
        .I4(I16[4]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_18 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_19 
       (.I0(q_int_reg__0[9]),
        .I1(I16[0]),
        .I2(I16[2]),
        .I3(q_int_reg__0[7]),
        .I4(I16[1]),
        .I5(q_int_reg__0[8]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_19 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_scl_state[9]_i_2 
       (.I0(\n_0_FSM_onehot_scl_state[9]_i_4 ),
        .I1(I7),
        .I2(I2[1]),
        .I3(I2[2]),
        .I4(I2[3]),
        .I5(I2[4]),
        .O(E));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_21 
       (.I0(q_int_reg__0[3]),
        .I1(I14[6]),
        .I2(I14[8]),
        .I3(q_int_reg__0[1]),
        .I4(I14[7]),
        .I5(q_int_reg__0[2]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_21 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_22 
       (.I0(q_int_reg__0[6]),
        .I1(I14[3]),
        .I2(I14[5]),
        .I3(q_int_reg__0[4]),
        .I4(I14[4]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_22 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_23 
       (.I0(q_int_reg__0[9]),
        .I1(I14[0]),
        .I2(I14[2]),
        .I3(q_int_reg__0[7]),
        .I4(I14[1]),
        .I5(q_int_reg__0[8]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_23 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_25 
       (.I0(q_int_reg__0[3]),
        .I1(I15[6]),
        .I2(I15[8]),
        .I3(q_int_reg__0[1]),
        .I4(I15[7]),
        .I5(q_int_reg__0[2]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_25 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_26 
       (.I0(q_int_reg__0[6]),
        .I1(I15[3]),
        .I2(I15[5]),
        .I3(q_int_reg__0[4]),
        .I4(I15[4]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_26 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \FSM_onehot_scl_state[9]_i_27 
       (.I0(q_int_reg__0[9]),
        .I1(I15[0]),
        .I2(I15[2]),
        .I3(q_int_reg__0[7]),
        .I4(I15[1]),
        .I5(q_int_reg__0[8]),
        .O(\n_0_FSM_onehot_scl_state[9]_i_27 ));
LUT5 #(
    .INIT(32'h34040000)) 
     \FSM_onehot_scl_state[9]_i_3 
       (.I0(next_scl_state1),
        .I1(I2[8]),
        .I2(I2[7]),
        .I3(sda_clean),
        .I4(I23),
        .O(D[5]));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \FSM_onehot_scl_state[9]_i_4 
       (.I0(clk_cnt_en12_out),
        .I1(Q),
        .I2(clk_cnt_en11_out),
        .I3(stop_scl_reg),
        .I4(clk_cnt_en1),
        .O(\n_0_FSM_onehot_scl_state[9]_i_4 ));
CARRY4 \FSM_onehot_scl_state_reg[3]_i_2 
       (.CI(1'b0),
        .CO({next_scl_state13_out,\n_1_FSM_onehot_scl_state_reg[3]_i_2 ,\n_2_FSM_onehot_scl_state_reg[3]_i_2 ,\n_3_FSM_onehot_scl_state_reg[3]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_scl_state_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S({I11,\n_0_FSM_onehot_scl_state[3]_i_5 ,\n_0_FSM_onehot_scl_state[3]_i_6 ,\n_0_FSM_onehot_scl_state[3]_i_7 }));
CARRY4 \FSM_onehot_scl_state_reg[5]_i_2 
       (.CI(1'b0),
        .CO({clk_cnt_en2,\n_1_FSM_onehot_scl_state_reg[5]_i_2 ,\n_2_FSM_onehot_scl_state_reg[5]_i_2 ,\n_3_FSM_onehot_scl_state_reg[5]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_scl_state_reg[5]_i_2_O_UNCONNECTED [3:0]),
        .S({I10,\n_0_FSM_onehot_scl_state[5]_i_5 ,\n_0_FSM_onehot_scl_state[5]_i_6 ,\n_0_FSM_onehot_scl_state[5]_i_7 }));
CARRY4 \FSM_onehot_scl_state_reg[6]_i_2 
       (.CI(1'b0),
        .CO({next_scl_state10_out,\n_1_FSM_onehot_scl_state_reg[6]_i_2 ,\n_2_FSM_onehot_scl_state_reg[6]_i_2 ,\n_3_FSM_onehot_scl_state_reg[6]_i_2 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_scl_state_reg[6]_i_2_O_UNCONNECTED [3:0]),
        .S({I12,\n_0_FSM_onehot_scl_state[6]_i_5 ,\n_0_FSM_onehot_scl_state[6]_i_6 ,\n_0_FSM_onehot_scl_state[6]_i_7 }));
CARRY4 \FSM_onehot_scl_state_reg[9]_i_10 
       (.CI(1'b0),
        .CO({clk_cnt_en1,\n_1_FSM_onehot_scl_state_reg[9]_i_10 ,\n_2_FSM_onehot_scl_state_reg[9]_i_10 ,\n_3_FSM_onehot_scl_state_reg[9]_i_10 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_scl_state_reg[9]_i_10_O_UNCONNECTED [3:0]),
        .S({I8,\n_0_FSM_onehot_scl_state[9]_i_25 ,\n_0_FSM_onehot_scl_state[9]_i_26 ,\n_0_FSM_onehot_scl_state[9]_i_27 }));
CARRY4 \FSM_onehot_scl_state_reg[9]_i_6 
       (.CI(1'b0),
        .CO({next_scl_state1,\n_1_FSM_onehot_scl_state_reg[9]_i_6 ,\n_2_FSM_onehot_scl_state_reg[9]_i_6 ,\n_3_FSM_onehot_scl_state_reg[9]_i_6 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_scl_state_reg[9]_i_6_O_UNCONNECTED [3:0]),
        .S({I13,\n_0_FSM_onehot_scl_state[9]_i_12 ,\n_0_FSM_onehot_scl_state[9]_i_13 ,\n_0_FSM_onehot_scl_state[9]_i_14 }));
CARRY4 \FSM_onehot_scl_state_reg[9]_i_8 
       (.CI(1'b0),
        .CO({clk_cnt_en12_out,\n_1_FSM_onehot_scl_state_reg[9]_i_8 ,\n_2_FSM_onehot_scl_state_reg[9]_i_8 ,\n_3_FSM_onehot_scl_state_reg[9]_i_8 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_scl_state_reg[9]_i_8_O_UNCONNECTED [3:0]),
        .S({I9,\n_0_FSM_onehot_scl_state[9]_i_17 ,\n_0_FSM_onehot_scl_state[9]_i_18 ,\n_0_FSM_onehot_scl_state[9]_i_19 }));
CARRY4 \FSM_onehot_scl_state_reg[9]_i_9 
       (.CI(1'b0),
        .CO({clk_cnt_en11_out,\n_1_FSM_onehot_scl_state_reg[9]_i_9 ,\n_2_FSM_onehot_scl_state_reg[9]_i_9 ,\n_3_FSM_onehot_scl_state_reg[9]_i_9 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_scl_state_reg[9]_i_9_O_UNCONNECTED [3:0]),
        .S({S,\n_0_FSM_onehot_scl_state[9]_i_21 ,\n_0_FSM_onehot_scl_state[9]_i_22 ,\n_0_FSM_onehot_scl_state[9]_i_23 }));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h00000116)) 
     \q_int[0]_i_10 
       (.I0(I2[2]),
        .I1(I2[8]),
        .I2(I2[6]),
        .I3(I2[4]),
        .I4(I2[3]),
        .O(\n_0_q_int[0]_i_10 ));
LUT6 #(
    .INIT(64'h000000050005051A)) 
     \q_int[0]_i_11 
       (.I0(I2[2]),
        .I1(scl_clean),
        .I2(I2[3]),
        .I3(I2[4]),
        .I4(I2[6]),
        .I5(I2[8]),
        .O(\n_0_q_int[0]_i_11 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \q_int[0]_i_12 
       (.I0(I2[8]),
        .I1(scl_clean),
        .I2(I2[5]),
        .I3(I2[4]),
        .I4(I2[7]),
        .I5(I2[6]),
        .O(\n_0_q_int[0]_i_12 ));
LUT2 #(
    .INIT(4'h1)) 
     \q_int[0]_i_13 
       (.I0(I2[6]),
        .I1(I2[8]),
        .O(\n_0_q_int[0]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \q_int[0]_i_14 
       (.I0(I2[8]),
        .I1(I2[6]),
        .I2(I2[3]),
        .I3(I2[4]),
        .O(\n_0_q_int[0]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \q_int[0]_i_15 
       (.I0(I2[6]),
        .I1(scl_clean),
        .I2(I2[4]),
        .I3(I2[8]),
        .O(\n_0_q_int[0]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h054A)) 
     \q_int[0]_i_16 
       (.I0(I2[4]),
        .I1(I3),
        .I2(I2[6]),
        .I3(I2[8]),
        .O(\n_0_q_int[0]_i_16 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
     \q_int[0]_i_1__0 
       (.I0(clk_cnt_rst),
        .I1(\n_0_q_int[0]_i_4__0 ),
        .I2(I2[5]),
        .I3(I2[0]),
        .I4(I2[7]),
        .I5(I2[1]),
        .O(\n_0_q_int[0]_i_1__0 ));
LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
     \q_int[0]_i_2 
       (.I0(O3),
        .I1(q_int_reg__0[1]),
        .I2(q_int_reg__0[3]),
        .I3(\n_0_q_int[0]_i_5 ),
        .I4(q_int_reg__0[2]),
        .I5(clk_cnt_rst),
        .O(\n_0_q_int[0]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFF55550100)) 
     \q_int[0]_i_3__0 
       (.I0(\n_0_q_int[0]_i_6 ),
        .I1(I3),
        .I2(I2[8]),
        .I3(\n_0_FSM_onehot_scl_state[9]_i_4 ),
        .I4(\n_0_q_int[0]_i_7 ),
        .I5(\n_0_q_int[0]_i_8 ),
        .O(clk_cnt_rst));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \q_int[0]_i_4__0 
       (.I0(\n_0_q_int[0]_i_9 ),
        .I1(\n_0_FSM_onehot_scl_state[9]_i_4 ),
        .I2(\n_0_q_int[0]_i_10 ),
        .I3(clk_cnt_en2),
        .I4(\n_0_q_int[0]_i_11 ),
        .O(\n_0_q_int[0]_i_4__0 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \q_int[0]_i_5 
       (.I0(q_int_reg__0[4]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[8]),
        .I3(q_int_reg__0[9]),
        .I4(q_int_reg__0[7]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_q_int[0]_i_5 ));
LUT6 #(
    .INIT(64'h11111111111F1111)) 
     \q_int[0]_i_6 
       (.I0(clk_cnt_en2),
        .I1(\n_0_q_int[0]_i_12 ),
        .I2(I2[5]),
        .I3(I2[3]),
        .I4(\n_0_q_int[0]_i_13 ),
        .I5(I2[7]),
        .O(\n_0_q_int[0]_i_6 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
     \q_int[0]_i_7 
       (.I0(I2[7]),
        .I1(I2[5]),
        .I2(I2[6]),
        .I3(I2[8]),
        .I4(I2[3]),
        .I5(I2[4]),
        .O(\n_0_q_int[0]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEF10)) 
     \q_int[0]_i_8 
       (.I0(I2[8]),
        .I1(I2[6]),
        .I2(O1),
        .I3(I2[2]),
        .I4(I2[0]),
        .I5(I2[1]),
        .O(\n_0_q_int[0]_i_8 ));
LUT6 #(
    .INIT(64'hC5C0CFCFC5C0C0C0)) 
     \q_int[0]_i_9 
       (.I0(clk_cnt_en2),
        .I1(\n_0_q_int[0]_i_14 ),
        .I2(I2[2]),
        .I3(\n_0_q_int[0]_i_15 ),
        .I4(I2[3]),
        .I5(\n_0_q_int[0]_i_16 ),
        .O(\n_0_q_int[0]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \q_int[1]_i_1 
       (.I0(q_int_reg__0[1]),
        .I1(q_int_reg__0[2]),
        .I2(\n_0_q_int[0]_i_5 ),
        .I3(q_int_reg__0[3]),
        .I4(clk_cnt_rst),
        .O(\n_0_q_int[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[2]_i_1 
       (.I0(q_int_reg__0[2]),
        .I1(q_int_reg__0[3]),
        .I2(\n_0_q_int[0]_i_5 ),
        .I3(clk_cnt_rst),
        .O(\n_0_q_int[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[3]_i_1 
       (.I0(q_int_reg__0[3]),
        .I1(\n_0_q_int[0]_i_5 ),
        .I2(clk_cnt_rst),
        .O(\n_0_q_int[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[4]_i_1 
       (.I0(q_int_reg__0[4]),
        .I1(\n_0_q_int[4]_i_2 ),
        .I2(clk_cnt_rst),
        .O(\n_0_q_int[4]_i_1 ));
LUT5 #(
    .INIT(32'h80000000)) 
     \q_int[4]_i_2 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[7]),
        .I2(q_int_reg__0[9]),
        .I3(q_int_reg__0[8]),
        .I4(q_int_reg__0[6]),
        .O(\n_0_q_int[4]_i_2 ));
LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
     \q_int[5]_i_1 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[8]),
        .I3(q_int_reg__0[9]),
        .I4(q_int_reg__0[7]),
        .I5(clk_cnt_rst),
        .O(\n_0_q_int[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \q_int[6]_i_1 
       (.I0(q_int_reg__0[6]),
        .I1(q_int_reg__0[7]),
        .I2(q_int_reg__0[9]),
        .I3(q_int_reg__0[8]),
        .I4(clk_cnt_rst),
        .O(\n_0_q_int[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[7]_i_1 
       (.I0(q_int_reg__0[7]),
        .I1(q_int_reg__0[8]),
        .I2(q_int_reg__0[9]),
        .I3(clk_cnt_rst),
        .O(\n_0_q_int[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[8]_i_1 
       (.I0(q_int_reg__0[8]),
        .I1(q_int_reg__0[9]),
        .I2(clk_cnt_rst),
        .O(\n_0_q_int[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \q_int[9]_i_1 
       (.I0(q_int_reg__0[9]),
        .I1(clk_cnt_rst),
        .O(\n_0_q_int[9]_i_1 ));
(* counter = "6" *) 
   FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[0]_i_2 ),
        .Q(O3),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[1]_i_1 ),
        .Q(q_int_reg__0[1]),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[2]_i_1 ),
        .Q(q_int_reg__0[2]),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[3]_i_1 ),
        .Q(q_int_reg__0[3]),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[4]_i_1 ),
        .Q(q_int_reg__0[4]),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[5]_i_1 ),
        .Q(q_int_reg__0[5]),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[6]_i_1 ),
        .Q(q_int_reg__0[6]),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[7]_i_1 ),
        .Q(q_int_reg__0[7]),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[8]_i_1 ),
        .Q(q_int_reg__0[8]),
        .R(SR));
(* counter = "6" *) 
   FDRE \q_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__0 ),
        .D(\n_0_q_int[9]_i_1 ),
        .Q(q_int_reg__0[9]),
        .R(SR));
LUT4 #(
    .INIT(16'hEFE0)) 
     sda_cout_reg_i_1
       (.I0(I2[0]),
        .I1(n_0_sda_cout_reg_i_2),
        .I2(sda_cout),
        .I3(sda_cout_reg),
        .O(O4));
LUT6 #(
    .INIT(64'h00000000FF540054)) 
     sda_cout_reg_i_2
       (.I0(sda_cout1),
        .I1(Q),
        .I2(I1),
        .I3(I2[6]),
        .I4(clk_cnt_en11_out),
        .I5(I2[1]),
        .O(n_0_sda_cout_reg_i_2));
LUT6 #(
    .INIT(64'h0101010301010131)) 
     sda_cout_reg_i_3
       (.I0(n_0_sda_cout_reg_i_5),
        .I1(I4),
        .I2(I2[0]),
        .I3(I2[4]),
        .I4(I5),
        .I5(I2[1]),
        .O(sda_cout));
LUT6 #(
    .INIT(64'hFFFFFFF0FFFDF0FF)) 
     sda_cout_reg_i_5
       (.I0(clk_cnt_en11_out),
        .I1(I6),
        .I2(I2[1]),
        .I3(I2[4]),
        .I4(I2[6]),
        .I5(I2[5]),
        .O(n_0_sda_cout_reg_i_5));
LUT5 #(
    .INIT(32'hFEFF0200)) 
     stop_scl_reg_i_1
       (.I0(I28),
        .I1(I2[7]),
        .I2(I2[2]),
        .I3(n_0_stop_scl_reg_i_3),
        .I4(stop_scl_reg),
        .O(O2));
LUT6 #(
    .INIT(64'h00000022002222F0)) 
     stop_scl_reg_i_3
       (.I0(I24),
        .I1(I2[4]),
        .I2(n_0_stop_scl_reg_i_6),
        .I3(I2[3]),
        .I4(I2[0]),
        .I5(I2[1]),
        .O(n_0_stop_scl_reg_i_3));
LUT6 #(
    .INIT(64'h00000004000F0FF0)) 
     stop_scl_reg_i_6
       (.I0(I6),
        .I1(clk_cnt_en11_out),
        .I2(I2[4]),
        .I3(I2[5]),
        .I4(I2[8]),
        .I5(I2[6]),
        .O(n_0_stop_scl_reg_i_6));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module axi_iic_0_upcnt_n_2
   (O4,
    O1,
    I10,
    I1,
    I19,
    sda_clean,
    sda_rin_d1,
    I2,
    tx_under_prev_d1,
    rsta_d1,
    Q,
    gen_stop_d1,
    I3,
    scl_clean,
    SR,
    s_axi_aclk);
  output [0:0]O4;
  output O1;
  input [0:0]I10;
  input I1;
  input [8:0]I19;
  input sda_clean;
  input sda_rin_d1;
  input I2;
  input tx_under_prev_d1;
  input rsta_d1;
  input [1:0]Q;
  input gen_stop_d1;
  input I3;
  input scl_clean;
  input [0:0]SR;
  input s_axi_aclk;

  wire I1;
  wire [0:0]I10;
  wire [8:0]I19;
  wire I2;
  wire I3;
  wire O1;
  wire [0:0]O4;
  wire [1:0]Q;
  wire [0:0]SR;
  wire gen_stop_d1;
  wire \n_0_q_int[0]_i_1 ;
  wire \n_0_q_int[0]_i_2__0 ;
  wire \n_0_q_int[0]_i_4 ;
  wire \n_0_q_int[0]_i_5__0 ;
  wire \n_0_q_int[1]_i_1__0 ;
  wire \n_0_q_int[2]_i_1__0 ;
  wire \n_0_q_int[3]_i_1__0 ;
  wire \n_0_q_int[4]_i_1__0 ;
  wire \n_0_q_int[4]_i_2__0 ;
  wire \n_0_q_int[5]_i_1__0 ;
  wire \n_0_q_int[6]_i_1__0 ;
  wire \n_0_q_int[7]_i_1__0 ;
  wire \n_0_q_int[8]_i_1__0 ;
  wire \n_0_q_int[9]_i_1__0 ;
  wire n_0_sda_setup_i_4;
  wire n_0_sda_setup_i_5;
  wire n_0_sda_setup_i_6;
  wire n_0_sda_setup_reg_i_2;
  wire n_1_sda_setup_reg_i_2;
  wire n_2_sda_setup_reg_i_2;
  wire n_3_sda_setup_reg_i_2;
  wire p_13_in;
  wire [1:9]q_int_reg__0;
  wire rsta_d1;
  wire s_axi_aclk;
  wire scl_clean;
  wire sda_clean;
  wire sda_rin_d1;
  wire tx_under_prev_d1;
  wire [3:0]NLW_sda_setup_reg_i_2_O_UNCONNECTED;

LUT2 #(
    .INIT(4'hE)) 
     \q_int[0]_i_1 
       (.I0(p_13_in),
        .I1(I1),
        .O(\n_0_q_int[0]_i_1 ));
LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
     \q_int[0]_i_2__0 
       (.I0(O4),
        .I1(q_int_reg__0[1]),
        .I2(q_int_reg__0[3]),
        .I3(\n_0_q_int[0]_i_4 ),
        .I4(q_int_reg__0[2]),
        .I5(p_13_in),
        .O(\n_0_q_int[0]_i_2__0 ));
LUT5 #(
    .INIT(32'hBEFFBEBE)) 
     \q_int[0]_i_3 
       (.I0(\n_0_q_int[0]_i_5__0 ),
        .I1(sda_clean),
        .I2(sda_rin_d1),
        .I3(I2),
        .I4(tx_under_prev_d1),
        .O(p_13_in));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \q_int[0]_i_4 
       (.I0(q_int_reg__0[4]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[8]),
        .I3(q_int_reg__0[9]),
        .I4(q_int_reg__0[7]),
        .I5(q_int_reg__0[5]),
        .O(\n_0_q_int[0]_i_4 ));
LUT4 #(
    .INIT(16'h4F44)) 
     \q_int[0]_i_5__0 
       (.I0(rsta_d1),
        .I1(Q[1]),
        .I2(gen_stop_d1),
        .I3(I3),
        .O(\n_0_q_int[0]_i_5__0 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \q_int[1]_i_1__0 
       (.I0(q_int_reg__0[1]),
        .I1(q_int_reg__0[2]),
        .I2(\n_0_q_int[0]_i_4 ),
        .I3(q_int_reg__0[3]),
        .I4(p_13_in),
        .O(\n_0_q_int[1]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[2]_i_1__0 
       (.I0(q_int_reg__0[2]),
        .I1(q_int_reg__0[3]),
        .I2(\n_0_q_int[0]_i_4 ),
        .I3(p_13_in),
        .O(\n_0_q_int[2]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[3]_i_1__0 
       (.I0(q_int_reg__0[3]),
        .I1(\n_0_q_int[0]_i_4 ),
        .I2(p_13_in),
        .O(\n_0_q_int[3]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[4]_i_1__0 
       (.I0(q_int_reg__0[4]),
        .I1(\n_0_q_int[4]_i_2__0 ),
        .I2(p_13_in),
        .O(\n_0_q_int[4]_i_1__0 ));
LUT5 #(
    .INIT(32'h80000000)) 
     \q_int[4]_i_2__0 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[7]),
        .I2(q_int_reg__0[9]),
        .I3(q_int_reg__0[8]),
        .I4(q_int_reg__0[6]),
        .O(\n_0_q_int[4]_i_2__0 ));
LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
     \q_int[5]_i_1__0 
       (.I0(q_int_reg__0[5]),
        .I1(q_int_reg__0[6]),
        .I2(q_int_reg__0[8]),
        .I3(q_int_reg__0[9]),
        .I4(q_int_reg__0[7]),
        .I5(p_13_in),
        .O(\n_0_q_int[5]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h00006AAA)) 
     \q_int[6]_i_1__0 
       (.I0(q_int_reg__0[6]),
        .I1(q_int_reg__0[7]),
        .I2(q_int_reg__0[9]),
        .I3(q_int_reg__0[8]),
        .I4(p_13_in),
        .O(\n_0_q_int[6]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT4 #(
    .INIT(16'h006A)) 
     \q_int[7]_i_1__0 
       (.I0(q_int_reg__0[7]),
        .I1(q_int_reg__0[8]),
        .I2(q_int_reg__0[9]),
        .I3(p_13_in),
        .O(\n_0_q_int[7]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \q_int[8]_i_1__0 
       (.I0(q_int_reg__0[8]),
        .I1(q_int_reg__0[9]),
        .I2(p_13_in),
        .O(\n_0_q_int[8]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \q_int[9]_i_1__0 
       (.I0(q_int_reg__0[9]),
        .I1(p_13_in),
        .O(\n_0_q_int[9]_i_1__0 ));
(* counter = "7" *) 
   FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[0]_i_2__0 ),
        .Q(O4),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[1]_i_1__0 ),
        .Q(q_int_reg__0[1]),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[2]_i_1__0 ),
        .Q(q_int_reg__0[2]),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[3]_i_1__0 ),
        .Q(q_int_reg__0[3]),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[4]_i_1__0 ),
        .Q(q_int_reg__0[4]),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[5]_i_1__0 ),
        .Q(q_int_reg__0[5]),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[6]_i_1__0 ),
        .Q(q_int_reg__0[6]),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[7]_i_1__0 ),
        .Q(q_int_reg__0[7]),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[8]_i_1__0 ),
        .Q(q_int_reg__0[8]),
        .R(SR));
(* counter = "7" *) 
   FDRE \q_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1 ),
        .D(\n_0_q_int[9]_i_1__0 ),
        .Q(q_int_reg__0[9]),
        .R(SR));
LUT6 #(
    .INIT(64'h2222AAA20000AAA0)) 
     sda_setup_i_1
       (.I0(Q[0]),
        .I1(n_0_sda_setup_reg_i_2),
        .I2(I2),
        .I3(p_13_in),
        .I4(scl_clean),
        .I5(I1),
        .O(O1));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     sda_setup_i_4
       (.I0(q_int_reg__0[3]),
        .I1(I19[6]),
        .I2(I19[8]),
        .I3(q_int_reg__0[1]),
        .I4(I19[7]),
        .I5(q_int_reg__0[2]),
        .O(n_0_sda_setup_i_4));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     sda_setup_i_5
       (.I0(q_int_reg__0[6]),
        .I1(I19[3]),
        .I2(I19[5]),
        .I3(q_int_reg__0[4]),
        .I4(I19[4]),
        .I5(q_int_reg__0[5]),
        .O(n_0_sda_setup_i_5));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     sda_setup_i_6
       (.I0(q_int_reg__0[9]),
        .I1(I19[0]),
        .I2(I19[2]),
        .I3(q_int_reg__0[7]),
        .I4(I19[1]),
        .I5(q_int_reg__0[8]),
        .O(n_0_sda_setup_i_6));
CARRY4 sda_setup_reg_i_2
       (.CI(1'b0),
        .CO({n_0_sda_setup_reg_i_2,n_1_sda_setup_reg_i_2,n_2_sda_setup_reg_i_2,n_3_sda_setup_reg_i_2}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sda_setup_reg_i_2_O_UNCONNECTED[3:0]),
        .S({I10,n_0_sda_setup_i_4,n_0_sda_setup_i_5,n_0_sda_setup_i_6}));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module axi_iic_0_upcnt_n__parameterized0
   (state_reg,
    E,
    EarlyAckDataState0,
    O1,
    detect_start,
    bit_cnt_en,
    ro_prev_d1,
    Ro_prev,
    scl_f_edg_d2,
    Q,
    I1,
    p_1_in24_in,
    bit_cnt_en3,
    I2,
    dtc_i,
    SR,
    s_axi_aclk);
  output [0:0]state_reg;
  output [0:0]E;
  output EarlyAckDataState0;
  output O1;
  input detect_start;
  input bit_cnt_en;
  input ro_prev_d1;
  input Ro_prev;
  input scl_f_edg_d2;
  input [6:0]Q;
  input I1;
  input p_1_in24_in;
  input bit_cnt_en3;
  input [0:0]I2;
  input dtc_i;
  input [0:0]SR;
  input s_axi_aclk;

  wire [0:0]E;
  wire EarlyAckDataState0;
  wire I1;
  wire [0:0]I2;
  wire O1;
  wire [6:0]Q;
  wire Ro_prev;
  wire [0:0]SR;
  wire bit_cnt_en;
  wire bit_cnt_en3;
  wire detect_start;
  wire dtc_i;
  wire \n_0_FSM_onehot_state[7]_i_4 ;
  wire \n_0_FSM_onehot_state[7]_i_5 ;
  wire \n_0_FSM_onehot_state[7]_i_7 ;
  wire \n_0_FSM_onehot_state[7]_i_8 ;
  wire n_0_dtc_i_i_2;
  wire \n_0_q_int[0]_i_1__1 ;
  wire \n_0_q_int[0]_i_2__1 ;
  wire \n_0_q_int[1]_i_1__1 ;
  wire \n_0_q_int[2]_i_1__1 ;
  wire \n_0_q_int[3]_i_1__1 ;
  wire \n_0_q_int_reg[0] ;
  wire \n_0_q_int_reg[1] ;
  wire \n_0_q_int_reg[2] ;
  wire \n_0_q_int_reg[3] ;
  wire p_1_in24_in;
  wire ro_prev_d1;
  wire s_axi_aclk;
  wire scl_f_edg_d2;
  wire [0:0]state_reg;

LUT6 #(
    .INIT(64'hAAABAAAAEAAAAAAA)) 
     EarlyAckDataState_i_1
       (.I0(I1),
        .I1(\n_0_q_int_reg[3] ),
        .I2(\n_0_q_int_reg[2] ),
        .I3(\n_0_q_int_reg[1] ),
        .I4(p_1_in24_in),
        .I5(\n_0_q_int_reg[0] ),
        .O(EarlyAckDataState0));
LUT5 #(
    .INIT(32'hF2F2F200)) 
     \FSM_onehot_state[7]_i_2 
       (.I0(ro_prev_d1),
        .I1(Ro_prev),
        .I2(scl_f_edg_d2),
        .I3(\n_0_FSM_onehot_state[7]_i_4 ),
        .I4(\n_0_FSM_onehot_state[7]_i_5 ),
        .O(E));
LUT6 #(
    .INIT(64'hFFFFABA9FEFEABA9)) 
     \FSM_onehot_state[7]_i_4 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(detect_start),
        .I4(Q[1]),
        .I5(\n_0_FSM_onehot_state[7]_i_7 ),
        .O(\n_0_FSM_onehot_state[7]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEEE)) 
     \FSM_onehot_state[7]_i_5 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(\n_0_FSM_onehot_state[7]_i_8 ),
        .I5(Q[6]),
        .O(\n_0_FSM_onehot_state[7]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \FSM_onehot_state[7]_i_7 
       (.I0(\n_0_q_int_reg[3] ),
        .I1(\n_0_q_int_reg[1] ),
        .I2(\n_0_q_int_reg[0] ),
        .I3(\n_0_q_int_reg[2] ),
        .O(\n_0_FSM_onehot_state[7]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hAAAAAABA)) 
     \FSM_onehot_state[7]_i_8 
       (.I0(detect_start),
        .I1(\n_0_q_int_reg[2] ),
        .I2(\n_0_q_int_reg[0] ),
        .I3(\n_0_q_int_reg[1] ),
        .I4(\n_0_q_int_reg[3] ),
        .O(\n_0_FSM_onehot_state[7]_i_8 ));
LUT6 #(
    .INIT(64'h40FF000040000000)) 
     dtc_i_i_1
       (.I0(\n_0_q_int_reg[0] ),
        .I1(\n_0_q_int_reg[1] ),
        .I2(n_0_dtc_i_i_2),
        .I3(bit_cnt_en3),
        .I4(I2),
        .I5(dtc_i),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h8)) 
     dtc_i_i_2
       (.I0(\n_0_q_int_reg[2] ),
        .I1(\n_0_q_int_reg[3] ),
        .O(n_0_dtc_i_i_2));
LUT3 #(
    .INIT(8'hFB)) 
     \q_int[0]_i_1__1 
       (.I0(detect_start),
        .I1(state_reg),
        .I2(bit_cnt_en),
        .O(\n_0_q_int[0]_i_1__1 ));
LUT6 #(
    .INIT(64'h0440404040404040)) 
     \q_int[0]_i_2__1 
       (.I0(detect_start),
        .I1(state_reg),
        .I2(\n_0_q_int_reg[0] ),
        .I3(\n_0_q_int_reg[1] ),
        .I4(\n_0_q_int_reg[3] ),
        .I5(\n_0_q_int_reg[2] ),
        .O(\n_0_q_int[0]_i_2__1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h04404040)) 
     \q_int[1]_i_1__1 
       (.I0(detect_start),
        .I1(state_reg),
        .I2(\n_0_q_int_reg[1] ),
        .I3(\n_0_q_int_reg[2] ),
        .I4(\n_0_q_int_reg[3] ),
        .O(\n_0_q_int[1]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0440)) 
     \q_int[2]_i_1__1 
       (.I0(detect_start),
        .I1(state_reg),
        .I2(\n_0_q_int_reg[2] ),
        .I3(\n_0_q_int_reg[3] ),
        .O(\n_0_q_int[2]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \q_int[3]_i_1__1 
       (.I0(detect_start),
        .I1(state_reg),
        .I2(\n_0_q_int_reg[3] ),
        .O(\n_0_q_int[3]_i_1__1 ));
(* counter = "5" *) 
   FDRE \q_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__1 ),
        .D(\n_0_q_int[0]_i_2__1 ),
        .Q(\n_0_q_int_reg[0] ),
        .R(SR));
(* counter = "5" *) 
   FDRE \q_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__1 ),
        .D(\n_0_q_int[1]_i_1__1 ),
        .Q(\n_0_q_int_reg[1] ),
        .R(SR));
(* counter = "5" *) 
   FDRE \q_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__1 ),
        .D(\n_0_q_int[2]_i_1__1 ),
        .Q(\n_0_q_int_reg[2] ),
        .R(SR));
(* counter = "5" *) 
   FDRE \q_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_q_int[0]_i_1__1 ),
        .D(\n_0_q_int[3]_i_1__1 ),
        .Q(\n_0_q_int_reg[3] ),
        .R(SR));
LUT3 #(
    .INIT(8'hFE)) 
     shift_reg_ld_i_2
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[4]),
        .O(state_reg));
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
