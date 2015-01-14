-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
-- Date        : Wed Jan 14 12:00:32 2015
-- Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim C:/junk/revCtrl/ip/axi_iic_0/axi_iic_0_funcsim.vhdl
-- Design      : axi_iic_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_SRL_FIFO is
  port (
    Rc_Data_Exists : out STD_LOGIC;
    Rc_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Rc_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_Empty : out STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    O7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_wr : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    Rc_fifo_rd : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_SRL_FIFO : entity is "SRL_FIFO";
end axi_iic_0_SRL_FIFO;

architecture STRUCTURE of axi_iic_0_SRL_FIFO is
  signal CI : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \^rc_data_exists\ : STD_LOGIC;
  signal \^rc_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__0\ : label is "soft_lutpair34";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/READ_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of \sr_i[2]_i_1\ : label is "soft_lutpair34";
begin
  Rc_Data_Exists <= \^rc_data_exists\;
  Rc_addr(0 to 3) <= \^rc_addr\(0 to 3);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => D_0,
      Q => \^rc_addr\(0),
      R => I1
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_Addr_Counters[1].MUXCY_L_I\,
      CO(0) => CI,
      CYINIT => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^rc_addr\(2),
      DI(1) => \^rc_addr\(1),
      DI(0) => \^rc_addr\(0),
      O(3) => \n_0_Addr_Counters[3].XORCY_I\,
      O(2) => \n_0_Addr_Counters[2].XORCY_I\,
      O(1) => \n_0_Addr_Counters[1].XORCY_I\,
      O(0) => D_0,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\,
      I1 => \^rc_addr\(0),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => I3,
      I1 => \^rc_addr\(0),
      I2 => \^rc_addr\(1),
      I3 => \^rc_addr\(3),
      I4 => \^rc_addr\(2),
      I5 => I4,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\
    );
\Addr_Counters[0].MUXCY_L_I_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
    port map (
      I0 => Rc_fifo_wr_d,
      I1 => Rc_fifo_wr,
      I2 => \^rc_addr\(2),
      I3 => \^rc_addr\(3),
      I4 => \^rc_addr\(1),
      I5 => \^rc_addr\(0),
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \n_0_Addr_Counters[1].XORCY_I\,
      Q => \^rc_addr\(1),
      R => I1
    );
\Addr_Counters[1].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\,
      I1 => \^rc_addr\(1),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \n_0_Addr_Counters[2].XORCY_I\,
      Q => \^rc_addr\(2),
      R => I1
    );
\Addr_Counters[2].MUXCY_L_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\,
      I1 => \^rc_addr\(2),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^rc_data_exists\,
      D => \n_0_Addr_Counters[3].XORCY_I\,
      Q => \^rc_addr\(3),
      R => I1
    );
\Addr_Counters[3].XORCY_I_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__0\,
      I1 => \^rc_addr\(3),
      I2 => Rc_fifo_rd,
      I3 => Rc_fifo_rd_d,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^rc_data_exists\,
      R => I1
    );
\Data_Exists_DFF_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \^rc_addr\(0),
      I1 => \^rc_addr\(1),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(2),
      O => buffer_Empty
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O7(7),
      Q => Rc_fifo_data(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O7(6),
      Q => Rc_fifo_data(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O7(5),
      Q => Rc_fifo_data(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O7(4),
      Q => Rc_fifo_data(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O7(3),
      Q => Rc_fifo_data(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O7(2),
      Q => Rc_fifo_data(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O7(1),
      Q => Rc_fifo_data(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^rc_addr\(0),
      A1 => \^rc_addr\(1),
      A2 => \^rc_addr\(2),
      A3 => \^rc_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__1\,
      CLK => s_axi_aclk,
      D => O7(0),
      Q => Rc_fifo_data(7)
    );
\sr_i[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^rc_data_exists\,
      O => D(1)
    );
\sr_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^rc_addr\(0),
      I1 => \^rc_addr\(1),
      I2 => \^rc_addr\(3),
      I3 => \^rc_addr\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_SRL_FIFO_0 is
  port (
    Tx_data_exists : out STD_LOGIC;
    Tx_addr : out STD_LOGIC_VECTOR ( 0 to 3 );
    Tx_fifo_data : out STD_LOGIC_VECTOR ( 0 to 7 );
    p_3_in : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    I14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    buffer_Empty : out STD_LOGIC;
    I22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_fifo_wr_d : in STD_LOGIC;
    Tx_fifo_wr : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    I2 : in STD_LOGIC;
    txFifoRd : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    shift_reg_ld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_SRL_FIFO_0 : entity is "SRL_FIFO";
end axi_iic_0_SRL_FIFO_0;

architecture STRUCTURE of axi_iic_0_SRL_FIFO_0 is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \^tx_addr\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^tx_data_exists\ : STD_LOGIC;
  signal \^tx_fifo_data\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_3\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_2 : label is "soft_lutpair40";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_I/FIFO_RAM[7].SRL16E_I ";
  attribute SOFT_HLUTNM of callingReadAccess_i_1 : label is "soft_lutpair39";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \sr_i[0]_i_1\ : label is std.standard.true;
  attribute SOFT_HLUTNM of \sr_i[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sr_i[3]_i_1\ : label is "soft_lutpair40";
begin
  Tx_addr(0 to 3) <= \^tx_addr\(0 to 3);
  Tx_data_exists <= \^tx_data_exists\;
  Tx_fifo_data(0 to 7) <= \^tx_fifo_data\(0 to 7);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => D,
      Q => \^tx_addr\(0),
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_Addr_Counters[1].MUXCY_L_I\,
      CO(0) => CI,
      CYINIT => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \^tx_addr\(2),
      DI(1) => \^tx_addr\(1),
      DI(0) => \^tx_addr\(0),
      O(3) => \n_0_Addr_Counters[3].XORCY_I\,
      O(2) => \n_0_Addr_Counters[2].XORCY_I\,
      O(1) => \n_0_Addr_Counters[1].XORCY_I\,
      O(0) => D,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => \^tx_addr\(0),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => I2,
      I1 => \^tx_addr\(0),
      I2 => \^tx_addr\(1),
      I3 => \^tx_addr\(3),
      I4 => \^tx_addr\(2),
      I5 => txFifoRd,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\
    );
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
    port map (
      I0 => Tx_fifo_wr_d,
      I1 => Tx_fifo_wr,
      I2 => \^tx_addr\(2),
      I3 => \^tx_addr\(3),
      I4 => \^tx_addr\(1),
      I5 => \^tx_addr\(0),
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \n_0_Addr_Counters[1].XORCY_I\,
      Q => \^tx_addr\(1),
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => \^tx_addr\(1),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \n_0_Addr_Counters[2].XORCY_I\,
      Q => \^tx_addr\(2),
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => \^tx_addr\(2),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^tx_data_exists\,
      D => \n_0_Addr_Counters[3].XORCY_I\,
      Q => \^tx_addr\(3),
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3\,
      I1 => \^tx_addr\(3),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => \^tx_data_exists\,
      R => Tx_fifo_rst
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \^tx_addr\(0),
      I1 => \^tx_addr\(1),
      I2 => \^tx_addr\(3),
      I3 => \^tx_addr\(2),
      O => buffer_Empty
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^tx_addr\(3),
      O => O2
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(7),
      Q => \^tx_fifo_data\(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(6),
      Q => \^tx_fifo_data\(1)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(5),
      Q => \^tx_fifo_data\(2)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(4),
      Q => \^tx_fifo_data\(3)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(3),
      Q => \^tx_fifo_data\(4)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(2),
      Q => \^tx_fifo_data\(5)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(1),
      Q => \^tx_fifo_data\(6)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \^tx_addr\(0),
      A1 => \^tx_addr\(1),
      A2 => \^tx_addr\(2),
      A3 => \^tx_addr\(3),
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2__0\,
      CLK => s_axi_aclk,
      D => s_axi_wdata(0),
      Q => \^tx_fifo_data\(7)
    );
callingReadAccess_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => \^tx_data_exists\,
      I1 => dynamic_MSMS(0),
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      O => p_3_in
    );
\data_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => \^tx_fifo_data\(7),
      I1 => sda_clean,
      I2 => shift_reg_ld,
      O => I22(0)
    );
\sr_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^tx_data_exists\,
      O => O1
    );
\sr_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^tx_addr\(0),
      I1 => \^tx_addr\(1),
      I2 => \^tx_addr\(3),
      I3 => \^tx_addr\(2),
      O => I14(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_iic_0_SRL_FIFO__parameterized0\ is
  port (
    O1 : out STD_LOGIC;
    dynamic_MSMS : out STD_LOGIC_VECTOR ( 0 to 1 );
    p_4_in : out STD_LOGIC;
    buffer_Empty : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    ctrl_fifo_wr_i : in STD_LOGIC;
    Tx_data_exists : in STD_LOGIC;
    txFifoRd : in STD_LOGIC;
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_rd : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_iic_0_SRL_FIFO__parameterized0\ : entity is "SRL_FIFO";
end \axi_iic_0_SRL_FIFO__parameterized0\;

architecture STRUCTURE of \axi_iic_0_SRL_FIFO__parameterized0\ is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \^dynamic_msms\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \n_0_Addr_Counters[0].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3__1\ : label is "soft_lutpair38";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_3__0\ : label is "soft_lutpair38";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/X_IIC/WRITE_FIFO_CTRL_I/FIFO_RAM[1].SRL16E_I ";
begin
  O1 <= \^o1\;
  dynamic_MSMS(0 to 1) <= \^dynamic_msms\(0 to 1);
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^o1\,
      D => D,
      Q => \n_0_Addr_Counters[0].FDRE_I\,
      R => Tx_fifo_rst
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_Addr_Counters[1].MUXCY_L_I\,
      CO(0) => CI,
      CYINIT => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \n_0_Addr_Counters[2].FDRE_I\,
      DI(1) => \n_0_Addr_Counters[1].FDRE_I\,
      DI(0) => \n_0_Addr_Counters[0].FDRE_I\,
      O(3) => \n_0_Addr_Counters[3].XORCY_I\,
      O(2) => \n_0_Addr_Counters[2].XORCY_I\,
      O(1) => \n_0_Addr_Counters[1].XORCY_I\,
      O(0) => D,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\,
      I1 => \n_0_Addr_Counters[0].FDRE_I\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2AAAAAAA"
    )
    port map (
      I0 => ctrl_fifo_wr_i,
      I1 => \n_0_Addr_Counters[0].FDRE_I\,
      I2 => \n_0_Addr_Counters[1].FDRE_I\,
      I3 => \n_0_Addr_Counters[3].FDRE_I\,
      I4 => \n_0_Addr_Counters[2].FDRE_I\,
      I5 => txFifoRd,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\
    );
\Addr_Counters[0].MUXCY_L_I_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ctrl_fifo_wr_i,
      I1 => \n_0_Addr_Counters[2].FDRE_I\,
      I2 => \n_0_Addr_Counters[3].FDRE_I\,
      I3 => \n_0_Addr_Counters[1].FDRE_I\,
      I4 => \n_0_Addr_Counters[0].FDRE_I\,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^o1\,
      D => \n_0_Addr_Counters[1].XORCY_I\,
      Q => \n_0_Addr_Counters[1].FDRE_I\,
      R => Tx_fifo_rst
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\,
      I1 => \n_0_Addr_Counters[1].FDRE_I\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^o1\,
      D => \n_0_Addr_Counters[2].XORCY_I\,
      Q => \n_0_Addr_Counters[2].FDRE_I\,
      R => Tx_fifo_rst
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\,
      I1 => \n_0_Addr_Counters[2].FDRE_I\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^o1\,
      D => \n_0_Addr_Counters[3].XORCY_I\,
      Q => \n_0_Addr_Counters[3].FDRE_I\,
      R => Tx_fifo_rst
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22228288"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].MUXCY_L_I_i_3__1\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => Tx_fifo_rd_d,
      I3 => Tx_fifo_rd,
      I4 => rdCntrFrmTxFifo,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => \^o1\,
      R => Tx_fifo_rst
    );
\Data_Exists_DFF_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_Addr_Counters[0].FDRE_I\,
      I1 => \n_0_Addr_Counters[1].FDRE_I\,
      I2 => \n_0_Addr_Counters[3].FDRE_I\,
      I3 => \n_0_Addr_Counters[2].FDRE_I\,
      O => buffer_Empty
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \n_0_Addr_Counters[0].FDRE_I\,
      A1 => \n_0_Addr_Counters[1].FDRE_I\,
      A2 => \n_0_Addr_Counters[2].FDRE_I\,
      A3 => \n_0_Addr_Counters[3].FDRE_I\,
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      CLK => s_axi_aclk,
      D => I2,
      Q => \^dynamic_msms\(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \n_0_Addr_Counters[0].FDRE_I\,
      A1 => \n_0_Addr_Counters[1].FDRE_I\,
      A2 => \n_0_Addr_Counters[2].FDRE_I\,
      A3 => \n_0_Addr_Counters[3].FDRE_I\,
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      CLK => s_axi_aclk,
      D => I3,
      Q => \^dynamic_msms\(1)
    );
\cr_i[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^dynamic_msms\(1),
      I1 => Tx_data_exists,
      O => p_4_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_address_decoder is
  port (
    p_18_in : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    IIC2Bus_Data1 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    I26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I25 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I24 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I23 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O10 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O8 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    reset2Bus_Error : out STD_LOGIC;
    AXI_IP2Bus_RdAck0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AXI_IP2Bus_WrAck : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_IP2Bus_RdAck : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I27 : in STD_LOGIC;
    I28 : in STD_LOGIC;
    I29 : in STD_LOGIC;
    I30 : in STD_LOGIC;
    I31 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    I32 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_address_decoder : entity is "address_decoder";
end axi_iic_0_address_decoder;

architecture STRUCTURE of axi_iic_0_address_decoder is
  signal AXI_Bus2IP_CS : STD_LOGIC_VECTOR ( 0 to 2 );
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^iic2bus_data1\ : STD_LOGIC;
  signal \Intr2Bus_DBus__0\ : STD_LOGIC_VECTOR ( 24 to 31 );
  signal \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o12\ : STD_LOGIC;
  signal \^o13\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o7\ : STD_LOGIC;
  signal \^o8\ : STD_LOGIC;
  signal n_0_Bus_RNW_reg_i_1 : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : STD_LOGIC;
  signal \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2\ : STD_LOGIC;
  signal \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_4\ : STD_LOGIC;
  signal \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_9\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal \^p_18_in\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \^reset2bus_error\ : STD_LOGIC;
  signal start : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXI_IP2Bus_RdAck_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of AXI_IP2Bus_WrAck_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FIFO_GEN_DTR.Tx_fifo_wr_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_5\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_6\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_7\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GPO_GEN.gpo_i[31]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[1].cs_out_i[1]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[1].cs_out_i[1]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[1].cs_out_i[1]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[2].cs_out_i[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.Rc_fifo_rd_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \adr_i[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \cr_i[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[7]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of ipif_glbl_irpt_enable_reg_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_5\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[9]_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \timing_param_tbuf_i[9]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \timing_param_thddat_i[9]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \timing_param_thdsta_i[9]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \timing_param_thigh_i[9]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \timing_param_tlow_i[9]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \timing_param_tsudat_i[9]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \timing_param_tsusta_i[9]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \timing_param_tsusto_i[9]_i_1\ : label is "soft_lutpair54";
begin
  IIC2Bus_Data1 <= \^iic2bus_data1\;
  O1 <= \^o1\;
  O12 <= \^o12\;
  O13 <= \^o13\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  O5 <= \^o5\;
  O7 <= \^o7\;
  O8 <= \^o8\;
  p_18_in <= \^p_18_in\;
  reset2Bus_Error <= \^reset2bus_error\;
AXI_IP2Bus_RdAck_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      I0 => AXI_Bus2IP_CS(2),
      I1 => AXI_Bus2IP_CS(0),
      I2 => AXI_Bus2IP_CS(1),
      I3 => s_axi_arvalid,
      O => AXI_IP2Bus_RdAck0
    );
AXI_IP2Bus_WrAck_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => AXI_Bus2IP_CS(2),
      I1 => AXI_Bus2IP_CS(0),
      I2 => AXI_Bus2IP_CS(1),
      I3 => s_axi_arvalid,
      O => O9
    );
Bus_RNW_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7000000F0"
    )
    port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => I1,
      I4 => I2,
      I5 => \^o2\,
      O => n_0_Bus_RNW_reg_i_1
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Bus_RNW_reg_i_1,
      Q => \^o2\,
      R => '0'
    );
\FIFO_GEN_DTR.Tx_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_16_in,
      I1 => \^o2\,
      O => O10
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => \^o12\,
      I1 => \^o5\,
      I2 => p_1_in,
      I3 => \^o4\,
      I4 => \^o8\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\,
      Q => p_25_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => \^o4\,
      I1 => \^o3\,
      I2 => \^o5\,
      I3 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I4 => \^o8\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\,
      Q => \^p_18_in\,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => \^o4\,
      I4 => \^o8\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\,
      Q => p_17_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => \^o4\,
      I1 => \^o3\,
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => \^o5\,
      I4 => \^o8\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\,
      Q => p_16_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => \^o12\,
      I1 => \^o3\,
      I2 => \^o5\,
      I3 => \^o4\,
      I4 => \^o8\,
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\,
      Q => p_15_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => \^o12\,
      I4 => \^o8\,
      I5 => \^o4\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\,
      Q => p_14_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      I2 => \^o12\,
      I3 => \^o4\,
      I4 => \^o8\,
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\,
      Q => p_13_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => \^o4\,
      I1 => \^o3\,
      I2 => \^o5\,
      I3 => \^o12\,
      I4 => \^o8\,
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\,
      Q => p_12_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => \^o8\,
      I1 => \^o3\,
      I2 => \^o5\,
      I3 => \^o4\,
      I4 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\,
      Q => p_11_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => \^o8\,
      I4 => \^o4\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\,
      Q => p_10_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => \^o12\,
      I1 => \^o3\,
      I2 => \^o8\,
      I3 => \^o4\,
      I4 => \^o5\,
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\,
      Q => p_9_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => \^o12\,
      I1 => \^o3\,
      I2 => \^o5\,
      I3 => \^o8\,
      I4 => \^o4\,
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\,
      Q => p_8_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => \^o12\,
      I1 => \^o3\,
      I2 => \^o5\,
      I3 => \^o4\,
      I4 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I5 => \^o8\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\,
      Q => p_7_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      I2 => \^o12\,
      I3 => \^o8\,
      I4 => \^o4\,
      I5 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\,
      Q => p_6_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      I2 => \^o8\,
      I3 => \^o4\,
      I4 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\,
      Q => p_5_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
    port map (
      I0 => \^o4\,
      I1 => \^o3\,
      I2 => \^o5\,
      I3 => \^o8\,
      I4 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\,
      Q => p_4_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
    port map (
      I0 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I1 => \^o3\,
      I2 => \^o5\,
      I3 => \^o4\,
      I4 => \^o8\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[32].ce_out_i_reg[32]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[32].ce_out_i[32]_i_1\,
      Q => p_3_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => \^o4\,
      I1 => \^o5\,
      I2 => \^o3\,
      I3 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I4 => \^o8\,
      I5 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[33].ce_out_i_reg[33]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[33].ce_out_i[33]_i_1\,
      Q => p_2_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => AXI_IP2Bus_WrAck,
      I1 => Q(0),
      I2 => AXI_IP2Bus_RdAck,
      I3 => s_axi_aresetn,
      O => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
    port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => I1,
      I4 => I2,
      O => start
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o12\,
      I2 => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      I3 => \^o4\,
      I4 => \^o8\,
      I5 => \^o3\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_arvalid,
      O => \^o5\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_awaddr(4),
      I2 => s_axi_arvalid,
      O => \^o12\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_arvalid,
      O => \^o8\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_arvalid,
      O => \^o3\
    );
\GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_3\,
      Q => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => \^o8\,
      I1 => \^o5\,
      I2 => \^o4\,
      I3 => p_1_in,
      I4 => \^o12\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\,
      Q => p_28_in,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => p_1_in,
      I1 => \^o12\,
      I2 => \^o8\,
      I3 => \^o5\,
      I4 => \^o4\,
      O => \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\,
      Q => \^o1\,
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\GPO_GEN.gpo_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_wdata(0),
      I1 => p_9_in,
      I2 => \^o2\,
      I3 => gpo(0),
      O => O17
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011050000"
    )
    port map (
      I0 => \^o3\,
      I1 => s_axi_araddr(8),
      I2 => s_axi_awaddr(8),
      I3 => s_axi_arvalid,
      I4 => start,
      I5 => \^o13\,
      O => p_1_in
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => p_1_in,
      Q => AXI_Bus2IP_CS(0),
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2\,
      I1 => \^o3\,
      I2 => \^o4\,
      I3 => Bus2IIC_Addr(0),
      I4 => \^o5\,
      I5 => \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_4\,
      O => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awaddr(7),
      I2 => s_axi_araddr(7),
      I3 => start,
      O => \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_2\
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => s_axi_araddr(8),
      I1 => s_axi_awaddr(8),
      I2 => s_axi_arvalid,
      O => Bus2IIC_Addr(0)
    );
\MEM_DECODE_GEN[1].cs_out_i[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACFCA"
    )
    port map (
      I0 => s_axi_awaddr(5),
      I1 => s_axi_araddr(5),
      I2 => s_axi_arvalid,
      I3 => s_axi_awaddr(4),
      I4 => s_axi_araddr(4),
      O => \n_0_MEM_DECODE_GEN[1].cs_out_i[1]_i_4\
    );
\MEM_DECODE_GEN[1].cs_out_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \MEM_DECODE_GEN[1].GEN_FOR_MULTI_CS.MEM_SELECT_I/CS\,
      Q => AXI_Bus2IP_CS(1),
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\MEM_DECODE_GEN[2].cs_out_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E400"
    )
    port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awaddr(8),
      I2 => s_axi_araddr(8),
      I3 => start,
      O => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\
    );
\MEM_DECODE_GEN[2].cs_out_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => start,
      D => \n_0_MEM_DECODE_GEN[2].cs_out_i[2]_i_1\,
      Q => AXI_Bus2IP_CS(2),
      R => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i[34]_i_1\
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => p_15_in,
      I1 => \^o2\,
      O => Bus2IIC_RdCE(0)
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_10_in,
      I1 => \^o2\,
      O => I18(0)
    );
\adr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_14_in,
      I1 => \^o2\,
      O => I17(0)
    );
\cr_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^p_18_in\,
      I1 => \^o2\,
      O => E(0)
    );
\ip_irpt_enable_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_25_in,
      I1 => \^o2\,
      O => O11(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => s_axi_wdata(4),
      I1 => p_28_in,
      I2 => \^o2\,
      I3 => ipif_glbl_irpt_enable_reg,
      O => O16
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
    port map (
      I0 => p_25_in,
      I1 => p_28_in,
      I2 => \^o2\,
      I3 => \^o1\,
      O => irpt_wrack
    );
reset_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^o7\,
      I1 => sw_rst_cond_d1,
      O => O6
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
    port map (
      I0 => \^reset2bus_error\,
      I1 => I2,
      I2 => I1,
      I3 => s_axi_bresp(0),
      O => O14
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAEAAAAAAAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(31),
      I1 => I27,
      I2 => I28,
      I3 => \^o4\,
      I4 => I29,
      I5 => \^iic2bus_data1\,
      O => D(0)
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => I32,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => p_25_in,
      I4 => I31(0),
      O => \Intr2Bus_DBus__0\(31)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAABAAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(30),
      I1 => \n_0_s_axi_rdata_i[7]_i_3\,
      I2 => \^o13\,
      I3 => I13,
      I4 => \^o4\,
      I5 => I14,
      O => D(1)
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in17_in,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => p_25_in,
      I4 => I31(1),
      O => \Intr2Bus_DBus__0\(30)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAABAAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(29),
      I1 => \n_0_s_axi_rdata_i[7]_i_3\,
      I2 => \^o13\,
      I3 => I11,
      I4 => \^o4\,
      I5 => I12,
      O => D(2)
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in14_in,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => p_25_in,
      I4 => I31(2),
      O => \Intr2Bus_DBus__0\(29)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => p_25_in,
      I1 => \^o1\,
      I2 => p_28_in,
      I3 => \^o2\,
      I4 => ipif_glbl_irpt_enable_reg,
      O => D(8)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAABAAAA"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(28),
      I1 => \n_0_s_axi_rdata_i[7]_i_3\,
      I2 => \^o13\,
      I3 => I9,
      I4 => \^o4\,
      I5 => I10,
      O => D(3)
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in11_in,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => p_25_in,
      I4 => I31(3),
      O => \Intr2Bus_DBus__0\(28)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAABAAABABB"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(27),
      I1 => \n_0_s_axi_rdata_i[7]_i_3\,
      I2 => I7,
      I3 => \^o4\,
      I4 => \^o13\,
      I5 => I8,
      O => D(4)
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in8_in,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => p_25_in,
      I4 => I31(4),
      O => \Intr2Bus_DBus__0\(27)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAABAAABABB"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(26),
      I1 => \n_0_s_axi_rdata_i[7]_i_3\,
      I2 => I5,
      I3 => \^o4\,
      I4 => \^o13\,
      I5 => I6,
      O => D(5)
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in5_in,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => p_25_in,
      I4 => I31(5),
      O => \Intr2Bus_DBus__0\(26)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAABAAABABB"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(25),
      I1 => \n_0_s_axi_rdata_i[7]_i_3\,
      I2 => I3,
      I3 => \^o4\,
      I4 => \^o13\,
      I5 => I4,
      O => D(6)
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => p_1_in2_in,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => p_25_in,
      I4 => I31(6),
      O => \Intr2Bus_DBus__0\(25)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAABAAABABB"
    )
    port map (
      I0 => \Intr2Bus_DBus__0\(24),
      I1 => \n_0_s_axi_rdata_i[7]_i_3\,
      I2 => I15,
      I3 => \^o4\,
      I4 => \^o13\,
      I5 => I16,
      O => D(7)
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
    port map (
      I0 => I30,
      I1 => \^o1\,
      I2 => \^o2\,
      I3 => p_25_in,
      I4 => I31(7),
      O => \Intr2Bus_DBus__0\(24)
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFFCACFFFFFFFF"
    )
    port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      I3 => s_axi_araddr(1),
      I4 => s_axi_awaddr(1),
      I5 => \^iic2bus_data1\,
      O => \n_0_s_axi_rdata_i[7]_i_3\
    );
\s_axi_rdata_i[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => s_axi_araddr(7),
      I1 => s_axi_awaddr(7),
      I2 => s_axi_arvalid,
      O => \^o13\
    );
\s_axi_rdata_i[9]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
    port map (
      I0 => p_5_in,
      I1 => p_15_in,
      I2 => \^o2\,
      I3 => p_16_in,
      I4 => \^p_18_in\,
      I5 => p_17_in,
      O => \n_0_s_axi_rdata_i[9]_i_10\
    );
\s_axi_rdata_i[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[9]_i_7\,
      I1 => \n_0_s_axi_rdata_i[9]_i_8\,
      I2 => \n_0_s_axi_rdata_i[9]_i_9\,
      I3 => \n_0_s_axi_rdata_i[9]_i_10\,
      O => \^iic2bus_data1\
    );
\s_axi_rdata_i[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_arvalid,
      O => \^o4\
    );
\s_axi_rdata_i[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
    port map (
      I0 => p_7_in,
      I1 => p_3_in,
      I2 => \^o2\,
      I3 => p_4_in,
      I4 => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\,
      I5 => p_2_in,
      O => \n_0_s_axi_rdata_i[9]_i_7\
    );
\s_axi_rdata_i[9]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
    port map (
      I0 => p_8_in,
      I1 => p_6_in,
      I2 => \^o2\,
      I3 => p_9_in,
      O => \n_0_s_axi_rdata_i[9]_i_8\
    );
\s_axi_rdata_i[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0E0"
    )
    port map (
      I0 => p_10_in,
      I1 => p_13_in,
      I2 => \^o2\,
      I3 => p_14_in,
      I4 => p_11_in,
      I5 => p_12_in,
      O => \n_0_s_axi_rdata_i[9]_i_9\
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFDF00000000"
    )
    port map (
      I0 => s_axi_wdata(1),
      I1 => s_axi_wdata(2),
      I2 => s_axi_wdata(3),
      I3 => s_axi_wdata(0),
      I4 => \^o2\,
      I5 => AXI_Bus2IP_CS(1),
      O => \^reset2bus_error\
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
    port map (
      I0 => \^o2\,
      I1 => AXI_Bus2IP_CS(1),
      I2 => s_axi_wdata(1),
      I3 => s_axi_wdata(2),
      I4 => s_axi_wdata(3),
      I5 => s_axi_wdata(0),
      O => \^o7\
    );
\timing_param_tbuf_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_4_in,
      I1 => \^o2\,
      O => I23(0)
    );
\timing_param_thddat_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_GEN_BKEND_CE_REGISTERS[34].ce_out_i_reg[34]\,
      I1 => \^o2\,
      O => I26(0)
    );
\timing_param_thdsta_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_6_in,
      I1 => \^o2\,
      O => I21(0)
    );
\timing_param_thigh_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_3_in,
      I1 => \^o2\,
      O => I24(0)
    );
\timing_param_tlow_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_2_in,
      I1 => \^o2\,
      O => I25(0)
    );
\timing_param_tsudat_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_5_in,
      I1 => \^o2\,
      O => I22(0)
    );
\timing_param_tsusta_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_8_in,
      I1 => \^o2\,
      O => I19(0)
    );
\timing_param_tsusto_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => p_7_in,
      I1 => \^o2\,
      O => I20(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_cdc_sync is
  port (
    O1 : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_cdc_sync : entity is "cdc_sync";
end axi_iic_0_cdc_sync;

architecture STRUCTURE of axi_iic_0_cdc_sync is
  signal Q : STD_LOGIC;
  signal \^sda_clean\ : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  Sda_clean <= \^sda_clean\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_i,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^sda_clean\,
      R => '0'
    );
detect_stop_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^sda_clean\,
      I1 => sda_rin_d1,
      O => O1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_cdc_sync_4 is
  port (
    O2 : out STD_LOGIC;
    Scl_clean : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_cdc_sync_4 : entity is "cdc_sync";
end axi_iic_0_cdc_sync_4;

architecture STRUCTURE of axi_iic_0_cdc_sync_4 is
  signal Q : STD_LOGIC;
  signal \^scl_clean\ : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  Scl_clean <= \^scl_clean\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_i,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scl_clean\,
      R => '0'
    );
scl_rising_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^scl_clean\,
      I1 => scl_rin_d1,
      O => O2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_dynamic_master is
  port (
    callingReadAccess : out STD_LOGIC;
    rdCntrFrmTxFifo : out STD_LOGIC;
    rxCntDone : out STD_LOGIC;
    firstDynStartSeen : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    txak : out STD_LOGIC;
    Tx_fifo_rst : in STD_LOGIC;
    ackDataState : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    rdCntrFrmTxFifo0 : in STD_LOGIC;
    earlyAckDataState : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_18_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    earlyAckHdr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_dynamic_master : entity is "dynamic_master";
end axi_iic_0_dynamic_master;

architecture STRUCTURE of axi_iic_0_dynamic_master is
  signal ackDataState_d1 : STD_LOGIC;
  signal \^callingreadaccess\ : STD_LOGIC;
  signal cr_txModeSelect_clr : STD_LOGIC;
  signal cr_txModeSelect_set : STD_LOGIC;
  signal earlyAckDataState_d1 : STD_LOGIC;
  signal \^firstdynstartseen\ : STD_LOGIC;
  signal n_0_Cr_txModeSelect_clr_i_1 : STD_LOGIC;
  signal n_0_Cr_txModeSelect_set_i_1 : STD_LOGIC;
  signal \n_0_rdByteCntr[0]_i_1\ : STD_LOGIC;
  signal \n_0_rdByteCntr[0]_i_3\ : STD_LOGIC;
  signal \n_0_rdByteCntr[0]_i_4\ : STD_LOGIC;
  signal \n_0_rdByteCntr[2]_i_2\ : STD_LOGIC;
  signal \n_0_rdByteCntr[3]_i_2\ : STD_LOGIC;
  signal n_0_rxCntDone_i_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdByteCntr_reg__0\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^rdcntrfrmtxfifo\ : STD_LOGIC;
  signal rxCntDone0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cr_txModeSelect_clr_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Cr_txModeSelect_set_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdByteCntr[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdByteCntr[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rdByteCntr[7]_i_1\ : label is "soft_lutpair1";
  attribute counter : integer;
  attribute counter of \rdByteCntr_reg[0]\ : label is 8;
  attribute counter of \rdByteCntr_reg[1]\ : label is 8;
  attribute counter of \rdByteCntr_reg[2]\ : label is 8;
  attribute counter of \rdByteCntr_reg[3]\ : label is 8;
  attribute counter of \rdByteCntr_reg[4]\ : label is 8;
  attribute counter of \rdByteCntr_reg[5]\ : label is 8;
  attribute counter of \rdByteCntr_reg[6]\ : label is 8;
  attribute counter of \rdByteCntr_reg[7]\ : label is 8;
begin
  callingReadAccess <= \^callingreadaccess\;
  firstDynStartSeen <= \^firstdynstartseen\;
  rdCntrFrmTxFifo <= \^rdcntrfrmtxfifo\;
Cr_txModeSelect_clr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => \^callingreadaccess\,
      I1 => earlyAckHdr,
      I2 => \^firstdynstartseen\,
      I3 => Tx_fifo_rst,
      O => n_0_Cr_txModeSelect_clr_i_1
    );
Cr_txModeSelect_clr_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Cr_txModeSelect_clr_i_1,
      Q => cr_txModeSelect_clr,
      R => '0'
    );
Cr_txModeSelect_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \^callingreadaccess\,
      I1 => earlyAckHdr,
      I2 => \^firstdynstartseen\,
      I3 => Tx_fifo_rst,
      O => n_0_Cr_txModeSelect_set_i_1
    );
Cr_txModeSelect_set_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Cr_txModeSelect_set_i_1,
      Q => cr_txModeSelect_set,
      R => '0'
    );
ackDataState_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => ackDataState,
      Q => ackDataState_d1,
      R => Tx_fifo_rst
    );
callingReadAccess_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => p_3_in,
      D => Tx_fifo_data(7),
      Q => \^callingreadaccess\,
      R => Tx_fifo_rst
    );
\cr_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33303330AAAA3330"
    )
    port map (
      I0 => s_axi_wdata(0),
      I1 => cr_txModeSelect_clr,
      I2 => cr_txModeSelect_set,
      I3 => Q(0),
      I4 => p_18_in,
      I5 => Bus_RNW_reg,
      O => D(0)
    );
earlyAckDataState_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => earlyAckDataState,
      Q => earlyAckDataState_d1,
      R => Tx_fifo_rst
    );
firstDynStartSeen_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => \^firstdynstartseen\,
      R => '0'
    );
\rdByteCntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFEAAAA"
    )
    port map (
      I0 => \^rdcntrfrmtxfifo\,
      I1 => \rdByteCntr_reg__0\(0),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \n_0_rdByteCntr[0]_i_3\,
      I4 => earlyAckDataState,
      I5 => earlyAckDataState_d1,
      O => \n_0_rdByteCntr[0]_i_1\
    );
\rdByteCntr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
    port map (
      I0 => Tx_fifo_data(0),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(1),
      I3 => \n_0_rdByteCntr[0]_i_4\,
      I4 => \rdByteCntr_reg__0\(0),
      O => p_0_in(7)
    );
\rdByteCntr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(1),
      I1 => \rdByteCntr_reg__0\(2),
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(5),
      I4 => \rdByteCntr_reg__0\(4),
      I5 => \rdByteCntr_reg__0\(3),
      O => \n_0_rdByteCntr[0]_i_3\
    );
\rdByteCntr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(3),
      I1 => \rdByteCntr_reg__0\(5),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(6),
      I4 => \rdByteCntr_reg__0\(4),
      I5 => \rdByteCntr_reg__0\(2),
      O => \n_0_rdByteCntr[0]_i_4\
    );
\rdByteCntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => Tx_fifo_data(1),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \n_0_rdByteCntr[0]_i_4\,
      I3 => \rdByteCntr_reg__0\(1),
      O => p_0_in(6)
    );
\rdByteCntr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => Tx_fifo_data(2),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \n_0_rdByteCntr[2]_i_2\,
      I3 => \rdByteCntr_reg__0\(2),
      O => p_0_in(5)
    );
\rdByteCntr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(4),
      I1 => \rdByteCntr_reg__0\(6),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(5),
      I4 => \rdByteCntr_reg__0\(3),
      O => \n_0_rdByteCntr[2]_i_2\
    );
\rdByteCntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => Tx_fifo_data(3),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \n_0_rdByteCntr[3]_i_2\,
      I3 => \rdByteCntr_reg__0\(3),
      O => p_0_in(4)
    );
\rdByteCntr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(5),
      I1 => \rdByteCntr_reg__0\(7),
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(4),
      O => \n_0_rdByteCntr[3]_i_2\
    );
\rdByteCntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
    port map (
      I0 => Tx_fifo_data(4),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(5),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \rdByteCntr_reg__0\(6),
      I5 => \rdByteCntr_reg__0\(4),
      O => p_0_in(3)
    );
\rdByteCntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
    port map (
      I0 => Tx_fifo_data(5),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(6),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \rdByteCntr_reg__0\(5),
      O => p_0_in(2)
    );
\rdByteCntr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
    port map (
      I0 => Tx_fifo_data(6),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \rdByteCntr_reg__0\(6),
      O => p_0_in(1)
    );
\rdByteCntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
    port map (
      I0 => Tx_fifo_data(7),
      I1 => \^rdcntrfrmtxfifo\,
      I2 => \rdByteCntr_reg__0\(7),
      O => p_0_in(0)
    );
\rdByteCntr_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(7),
      Q => \rdByteCntr_reg__0\(0),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(6),
      Q => \rdByteCntr_reg__0\(1),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(5),
      Q => \rdByteCntr_reg__0\(2),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(4),
      Q => \rdByteCntr_reg__0\(3),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(3),
      Q => \rdByteCntr_reg__0\(4),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(2),
      Q => \rdByteCntr_reg__0\(5),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(1),
      Q => \rdByteCntr_reg__0\(6),
      R => Tx_fifo_rst
    );
\rdByteCntr_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rdByteCntr[0]_i_1\,
      D => p_0_in(0),
      Q => \rdByteCntr_reg__0\(7),
      R => Tx_fifo_rst
    );
rdCntrFrmTxFifo_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdCntrFrmTxFifo0,
      Q => \^rdcntrfrmtxfifo\,
      R => Tx_fifo_rst
    );
rxCntDone_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
    port map (
      I0 => ackDataState_d1,
      I1 => \rdByteCntr_reg__0\(0),
      I2 => \rdByteCntr_reg__0\(7),
      I3 => \^callingreadaccess\,
      I4 => n_0_rxCntDone_i_2,
      I5 => ackDataState,
      O => rxCntDone0
    );
rxCntDone_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \rdByteCntr_reg__0\(2),
      I1 => \rdByteCntr_reg__0\(1),
      I2 => \rdByteCntr_reg__0\(5),
      I3 => \rdByteCntr_reg__0\(6),
      I4 => \rdByteCntr_reg__0\(3),
      I5 => \rdByteCntr_reg__0\(4),
      O => n_0_rxCntDone_i_2
    );
rxCntDone_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => rxCntDone0,
      Q => rxCntDone,
      R => Tx_fifo_rst
    );
slave_sda_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
    port map (
      I0 => Q(1),
      I1 => earlyAckDataState,
      I2 => \rdByteCntr_reg__0\(0),
      I3 => \rdByteCntr_reg__0\(7),
      I4 => \^callingreadaccess\,
      I5 => n_0_rxCntDone_i_2,
      O => txak
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_interrupt_control is
  port (
    O1 : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in14_in : out STD_LOGIC;
    p_1_in11_in : out STD_LOGIC;
    p_1_in8_in : out STD_LOGIC;
    p_1_in5_in : out STD_LOGIC;
    p_1_in2_in : out STD_LOGIC;
    O2 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iic2intc_irpt : out STD_LOGIC;
    I1 : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    p_27_in : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_interrupt_control : entity is "interrupt_control";
end axi_iic_0_interrupt_control;

architecture STRUCTURE of axi_iic_0_interrupt_control is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\ : STD_LOGIC;
  signal n_0_iic2intc_irpt_INST_0_i_1 : STD_LOGIC;
  signal n_0_iic2intc_irpt_INST_0_i_2 : STD_LOGIC;
  signal n_0_iic2intc_irpt_INST_0_i_3 : STD_LOGIC;
  signal \^p_1_in11_in\ : STD_LOGIC;
  signal \^p_1_in14_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in2_in\ : STD_LOGIC;
  signal \^p_1_in5_in\ : STD_LOGIC;
  signal \^p_1_in8_in\ : STD_LOGIC;
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_1_in11_in <= \^p_1_in11_in\;
  p_1_in14_in <= \^p_1_in14_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in2_in <= \^p_1_in2_in\;
  p_1_in5_in <= \^p_1_in5_in\;
  p_1_in8_in <= \^p_1_in8_in\;
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(0),
      I4 => \^o1\,
      I5 => IIC2Bus_IntrEvent(0),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\,
      Q => \^o1\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(1),
      I4 => \^p_1_in17_in\,
      I5 => IIC2Bus_IntrEvent(1),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\,
      Q => \^p_1_in17_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(2),
      I4 => \^p_1_in14_in\,
      I5 => IIC2Bus_IntrEvent(2),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\,
      Q => \^p_1_in14_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(3),
      I4 => \^p_1_in11_in\,
      I5 => IIC2Bus_IntrEvent(3),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\,
      Q => \^p_1_in11_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(4),
      I4 => \^p_1_in8_in\,
      I5 => IIC2Bus_IntrEvent(4),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\,
      Q => \^p_1_in8_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(5),
      I4 => \^p_1_in5_in\,
      I5 => IIC2Bus_IntrEvent(5),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\,
      Q => \^p_1_in5_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(6),
      I4 => \^p_1_in2_in\,
      I5 => IIC2Bus_IntrEvent(6),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\,
      Q => \^p_1_in2_in\,
      R => I1
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFF1000"
    )
    port map (
      I0 => irpt_wrack_d1,
      I1 => I3,
      I2 => p_27_in,
      I3 => s_axi_wdata(7),
      I4 => \^o2\,
      I5 => IIC2Bus_IntrEvent(7),
      O => \n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\,
      Q => \^o2\,
      R => I1
    );
iic2intc_irpt_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => \^ipif_glbl_irpt_enable_reg\,
      I1 => n_0_iic2intc_irpt_INST_0_i_1,
      I2 => n_0_iic2intc_irpt_INST_0_i_2,
      I3 => n_0_iic2intc_irpt_INST_0_i_3,
      O => iic2intc_irpt
    );
iic2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => \^q\(3),
      I1 => \^p_1_in11_in\,
      I2 => \^p_1_in5_in\,
      I3 => \^q\(5),
      I4 => \^p_1_in8_in\,
      I5 => \^q\(4),
      O => n_0_iic2intc_irpt_INST_0_i_1
    );
iic2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
    port map (
      I0 => \^q\(6),
      I1 => \^p_1_in2_in\,
      I2 => \^o1\,
      I3 => \^q\(0),
      I4 => \^o2\,
      I5 => \^q\(7),
      O => n_0_iic2intc_irpt_INST_0_i_2
    );
iic2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => \^q\(2),
      I1 => \^p_1_in14_in\,
      I2 => \^q\(1),
      I3 => \^p_1_in17_in\,
      O => n_0_iic2intc_irpt_INST_0_i_3
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => I1
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      R => I1
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      R => I1
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      R => I1
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      R => I1
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => \^q\(5),
      R => I1
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(6),
      R => I1
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => \^q\(7),
      R => I1
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => I1
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => I1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_reg_interface is
  port (
    IIC2Bus_IntrEvent : out STD_LOGIC_VECTOR ( 0 to 7 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_wr : out STD_LOGIC;
    Tx_fifo_rd : out STD_LOGIC;
    Tx_fifo_rst : out STD_LOGIC;
    new_rcv_dta_d1 : out STD_LOGIC;
    Rc_fifo_wr : out STD_LOGIC;
    Rc_fifo_rd : out STD_LOGIC;
    O1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    Msms_set : out STD_LOGIC;
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    O11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O12 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O13 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O14 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O15 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I9 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I10 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O17 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O18 : out STD_LOGIC;
    O19 : out STD_LOGIC;
    O20 : out STD_LOGIC;
    O21 : out STD_LOGIC;
    O22 : out STD_LOGIC;
    ctrl_fifo_wr_i : out STD_LOGIC;
    O23 : out STD_LOGIC;
    txFifoRd : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O24 : out STD_LOGIC;
    O25 : out STD_LOGIC;
    O26 : out STD_LOGIC;
    O27 : out STD_LOGIC;
    O28 : out STD_LOGIC;
    O29 : out STD_LOGIC;
    O30 : out STD_LOGIC;
    O31 : out STD_LOGIC;
    O32 : out STD_LOGIC;
    O33 : out STD_LOGIC;
    O34 : out STD_LOGIC;
    O35 : out STD_LOGIC;
    O36 : out STD_LOGIC;
    O37 : out STD_LOGIC;
    O38 : out STD_LOGIC;
    O39 : out STD_LOGIC;
    O40 : out STD_LOGIC;
    O41 : out STD_LOGIC;
    O42 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    O43 : out STD_LOGIC;
    O44 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I3 : in STD_LOGIC;
    rdy_new_xmt_i : in STD_LOGIC;
    New_rcv_dta : in STD_LOGIC;
    I4 : in STD_LOGIC;
    Bus2IIC_RdCE : in STD_LOGIC_VECTOR ( 0 to 0 );
    I5 : in STD_LOGIC;
    Aas : in STD_LOGIC;
    I6 : in STD_LOGIC;
    Rc_Data_Exists : in STD_LOGIC;
    Rc_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    IIC2Bus_Data1 : in STD_LOGIC;
    Bus2IIC_Addr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    I7 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Rc_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 0 to 7 );
    I8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_fifo_rd_d : in STD_LOGIC;
    Tx_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_wr_d : in STD_LOGIC;
    Rc_fifo_rd_d : in STD_LOGIC;
    buffer_Empty : in STD_LOGIC;
    rdCntrFrmTxFifo : in STD_LOGIC;
    I12 : in STD_LOGIC;
    buffer_Empty_0 : in STD_LOGIC;
    Tx_data_exists : in STD_LOGIC;
    arb_lost : in STD_LOGIC;
    buffer_Empty_1 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    Tx_addr : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    I14 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dtre_d1 : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    firstDynStartSeen : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    I16 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I27 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_reg_interface : entity is "reg_interface";
end axi_iic_0_reg_interface;

architecture STRUCTURE of axi_iic_0_reg_interface is
  signal Cr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^iic2bus_intrevent\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \^msms_set\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o10\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o15\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o17\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o42\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^o5\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o6\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o7\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o8\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o9\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^rc_fifo_rd\ : STD_LOGIC;
  signal \^rc_fifo_wr\ : STD_LOGIC;
  signal \^tx_fifo_rd\ : STD_LOGIC;
  signal \^tx_fifo_rst\ : STD_LOGIC;
  signal \^tx_fifo_wr\ : STD_LOGIC;
  signal \^ctrl_fifo_wr_i\ : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal msms_d1 : STD_LOGIC;
  signal \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\ : STD_LOGIC;
  signal \n_0_RD_FIFO_CNTRL.ro_prev_i_i_1\ : STD_LOGIC;
  signal \n_0_RD_FIFO_CNTRL.ro_prev_i_i_2\ : STD_LOGIC;
  signal \n_0_RD_FIFO_CNTRL.ro_prev_i_i_3\ : STD_LOGIC;
  signal n_0_msms_set_i_i_1 : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[1]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[2]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_11\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[3]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[4]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[5]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_5\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_6\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[6]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_10\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_11\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_12\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_7\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_8\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[7]_i_9\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[8]_i_2\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[8]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_5\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_1_in6_in : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 1 to 7 );
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \^txfiford\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Data_Exists_DFF_i_2__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_3 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FIFO_RAM[1].SRL16E_I_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cr_i[5]_i_4\ : label is "soft_lutpair37";
begin
  D(0) <= \^d\(0);
  IIC2Bus_IntrEvent(0 to 7) <= \^iic2bus_intrevent\(0 to 7);
  Msms_set <= \^msms_set\;
  O1(0) <= \^o1\(0);
  O10(8 downto 0) <= \^o10\(8 downto 0);
  O15(8 downto 0) <= \^o15\(8 downto 0);
  O17(8 downto 0) <= \^o17\(8 downto 0);
  O42(6 downto 0) <= \^o42\(6 downto 0);
  O5(8 downto 0) <= \^o5\(8 downto 0);
  O6(8 downto 0) <= \^o6\(8 downto 0);
  O7(8 downto 0) <= \^o7\(8 downto 0);
  O8(8 downto 0) <= \^o8\(8 downto 0);
  O9(8 downto 0) <= \^o9\(8 downto 0);
  Q(5 downto 0) <= \^q\(5 downto 0);
  Rc_fifo_rd <= \^rc_fifo_rd\;
  Rc_fifo_wr <= \^rc_fifo_wr\;
  Tx_fifo_rd <= \^tx_fifo_rd\;
  Tx_fifo_rst <= \^tx_fifo_rst\;
  Tx_fifo_wr <= \^tx_fifo_wr\;
  ctrl_fifo_wr_i <= \^ctrl_fifo_wr_i\;
  gpo(0) <= \^gpo\(0);
  txFifoRd <= \^txfiford\;
\Addr_Counters[0].MUXCY_L_I_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      O => O19
    );
\Addr_Counters[0].MUXCY_L_I_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      O => O20
    );
\Addr_Counters[0].MUXCY_L_I_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^rc_fifo_rd\,
      I1 => Rc_fifo_rd_d,
      O => O21
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBBBF88888888"
    )
    port map (
      I0 => \^ctrl_fifo_wr_i\,
      I1 => buffer_Empty,
      I2 => rdCntrFrmTxFifo,
      I3 => \^tx_fifo_rd\,
      I4 => Tx_fifo_rd_d,
      I5 => I12,
      O => O22
    );
\Data_Exists_DFF_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFF2020"
    )
    port map (
      I0 => \^tx_fifo_wr\,
      I1 => Tx_fifo_wr_d,
      I2 => buffer_Empty_0,
      I3 => \^txfiford\,
      I4 => Tx_data_exists,
      O => O23
    );
\Data_Exists_DFF_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFFFF20202020"
    )
    port map (
      I0 => \^rc_fifo_wr\,
      I1 => Rc_fifo_wr_d,
      I2 => buffer_Empty_1,
      I3 => Rc_fifo_rd_d,
      I4 => \^rc_fifo_rd\,
      I5 => Rc_Data_Exists,
      O => O25
    );
\Data_Exists_DFF_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
    port map (
      I0 => Tx_fifo_wr_d,
      I1 => \^tx_fifo_wr\,
      I2 => \^tx_fifo_rst\,
      I3 => I1,
      O => \^ctrl_fifo_wr_i\
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => Tx_fifo_rd_d,
      I1 => \^tx_fifo_rd\,
      I2 => rdCntrFrmTxFifo,
      O => \^txfiford\
    );
\FIFO_GEN_DTR.IIC2Bus_IntrEvent_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^iic2bus_intrevent\(7),
      R => I1
    );
\FIFO_GEN_DTR.Tx_fifo_rd_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => rdy_new_xmt_i,
      Q => \^tx_fifo_rd\,
      R => I1
    );
\FIFO_GEN_DTR.Tx_fifo_rst_reg\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Cr(6),
      Q => \^tx_fifo_rst\,
      S => I1
    );
\FIFO_GEN_DTR.Tx_fifo_wr_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I3,
      Q => \^tx_fifo_wr\,
      R => I1
    );
\FIFO_RAM[0].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_wdata(9),
      I1 => \^tx_fifo_rst\,
      I2 => I1,
      O => O4
    );
\FIFO_RAM[1].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => s_axi_wdata(8),
      I1 => \^tx_fifo_rst\,
      I2 => I1,
      O => O3
    );
\FSM_onehot_scl_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timing_param_thdsta_i(9),
      I1 => I8(0),
      O => O14(0)
    );
\FSM_onehot_scl_state[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timing_param_thddat_i(9),
      I1 => I8(0),
      O => O13(0)
    );
\FSM_onehot_scl_state[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timing_param_tlow_i(9),
      I1 => I8(0),
      O => O16(0)
    );
\FSM_onehot_scl_state[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^q\(4),
      I1 => arb_lost,
      O => O24
    );
\FSM_onehot_scl_state[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^q\(0),
      O => SR(0)
    );
\FSM_onehot_scl_state[9]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timing_param_tbuf_i(9),
      I1 => I8(0),
      O => I9(0)
    );
\FSM_onehot_scl_state[9]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timing_param_tsusta_i(9),
      I1 => I8(0),
      O => O12(0)
    );
\FSM_onehot_scl_state[9]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timing_param_tsusto_i(9),
      I1 => I8(0),
      O => S(0)
    );
\FSM_onehot_scl_state[9]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timing_param_thigh_i(9),
      I1 => I8(0),
      O => O11(0)
    );
\GPO_GEN.gpo_i_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I6,
      Q => \^gpo\(0),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I27(4),
      Q => \^iic2bus_intrevent\(0),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I27(3),
      Q => \^iic2bus_intrevent\(1),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I27(2),
      Q => \^iic2bus_intrevent\(2),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^d\(0),
      Q => \^iic2bus_intrevent\(3),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I27(1),
      Q => \^iic2bus_intrevent\(4),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Aas,
      Q => \^iic2bus_intrevent\(5),
      R => I1
    );
\IIC2Bus_IntrEvent_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I27(0),
      Q => \^iic2bus_intrevent\(6),
      R => I1
    );
\RD_FIFO_CNTRL.Rc_fifo_rd_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus2IIC_RdCE(0),
      Q => \^rc_fifo_rd\,
      R => I1
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I4,
      Q => \^rc_fifo_wr\,
      R => I1
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(3),
      Q => p_1_in6_in,
      R => I1
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(2),
      Q => p_1_in4_in,
      R => I1
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(1),
      Q => p_1_in,
      R => I1
    );
\RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I18(0),
      D => s_axi_wdata(0),
      Q => \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      R => I1
    );
\RD_FIFO_CNTRL.ro_prev_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
    port map (
      I0 => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_2\,
      I1 => \^msms_set\,
      I2 => Rc_Data_Exists,
      I3 => I1,
      I4 => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_3\,
      O => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_1\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => p_1_in4_in,
      I1 => Rc_addr(2),
      I2 => p_1_in,
      I3 => Rc_addr(1),
      O => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_2\
    );
\RD_FIFO_CNTRL.ro_prev_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      I1 => Rc_addr(0),
      I2 => p_1_in6_in,
      I3 => Rc_addr(3),
      O => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_3\
    );
\RD_FIFO_CNTRL.ro_prev_i_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_RD_FIFO_CNTRL.ro_prev_i_i_1\,
      Q => \^d\(0),
      R => '0'
    );
\adr_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(7),
      Q => \^o42\(6),
      R => I1
    );
\adr_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(6),
      Q => \^o42\(5),
      R => I1
    );
\adr_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(5),
      Q => \^o42\(4),
      R => I1
    );
\adr_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(4),
      Q => \^o42\(3),
      R => I1
    );
\adr_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(3),
      Q => \^o42\(2),
      R => I1
    );
\adr_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(2),
      Q => \^o42\(1),
      R => I1
    );
\adr_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I17(0),
      D => s_axi_wdata(1),
      Q => \^o42\(0),
      R => I1
    );
\cr_i[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^tx_fifo_rd\,
      I1 => Tx_fifo_rd_d,
      O => O18
    );
\cr_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => Cr(0),
      R => I1
    );
\cr_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => \^q\(5),
      R => I1
    );
\cr_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I16(2),
      Q => \^q\(4),
      R => I1
    );
\cr_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => \^q\(3),
      R => I1
    );
\cr_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I16(1),
      Q => \^q\(2),
      R => I1
    );
\cr_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I16(0),
      Q => \^q\(1),
      R => I1
    );
\cr_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => Cr(6),
      R => I1
    );
\cr_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      R => I1
    );
firstDynStartSeen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => firstDynStartSeen,
      I1 => p_3_in,
      I2 => \^q\(1),
      I3 => \^tx_fifo_rst\,
      O => O44
    );
msms_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => msms_d1,
      R => I1
    );
msms_set_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3032003000220000"
    )
    port map (
      I0 => \^d\(0),
      I1 => I1,
      I2 => I14(1),
      I3 => \^q\(1),
      I4 => msms_d1,
      I5 => \^msms_set\,
      O => n_0_msms_set_i_i_1
    );
msms_set_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_msms_set_i_i_1,
      Q => \^msms_set\,
      R => '0'
    );
new_rcv_dta_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => New_rcv_dta,
      Q => new_rcv_dta_d1,
      R => I1
    );
rsta_tx_under_prev_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A200A00000"
    )
    port map (
      I0 => \^q\(0),
      I1 => dtre_d1,
      I2 => \^o1\(0),
      I3 => rsta_d1,
      I4 => \^q\(4),
      I5 => I15,
      O => O43
    );
\s_axi_rdata_i[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
    port map (
      I0 => sr_i(7),
      I1 => Bus2IIC_Addr(4),
      I2 => \^o9\(0),
      I3 => Bus2IIC_Addr(3),
      I4 => \^gpo\(0),
      I5 => Bus2IIC_Addr(5),
      O => \n_0_s_axi_rdata_i[0]_i_10\
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003B0B00000808"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[0]_i_6\,
      I1 => Bus2IIC_Addr(1),
      I2 => Bus2IIC_Addr(4),
      I3 => \^o10\(0),
      I4 => Bus2IIC_Addr(5),
      I5 => \n_0_s_axi_rdata_i[0]_i_7\,
      O => O26
    );
\s_axi_rdata_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080B3B3B0808080"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[0]_i_8\,
      I1 => Bus2IIC_Addr(1),
      I2 => I13,
      I3 => \n_0_s_axi_rdata_i[0]_i_9\,
      I4 => Bus2IIC_Addr(2),
      I5 => \n_0_s_axi_rdata_i[0]_i_10\,
      O => O27
    );
\s_axi_rdata_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o8\(0),
      I1 => Rc_addr(0),
      I2 => Bus2IIC_Addr(2),
      I3 => \^o7\(0),
      I4 => Bus2IIC_Addr(3),
      I5 => Tx_fifo_data(7),
      O => \n_0_s_axi_rdata_i[0]_i_6\
    );
\s_axi_rdata_i[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8330033B800"
    )
    port map (
      I0 => \^o15\(0),
      I1 => Bus2IIC_Addr(2),
      I2 => \n_0_RD_FIFO_CNTRL.rc_fifo_pirq_i_reg[7]\,
      I3 => Bus2IIC_Addr(3),
      I4 => Bus2IIC_Addr(4),
      I5 => \^q\(0),
      O => \n_0_s_axi_rdata_i[0]_i_7\
    );
\s_axi_rdata_i[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
    port map (
      I0 => \^o6\(0),
      I1 => Bus2IIC_Addr(2),
      I2 => \^o5\(0),
      I3 => Bus2IIC_Addr(3),
      I4 => Rc_fifo_data(7),
      O => \n_0_s_axi_rdata_i[0]_i_8\
    );
\s_axi_rdata_i[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o17\(0),
      I1 => s_axi_araddr(0),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_arvalid,
      I4 => Tx_addr(0),
      O => \n_0_s_axi_rdata_i[0]_i_9\
    );
\s_axi_rdata_i[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o9\(1),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => \^iic2bus_intrevent\(5),
      O => \n_0_s_axi_rdata_i[1]_i_10\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080B3B3B0808080"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[1]_i_7\,
      I1 => Bus2IIC_Addr(1),
      I2 => I13,
      I3 => \n_0_s_axi_rdata_i[1]_i_8\,
      I4 => Bus2IIC_Addr(2),
      I5 => \n_0_s_axi_rdata_i[1]_i_9\,
      O => O28
    );
\s_axi_rdata_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFBB00AFFFBBFF"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Tx_addr(1),
      I2 => \^o17\(1),
      I3 => Bus2IIC_Addr(2),
      I4 => Bus2IIC_Addr(3),
      I5 => \n_0_s_axi_rdata_i[1]_i_10\,
      O => \n_0_s_axi_rdata_i[1]_i_5\
    );
\s_axi_rdata_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Rc_fifo_data(6),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o5\(1),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o6\(1),
      O => \n_0_s_axi_rdata_i[1]_i_6\
    );
\s_axi_rdata_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o8\(1),
      I1 => Rc_addr(1),
      I2 => Bus2IIC_Addr(2),
      I3 => \^o7\(1),
      I4 => Bus2IIC_Addr(3),
      I5 => Tx_fifo_data(6),
      O => \n_0_s_axi_rdata_i[1]_i_7\
    );
\s_axi_rdata_i[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o15\(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_arvalid,
      I4 => \^o42\(0),
      O => \n_0_s_axi_rdata_i[1]_i_8\
    );
\s_axi_rdata_i[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
    port map (
      I0 => Cr(6),
      I1 => Bus2IIC_Addr(4),
      I2 => \^o10\(1),
      I3 => Bus2IIC_Addr(3),
      I4 => p_1_in,
      I5 => Bus2IIC_Addr(5),
      O => \n_0_s_axi_rdata_i[1]_i_9\
    );
\s_axi_rdata_i[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o9\(2),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => sr_i(5),
      O => \n_0_s_axi_rdata_i[2]_i_10\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080B3B3B0808080"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[2]_i_7\,
      I1 => Bus2IIC_Addr(1),
      I2 => I13,
      I3 => \n_0_s_axi_rdata_i[2]_i_8\,
      I4 => Bus2IIC_Addr(2),
      I5 => \n_0_s_axi_rdata_i[2]_i_9\,
      O => O30
    );
\s_axi_rdata_i[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFBB00AFFFBBFF"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Tx_addr(2),
      I2 => \^o17\(2),
      I3 => Bus2IIC_Addr(2),
      I4 => Bus2IIC_Addr(3),
      I5 => \n_0_s_axi_rdata_i[2]_i_10\,
      O => \n_0_s_axi_rdata_i[2]_i_5\
    );
\s_axi_rdata_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Rc_fifo_data(5),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o5\(2),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o6\(2),
      O => \n_0_s_axi_rdata_i[2]_i_6\
    );
\s_axi_rdata_i[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o8\(2),
      I1 => Rc_addr(2),
      I2 => Bus2IIC_Addr(2),
      I3 => \^o7\(2),
      I4 => Bus2IIC_Addr(3),
      I5 => Tx_fifo_data(5),
      O => \n_0_s_axi_rdata_i[2]_i_7\
    );
\s_axi_rdata_i[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o15\(2),
      I1 => s_axi_araddr(0),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_arvalid,
      I4 => \^o42\(1),
      O => \n_0_s_axi_rdata_i[2]_i_8\
    );
\s_axi_rdata_i[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
    port map (
      I0 => \^q\(1),
      I1 => Bus2IIC_Addr(4),
      I2 => \^o10\(2),
      I3 => Bus2IIC_Addr(3),
      I4 => p_1_in4_in,
      I5 => Bus2IIC_Addr(5),
      O => \n_0_s_axi_rdata_i[2]_i_9\
    );
\s_axi_rdata_i[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
    port map (
      I0 => \^q\(2),
      I1 => Bus2IIC_Addr(4),
      I2 => \^o10\(3),
      I3 => Bus2IIC_Addr(3),
      I4 => p_1_in6_in,
      I5 => Bus2IIC_Addr(5),
      O => \n_0_s_axi_rdata_i[3]_i_10\
    );
\s_axi_rdata_i[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o9\(3),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => sr_i(4),
      O => \n_0_s_axi_rdata_i[3]_i_11\
    );
\s_axi_rdata_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080B3B3B0808080"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[3]_i_7\,
      I1 => Bus2IIC_Addr(1),
      I2 => I13,
      I3 => \n_0_s_axi_rdata_i[3]_i_9\,
      I4 => Bus2IIC_Addr(2),
      I5 => \n_0_s_axi_rdata_i[3]_i_10\,
      O => O32
    );
\s_axi_rdata_i[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFBB00AFFFBBFF"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Tx_addr(3),
      I2 => \^o17\(3),
      I3 => Bus2IIC_Addr(2),
      I4 => Bus2IIC_Addr(3),
      I5 => \n_0_s_axi_rdata_i[3]_i_11\,
      O => \n_0_s_axi_rdata_i[3]_i_5\
    );
\s_axi_rdata_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Rc_fifo_data(4),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o5\(3),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o6\(3),
      O => \n_0_s_axi_rdata_i[3]_i_6\
    );
\s_axi_rdata_i[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o8\(3),
      I1 => Rc_addr(3),
      I2 => Bus2IIC_Addr(2),
      I3 => \^o7\(3),
      I4 => Bus2IIC_Addr(3),
      I5 => Tx_fifo_data(4),
      O => \n_0_s_axi_rdata_i[3]_i_7\
    );
\s_axi_rdata_i[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o15\(3),
      I1 => s_axi_araddr(0),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_arvalid,
      I4 => \^o42\(2),
      O => \n_0_s_axi_rdata_i[3]_i_9\
    );
\s_axi_rdata_i[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o10\(4),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => \^q\(3),
      O => \n_0_s_axi_rdata_i[4]_i_10\
    );
\s_axi_rdata_i[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200F00002000"
    )
    port map (
      I0 => \^o17\(4),
      I1 => Bus2IIC_Addr(4),
      I2 => Bus2IIC_Addr(2),
      I3 => Bus2IIC_Addr(3),
      I4 => Bus2IIC_Addr(5),
      I5 => \n_0_s_axi_rdata_i[4]_i_9\,
      O => \n_0_s_axi_rdata_i[4]_i_5\
    );
\s_axi_rdata_i[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A8080000A808"
    )
    port map (
      I0 => I13,
      I1 => Rc_fifo_data(3),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o5\(4),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o6\(4),
      O => \n_0_s_axi_rdata_i[4]_i_6\
    );
\s_axi_rdata_i[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFBB00AFFFBBFF"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => \^o42\(3),
      I2 => \^o15\(4),
      I3 => Bus2IIC_Addr(2),
      I4 => Bus2IIC_Addr(3),
      I5 => \n_0_s_axi_rdata_i[4]_i_10\,
      O => \n_0_s_axi_rdata_i[4]_i_7\
    );
\s_axi_rdata_i[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Tx_fifo_data(3),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o7\(4),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o8\(4),
      O => \n_0_s_axi_rdata_i[4]_i_8\
    );
\s_axi_rdata_i[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o9\(4),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => sr_i(3),
      O => \n_0_s_axi_rdata_i[4]_i_9\
    );
\s_axi_rdata_i[5]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o10\(5),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => \^q\(4),
      O => \n_0_s_axi_rdata_i[5]_i_10\
    );
\s_axi_rdata_i[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200F00002000"
    )
    port map (
      I0 => \^o17\(5),
      I1 => Bus2IIC_Addr(4),
      I2 => Bus2IIC_Addr(2),
      I3 => Bus2IIC_Addr(3),
      I4 => Bus2IIC_Addr(5),
      I5 => \n_0_s_axi_rdata_i[5]_i_9\,
      O => \n_0_s_axi_rdata_i[5]_i_5\
    );
\s_axi_rdata_i[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A8080000A808"
    )
    port map (
      I0 => I13,
      I1 => Rc_fifo_data(2),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o5\(5),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o6\(5),
      O => \n_0_s_axi_rdata_i[5]_i_6\
    );
\s_axi_rdata_i[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFBB00AFFFBBFF"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => \^o42\(4),
      I2 => \^o15\(5),
      I3 => Bus2IIC_Addr(2),
      I4 => Bus2IIC_Addr(3),
      I5 => \n_0_s_axi_rdata_i[5]_i_10\,
      O => \n_0_s_axi_rdata_i[5]_i_7\
    );
\s_axi_rdata_i[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Tx_fifo_data(2),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o7\(5),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o8\(5),
      O => \n_0_s_axi_rdata_i[5]_i_8\
    );
\s_axi_rdata_i[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o9\(5),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => sr_i(2),
      O => \n_0_s_axi_rdata_i[5]_i_9\
    );
\s_axi_rdata_i[6]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o10\(6),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => \^q\(5),
      O => \n_0_s_axi_rdata_i[6]_i_10\
    );
\s_axi_rdata_i[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200F00002000"
    )
    port map (
      I0 => \^o17\(6),
      I1 => Bus2IIC_Addr(4),
      I2 => Bus2IIC_Addr(2),
      I3 => Bus2IIC_Addr(3),
      I4 => Bus2IIC_Addr(5),
      I5 => \n_0_s_axi_rdata_i[6]_i_9\,
      O => \n_0_s_axi_rdata_i[6]_i_5\
    );
\s_axi_rdata_i[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A8080000A808"
    )
    port map (
      I0 => I13,
      I1 => Rc_fifo_data(1),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o5\(6),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o6\(6),
      O => \n_0_s_axi_rdata_i[6]_i_6\
    );
\s_axi_rdata_i[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFBB00AFFFBBFF"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => \^o42\(5),
      I2 => \^o15\(6),
      I3 => Bus2IIC_Addr(2),
      I4 => Bus2IIC_Addr(3),
      I5 => \n_0_s_axi_rdata_i[6]_i_10\,
      O => \n_0_s_axi_rdata_i[6]_i_7\
    );
\s_axi_rdata_i[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Tx_fifo_data(1),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o7\(6),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o8\(6),
      O => \n_0_s_axi_rdata_i[6]_i_8\
    );
\s_axi_rdata_i[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o9\(6),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => sr_i(1),
      O => \n_0_s_axi_rdata_i[6]_i_9\
    );
\s_axi_rdata_i[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFABFBFFFFABFB"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => Tx_fifo_data(0),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o7\(7),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o8\(7),
      O => \n_0_s_axi_rdata_i[7]_i_10\
    );
\s_axi_rdata_i[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o9\(7),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => \^o1\(0),
      O => \n_0_s_axi_rdata_i[7]_i_11\
    );
\s_axi_rdata_i[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBAF88A0"
    )
    port map (
      I0 => \^o10\(7),
      I1 => s_axi_araddr(1),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_arvalid,
      I4 => Cr(0),
      O => \n_0_s_axi_rdata_i[7]_i_12\
    );
\s_axi_rdata_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200F00002000"
    )
    port map (
      I0 => \^o17\(7),
      I1 => Bus2IIC_Addr(4),
      I2 => Bus2IIC_Addr(2),
      I3 => Bus2IIC_Addr(3),
      I4 => Bus2IIC_Addr(5),
      I5 => \n_0_s_axi_rdata_i[7]_i_11\,
      O => \n_0_s_axi_rdata_i[7]_i_7\
    );
\s_axi_rdata_i[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A8080000A808"
    )
    port map (
      I0 => I13,
      I1 => Rc_fifo_data(0),
      I2 => Bus2IIC_Addr(3),
      I3 => \^o5\(7),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o6\(7),
      O => \n_0_s_axi_rdata_i[7]_i_8\
    );
\s_axi_rdata_i[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFBB00AFFFBBFF"
    )
    port map (
      I0 => Bus2IIC_Addr(4),
      I1 => \^o42\(6),
      I2 => \^o15\(7),
      I3 => Bus2IIC_Addr(2),
      I4 => Bus2IIC_Addr(3),
      I5 => \n_0_s_axi_rdata_i[7]_i_12\,
      O => \n_0_s_axi_rdata_i[7]_i_9\
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
    port map (
      I0 => IIC2Bus_Data1,
      I1 => \n_0_s_axi_rdata_i[8]_i_2\,
      I2 => Bus2IIC_Addr(0),
      I3 => \n_0_s_axi_rdata_i[8]_i_3\,
      I4 => I7,
      O => O2(0)
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o6\(8),
      I1 => \^o5\(8),
      I2 => Bus2IIC_Addr(1),
      I3 => \^o17\(8),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o9\(8),
      O => \n_0_s_axi_rdata_i[8]_i_2\
    );
\s_axi_rdata_i[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o8\(8),
      I1 => \^o7\(8),
      I2 => Bus2IIC_Addr(1),
      I3 => \^o15\(8),
      I4 => Bus2IIC_Addr(2),
      I5 => \^o10\(8),
      O => \n_0_s_axi_rdata_i[8]_i_3\
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
    port map (
      I0 => IIC2Bus_Data1,
      I1 => \n_0_s_axi_rdata_i[9]_i_3\,
      I2 => Bus2IIC_Addr(0),
      I3 => \n_0_s_axi_rdata_i[9]_i_5\,
      I4 => I7,
      O => O2(1)
    );
\s_axi_rdata_i[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => timing_param_thigh_i(9),
      I1 => timing_param_tsusto_i(9),
      I2 => Bus2IIC_Addr(1),
      I3 => timing_param_tsudat_i(9),
      I4 => Bus2IIC_Addr(2),
      I5 => timing_param_thddat_i(9),
      O => \n_0_s_axi_rdata_i[9]_i_3\
    );
\s_axi_rdata_i[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => timing_param_tbuf_i(9),
      I1 => timing_param_tsusta_i(9),
      I2 => Bus2IIC_Addr(1),
      I3 => timing_param_thdsta_i(9),
      I4 => Bus2IIC_Addr(2),
      I5 => timing_param_tlow_i(9),
      O => \n_0_s_axi_rdata_i[9]_i_5\
    );
\s_axi_rdata_i_reg[1]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[1]_i_5\,
      I1 => \n_0_s_axi_rdata_i[1]_i_6\,
      O => O29,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[2]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[2]_i_5\,
      I1 => \n_0_s_axi_rdata_i[2]_i_6\,
      O => O31,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[3]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[3]_i_5\,
      I1 => \n_0_s_axi_rdata_i[3]_i_6\,
      O => O33,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[4]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[4]_i_5\,
      I1 => \n_0_s_axi_rdata_i[4]_i_6\,
      O => O35,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[4]_i_4\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[4]_i_7\,
      I1 => \n_0_s_axi_rdata_i[4]_i_8\,
      O => O34,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[5]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[5]_i_5\,
      I1 => \n_0_s_axi_rdata_i[5]_i_6\,
      O => O37,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[5]_i_4\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[5]_i_7\,
      I1 => \n_0_s_axi_rdata_i[5]_i_8\,
      O => O36,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[6]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[6]_i_5\,
      I1 => \n_0_s_axi_rdata_i[6]_i_6\,
      O => O39,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[6]_i_4\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[6]_i_7\,
      I1 => \n_0_s_axi_rdata_i[6]_i_8\,
      O => O38,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[7]_i_4\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_7\,
      I1 => \n_0_s_axi_rdata_i[7]_i_8\,
      O => O41,
      S => Bus2IIC_Addr(1)
    );
\s_axi_rdata_i_reg[7]_i_6\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_s_axi_rdata_i[7]_i_9\,
      I1 => \n_0_s_axi_rdata_i[7]_i_10\,
      O => O40,
      S => Bus2IIC_Addr(1)
    );
sda_setup_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => timing_param_tsudat_i(9),
      I1 => I11(0),
      O => I10(0)
    );
\sr_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I5,
      Q => \^o1\(0),
      R => I1
    );
\sr_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I14(5),
      Q => sr_i(1),
      R => I1
    );
\sr_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I14(4),
      Q => sr_i(2),
      R => I1
    );
\sr_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I14(3),
      Q => sr_i(3),
      R => I1
    );
\sr_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I14(2),
      Q => sr_i(4),
      R => I1
    );
\sr_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I14(1),
      Q => sr_i(5),
      R => I1
    );
\sr_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I14(0),
      Q => sr_i(7),
      R => I1
    );
\timing_param_tbuf_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(0),
      Q => \^o8\(0),
      R => I1
    );
\timing_param_tbuf_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(1),
      Q => \^o8\(1),
      R => I1
    );
\timing_param_tbuf_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(2),
      Q => \^o8\(2),
      S => I1
    );
\timing_param_tbuf_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(3),
      Q => \^o8\(3),
      R => I1
    );
\timing_param_tbuf_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(4),
      Q => \^o8\(4),
      S => I1
    );
\timing_param_tbuf_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(5),
      Q => \^o8\(5),
      S => I1
    );
\timing_param_tbuf_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(6),
      Q => \^o8\(6),
      S => I1
    );
\timing_param_tbuf_i_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(7),
      Q => \^o8\(7),
      S => I1
    );
\timing_param_tbuf_i_reg[8]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(8),
      Q => \^o8\(8),
      S => I1
    );
\timing_param_tbuf_i_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I23(0),
      D => s_axi_wdata(9),
      Q => timing_param_tbuf_i(9),
      R => I1
    );
\timing_param_thddat_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(0),
      Q => \^o9\(0),
      S => I1
    );
\timing_param_thddat_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(1),
      Q => \^o9\(1),
      R => I1
    );
\timing_param_thddat_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(2),
      Q => \^o9\(2),
      R => I1
    );
\timing_param_thddat_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(3),
      Q => \^o9\(3),
      R => I1
    );
\timing_param_thddat_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(4),
      Q => \^o9\(4),
      R => I1
    );
\timing_param_thddat_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(5),
      Q => \^o9\(5),
      R => I1
    );
\timing_param_thddat_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(6),
      Q => \^o9\(6),
      R => I1
    );
\timing_param_thddat_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(7),
      Q => \^o9\(7),
      R => I1
    );
\timing_param_thddat_i_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(8),
      Q => \^o9\(8),
      R => I1
    );
\timing_param_thddat_i_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I26(0),
      D => s_axi_wdata(9),
      Q => timing_param_thddat_i(9),
      R => I1
    );
\timing_param_thdsta_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(0),
      Q => \^o15\(0),
      R => I1
    );
\timing_param_thdsta_i_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(1),
      Q => \^o15\(1),
      S => I1
    );
\timing_param_thdsta_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(2),
      Q => \^o15\(2),
      S => I1
    );
\timing_param_thdsta_i_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(3),
      Q => \^o15\(3),
      S => I1
    );
\timing_param_thdsta_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(4),
      Q => \^o15\(4),
      R => I1
    );
\timing_param_thdsta_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(5),
      Q => \^o15\(5),
      S => I1
    );
\timing_param_thdsta_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(6),
      Q => \^o15\(6),
      R => I1
    );
\timing_param_thdsta_i_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(7),
      Q => \^o15\(7),
      S => I1
    );
\timing_param_thdsta_i_reg[8]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(8),
      Q => \^o15\(8),
      S => I1
    );
\timing_param_thdsta_i_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I21(0),
      D => s_axi_wdata(9),
      Q => timing_param_thdsta_i(9),
      R => I1
    );
\timing_param_thigh_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(0),
      Q => \^o6\(0),
      S => I1
    );
\timing_param_thigh_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(1),
      Q => \^o6\(1),
      R => I1
    );
\timing_param_thigh_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(2),
      Q => \^o6\(2),
      R => I1
    );
\timing_param_thigh_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(3),
      Q => \^o6\(3),
      R => I1
    );
\timing_param_thigh_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(4),
      Q => \^o6\(4),
      S => I1
    );
\timing_param_thigh_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(5),
      Q => \^o6\(5),
      S => I1
    );
\timing_param_thigh_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(6),
      Q => \^o6\(6),
      S => I1
    );
\timing_param_thigh_i_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(7),
      Q => \^o6\(7),
      S => I1
    );
\timing_param_thigh_i_reg[8]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(8),
      Q => \^o6\(8),
      S => I1
    );
\timing_param_thigh_i_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I24(0),
      D => s_axi_wdata(9),
      Q => timing_param_thigh_i(9),
      R => I1
    );
\timing_param_tlow_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(0),
      Q => \^o10\(0),
      S => I1
    );
\timing_param_tlow_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(1),
      Q => \^o10\(1),
      R => I1
    );
\timing_param_tlow_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(2),
      Q => \^o10\(2),
      R => I1
    );
\timing_param_tlow_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(3),
      Q => \^o10\(3),
      R => I1
    );
\timing_param_tlow_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(4),
      Q => \^o10\(4),
      S => I1
    );
\timing_param_tlow_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(5),
      Q => \^o10\(5),
      S => I1
    );
\timing_param_tlow_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(6),
      Q => \^o10\(6),
      S => I1
    );
\timing_param_tlow_i_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(7),
      Q => \^o10\(7),
      S => I1
    );
\timing_param_tlow_i_reg[8]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(8),
      Q => \^o10\(8),
      S => I1
    );
\timing_param_tlow_i_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I25(0),
      D => s_axi_wdata(9),
      Q => timing_param_tlow_i(9),
      R => I1
    );
\timing_param_tsudat_i_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(0),
      Q => \^o17\(0),
      S => I1
    );
\timing_param_tsudat_i_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(1),
      Q => \^o17\(1),
      S => I1
    );
\timing_param_tsudat_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(2),
      Q => \^o17\(2),
      S => I1
    );
\timing_param_tsudat_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(3),
      Q => \^o17\(3),
      R => I1
    );
\timing_param_tsudat_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(4),
      Q => \^o17\(4),
      S => I1
    );
\timing_param_tsudat_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(5),
      Q => \^o17\(5),
      S => I1
    );
\timing_param_tsudat_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(6),
      Q => \^o17\(6),
      R => I1
    );
\timing_param_tsudat_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(7),
      Q => \^o17\(7),
      R => I1
    );
\timing_param_tsudat_i_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(8),
      Q => \^o17\(8),
      R => I1
    );
\timing_param_tsudat_i_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I22(0),
      D => s_axi_wdata(9),
      Q => timing_param_tsudat_i(9),
      R => I1
    );
\timing_param_tsusta_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(0),
      Q => \^o7\(0),
      R => I1
    );
\timing_param_tsusta_i_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(1),
      Q => \^o7\(1),
      S => I1
    );
\timing_param_tsusta_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(2),
      Q => \^o7\(2),
      R => I1
    );
\timing_param_tsusta_i_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(3),
      Q => \^o7\(3),
      S => I1
    );
\timing_param_tsusta_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(4),
      Q => \^o7\(4),
      S => I1
    );
\timing_param_tsusta_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(5),
      Q => \^o7\(5),
      S => I1
    );
\timing_param_tsusta_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(6),
      Q => \^o7\(6),
      R => I1
    );
\timing_param_tsusta_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(7),
      Q => \^o7\(7),
      R => I1
    );
\timing_param_tsusta_i_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(8),
      Q => \^o7\(8),
      R => I1
    );
\timing_param_tsusta_i_reg[9]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I19(0),
      D => s_axi_wdata(9),
      Q => timing_param_tsusta_i(9),
      S => I1
    );
\timing_param_tsusto_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(0),
      Q => \^o5\(0),
      R => I1
    );
\timing_param_tsusto_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(1),
      Q => \^o5\(1),
      R => I1
    );
\timing_param_tsusto_i_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(2),
      Q => \^o5\(2),
      S => I1
    );
\timing_param_tsusto_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(3),
      Q => \^o5\(3),
      R => I1
    );
\timing_param_tsusto_i_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(4),
      Q => \^o5\(4),
      S => I1
    );
\timing_param_tsusto_i_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(5),
      Q => \^o5\(5),
      S => I1
    );
\timing_param_tsusto_i_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(6),
      Q => \^o5\(6),
      S => I1
    );
\timing_param_tsusto_i_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(7),
      Q => \^o5\(7),
      S => I1
    );
\timing_param_tsusto_i_reg[8]\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(8),
      Q => \^o5\(8),
      S => I1
    );
\timing_param_tsusto_i_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => I20(0),
      D => s_axi_wdata(9),
      Q => timing_param_tsusto_i(9),
      R => I1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_shift8 is
  port (
    O1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    slave_sda : out STD_LOGIC;
    I1 : in STD_LOGIC;
    shift_reg_en : in STD_LOGIC;
    p_1_in25_in : in STD_LOGIC;
    I2 : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I5 : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    I22 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_shift8 : entity is "shift8";
end axi_iic_0_shift8;

architecture STRUCTURE of axi_iic_0_shift8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \n_0_data_int[1]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_data_int[7]_i_2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_int[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_int[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_int[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_int[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_int[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_int[6]_i_1\ : label is "soft_lutpair14";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\LEVEL_1_GEN.master_sda_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA88BABBBABBBABB"
    )
    port map (
      I0 => \^q\(7),
      I1 => p_1_in25_in,
      I2 => I2,
      I3 => p_0_in,
      I4 => I3,
      I5 => I4(2),
      O => O1
    );
\data_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(0),
      I1 => \^q\(0),
      I2 => I1,
      O => \n_0_data_int[1]_i_1\
    );
\data_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(1),
      I1 => \^q\(1),
      I2 => I1,
      O => \n_0_data_int[2]_i_1\
    );
\data_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(2),
      I1 => \^q\(2),
      I2 => I1,
      O => \n_0_data_int[3]_i_1\
    );
\data_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(3),
      I1 => \^q\(3),
      I2 => I1,
      O => \n_0_data_int[4]_i_1\
    );
\data_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(4),
      I1 => \^q\(4),
      I2 => I1,
      O => \n_0_data_int[5]_i_1\
    );
\data_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(5),
      I1 => \^q\(5),
      I2 => I1,
      O => \n_0_data_int[6]_i_1\
    );
\data_int[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I1,
      I1 => shift_reg_en,
      O => \n_0_data_int[7]_i_1\
    );
\data_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Tx_fifo_data(6),
      I1 => \^q\(6),
      I2 => I1,
      O => \n_0_data_int[7]_i_2\
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => I22(0),
      Q => \^q\(0),
      R => SR(0)
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[1]_i_1\,
      Q => \^q\(1),
      R => SR(0)
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[2]_i_1\,
      Q => \^q\(2),
      R => SR(0)
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[3]_i_1\,
      Q => \^q\(3),
      R => SR(0)
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[4]_i_1\,
      Q => \^q\(4),
      R => SR(0)
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[5]_i_1\,
      Q => \^q\(5),
      R => SR(0)
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[6]_i_1\,
      Q => \^q\(6),
      R => SR(0)
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_data_int[7]_i_1\,
      D => \n_0_data_int[7]_i_2\,
      Q => \^q\(7),
      R => SR(0)
    );
slave_sda_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
    port map (
      I0 => I4(1),
      I1 => I5,
      I2 => I4(2),
      I3 => I4(3),
      I4 => I4(0),
      I5 => \^q\(7),
      O => slave_sda
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_shift8_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O1 : out STD_LOGIC;
    shift_reg_ld0 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    I3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    master_slave : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Ro_prev : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    txak : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    slave_sda : in STD_LOGIC;
    sda_sample : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    detect_start : in STD_LOGIC;
    state_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    aas_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    sda_clean : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_shift8_1 : entity is "shift8";
end axi_iic_0_shift8_1;

architecture STRUCTURE of axi_iic_0_shift8_1 is
  signal addr_match : STD_LOGIC;
  signal \n_0_FSM_onehot_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[4]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[4]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[5]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[6]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[6]_i_5\ : STD_LOGIC;
  signal n_0_abgc_i_i_2 : STD_LOGIC;
  signal n_0_abgc_i_i_3 : STD_LOGIC;
  signal \n_0_data_int_reg[0]\ : STD_LOGIC;
  signal n_0_shift_reg_ld_i_5 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => I2,
      I1 => Q(4),
      I2 => Q(5),
      I3 => \n_0_FSM_onehot_state[1]_i_3\,
      O => D(0)
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000522260006"
    )
    port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => addr_match,
      I3 => master_slave,
      I4 => I4,
      I5 => Q(6),
      O => \n_0_FSM_onehot_state[1]_i_3\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_state[4]_i_2\,
      I1 => Q(0),
      I2 => \n_0_FSM_onehot_state[4]_i_3\,
      I3 => I10,
      I4 => Q(1),
      I5 => Q(3),
      O => D(1)
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000740000FF7400"
    )
    port map (
      I0 => I9(1),
      I1 => master_slave,
      I2 => addr_match,
      I3 => Q(2),
      I4 => Q(5),
      I5 => Ro_prev,
      O => \n_0_FSM_onehot_state[4]_i_2\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54545454FF545454"
    )
    port map (
      I0 => Q(5),
      I1 => I7,
      I2 => sda_sample,
      I3 => \n_0_data_int_reg[0]\,
      I4 => Q(2),
      I5 => master_slave,
      O => \n_0_FSM_onehot_state[4]_i_3\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => Q(0),
      I1 => sda_sample,
      I2 => I7,
      I3 => I8,
      I4 => \n_0_FSM_onehot_state[5]_i_3\,
      O => D(2)
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC00FC00FA00000"
    )
    port map (
      I0 => \n_0_data_int_reg[0]\,
      I1 => I9(1),
      I2 => Q(2),
      I3 => Q(6),
      I4 => addr_match,
      I5 => master_slave,
      O => \n_0_FSM_onehot_state[5]_i_3\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE000E000000000"
    )
    port map (
      I0 => master_slave,
      I1 => addr_match,
      I2 => Q(3),
      I3 => Q(5),
      I4 => Ro_prev,
      I5 => I1,
      O => D(3)
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAEA"
    )
    port map (
      I0 => I11(0),
      I1 => \n_0_FSM_onehot_state[6]_i_4\,
      I2 => \n_0_FSM_onehot_state[6]_i_5\,
      I3 => I3(6),
      I4 => p_1_in(6),
      O => addr_match
    );
\FSM_onehot_state[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => p_1_in(0),
      I1 => I3(0),
      I2 => I3(2),
      I3 => p_1_in(2),
      I4 => I3(1),
      I5 => p_1_in(1),
      O => \n_0_FSM_onehot_state[6]_i_4\
    );
\FSM_onehot_state[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => p_1_in(3),
      I1 => I3(3),
      I2 => I3(5),
      I3 => p_1_in(5),
      I4 => I3(4),
      I5 => p_1_in(4),
      O => \n_0_FSM_onehot_state[6]_i_5\
    );
aas_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
    port map (
      I0 => I15,
      I1 => aas_i,
      I2 => I9(0),
      I3 => I14,
      I4 => addr_match,
      O => O3
    );
abgc_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => n_0_abgc_i_i_2,
      I1 => I9(0),
      I2 => I14,
      I3 => detect_start,
      O => O2
    );
abgc_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
    port map (
      I0 => \n_0_data_int_reg[0]\,
      I1 => p_1_in(6),
      I2 => I9(2),
      I3 => n_0_abgc_i_i_3,
      I4 => I6,
      I5 => I11(0),
      O => n_0_abgc_i_i_2
    );
abgc_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => p_1_in(1),
      I1 => p_1_in(0),
      I2 => p_1_in(4),
      I3 => p_1_in(5),
      I4 => p_1_in(2),
      I5 => p_1_in(3),
      O => n_0_abgc_i_i_3
    );
\data_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => sda_clean,
      Q => \n_0_data_int_reg[0]\,
      R => SR(0)
    );
\data_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => \n_0_data_int_reg[0]\,
      Q => p_1_in(0),
      R => SR(0)
    );
\data_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(0),
      Q => p_1_in(1),
      R => SR(0)
    );
\data_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(1),
      Q => p_1_in(2),
      R => SR(0)
    );
\data_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(2),
      Q => p_1_in(3),
      R => SR(0)
    );
\data_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(3),
      Q => p_1_in(4),
      R => SR(0)
    );
\data_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(4),
      Q => p_1_in(5),
      R => SR(0)
    );
\data_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => E(0),
      D => p_1_in(5),
      Q => p_1_in(6),
      R => SR(0)
    );
shift_reg_ld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF3800"
    )
    port map (
      I0 => detect_start,
      I1 => state_reg(0),
      I2 => state_reg(2),
      I3 => state_reg(1),
      I4 => I12,
      I5 => n_0_shift_reg_ld_i_5,
      O => shift_reg_ld0
    );
shift_reg_ld_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8A808"
    )
    port map (
      I0 => I6,
      I1 => \n_0_data_int_reg[0]\,
      I2 => master_slave,
      I3 => I9(1),
      I4 => I13,
      O => n_0_shift_reg_ld_i_5
    );
slave_sda_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
    port map (
      I0 => txak,
      I1 => I5,
      I2 => I6,
      I3 => addr_match,
      I4 => slave_sda,
      O => O1
    );
srw_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_data_int_reg[0]\,
      I1 => aas_i,
      I2 => I11(1),
      O => O4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    AXI_Bus2IP_Reset : out STD_LOGIC;
    O1 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_soft_reset : entity is "soft_reset";
end axi_iic_0_soft_reset;

architecture STRUCTURE of axi_iic_0_soft_reset is
  signal \^axi_bus2ip_reset\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[0].RST_FLOPS\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[1].RST_FLOPS\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[1].RST_FLOPS_i_1\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[2].RST_FLOPS\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[2].RST_FLOPS_i_1\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[3].RST_FLOPS\ : STD_LOGIC;
  signal \n_0_RESET_FLOPS[3].RST_FLOPS_i_1\ : STD_LOGIC;
  signal reset_trig : STD_LOGIC;
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type : string;
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair61";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair61";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
begin
  AXI_Bus2IP_Reset <= \^axi_bus2ip_reset\;
\GPO_GEN.gpo_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \n_0_RESET_FLOPS[3].RST_FLOPS\,
      I1 => s_axi_aresetn,
      O => O1
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_trig,
      Q => \n_0_RESET_FLOPS[0].RST_FLOPS\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_RESET_FLOPS[1].RST_FLOPS_i_1\,
      Q => \n_0_RESET_FLOPS[1].RST_FLOPS\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_trig,
      I1 => \n_0_RESET_FLOPS[0].RST_FLOPS\,
      O => \n_0_RESET_FLOPS[1].RST_FLOPS_i_1\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_RESET_FLOPS[2].RST_FLOPS_i_1\,
      Q => \n_0_RESET_FLOPS[2].RST_FLOPS\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_trig,
      I1 => \n_0_RESET_FLOPS[1].RST_FLOPS\,
      O => \n_0_RESET_FLOPS[2].RST_FLOPS_i_1\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_RESET_FLOPS[3].RST_FLOPS_i_1\,
      Q => \n_0_RESET_FLOPS[3].RST_FLOPS\,
      R => \^axi_bus2ip_reset\
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => reset_trig,
      I1 => \n_0_RESET_FLOPS[2].RST_FLOPS\,
      O => \n_0_RESET_FLOPS[3].RST_FLOPS_i_1\
    );
reset_trig_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => reset_trig,
      R => \^axi_bus2ip_reset\
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_axi_aresetn,
      O => \^axi_bus2ip_reset\
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => sw_rst_cond_d1,
      R => \^axi_bus2ip_reset\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_upcnt_n is
  port (
    O3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    O2 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    sda_cout1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I3 : in STD_LOGIC;
    scl_clean : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    I8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I14 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I15 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I16 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I17 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I18 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I19 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I20 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I21 : in STD_LOGIC;
    stop_scl_reg : in STD_LOGIC;
    I22 : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    I23 : in STD_LOGIC;
    I24 : in STD_LOGIC;
    I25 : in STD_LOGIC;
    I26 : in STD_LOGIC;
    I27 : in STD_LOGIC;
    next_scl_state0 : in STD_LOGIC;
    I28 : in STD_LOGIC;
    sda_cout_reg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_upcnt_n : entity is "upcnt_n";
end axi_iic_0_upcnt_n;

architecture STRUCTURE of axi_iic_0_upcnt_n is
  signal \^o1\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_cnt_en1 : STD_LOGIC;
  signal clk_cnt_en11_out : STD_LOGIC;
  signal clk_cnt_en12_out : STD_LOGIC;
  signal clk_cnt_en2 : STD_LOGIC;
  signal clk_cnt_rst : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[3]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[3]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[3]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[4]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[5]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[5]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[5]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[6]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[6]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[6]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_13\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_14\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_17\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_18\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_19\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_21\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_22\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_23\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_25\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_26\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_27\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_4\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_10\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_11\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_12\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_13\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_14\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_15\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_16\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_2\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_5\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_6\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_7\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_8\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_9\ : STD_LOGIC;
  signal \n_0_q_int[1]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[4]_i_2\ : STD_LOGIC;
  signal \n_0_q_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[8]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[9]_i_1\ : STD_LOGIC;
  signal n_0_sda_cout_reg_i_2 : STD_LOGIC;
  signal n_0_sda_cout_reg_i_5 : STD_LOGIC;
  signal n_0_stop_scl_reg_i_3 : STD_LOGIC;
  signal n_0_stop_scl_reg_i_6 : STD_LOGIC;
  signal \n_1_FSM_onehot_scl_state_reg[3]_i_2\ : STD_LOGIC;
  signal \n_1_FSM_onehot_scl_state_reg[5]_i_2\ : STD_LOGIC;
  signal \n_1_FSM_onehot_scl_state_reg[6]_i_2\ : STD_LOGIC;
  signal \n_1_FSM_onehot_scl_state_reg[9]_i_10\ : STD_LOGIC;
  signal \n_1_FSM_onehot_scl_state_reg[9]_i_6\ : STD_LOGIC;
  signal \n_1_FSM_onehot_scl_state_reg[9]_i_8\ : STD_LOGIC;
  signal \n_1_FSM_onehot_scl_state_reg[9]_i_9\ : STD_LOGIC;
  signal \n_2_FSM_onehot_scl_state_reg[3]_i_2\ : STD_LOGIC;
  signal \n_2_FSM_onehot_scl_state_reg[5]_i_2\ : STD_LOGIC;
  signal \n_2_FSM_onehot_scl_state_reg[6]_i_2\ : STD_LOGIC;
  signal \n_2_FSM_onehot_scl_state_reg[9]_i_10\ : STD_LOGIC;
  signal \n_2_FSM_onehot_scl_state_reg[9]_i_6\ : STD_LOGIC;
  signal \n_2_FSM_onehot_scl_state_reg[9]_i_8\ : STD_LOGIC;
  signal \n_2_FSM_onehot_scl_state_reg[9]_i_9\ : STD_LOGIC;
  signal \n_3_FSM_onehot_scl_state_reg[3]_i_2\ : STD_LOGIC;
  signal \n_3_FSM_onehot_scl_state_reg[5]_i_2\ : STD_LOGIC;
  signal \n_3_FSM_onehot_scl_state_reg[6]_i_2\ : STD_LOGIC;
  signal \n_3_FSM_onehot_scl_state_reg[9]_i_10\ : STD_LOGIC;
  signal \n_3_FSM_onehot_scl_state_reg[9]_i_6\ : STD_LOGIC;
  signal \n_3_FSM_onehot_scl_state_reg[9]_i_8\ : STD_LOGIC;
  signal \n_3_FSM_onehot_scl_state_reg[9]_i_9\ : STD_LOGIC;
  signal next_scl_state1 : STD_LOGIC;
  signal next_scl_state10_out : STD_LOGIC;
  signal next_scl_state13_out : STD_LOGIC;
  signal \q_int_reg__0\ : STD_LOGIC_VECTOR ( 1 to 9 );
  signal sda_cout : STD_LOGIC;
  signal \NLW_FSM_onehot_scl_state_reg[3]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_scl_state_reg[5]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_scl_state_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_scl_state_reg[9]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_scl_state_reg[9]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_scl_state_reg[9]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_scl_state_reg[9]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[0]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[0]_i_14\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_int[0]_i_15\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_int[0]_i_16\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_int[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q_int[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_int[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_int[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_int[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q_int[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_int[9]_i_1\ : label is "soft_lutpair11";
  attribute counter : integer;
  attribute counter of \q_int_reg[0]\ : label is 6;
  attribute counter of \q_int_reg[1]\ : label is 6;
  attribute counter of \q_int_reg[2]\ : label is 6;
  attribute counter of \q_int_reg[3]\ : label is 6;
  attribute counter of \q_int_reg[4]\ : label is 6;
  attribute counter of \q_int_reg[5]\ : label is 6;
  attribute counter of \q_int_reg[6]\ : label is 6;
  attribute counter of \q_int_reg[7]\ : label is 6;
  attribute counter of \q_int_reg[8]\ : label is 6;
  attribute counter of \q_int_reg[9]\ : label is 6;
begin
  O1 <= \^o1\;
  O3(0) <= \^o3\(0);
\FSM_onehot_scl_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => I21,
      I1 => I2(1),
      I2 => I2(5),
      I3 => I2(4),
      I4 => I2(7),
      I5 => \n_0_FSM_onehot_scl_state[1]_i_3\,
      O => D(0)
    );
\FSM_onehot_scl_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033000030443044"
    )
    port map (
      I0 => next_scl_state0,
      I1 => I2(0),
      I2 => I3,
      I3 => I2(6),
      I4 => next_scl_state1,
      I5 => I2(8),
      O => \n_0_FSM_onehot_scl_state[1]_i_3\
    );
\FSM_onehot_scl_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04340000"
    )
    port map (
      I0 => next_scl_state13_out,
      I1 => I2(2),
      I2 => I2(1),
      I3 => sda_clean,
      I4 => I27,
      O => D(1)
    );
\FSM_onehot_scl_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => I18(6),
      I2 => I18(8),
      I3 => \q_int_reg__0\(1),
      I4 => I18(7),
      I5 => \q_int_reg__0\(2),
      O => \n_0_FSM_onehot_scl_state[3]_i_5\
    );
\FSM_onehot_scl_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I18(3),
      I2 => I18(5),
      I3 => \q_int_reg__0\(4),
      I4 => I18(4),
      I5 => \q_int_reg__0\(5),
      O => \n_0_FSM_onehot_scl_state[3]_i_6\
    );
\FSM_onehot_scl_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => I18(0),
      I2 => I18(2),
      I3 => \q_int_reg__0\(7),
      I4 => I18(1),
      I5 => \q_int_reg__0\(8),
      O => \n_0_FSM_onehot_scl_state[3]_i_7\
    );
\FSM_onehot_scl_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222E00000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state[4]_i_2\,
      I1 => I2(6),
      I2 => I2(3),
      I3 => stop_scl_reg,
      I4 => I2(2),
      I5 => I22,
      O => D(2)
    );
\FSM_onehot_scl_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38083838"
    )
    port map (
      I0 => next_scl_state13_out,
      I1 => I2(2),
      I2 => I2(3),
      I3 => scl_clean,
      I4 => clk_cnt_en2,
      O => \n_0_FSM_onehot_scl_state[4]_i_2\
    );
\FSM_onehot_scl_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0434040400000000"
    )
    port map (
      I0 => next_scl_state10_out,
      I1 => I2(4),
      I2 => I2(3),
      I3 => scl_clean,
      I4 => clk_cnt_en2,
      I5 => I26,
      O => D(3)
    );
\FSM_onehot_scl_state[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => I17(6),
      I2 => I17(8),
      I3 => \q_int_reg__0\(1),
      I4 => I17(7),
      I5 => \q_int_reg__0\(2),
      O => \n_0_FSM_onehot_scl_state[5]_i_5\
    );
\FSM_onehot_scl_state[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I17(3),
      I2 => I17(5),
      I3 => \q_int_reg__0\(4),
      I4 => I17(4),
      I5 => \q_int_reg__0\(5),
      O => \n_0_FSM_onehot_scl_state[5]_i_6\
    );
\FSM_onehot_scl_state[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => I17(0),
      I2 => I17(2),
      I3 => \q_int_reg__0\(7),
      I4 => I17(1),
      I5 => \q_int_reg__0\(8),
      O => \n_0_FSM_onehot_scl_state[5]_i_7\
    );
\FSM_onehot_scl_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34040000"
    )
    port map (
      I0 => scl_clean,
      I1 => I2(5),
      I2 => I2(4),
      I3 => next_scl_state10_out,
      I4 => I25,
      O => D(4)
    );
\FSM_onehot_scl_state[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => I19(6),
      I2 => I19(8),
      I3 => \q_int_reg__0\(1),
      I4 => I19(7),
      I5 => \q_int_reg__0\(2),
      O => \n_0_FSM_onehot_scl_state[6]_i_5\
    );
\FSM_onehot_scl_state[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I19(3),
      I2 => I19(5),
      I3 => \q_int_reg__0\(4),
      I4 => I19(4),
      I5 => \q_int_reg__0\(5),
      O => \n_0_FSM_onehot_scl_state[6]_i_6\
    );
\FSM_onehot_scl_state[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => I19(0),
      I2 => I19(2),
      I3 => \q_int_reg__0\(7),
      I4 => I19(1),
      I5 => \q_int_reg__0\(8),
      O => \n_0_FSM_onehot_scl_state[6]_i_7\
    );
\FSM_onehot_scl_state[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => I20(6),
      I2 => I20(8),
      I3 => \q_int_reg__0\(1),
      I4 => I20(7),
      I5 => \q_int_reg__0\(2),
      O => \n_0_FSM_onehot_scl_state[9]_i_12\
    );
\FSM_onehot_scl_state[9]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I20(3),
      I2 => I20(5),
      I3 => \q_int_reg__0\(4),
      I4 => I20(4),
      I5 => \q_int_reg__0\(5),
      O => \n_0_FSM_onehot_scl_state[9]_i_13\
    );
\FSM_onehot_scl_state[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => I20(0),
      I2 => I20(2),
      I3 => \q_int_reg__0\(7),
      I4 => I20(1),
      I5 => \q_int_reg__0\(8),
      O => \n_0_FSM_onehot_scl_state[9]_i_14\
    );
\FSM_onehot_scl_state[9]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => I2(4),
      I1 => I2(3),
      O => \^o1\
    );
\FSM_onehot_scl_state[9]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => I16(6),
      I2 => I16(8),
      I3 => \q_int_reg__0\(1),
      I4 => I16(7),
      I5 => \q_int_reg__0\(2),
      O => \n_0_FSM_onehot_scl_state[9]_i_17\
    );
\FSM_onehot_scl_state[9]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I16(3),
      I2 => I16(5),
      I3 => \q_int_reg__0\(4),
      I4 => I16(4),
      I5 => \q_int_reg__0\(5),
      O => \n_0_FSM_onehot_scl_state[9]_i_18\
    );
\FSM_onehot_scl_state[9]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => I16(0),
      I2 => I16(2),
      I3 => \q_int_reg__0\(7),
      I4 => I16(1),
      I5 => \q_int_reg__0\(8),
      O => \n_0_FSM_onehot_scl_state[9]_i_19\
    );
\FSM_onehot_scl_state[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state[9]_i_4\,
      I1 => I7,
      I2 => I2(1),
      I3 => I2(2),
      I4 => I2(3),
      I5 => I2(4),
      O => E(0)
    );
\FSM_onehot_scl_state[9]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => I14(6),
      I2 => I14(8),
      I3 => \q_int_reg__0\(1),
      I4 => I14(7),
      I5 => \q_int_reg__0\(2),
      O => \n_0_FSM_onehot_scl_state[9]_i_21\
    );
\FSM_onehot_scl_state[9]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I14(3),
      I2 => I14(5),
      I3 => \q_int_reg__0\(4),
      I4 => I14(4),
      I5 => \q_int_reg__0\(5),
      O => \n_0_FSM_onehot_scl_state[9]_i_22\
    );
\FSM_onehot_scl_state[9]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => I14(0),
      I2 => I14(2),
      I3 => \q_int_reg__0\(7),
      I4 => I14(1),
      I5 => \q_int_reg__0\(8),
      O => \n_0_FSM_onehot_scl_state[9]_i_23\
    );
\FSM_onehot_scl_state[9]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => I15(6),
      I2 => I15(8),
      I3 => \q_int_reg__0\(1),
      I4 => I15(7),
      I5 => \q_int_reg__0\(2),
      O => \n_0_FSM_onehot_scl_state[9]_i_25\
    );
\FSM_onehot_scl_state[9]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I15(3),
      I2 => I15(5),
      I3 => \q_int_reg__0\(4),
      I4 => I15(4),
      I5 => \q_int_reg__0\(5),
      O => \n_0_FSM_onehot_scl_state[9]_i_26\
    );
\FSM_onehot_scl_state[9]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => I15(0),
      I2 => I15(2),
      I3 => \q_int_reg__0\(7),
      I4 => I15(1),
      I5 => \q_int_reg__0\(8),
      O => \n_0_FSM_onehot_scl_state[9]_i_27\
    );
\FSM_onehot_scl_state[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34040000"
    )
    port map (
      I0 => next_scl_state1,
      I1 => I2(8),
      I2 => I2(7),
      I3 => sda_clean,
      I4 => I23,
      O => D(5)
    );
\FSM_onehot_scl_state[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
    port map (
      I0 => clk_cnt_en12_out,
      I1 => Q(0),
      I2 => clk_cnt_en11_out,
      I3 => stop_scl_reg,
      I4 => clk_cnt_en1,
      O => \n_0_FSM_onehot_scl_state[9]_i_4\
    );
\FSM_onehot_scl_state_reg[3]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => next_scl_state13_out,
      CO(2) => \n_1_FSM_onehot_scl_state_reg[3]_i_2\,
      CO(1) => \n_2_FSM_onehot_scl_state_reg[3]_i_2\,
      CO(0) => \n_3_FSM_onehot_scl_state_reg[3]_i_2\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_onehot_scl_state_reg[3]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => I11(0),
      S(2) => \n_0_FSM_onehot_scl_state[3]_i_5\,
      S(1) => \n_0_FSM_onehot_scl_state[3]_i_6\,
      S(0) => \n_0_FSM_onehot_scl_state[3]_i_7\
    );
\FSM_onehot_scl_state_reg[5]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => clk_cnt_en2,
      CO(2) => \n_1_FSM_onehot_scl_state_reg[5]_i_2\,
      CO(1) => \n_2_FSM_onehot_scl_state_reg[5]_i_2\,
      CO(0) => \n_3_FSM_onehot_scl_state_reg[5]_i_2\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_onehot_scl_state_reg[5]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => I10(0),
      S(2) => \n_0_FSM_onehot_scl_state[5]_i_5\,
      S(1) => \n_0_FSM_onehot_scl_state[5]_i_6\,
      S(0) => \n_0_FSM_onehot_scl_state[5]_i_7\
    );
\FSM_onehot_scl_state_reg[6]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => next_scl_state10_out,
      CO(2) => \n_1_FSM_onehot_scl_state_reg[6]_i_2\,
      CO(1) => \n_2_FSM_onehot_scl_state_reg[6]_i_2\,
      CO(0) => \n_3_FSM_onehot_scl_state_reg[6]_i_2\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_onehot_scl_state_reg[6]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => I12(0),
      S(2) => \n_0_FSM_onehot_scl_state[6]_i_5\,
      S(1) => \n_0_FSM_onehot_scl_state[6]_i_6\,
      S(0) => \n_0_FSM_onehot_scl_state[6]_i_7\
    );
\FSM_onehot_scl_state_reg[9]_i_10\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => clk_cnt_en1,
      CO(2) => \n_1_FSM_onehot_scl_state_reg[9]_i_10\,
      CO(1) => \n_2_FSM_onehot_scl_state_reg[9]_i_10\,
      CO(0) => \n_3_FSM_onehot_scl_state_reg[9]_i_10\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_onehot_scl_state_reg[9]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => I8(0),
      S(2) => \n_0_FSM_onehot_scl_state[9]_i_25\,
      S(1) => \n_0_FSM_onehot_scl_state[9]_i_26\,
      S(0) => \n_0_FSM_onehot_scl_state[9]_i_27\
    );
\FSM_onehot_scl_state_reg[9]_i_6\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => next_scl_state1,
      CO(2) => \n_1_FSM_onehot_scl_state_reg[9]_i_6\,
      CO(1) => \n_2_FSM_onehot_scl_state_reg[9]_i_6\,
      CO(0) => \n_3_FSM_onehot_scl_state_reg[9]_i_6\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_onehot_scl_state_reg[9]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => I13(0),
      S(2) => \n_0_FSM_onehot_scl_state[9]_i_12\,
      S(1) => \n_0_FSM_onehot_scl_state[9]_i_13\,
      S(0) => \n_0_FSM_onehot_scl_state[9]_i_14\
    );
\FSM_onehot_scl_state_reg[9]_i_8\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => clk_cnt_en12_out,
      CO(2) => \n_1_FSM_onehot_scl_state_reg[9]_i_8\,
      CO(1) => \n_2_FSM_onehot_scl_state_reg[9]_i_8\,
      CO(0) => \n_3_FSM_onehot_scl_state_reg[9]_i_8\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_onehot_scl_state_reg[9]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => I9(0),
      S(2) => \n_0_FSM_onehot_scl_state[9]_i_17\,
      S(1) => \n_0_FSM_onehot_scl_state[9]_i_18\,
      S(0) => \n_0_FSM_onehot_scl_state[9]_i_19\
    );
\FSM_onehot_scl_state_reg[9]_i_9\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => clk_cnt_en11_out,
      CO(2) => \n_1_FSM_onehot_scl_state_reg[9]_i_9\,
      CO(1) => \n_2_FSM_onehot_scl_state_reg[9]_i_9\,
      CO(0) => \n_3_FSM_onehot_scl_state_reg[9]_i_9\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_onehot_scl_state_reg[9]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => S(0),
      S(2) => \n_0_FSM_onehot_scl_state[9]_i_21\,
      S(1) => \n_0_FSM_onehot_scl_state[9]_i_22\,
      S(0) => \n_0_FSM_onehot_scl_state[9]_i_23\
    );
\q_int[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
    port map (
      I0 => I2(2),
      I1 => I2(8),
      I2 => I2(6),
      I3 => I2(4),
      I4 => I2(3),
      O => \n_0_q_int[0]_i_10\
    );
\q_int[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000050005051A"
    )
    port map (
      I0 => I2(2),
      I1 => scl_clean,
      I2 => I2(3),
      I3 => I2(4),
      I4 => I2(6),
      I5 => I2(8),
      O => \n_0_q_int[0]_i_11\
    );
\q_int[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => I2(8),
      I1 => scl_clean,
      I2 => I2(5),
      I3 => I2(4),
      I4 => I2(7),
      I5 => I2(6),
      O => \n_0_q_int[0]_i_12\
    );
\q_int[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => I2(6),
      I1 => I2(8),
      O => \n_0_q_int[0]_i_13\
    );
\q_int[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => I2(8),
      I1 => I2(6),
      I2 => I2(3),
      I3 => I2(4),
      O => \n_0_q_int[0]_i_14\
    );
\q_int[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => I2(6),
      I1 => scl_clean,
      I2 => I2(4),
      I3 => I2(8),
      O => \n_0_q_int[0]_i_15\
    );
\q_int[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"054A"
    )
    port map (
      I0 => I2(4),
      I1 => I3,
      I2 => I2(6),
      I3 => I2(8),
      O => \n_0_q_int[0]_i_16\
    );
\q_int[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAE"
    )
    port map (
      I0 => clk_cnt_rst,
      I1 => \n_0_q_int[0]_i_4__0\,
      I2 => I2(5),
      I3 => I2(0),
      I4 => I2(7),
      I5 => I2(1),
      O => \n_0_q_int[0]_i_1__0\
    );
\q_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
    port map (
      I0 => \^o3\(0),
      I1 => \q_int_reg__0\(1),
      I2 => \q_int_reg__0\(3),
      I3 => \n_0_q_int[0]_i_5\,
      I4 => \q_int_reg__0\(2),
      I5 => clk_cnt_rst,
      O => \n_0_q_int[0]_i_2\
    );
\q_int[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550100"
    )
    port map (
      I0 => \n_0_q_int[0]_i_6\,
      I1 => I3,
      I2 => I2(8),
      I3 => \n_0_FSM_onehot_scl_state[9]_i_4\,
      I4 => \n_0_q_int[0]_i_7\,
      I5 => \n_0_q_int[0]_i_8\,
      O => clk_cnt_rst
    );
\q_int[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
    port map (
      I0 => \n_0_q_int[0]_i_9\,
      I1 => \n_0_FSM_onehot_scl_state[9]_i_4\,
      I2 => \n_0_q_int[0]_i_10\,
      I3 => clk_cnt_en2,
      I4 => \n_0_q_int[0]_i_11\,
      O => \n_0_q_int[0]_i_4__0\
    );
\q_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(8),
      I3 => \q_int_reg__0\(9),
      I4 => \q_int_reg__0\(7),
      I5 => \q_int_reg__0\(5),
      O => \n_0_q_int[0]_i_5\
    );
\q_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111111111F1111"
    )
    port map (
      I0 => clk_cnt_en2,
      I1 => \n_0_q_int[0]_i_12\,
      I2 => I2(5),
      I3 => I2(3),
      I4 => \n_0_q_int[0]_i_13\,
      I5 => I2(7),
      O => \n_0_q_int[0]_i_6\
    );
\q_int[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
    port map (
      I0 => I2(7),
      I1 => I2(5),
      I2 => I2(6),
      I3 => I2(8),
      I4 => I2(3),
      I5 => I2(4),
      O => \n_0_q_int[0]_i_7\
    );
\q_int[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEF10"
    )
    port map (
      I0 => I2(8),
      I1 => I2(6),
      I2 => \^o1\,
      I3 => I2(2),
      I4 => I2(0),
      I5 => I2(1),
      O => \n_0_q_int[0]_i_8\
    );
\q_int[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5C0CFCFC5C0C0C0"
    )
    port map (
      I0 => clk_cnt_en2,
      I1 => \n_0_q_int[0]_i_14\,
      I2 => I2(2),
      I3 => \n_0_q_int[0]_i_15\,
      I4 => I2(3),
      I5 => \n_0_q_int[0]_i_16\,
      O => \n_0_q_int[0]_i_9\
    );
\q_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => \q_int_reg__0\(1),
      I1 => \q_int_reg__0\(2),
      I2 => \n_0_q_int[0]_i_5\,
      I3 => \q_int_reg__0\(3),
      I4 => clk_cnt_rst,
      O => \n_0_q_int[1]_i_1\
    );
\q_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => \q_int_reg__0\(3),
      I2 => \n_0_q_int[0]_i_5\,
      I3 => clk_cnt_rst,
      O => \n_0_q_int[2]_i_1\
    );
\q_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => \n_0_q_int[0]_i_5\,
      I2 => clk_cnt_rst,
      O => \n_0_q_int[3]_i_1\
    );
\q_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => \n_0_q_int[4]_i_2\,
      I2 => clk_cnt_rst,
      O => \n_0_q_int[4]_i_1\
    );
\q_int[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(7),
      I2 => \q_int_reg__0\(9),
      I3 => \q_int_reg__0\(8),
      I4 => \q_int_reg__0\(6),
      O => \n_0_q_int[4]_i_2\
    );
\q_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
    port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(8),
      I3 => \q_int_reg__0\(9),
      I4 => \q_int_reg__0\(7),
      I5 => clk_cnt_rst,
      O => \n_0_q_int[5]_i_1\
    );
\q_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => \q_int_reg__0\(7),
      I2 => \q_int_reg__0\(9),
      I3 => \q_int_reg__0\(8),
      I4 => clk_cnt_rst,
      O => \n_0_q_int[6]_i_1\
    );
\q_int[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \q_int_reg__0\(7),
      I1 => \q_int_reg__0\(8),
      I2 => \q_int_reg__0\(9),
      I3 => clk_cnt_rst,
      O => \n_0_q_int[7]_i_1\
    );
\q_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(8),
      I1 => \q_int_reg__0\(9),
      I2 => clk_cnt_rst,
      O => \n_0_q_int[8]_i_1\
    );
\q_int[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => clk_cnt_rst,
      O => \n_0_q_int[9]_i_1\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[0]_i_2\,
      Q => \^o3\(0),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[1]_i_1\,
      Q => \q_int_reg__0\(1),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[2]_i_1\,
      Q => \q_int_reg__0\(2),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[3]_i_1\,
      Q => \q_int_reg__0\(3),
      R => SR(0)
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[4]_i_1\,
      Q => \q_int_reg__0\(4),
      R => SR(0)
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[5]_i_1\,
      Q => \q_int_reg__0\(5),
      R => SR(0)
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[6]_i_1\,
      Q => \q_int_reg__0\(6),
      R => SR(0)
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[7]_i_1\,
      Q => \q_int_reg__0\(7),
      R => SR(0)
    );
\q_int_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[8]_i_1\,
      Q => \q_int_reg__0\(8),
      R => SR(0)
    );
\q_int_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__0\,
      D => \n_0_q_int[9]_i_1\,
      Q => \q_int_reg__0\(9),
      R => SR(0)
    );
sda_cout_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
    port map (
      I0 => I2(0),
      I1 => n_0_sda_cout_reg_i_2,
      I2 => sda_cout,
      I3 => sda_cout_reg,
      O => O4
    );
sda_cout_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF540054"
    )
    port map (
      I0 => sda_cout1,
      I1 => Q(0),
      I2 => I1,
      I3 => I2(6),
      I4 => clk_cnt_en11_out,
      I5 => I2(1),
      O => n_0_sda_cout_reg_i_2
    );
sda_cout_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010301010131"
    )
    port map (
      I0 => n_0_sda_cout_reg_i_5,
      I1 => I4,
      I2 => I2(0),
      I3 => I2(4),
      I4 => I5,
      I5 => I2(1),
      O => sda_cout
    );
sda_cout_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF0FFFDF0FF"
    )
    port map (
      I0 => clk_cnt_en11_out,
      I1 => I6,
      I2 => I2(1),
      I3 => I2(4),
      I4 => I2(6),
      I5 => I2(5),
      O => n_0_sda_cout_reg_i_5
    );
stop_scl_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
    port map (
      I0 => I28,
      I1 => I2(7),
      I2 => I2(2),
      I3 => n_0_stop_scl_reg_i_3,
      I4 => stop_scl_reg,
      O => O2
    );
stop_scl_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000022002222F0"
    )
    port map (
      I0 => I24,
      I1 => I2(4),
      I2 => n_0_stop_scl_reg_i_6,
      I3 => I2(3),
      I4 => I2(0),
      I5 => I2(1),
      O => n_0_stop_scl_reg_i_3
    );
stop_scl_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000004000F0FF0"
    )
    port map (
      I0 => I6,
      I1 => clk_cnt_en11_out,
      I2 => I2(4),
      I3 => I2(5),
      I4 => I2(8),
      I5 => I2(6),
      O => n_0_stop_scl_reg_i_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_upcnt_n_2 is
  port (
    O4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    I10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    I19 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sda_clean : in STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    tx_under_prev_d1 : in STD_LOGIC;
    rsta_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gen_stop_d1 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    scl_clean : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_upcnt_n_2 : entity is "upcnt_n";
end axi_iic_0_upcnt_n_2;

architecture STRUCTURE of axi_iic_0_upcnt_n_2 is
  signal \^o4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \n_0_q_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_4\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_q_int[1]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[2]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[3]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_q_int[5]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[6]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[7]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[8]_i_1__0\ : STD_LOGIC;
  signal \n_0_q_int[9]_i_1__0\ : STD_LOGIC;
  signal n_0_sda_setup_i_4 : STD_LOGIC;
  signal n_0_sda_setup_i_5 : STD_LOGIC;
  signal n_0_sda_setup_i_6 : STD_LOGIC;
  signal n_0_sda_setup_reg_i_2 : STD_LOGIC;
  signal n_1_sda_setup_reg_i_2 : STD_LOGIC;
  signal n_2_sda_setup_reg_i_2 : STD_LOGIC;
  signal n_3_sda_setup_reg_i_2 : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal \q_int_reg__0\ : STD_LOGIC_VECTOR ( 1 to 9 );
  signal NLW_sda_setup_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[1]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_int[2]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q_int[3]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q_int[4]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q_int[6]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_int[7]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q_int[8]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q_int[9]_i_1__0\ : label is "soft_lutpair18";
  attribute counter : integer;
  attribute counter of \q_int_reg[0]\ : label is 7;
  attribute counter of \q_int_reg[1]\ : label is 7;
  attribute counter of \q_int_reg[2]\ : label is 7;
  attribute counter of \q_int_reg[3]\ : label is 7;
  attribute counter of \q_int_reg[4]\ : label is 7;
  attribute counter of \q_int_reg[5]\ : label is 7;
  attribute counter of \q_int_reg[6]\ : label is 7;
  attribute counter of \q_int_reg[7]\ : label is 7;
  attribute counter of \q_int_reg[8]\ : label is 7;
  attribute counter of \q_int_reg[9]\ : label is 7;
begin
  O4(0) <= \^o4\(0);
\q_int[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => p_13_in,
      I1 => I1,
      O => \n_0_q_int[0]_i_1\
    );
\q_int[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
    port map (
      I0 => \^o4\(0),
      I1 => \q_int_reg__0\(1),
      I2 => \q_int_reg__0\(3),
      I3 => \n_0_q_int[0]_i_4\,
      I4 => \q_int_reg__0\(2),
      I5 => p_13_in,
      O => \n_0_q_int[0]_i_2__0\
    );
\q_int[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFBEBE"
    )
    port map (
      I0 => \n_0_q_int[0]_i_5__0\,
      I1 => sda_clean,
      I2 => sda_rin_d1,
      I3 => I2,
      I4 => tx_under_prev_d1,
      O => p_13_in
    );
\q_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(8),
      I3 => \q_int_reg__0\(9),
      I4 => \q_int_reg__0\(7),
      I5 => \q_int_reg__0\(5),
      O => \n_0_q_int[0]_i_4\
    );
\q_int[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
    port map (
      I0 => rsta_d1,
      I1 => Q(1),
      I2 => gen_stop_d1,
      I3 => I3,
      O => \n_0_q_int[0]_i_5__0\
    );
\q_int[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => \q_int_reg__0\(1),
      I1 => \q_int_reg__0\(2),
      I2 => \n_0_q_int[0]_i_4\,
      I3 => \q_int_reg__0\(3),
      I4 => p_13_in,
      O => \n_0_q_int[1]_i_1__0\
    );
\q_int[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \q_int_reg__0\(2),
      I1 => \q_int_reg__0\(3),
      I2 => \n_0_q_int[0]_i_4\,
      I3 => p_13_in,
      O => \n_0_q_int[2]_i_1__0\
    );
\q_int[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => \n_0_q_int[0]_i_4\,
      I2 => p_13_in,
      O => \n_0_q_int[3]_i_1__0\
    );
\q_int[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(4),
      I1 => \n_0_q_int[4]_i_2__0\,
      I2 => p_13_in,
      O => \n_0_q_int[4]_i_1__0\
    );
\q_int[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(7),
      I2 => \q_int_reg__0\(9),
      I3 => \q_int_reg__0\(8),
      I4 => \q_int_reg__0\(6),
      O => \n_0_q_int[4]_i_2__0\
    );
\q_int[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
    port map (
      I0 => \q_int_reg__0\(5),
      I1 => \q_int_reg__0\(6),
      I2 => \q_int_reg__0\(8),
      I3 => \q_int_reg__0\(9),
      I4 => \q_int_reg__0\(7),
      I5 => p_13_in,
      O => \n_0_q_int[5]_i_1__0\
    );
\q_int[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => \q_int_reg__0\(7),
      I2 => \q_int_reg__0\(9),
      I3 => \q_int_reg__0\(8),
      I4 => p_13_in,
      O => \n_0_q_int[6]_i_1__0\
    );
\q_int[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
    port map (
      I0 => \q_int_reg__0\(7),
      I1 => \q_int_reg__0\(8),
      I2 => \q_int_reg__0\(9),
      I3 => p_13_in,
      O => \n_0_q_int[7]_i_1__0\
    );
\q_int[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
    port map (
      I0 => \q_int_reg__0\(8),
      I1 => \q_int_reg__0\(9),
      I2 => p_13_in,
      O => \n_0_q_int[8]_i_1__0\
    );
\q_int[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => p_13_in,
      O => \n_0_q_int[9]_i_1__0\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[0]_i_2__0\,
      Q => \^o4\(0),
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[1]_i_1__0\,
      Q => \q_int_reg__0\(1),
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[2]_i_1__0\,
      Q => \q_int_reg__0\(2),
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[3]_i_1__0\,
      Q => \q_int_reg__0\(3),
      R => SR(0)
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[4]_i_1__0\,
      Q => \q_int_reg__0\(4),
      R => SR(0)
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[5]_i_1__0\,
      Q => \q_int_reg__0\(5),
      R => SR(0)
    );
\q_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[6]_i_1__0\,
      Q => \q_int_reg__0\(6),
      R => SR(0)
    );
\q_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[7]_i_1__0\,
      Q => \q_int_reg__0\(7),
      R => SR(0)
    );
\q_int_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[8]_i_1__0\,
      Q => \q_int_reg__0\(8),
      R => SR(0)
    );
\q_int_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1\,
      D => \n_0_q_int[9]_i_1__0\,
      Q => \q_int_reg__0\(9),
      R => SR(0)
    );
sda_setup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222AAA20000AAA0"
    )
    port map (
      I0 => Q(0),
      I1 => n_0_sda_setup_reg_i_2,
      I2 => I2,
      I3 => p_13_in,
      I4 => scl_clean,
      I5 => I1,
      O => O1
    );
sda_setup_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(3),
      I1 => I19(6),
      I2 => I19(8),
      I3 => \q_int_reg__0\(1),
      I4 => I19(7),
      I5 => \q_int_reg__0\(2),
      O => n_0_sda_setup_i_4
    );
sda_setup_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(6),
      I1 => I19(3),
      I2 => I19(5),
      I3 => \q_int_reg__0\(4),
      I4 => I19(4),
      I5 => \q_int_reg__0\(5),
      O => n_0_sda_setup_i_5
    );
sda_setup_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => \q_int_reg__0\(9),
      I1 => I19(0),
      I2 => I19(2),
      I3 => \q_int_reg__0\(7),
      I4 => I19(1),
      I5 => \q_int_reg__0\(8),
      O => n_0_sda_setup_i_6
    );
sda_setup_reg_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_sda_setup_reg_i_2,
      CO(2) => n_1_sda_setup_reg_i_2,
      CO(1) => n_2_sda_setup_reg_i_2,
      CO(0) => n_3_sda_setup_reg_i_2,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => NLW_sda_setup_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => I10(0),
      S(2) => n_0_sda_setup_i_4,
      S(1) => n_0_sda_setup_i_5,
      S(0) => n_0_sda_setup_i_6
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_iic_0_upcnt_n__parameterized0\ is
  port (
    state_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    EarlyAckDataState0 : out STD_LOGIC;
    O1 : out STD_LOGIC;
    detect_start : in STD_LOGIC;
    bit_cnt_en : in STD_LOGIC;
    ro_prev_d1 : in STD_LOGIC;
    Ro_prev : in STD_LOGIC;
    scl_f_edg_d2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    I1 : in STD_LOGIC;
    p_1_in24_in : in STD_LOGIC;
    bit_cnt_en3 : in STD_LOGIC;
    I2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dtc_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_iic_0_upcnt_n__parameterized0\ : entity is "upcnt_n";
end \axi_iic_0_upcnt_n__parameterized0\;

architecture STRUCTURE of \axi_iic_0_upcnt_n__parameterized0\ is
  signal \n_0_FSM_onehot_state[7]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_8\ : STD_LOGIC;
  signal n_0_dtc_i_i_2 : STD_LOGIC;
  signal \n_0_q_int[0]_i_1__1\ : STD_LOGIC;
  signal \n_0_q_int[0]_i_2__1\ : STD_LOGIC;
  signal \n_0_q_int[1]_i_1__1\ : STD_LOGIC;
  signal \n_0_q_int[2]_i_1__1\ : STD_LOGIC;
  signal \n_0_q_int[3]_i_1__1\ : STD_LOGIC;
  signal \n_0_q_int_reg[0]\ : STD_LOGIC;
  signal \n_0_q_int_reg[1]\ : STD_LOGIC;
  signal \n_0_q_int_reg[2]\ : STD_LOGIC;
  signal \n_0_q_int_reg[3]\ : STD_LOGIC;
  signal \^state_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of dtc_i_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_int[1]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_int[2]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_int[3]_i_1__1\ : label is "soft_lutpair5";
  attribute counter : integer;
  attribute counter of \q_int_reg[0]\ : label is 5;
  attribute counter of \q_int_reg[1]\ : label is 5;
  attribute counter of \q_int_reg[2]\ : label is 5;
  attribute counter of \q_int_reg[3]\ : label is 5;
begin
  state_reg(0) <= \^state_reg\(0);
EarlyAckDataState_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAEAAAAAAA"
    )
    port map (
      I0 => I1,
      I1 => \n_0_q_int_reg[3]\,
      I2 => \n_0_q_int_reg[2]\,
      I3 => \n_0_q_int_reg[1]\,
      I4 => p_1_in24_in,
      I5 => \n_0_q_int_reg[0]\,
      O => EarlyAckDataState0
    );
\FSM_onehot_state[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2F2F200"
    )
    port map (
      I0 => ro_prev_d1,
      I1 => Ro_prev,
      I2 => scl_f_edg_d2,
      I3 => \n_0_FSM_onehot_state[7]_i_4\,
      I4 => \n_0_FSM_onehot_state[7]_i_5\,
      O => E(0)
    );
\FSM_onehot_state[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABA9FEFEABA9"
    )
    port map (
      I0 => Q(0),
      I1 => Q(4),
      I2 => Q(3),
      I3 => detect_start,
      I4 => Q(1),
      I5 => \n_0_FSM_onehot_state[7]_i_7\,
      O => \n_0_FSM_onehot_state[7]_i_4\
    );
\FSM_onehot_state[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEEE"
    )
    port map (
      I0 => Q(2),
      I1 => Q(5),
      I2 => Q(3),
      I3 => Q(4),
      I4 => \n_0_FSM_onehot_state[7]_i_8\,
      I5 => Q(6),
      O => \n_0_FSM_onehot_state[7]_i_5\
    );
\FSM_onehot_state[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \n_0_q_int_reg[3]\,
      I1 => \n_0_q_int_reg[1]\,
      I2 => \n_0_q_int_reg[0]\,
      I3 => \n_0_q_int_reg[2]\,
      O => \n_0_FSM_onehot_state[7]_i_7\
    );
\FSM_onehot_state[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
    port map (
      I0 => detect_start,
      I1 => \n_0_q_int_reg[2]\,
      I2 => \n_0_q_int_reg[0]\,
      I3 => \n_0_q_int_reg[1]\,
      I4 => \n_0_q_int_reg[3]\,
      O => \n_0_FSM_onehot_state[7]_i_8\
    );
dtc_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF000040000000"
    )
    port map (
      I0 => \n_0_q_int_reg[0]\,
      I1 => \n_0_q_int_reg[1]\,
      I2 => n_0_dtc_i_i_2,
      I3 => bit_cnt_en3,
      I4 => I2(0),
      I5 => dtc_i,
      O => O1
    );
dtc_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_q_int_reg[2]\,
      I1 => \n_0_q_int_reg[3]\,
      O => n_0_dtc_i_i_2
    );
\q_int[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => detect_start,
      I1 => \^state_reg\(0),
      I2 => bit_cnt_en,
      O => \n_0_q_int[0]_i_1__1\
    );
\q_int[0]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440404040404040"
    )
    port map (
      I0 => detect_start,
      I1 => \^state_reg\(0),
      I2 => \n_0_q_int_reg[0]\,
      I3 => \n_0_q_int_reg[1]\,
      I4 => \n_0_q_int_reg[3]\,
      I5 => \n_0_q_int_reg[2]\,
      O => \n_0_q_int[0]_i_2__1\
    );
\q_int[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04404040"
    )
    port map (
      I0 => detect_start,
      I1 => \^state_reg\(0),
      I2 => \n_0_q_int_reg[1]\,
      I3 => \n_0_q_int_reg[2]\,
      I4 => \n_0_q_int_reg[3]\,
      O => \n_0_q_int[1]_i_1__1\
    );
\q_int[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
    port map (
      I0 => detect_start,
      I1 => \^state_reg\(0),
      I2 => \n_0_q_int_reg[2]\,
      I3 => \n_0_q_int_reg[3]\,
      O => \n_0_q_int[2]_i_1__1\
    );
\q_int[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => detect_start,
      I1 => \^state_reg\(0),
      I2 => \n_0_q_int_reg[3]\,
      O => \n_0_q_int[3]_i_1__1\
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__1\,
      D => \n_0_q_int[0]_i_2__1\,
      Q => \n_0_q_int_reg[0]\,
      R => SR(0)
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__1\,
      D => \n_0_q_int[1]_i_1__1\,
      Q => \n_0_q_int_reg[1]\,
      R => SR(0)
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__1\,
      D => \n_0_q_int[2]_i_1__1\,
      Q => \n_0_q_int_reg[2]\,
      R => SR(0)
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_q_int[0]_i_1__1\,
      D => \n_0_q_int[3]_i_1__1\,
      Q => \n_0_q_int_reg[3]\,
      R => SR(0)
    );
shift_reg_ld_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(4),
      O => \^state_reg\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_debounce is
  port (
    O2 : out STD_LOGIC;
    Scl_clean : out STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_debounce : entity is "debounce";
end axi_iic_0_debounce;

architecture STRUCTURE of axi_iic_0_debounce is
begin
INPUT_DOUBLE_REGS: entity work.axi_iic_0_cdc_sync_4
    port map (
      O2 => O2,
      Scl_clean => Scl_clean,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_debounce_3 is
  port (
    O1 : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_debounce_3 : entity is "debounce";
end axi_iic_0_debounce_3;

architecture STRUCTURE of axi_iic_0_debounce_3 is
begin
INPUT_DOUBLE_REGS: entity work.axi_iic_0_cdc_sync
    port map (
      O1 => O1,
      Sda_clean => Sda_clean,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_iic_control is
  port (
    New_rcv_dta : out STD_LOGIC;
    shift_reg_ld : out STD_LOGIC;
    scl_rin_d1 : out STD_LOGIC;
    sda_rin_d1 : out STD_LOGIC;
    Tx_under_prev : out STD_LOGIC;
    rsta_d1 : out STD_LOGIC;
    dtre_d1 : out STD_LOGIC;
    Bb : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    earlyAckHdr : out STD_LOGIC;
    earlyAckDataState : out STD_LOGIC;
    ackDataState : out STD_LOGIC;
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_lost : out STD_LOGIC;
    Aas : out STD_LOGIC;
    O2 : out STD_LOGIC;
    rdy_new_xmt_i : out STD_LOGIC;
    O3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    rdCntrFrmTxFifo0 : out STD_LOGIC;
    O7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    Ro_prev : in STD_LOGIC;
    scl_clean : in STD_LOGIC;
    sda_clean : in STD_LOGIC;
    I1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sr_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    new_rcv_dta_d1 : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    I4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txak : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_4_in : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxCntDone : in STD_LOGIC;
    dynamic_MSMS : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_data_exists : in STD_LOGIC;
    I11 : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    firstDynStartSeen : in STD_LOGIC;
    I12 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I13 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I14 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I15 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I16 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I17 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I18 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I19 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I20 : in STD_LOGIC;
    Msms_set : in STD_LOGIC;
    callingReadAccess : in STD_LOGIC;
    Tx_fifo_data : in STD_LOGIC_VECTOR ( 6 downto 0 );
    I21 : in STD_LOGIC;
    I22 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_iic_control : entity is "iic_control";
end axi_iic_0_iic_control;

architecture STRUCTURE of axi_iic_0_iic_control is
  signal \^aas\ : STD_LOGIC;
  signal AckDataState0_out : STD_LOGIC;
  signal \^bb\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EarlyAckDataState0 : STD_LOGIC;
  signal EarlyAckHdr0 : STD_LOGIC;
  signal Msms_rst : STD_LOGIC;
  signal \^new_rcv_dta\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o2\ : STD_LOGIC;
  signal Rsta_rst : STD_LOGIC;
  signal \^tx_under_prev\ : STD_LOGIC;
  signal aas_i : STD_LOGIC;
  signal al_i0 : STD_LOGIC;
  signal \^arb_lost\ : STD_LOGIC;
  signal arb_lost0 : STD_LOGIC;
  signal bit_cnt_en : STD_LOGIC;
  signal bit_cnt_en0 : STD_LOGIC;
  signal bit_cnt_en3 : STD_LOGIC;
  signal bus_busy_d1 : STD_LOGIC;
  signal data_i2c_i0 : STD_LOGIC;
  signal detect_start : STD_LOGIC;
  signal dtc_i : STD_LOGIC;
  signal dtc_i_d1 : STD_LOGIC;
  signal dtc_i_d2 : STD_LOGIC;
  signal \^earlyackhdr\ : STD_LOGIC;
  signal gen_stop_d1 : STD_LOGIC;
  signal i2c_header_en : STD_LOGIC;
  signal i2c_header_en0 : STD_LOGIC;
  signal master_slave : STD_LOGIC;
  signal msms_d1 : STD_LOGIC;
  signal msms_d2 : STD_LOGIC;
  signal msms_rst_i : STD_LOGIC;
  signal n_0_AckDataState_i_2 : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[2]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[3]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[4]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[5]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[6]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[6]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[7]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[8]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[8]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state[9]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[7]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[8]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_scl_state_reg[9]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[1]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[4]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[5]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[6]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[7]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[7]\ : STD_LOGIC;
  signal n_0_I2CDATA_REG : STD_LOGIC;
  signal n_0_I2CHEADER_REG : STD_LOGIC;
  signal \n_0_LEVEL_1_GEN.master_sda_i_4\ : STD_LOGIC;
  signal \n_0_LEVEL_1_GEN.master_sda_reg\ : STD_LOGIC;
  signal n_0_al_i_i_1 : STD_LOGIC;
  signal n_0_al_prevent_i_1 : STD_LOGIC;
  signal n_0_al_prevent_reg : STD_LOGIC;
  signal n_0_arb_lost_i_1 : STD_LOGIC;
  signal n_0_bus_busy_i_1 : STD_LOGIC;
  signal \n_0_cr_i[2]_i_3\ : STD_LOGIC;
  signal n_0_detect_start_i_1 : STD_LOGIC;
  signal n_0_detect_stop_i_1 : STD_LOGIC;
  signal n_0_detect_stop_i_2 : STD_LOGIC;
  signal n_0_detect_stop_reg : STD_LOGIC;
  signal n_0_gen_start_i_1 : STD_LOGIC;
  signal n_0_gen_start_reg : STD_LOGIC;
  signal n_0_gen_stop_i_1 : STD_LOGIC;
  signal n_0_gen_stop_reg : STD_LOGIC;
  signal n_0_master_slave_i_1 : STD_LOGIC;
  signal n_0_msms_d1_i_1 : STD_LOGIC;
  signal n_0_msms_d1_i_2 : STD_LOGIC;
  signal n_0_msms_rst_i_i_1 : STD_LOGIC;
  signal n_0_msms_rst_i_i_2 : STD_LOGIC;
  signal n_0_msms_rst_i_i_3 : STD_LOGIC;
  signal n_0_msms_rst_i_i_5 : STD_LOGIC;
  signal n_0_new_rcv_dta_i_i_2 : STD_LOGIC;
  signal n_0_rdy_new_xmt_i_i_1 : STD_LOGIC;
  signal n_0_scl_cout_reg_i_1 : STD_LOGIC;
  signal n_0_scl_cout_reg_i_2 : STD_LOGIC;
  signal n_0_scl_falling_edge_i_1 : STD_LOGIC;
  signal n_0_sda_cout_reg_i_6 : STD_LOGIC;
  signal n_0_sda_cout_reg_i_7 : STD_LOGIC;
  signal n_0_sda_sample_i_1 : STD_LOGIC;
  signal n_0_sda_setup_reg : STD_LOGIC;
  signal n_0_shift_reg_en_i_2 : STD_LOGIC;
  signal n_0_slave_sda_i_3 : STD_LOGIC;
  signal n_0_slave_sda_reg : STD_LOGIC;
  signal n_0_sm_stop_i_1 : STD_LOGIC;
  signal n_0_sm_stop_i_2 : STD_LOGIC;
  signal n_0_sm_stop_i_3 : STD_LOGIC;
  signal n_0_sm_stop_reg : STD_LOGIC;
  signal n_0_stop_scl_reg_i_2 : STD_LOGIC;
  signal n_0_stop_scl_reg_i_4 : STD_LOGIC;
  signal n_0_stop_scl_reg_i_5 : STD_LOGIC;
  signal n_0_stop_scl_reg_i_7 : STD_LOGIC;
  signal n_0_tx_under_prev_i_i_1 : STD_LOGIC;
  signal n_0_tx_under_prev_i_i_2 : STD_LOGIC;
  signal n_0_txer_edge_i_1 : STD_LOGIC;
  signal n_0_txer_i_i_1 : STD_LOGIC;
  signal n_0_txer_i_reg : STD_LOGIC;
  signal n_10_CLKCNT : STD_LOGIC;
  signal n_1_BITCNT : STD_LOGIC;
  signal n_1_CLKCNT : STD_LOGIC;
  signal n_1_I2CHEADER_REG : STD_LOGIC;
  signal n_1_SETUP_CNT : STD_LOGIC;
  signal n_2_CLKCNT : STD_LOGIC;
  signal n_2_I2CDATA_REG : STD_LOGIC;
  signal n_2_I2CHEADER_REG : STD_LOGIC;
  signal n_3_BITCNT : STD_LOGIC;
  signal n_3_CLKCNT : STD_LOGIC;
  signal n_3_I2CDATA_REG : STD_LOGIC;
  signal n_3_I2CHEADER_REG : STD_LOGIC;
  signal n_4_CLKCNT : STD_LOGIC;
  signal n_4_I2CDATA_REG : STD_LOGIC;
  signal n_4_I2CHEADER_REG : STD_LOGIC;
  signal n_5_CLKCNT : STD_LOGIC;
  signal n_5_I2CDATA_REG : STD_LOGIC;
  signal n_6_CLKCNT : STD_LOGIC;
  signal n_6_I2CDATA_REG : STD_LOGIC;
  signal n_6_I2CHEADER_REG : STD_LOGIC;
  signal n_7_CLKCNT : STD_LOGIC;
  signal n_7_I2CDATA_REG : STD_LOGIC;
  signal n_7_I2CHEADER_REG : STD_LOGIC;
  signal n_8_CLKCNT : STD_LOGIC;
  signal n_8_I2CDATA_REG : STD_LOGIC;
  signal n_8_I2CHEADER_REG : STD_LOGIC;
  signal n_9_CLKCNT : STD_LOGIC;
  signal next_scl_state0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in24_in : STD_LOGIC;
  signal p_1_in25_in : STD_LOGIC;
  signal \^rdy_new_xmt_i\ : STD_LOGIC;
  signal ro_prev_d1 : STD_LOGIC;
  signal \^rsta_d1\ : STD_LOGIC;
  signal scl_cout_reg : STD_LOGIC;
  signal scl_f_edg_d1 : STD_LOGIC;
  signal scl_f_edg_d2 : STD_LOGIC;
  signal scl_f_edg_d3 : STD_LOGIC;
  signal \^scl_rin_d1\ : STD_LOGIC;
  signal scl_rising_edge : STD_LOGIC;
  signal sda_cout1 : STD_LOGIC;
  signal sda_cout_reg : STD_LOGIC;
  signal \^sda_rin_d1\ : STD_LOGIC;
  signal sda_sample : STD_LOGIC;
  signal shift_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal shift_reg_en : STD_LOGIC;
  signal shift_reg_en0 : STD_LOGIC;
  signal \^shift_reg_ld\ : STD_LOGIC;
  signal shift_reg_ld0 : STD_LOGIC;
  signal shift_reg_ld_d1 : STD_LOGIC;
  signal slave_sda : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal stop_scl_reg : STD_LOGIC;
  signal tx_under_prev_d1 : STD_LOGIC;
  signal tx_under_prev_i0 : STD_LOGIC;
  signal tx_under_prev_i4 : STD_LOGIC;
  signal txer_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AckDataState_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[1]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[2]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[2]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[6]_i_8\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_onehot_scl_state[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_3\ : label is "soft_lutpair22";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \IIC2Bus_IntrEvent[4]_i_1\ : label is std.standard.true;
  attribute SOFT_HLUTNM of \IIC2Bus_IntrEvent[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of al_i_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cr_i[2]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of detect_stop_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of gen_start_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of i2c_header_en_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of master_slave_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of msms_rst_i_i_4 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of sda_cout_reg_i_6 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of sda_cout_reg_i_7 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sda_sample_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of shift_reg_en_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of shift_reg_ld_i_3 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of shift_reg_ld_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of stop_scl_reg_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of stop_scl_reg_i_5 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of stop_scl_reg_i_7 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of txer_i_i_2 : label is "soft_lutpair25";
begin
  Aas <= \^aas\;
  Bb <= \^bb\;
  D(3 downto 0) <= \^d\(3 downto 0);
  New_rcv_dta <= \^new_rcv_dta\;
  O1(1 downto 0) <= \^o1\(1 downto 0);
  O2 <= \^o2\;
  Tx_under_prev <= \^tx_under_prev\;
  arb_lost <= \^arb_lost\;
  earlyAckHdr <= \^earlyackhdr\;
  rdy_new_xmt_i <= \^rdy_new_xmt_i\;
  rsta_d1 <= \^rsta_d1\;
  scl_rin_d1 <= \^scl_rin_d1\;
  sda_rin_d1 <= \^sda_rin_d1\;
  shift_reg_ld <= \^shift_reg_ld\;
AckDataState_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
    port map (
      I0 => n_0_AckDataState_i_2,
      I1 => \n_0_FSM_onehot_state_reg[6]\,
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => \n_0_FSM_onehot_state[3]_i_2\,
      I5 => Q(0),
      O => AckDataState0_out
    );
AckDataState_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[3]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      O => n_0_AckDataState_i_2
    );
AckDataState_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => AckDataState0_out,
      Q => ackDataState,
      R => '0'
    );
BITCNT: entity work.\axi_iic_0_upcnt_n__parameterized0\
    port map (
      E(0) => n_1_BITCNT,
      EarlyAckDataState0 => EarlyAckDataState0,
      I1 => n_0_new_rcv_dta_i_i_2,
      I2(0) => Q(0),
      O1 => n_3_BITCNT,
      Q(6) => \n_0_FSM_onehot_state_reg[7]\,
      Q(5) => \n_0_FSM_onehot_state_reg[6]\,
      Q(4) => \n_0_FSM_onehot_state_reg[5]\,
      Q(3) => \n_0_FSM_onehot_state_reg[4]\,
      Q(2) => \n_0_FSM_onehot_state_reg[3]\,
      Q(1) => \n_0_FSM_onehot_state_reg[2]\,
      Q(0) => \n_0_FSM_onehot_state_reg[1]\,
      Ro_prev => Ro_prev,
      SR(0) => SR(0),
      bit_cnt_en => bit_cnt_en,
      bit_cnt_en3 => bit_cnt_en3,
      detect_start => detect_start,
      dtc_i => dtc_i,
      p_1_in24_in => p_1_in24_in,
      ro_prev_d1 => ro_prev_d1,
      s_axi_aclk => s_axi_aclk,
      scl_f_edg_d2 => scl_f_edg_d2,
      state_reg(0) => state_reg(0)
    );
CLKCNT: entity work.axi_iic_0_upcnt_n
    port map (
      D(5) => n_3_CLKCNT,
      D(4) => n_4_CLKCNT,
      D(3) => n_5_CLKCNT,
      D(2) => n_6_CLKCNT,
      D(1) => n_7_CLKCNT,
      D(0) => n_8_CLKCNT,
      E(0) => n_2_CLKCNT,
      I1 => \n_0_LEVEL_1_GEN.master_sda_reg\,
      I10(0) => I6(0),
      I11(0) => I7(0),
      I12(0) => I8(0),
      I13(0) => I9(0),
      I14(8 downto 0) => I12(8 downto 0),
      I15(8 downto 0) => I13(8 downto 0),
      I16(8 downto 0) => I14(8 downto 0),
      I17(8 downto 0) => I15(8 downto 0),
      I18(8 downto 0) => I16(8 downto 0),
      I19(8 downto 0) => I17(8 downto 0),
      I2(8) => \n_0_FSM_onehot_scl_state_reg[9]\,
      I2(7) => \n_0_FSM_onehot_scl_state_reg[8]\,
      I2(6) => \n_0_FSM_onehot_scl_state_reg[7]\,
      I2(5) => \n_0_FSM_onehot_scl_state_reg[6]\,
      I2(4) => \n_0_FSM_onehot_scl_state_reg[5]\,
      I2(3) => \n_0_FSM_onehot_scl_state_reg[4]\,
      I2(2) => \n_0_FSM_onehot_scl_state_reg[3]\,
      I2(1) => \n_0_FSM_onehot_scl_state_reg[2]\,
      I2(0) => \n_0_FSM_onehot_scl_state_reg[1]\,
      I20(8 downto 0) => I18(8 downto 0),
      I21 => \n_0_FSM_onehot_scl_state[1]_i_2\,
      I22 => \n_0_FSM_onehot_scl_state[4]_i_3\,
      I23 => \n_0_FSM_onehot_scl_state[9]_i_7\,
      I24 => n_0_stop_scl_reg_i_5,
      I25 => \n_0_FSM_onehot_scl_state[6]_i_3\,
      I26 => \n_0_FSM_onehot_scl_state[5]_i_3\,
      I27 => \n_0_FSM_onehot_scl_state[3]_i_3\,
      I28 => n_0_stop_scl_reg_i_2,
      I3 => \^arb_lost\,
      I4 => n_0_sda_cout_reg_i_6,
      I5 => n_0_sda_cout_reg_i_7,
      I6 => n_0_stop_scl_reg_i_7,
      I7 => \n_0_FSM_onehot_scl_state[9]_i_5\,
      I8(0) => I4(0),
      I9(0) => I5(0),
      O1 => n_1_CLKCNT,
      O2 => n_9_CLKCNT,
      O3(0) => O3(0),
      O4 => n_10_CLKCNT,
      Q(0) => Q(3),
      S(0) => S(0),
      SR(0) => SR(0),
      next_scl_state0 => next_scl_state0,
      s_axi_aclk => s_axi_aclk,
      scl_clean => scl_clean,
      sda_clean => sda_clean,
      sda_cout1 => sda_cout1,
      sda_cout_reg => sda_cout_reg,
      stop_scl_reg => stop_scl_reg
    );
EarlyAckDataState_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000200030000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[6]\,
      I2 => \n_0_FSM_onehot_state_reg[5]\,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => \n_0_FSM_onehot_state_reg[4]\,
      I5 => \n_0_FSM_onehot_state_reg[3]\,
      O => p_1_in24_in
    );
EarlyAckDataState_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckDataState0,
      Q => earlyAckDataState,
      R => SR(0)
    );
EarlyAckHdr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => scl_f_edg_d3,
      I1 => n_0_slave_sda_i_3,
      O => EarlyAckHdr0
    );
EarlyAckHdr_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => EarlyAckHdr0,
      Q => \^earlyackhdr\,
      R => SR(0)
    );
\FSM_onehot_scl_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[4]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[3]\,
      O => \n_0_FSM_onehot_scl_state[1]_i_2\
    );
\FSM_onehot_scl_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020202"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state[2]_i_2\,
      I1 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[4]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I4 => \^arb_lost\,
      I5 => \n_0_FSM_onehot_scl_state[2]_i_3\,
      O => \n_0_FSM_onehot_scl_state[2]_i_1\
    );
\FSM_onehot_scl_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033000030883088"
    )
    port map (
      I0 => Q(3),
      I1 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I2 => next_scl_state0,
      I3 => \n_0_FSM_onehot_scl_state_reg[1]\,
      I4 => sda_clean,
      I5 => \n_0_FSM_onehot_scl_state_reg[2]\,
      O => \n_0_FSM_onehot_scl_state[2]_i_2\
    );
\FSM_onehot_scl_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[5]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[9]\,
      O => \n_0_FSM_onehot_scl_state[2]_i_3\
    );
\FSM_onehot_scl_state[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => \^bb\,
      I1 => master_slave,
      I2 => n_0_gen_start_reg,
      O => next_scl_state0
    );
\FSM_onehot_scl_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[9]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I4 => n_1_CLKCNT,
      I5 => \n_0_FSM_onehot_scl_state_reg[1]\,
      O => \n_0_FSM_onehot_scl_state[3]_i_3\
    );
\FSM_onehot_scl_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001115"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state[2]_i_3\,
      I1 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I2 => \^arb_lost\,
      I3 => Q(3),
      I4 => \n_0_FSM_onehot_scl_state_reg[2]\,
      I5 => \n_0_FSM_onehot_scl_state_reg[1]\,
      O => \n_0_FSM_onehot_scl_state[4]_i_3\
    );
\FSM_onehot_scl_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state[6]_i_8\,
      I1 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[1]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I5 => \n_0_FSM_onehot_scl_state_reg[2]\,
      O => \n_0_FSM_onehot_scl_state[5]_i_3\
    );
\FSM_onehot_scl_state[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state[6]_i_8\,
      I1 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[4]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[1]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I5 => \n_0_FSM_onehot_scl_state_reg[2]\,
      O => \n_0_FSM_onehot_scl_state[6]_i_3\
    );
\FSM_onehot_scl_state[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[9]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[8]\,
      O => \n_0_FSM_onehot_scl_state[6]_i_8\
    );
\FSM_onehot_scl_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[4]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[5]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[2]\,
      I4 => \n_0_FSM_onehot_scl_state[7]_i_2\,
      O => \n_0_FSM_onehot_scl_state[7]_i_1\
    );
\FSM_onehot_scl_state[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => scl_clean,
      I1 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[9]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[1]\,
      I5 => \n_0_FSM_onehot_scl_state_reg[7]\,
      O => \n_0_FSM_onehot_scl_state[7]_i_2\
    );
\FSM_onehot_scl_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500000005008800"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I1 => stop_scl_reg,
      I2 => sda_clean,
      I3 => \n_0_FSM_onehot_scl_state[8]_i_2\,
      I4 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I5 => I20,
      O => \n_0_FSM_onehot_scl_state[8]_i_1\
    );
\FSM_onehot_scl_state[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => n_1_CLKCNT,
      I1 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[9]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[1]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I5 => \n_0_FSM_onehot_scl_state_reg[2]\,
      O => \n_0_FSM_onehot_scl_state[8]_i_2\
    );
\FSM_onehot_scl_state[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[1]\,
      I1 => \^arb_lost\,
      I2 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I5 => \n_0_FSM_onehot_scl_state_reg[9]\,
      O => \n_0_FSM_onehot_scl_state[9]_i_5\
    );
\FSM_onehot_scl_state[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => n_1_CLKCNT,
      I1 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[1]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I5 => \n_0_FSM_onehot_scl_state_reg[2]\,
      O => \n_0_FSM_onehot_scl_state[9]_i_7\
    );
\FSM_onehot_scl_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => n_8_CLKCNT,
      Q => \n_0_FSM_onehot_scl_state_reg[1]\,
      S => SR(0)
    );
\FSM_onehot_scl_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => \n_0_FSM_onehot_scl_state[2]_i_1\,
      Q => \n_0_FSM_onehot_scl_state_reg[2]\,
      R => SR(0)
    );
\FSM_onehot_scl_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => n_7_CLKCNT,
      Q => \n_0_FSM_onehot_scl_state_reg[3]\,
      R => SR(0)
    );
\FSM_onehot_scl_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => n_6_CLKCNT,
      Q => \n_0_FSM_onehot_scl_state_reg[4]\,
      R => SR(0)
    );
\FSM_onehot_scl_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => n_5_CLKCNT,
      Q => \n_0_FSM_onehot_scl_state_reg[5]\,
      R => SR(0)
    );
\FSM_onehot_scl_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => n_4_CLKCNT,
      Q => \n_0_FSM_onehot_scl_state_reg[6]\,
      R => SR(0)
    );
\FSM_onehot_scl_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => \n_0_FSM_onehot_scl_state[7]_i_1\,
      Q => \n_0_FSM_onehot_scl_state_reg[7]\,
      R => SR(0)
    );
\FSM_onehot_scl_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => \n_0_FSM_onehot_scl_state[8]_i_1\,
      Q => \n_0_FSM_onehot_scl_state_reg[8]\,
      R => SR(0)
    );
\FSM_onehot_scl_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_2_CLKCNT,
      D => n_3_CLKCNT,
      Q => \n_0_FSM_onehot_scl_state_reg[9]\,
      R => SR(0)
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEEE"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => detect_start,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => \n_0_FSM_onehot_state_reg[4]\,
      O => \n_0_FSM_onehot_state[1]_i_2\
    );
\FSM_onehot_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => sda_sample,
      I1 => \^arb_lost\,
      O => \n_0_FSM_onehot_state[1]_i_4\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444A0000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => detect_start,
      I2 => \n_0_FSM_onehot_state_reg[4]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state[2]_i_2\,
      O => \n_0_FSM_onehot_state[2]_i_1\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010101"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[7]\,
      I1 => \n_0_FSM_onehot_state_reg[6]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state_reg[4]\,
      I5 => \n_0_FSM_onehot_state_reg[3]\,
      O => \n_0_FSM_onehot_state[2]_i_2\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => \n_0_FSM_onehot_state[3]_i_2\,
      I1 => \n_0_FSM_onehot_state_reg[6]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      I3 => \n_0_FSM_onehot_state_reg[1]\,
      I4 => \n_0_FSM_onehot_state_reg[7]\,
      I5 => \n_0_FSM_onehot_state_reg[3]\,
      O => \n_0_FSM_onehot_state[3]_i_1\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[5]\,
      I1 => \n_0_FSM_onehot_state_reg[4]\,
      O => \n_0_FSM_onehot_state[3]_i_2\
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[7]\,
      I1 => \n_0_FSM_onehot_state_reg[5]\,
      O => \n_0_FSM_onehot_state[4]_i_4\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[6]\,
      I1 => \n_0_FSM_onehot_state_reg[5]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      I3 => \n_0_FSM_onehot_state_reg[4]\,
      O => \n_0_FSM_onehot_state[5]_i_2\
    );
\FSM_onehot_state[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000B"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[6]\,
      I1 => detect_start,
      I2 => \n_0_FSM_onehot_state_reg[7]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state[7]_i_6\,
      O => \n_0_FSM_onehot_state[6]_i_3\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => n_0_detect_stop_reg,
      I1 => Q(0),
      O => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[5]\,
      I1 => \n_0_FSM_onehot_state[7]_i_6\,
      I2 => \n_0_FSM_onehot_state_reg[7]\,
      I3 => \n_0_FSM_onehot_state_reg[6]\,
      I4 => \n_0_FSM_onehot_state_reg[4]\,
      I5 => detect_start,
      O => \n_0_FSM_onehot_state[7]_i_3\
    );
\FSM_onehot_state[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      O => \n_0_FSM_onehot_state[7]_i_6\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axi_aclk,
      CE => n_1_BITCNT,
      D => n_3_I2CHEADER_REG,
      Q => \n_0_FSM_onehot_state_reg[1]\,
      S => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_1_BITCNT,
      D => \n_0_FSM_onehot_state[2]_i_1\,
      Q => \n_0_FSM_onehot_state_reg[2]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_1_BITCNT,
      D => \n_0_FSM_onehot_state[3]_i_1\,
      Q => \n_0_FSM_onehot_state_reg[3]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_1_BITCNT,
      D => n_2_I2CHEADER_REG,
      Q => \n_0_FSM_onehot_state_reg[4]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_1_BITCNT,
      D => n_1_I2CHEADER_REG,
      Q => \n_0_FSM_onehot_state_reg[5]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_1_BITCNT,
      D => n_0_I2CHEADER_REG,
      Q => \n_0_FSM_onehot_state_reg[6]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => n_1_BITCNT,
      D => \n_0_FSM_onehot_state[7]_i_3\,
      Q => \n_0_FSM_onehot_state_reg[7]\,
      R => \n_0_FSM_onehot_state[7]_i_1\
    );
I2CDATA_REG: entity work.axi_iic_0_shift8
    port map (
      I1 => \^shift_reg_ld\,
      I2 => \^tx_under_prev\,
      I22(0) => I22(0),
      I3 => \n_0_LEVEL_1_GEN.master_sda_i_4\,
      I4(3) => \n_0_FSM_onehot_state_reg[7]\,
      I4(2) => \n_0_FSM_onehot_state_reg[6]\,
      I4(1) => \n_0_FSM_onehot_state_reg[5]\,
      I4(0) => \n_0_FSM_onehot_state_reg[4]\,
      I5 => \n_0_FSM_onehot_state[7]_i_6\,
      O1 => n_0_I2CDATA_REG,
      Q(7) => shift_reg(7),
      Q(6) => n_2_I2CDATA_REG,
      Q(5) => n_3_I2CDATA_REG,
      Q(4) => n_4_I2CDATA_REG,
      Q(3) => n_5_I2CDATA_REG,
      Q(2) => n_6_I2CDATA_REG,
      Q(1) => n_7_I2CDATA_REG,
      Q(0) => n_8_I2CDATA_REG,
      SR(0) => SR(0),
      Tx_fifo_data(6 downto 0) => Tx_fifo_data(6 downto 0),
      p_0_in => p_0_in,
      p_1_in25_in => p_1_in25_in,
      s_axi_aclk => s_axi_aclk,
      shift_reg_en => shift_reg_en,
      slave_sda => slave_sda
    );
I2CHEADER_REG: entity work.axi_iic_0_shift8_1
    port map (
      D(3) => n_0_I2CHEADER_REG,
      D(2) => n_1_I2CHEADER_REG,
      D(1) => n_2_I2CHEADER_REG,
      D(0) => n_3_I2CHEADER_REG,
      E(0) => i2c_header_en,
      I1 => \n_0_FSM_onehot_state[6]_i_3\,
      I10 => \n_0_FSM_onehot_state[4]_i_4\,
      I11(1 downto 0) => \^o1\(1 downto 0),
      I12 => \^tx_under_prev\,
      I13 => n_0_tx_under_prev_i_i_2,
      I14 => n_0_detect_stop_reg,
      I15 => \^aas\,
      I2 => \n_0_FSM_onehot_state[1]_i_2\,
      I3(6 downto 0) => I3(6 downto 0),
      I4 => \n_0_FSM_onehot_state[1]_i_4\,
      I5 => n_0_new_rcv_dta_i_i_2,
      I6 => n_0_slave_sda_i_3,
      I7 => \^arb_lost\,
      I8 => \n_0_FSM_onehot_state[5]_i_2\,
      I9(2) => Q(4),
      I9(1) => Q(2),
      I9(0) => Q(0),
      O1 => n_4_I2CHEADER_REG,
      O2 => n_6_I2CHEADER_REG,
      O3 => n_7_I2CHEADER_REG,
      O4 => n_8_I2CHEADER_REG,
      Q(6) => \n_0_FSM_onehot_state_reg[7]\,
      Q(5) => \n_0_FSM_onehot_state_reg[6]\,
      Q(4) => \n_0_FSM_onehot_state_reg[5]\,
      Q(3) => \n_0_FSM_onehot_state_reg[4]\,
      Q(2) => \n_0_FSM_onehot_state_reg[3]\,
      Q(1) => \n_0_FSM_onehot_state_reg[2]\,
      Q(0) => \n_0_FSM_onehot_state_reg[1]\,
      Ro_prev => Ro_prev,
      SR(0) => SR(0),
      aas_i => aas_i,
      detect_start => detect_start,
      master_slave => master_slave,
      s_axi_aclk => s_axi_aclk,
      sda_clean => sda_clean,
      sda_sample => sda_sample,
      shift_reg_ld0 => shift_reg_ld0,
      slave_sda => slave_sda,
      state_reg(2 downto 0) => state_reg(2 downto 0),
      txak => txak
    );
\IIC2Bus_IntrEvent[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^bb\,
      O => \^d\(1)
    );
\IIC2Bus_IntrEvent[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^aas\,
      O => \^d\(0)
    );
\LEVEL_1_GEN.master_sda_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[6]\,
      I2 => \n_0_FSM_onehot_state_reg[5]\,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => \n_0_FSM_onehot_state_reg[4]\,
      I5 => \n_0_FSM_onehot_state_reg[3]\,
      O => p_1_in25_in
    );
\LEVEL_1_GEN.master_sda_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000300020000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[4]\,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => \n_0_FSM_onehot_state_reg[6]\,
      I5 => \n_0_FSM_onehot_state_reg[5]\,
      O => p_0_in
    );
\LEVEL_1_GEN.master_sda_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_state[3]_i_2\,
      I1 => \n_0_FSM_onehot_state_reg[7]\,
      I2 => txak,
      I3 => \n_0_FSM_onehot_state_reg[1]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[2]\,
      O => \n_0_LEVEL_1_GEN.master_sda_i_4\
    );
\LEVEL_1_GEN.master_sda_reg\: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_I2CDATA_REG,
      Q => \n_0_LEVEL_1_GEN.master_sda_reg\,
      S => SR(0)
    );
\RD_FIFO_CNTRL.Rc_fifo_wr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^new_rcv_dta\,
      I1 => new_rcv_dta_d1,
      O => O5
    );
SETUP_CNT: entity work.axi_iic_0_upcnt_n_2
    port map (
      I1 => n_0_sda_setup_reg,
      I10(0) => I10(0),
      I19(8 downto 0) => I19(8 downto 0),
      I2 => \^tx_under_prev\,
      I3 => n_0_gen_stop_reg,
      O1 => n_1_SETUP_CNT,
      O4(0) => O4(0),
      Q(1) => Q(3),
      Q(0) => Q(0),
      SR(0) => SR(0),
      gen_stop_d1 => gen_stop_d1,
      rsta_d1 => \^rsta_d1\,
      s_axi_aclk => s_axi_aclk,
      scl_clean => scl_clean,
      sda_clean => sda_clean,
      sda_rin_d1 => \^sda_rin_d1\,
      tx_under_prev_d1 => tx_under_prev_d1
    );
aas_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state[3]_i_2\,
      I1 => \n_0_FSM_onehot_state_reg[6]\,
      I2 => \n_0_FSM_onehot_state_reg[7]\,
      I3 => \n_0_FSM_onehot_state_reg[1]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[2]\,
      O => aas_i
    );
aas_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_7_I2CHEADER_REG,
      Q => \^aas\,
      R => '0'
    );
abgc_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_6_I2CHEADER_REG,
      Q => \^o1\(0),
      R => '0'
    );
al_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => al_i0,
      I1 => master_slave,
      I2 => Q(3),
      O => n_0_al_i_i_1
    );
al_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAEAAAEAAAE"
    )
    port map (
      I0 => \^arb_lost\,
      I1 => n_0_detect_stop_reg,
      I2 => n_0_sm_stop_reg,
      I3 => n_0_al_prevent_reg,
      I4 => bus_busy_d1,
      I5 => n_0_gen_start_reg,
      O => al_i0
    );
al_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_al_i_i_1,
      Q => \^d\(3),
      R => SR(0)
    );
al_prevent_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222220"
    )
    port map (
      I0 => Q(0),
      I1 => detect_start,
      I2 => n_0_gen_stop_reg,
      I3 => n_0_sm_stop_reg,
      I4 => n_0_al_prevent_reg,
      O => n_0_al_prevent_i_1
    );
al_prevent_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_al_prevent_i_1,
      Q => n_0_al_prevent_reg,
      R => '0'
    );
arb_lost_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EA2A0000"
    )
    port map (
      I0 => \^arb_lost\,
      I1 => arb_lost0,
      I2 => master_slave,
      I3 => n_0_msms_rst_i_i_2,
      I4 => Q(0),
      I5 => n_0_msms_rst_i_i_3,
      O => n_0_arb_lost_i_1
    );
arb_lost_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_arb_lost_i_1,
      Q => \^arb_lost\,
      R => '0'
    );
bit_cnt_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002AAAA00000000"
    )
    port map (
      I0 => bit_cnt_en3,
      I1 => \n_0_FSM_onehot_state_reg[7]\,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \n_0_FSM_onehot_state_reg[4]\,
      I4 => state_reg(2),
      I5 => state_reg(0),
      O => bit_cnt_en0
    );
bit_cnt_en_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => bit_cnt_en0,
      Q => bit_cnt_en,
      R => SR(0)
    );
bus_busy_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bb\,
      Q => bus_busy_d1,
      R => SR(0)
    );
bus_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => \^bb\,
      I1 => detect_start,
      I2 => Q(0),
      I3 => n_0_detect_stop_reg,
      O => n_0_bus_busy_i_1
    );
bus_busy_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_bus_busy_i_1,
      Q => \^bb\,
      R => '0'
    );
\cr_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA33333000"
    )
    port map (
      I0 => s_axi_wdata(1),
      I1 => Rsta_rst,
      I2 => p_3_in,
      I3 => firstDynStartSeen,
      I4 => Q(3),
      I5 => E(0),
      O => O6(1)
    );
\cr_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[5]\,
      I2 => \n_0_cr_i[2]_i_3\,
      I3 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[7]\,
      O => Rsta_rst
    );
\cr_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[4]\,
      I1 => Q(3),
      I2 => \n_0_FSM_onehot_scl_state_reg[1]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[9]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I5 => \n_0_FSM_onehot_scl_state_reg[2]\,
      O => \n_0_cr_i[2]_i_3\
    );
\cr_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA33330300"
    )
    port map (
      I0 => s_axi_wdata(0),
      I1 => Msms_rst,
      I2 => \^bb\,
      I3 => p_4_in,
      I4 => Q(1),
      I5 => E(0),
      O => O6(0)
    );
\cr_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
    port map (
      I0 => rxCntDone,
      I1 => dynamic_MSMS(0),
      I2 => Tx_data_exists,
      I3 => I11,
      I4 => msms_rst_i,
      I5 => n_0_sm_stop_reg,
      O => Msms_rst
    );
\data_i2c_i_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => n_8_I2CDATA_REG,
      Q => O7(0),
      R => SR(0)
    );
\data_i2c_i_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => n_7_I2CDATA_REG,
      Q => O7(1),
      R => SR(0)
    );
\data_i2c_i_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => n_6_I2CDATA_REG,
      Q => O7(2),
      R => SR(0)
    );
\data_i2c_i_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => n_5_I2CDATA_REG,
      Q => O7(3),
      R => SR(0)
    );
\data_i2c_i_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => n_4_I2CDATA_REG,
      Q => O7(4),
      R => SR(0)
    );
\data_i2c_i_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => n_3_I2CDATA_REG,
      Q => O7(5),
      R => SR(0)
    );
\data_i2c_i_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => n_2_I2CDATA_REG,
      Q => O7(6),
      R => SR(0)
    );
\data_i2c_i_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => data_i2c_i0,
      D => shift_reg(7),
      Q => O7(7),
      R => SR(0)
    );
detect_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
    port map (
      I0 => detect_start,
      I1 => sda_clean,
      I2 => \^sda_rin_d1\,
      I3 => scl_clean,
      I4 => Q(0),
      I5 => p_1_in25_in,
      O => n_0_detect_start_i_1
    );
detect_start_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_detect_start_i_1,
      Q => detect_start,
      R => '0'
    );
detect_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2020000"
    )
    port map (
      I0 => n_0_detect_stop_reg,
      I1 => n_0_detect_stop_i_2,
      I2 => I21,
      I3 => scl_clean,
      I4 => Q(0),
      I5 => detect_start,
      O => n_0_detect_stop_i_1
    );
detect_stop_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => msms_d1,
      I1 => msms_d2,
      O => n_0_detect_stop_i_2
    );
detect_stop_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_detect_stop_i_1,
      Q => n_0_detect_stop_reg,
      R => '0'
    );
dtc_i_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i,
      Q => dtc_i_d1,
      R => SR(0)
    );
dtc_i_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => dtc_i_d1,
      Q => dtc_i_d2,
      R => SR(0)
    );
dtc_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_3_BITCNT,
      Q => dtc_i,
      R => '0'
    );
dtre_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => sr_i(0),
      Q => dtre_d1,
      R => SR(0)
    );
gen_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22A200A0"
    )
    port map (
      I0 => Q(0),
      I1 => detect_start,
      I2 => msms_d1,
      I3 => msms_d2,
      I4 => n_0_gen_start_reg,
      O => n_0_gen_start_i_1
    );
gen_start_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_gen_start_i_1,
      Q => n_0_gen_start_reg,
      R => '0'
    );
gen_stop_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_gen_stop_reg,
      Q => gen_stop_d1,
      R => SR(0)
    );
gen_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222A2200000A00"
    )
    port map (
      I0 => Q(0),
      I1 => n_0_detect_stop_reg,
      I2 => msms_d1,
      I3 => msms_d2,
      I4 => \^arb_lost\,
      I5 => n_0_gen_stop_reg,
      O => n_0_gen_stop_i_1
    );
gen_stop_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_gen_stop_i_1,
      Q => n_0_gen_stop_reg,
      R => '0'
    );
i2c_header_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => p_1_in25_in,
      I1 => scl_rising_edge,
      O => i2c_header_en0
    );
i2c_header_en_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => i2c_header_en0,
      Q => i2c_header_en,
      R => SR(0)
    );
master_slave_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0A0A0"
    )
    port map (
      I0 => msms_d1,
      I1 => master_slave,
      I2 => Q(0),
      I3 => \^arb_lost\,
      I4 => \^bb\,
      O => n_0_master_slave_i_1
    );
master_slave_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_master_slave_i_1,
      Q => master_slave,
      R => '0'
    );
msms_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_0_msms_d1_i_2,
      I1 => msms_rst_i,
      O => n_0_msms_d1_i_1
    );
msms_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEFAA"
    )
    port map (
      I0 => Q(1),
      I1 => dtc_i_d2,
      I2 => dtc_i_d1,
      I3 => msms_d1,
      I4 => n_0_txer_i_reg,
      I5 => Msms_set,
      O => n_0_msms_d1_i_2
    );
msms_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_msms_d1_i_1,
      Q => msms_d1,
      R => SR(0)
    );
msms_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => msms_d1,
      Q => msms_d2,
      R => SR(0)
    );
msms_rst_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A0A00000000"
    )
    port map (
      I0 => msms_rst_i,
      I1 => n_0_msms_rst_i_i_2,
      I2 => n_0_msms_rst_i_i_3,
      I3 => arb_lost0,
      I4 => master_slave,
      I5 => Q(0),
      O => n_0_msms_rst_i_i_1
    );
msms_rst_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sda_cout_reg,
      I1 => sda_clean,
      O => n_0_msms_rst_i_i_2
    );
msms_rst_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[4]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I4 => n_0_msms_rst_i_i_5,
      O => n_0_msms_rst_i_i_3
    );
msms_rst_i_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => scl_rising_edge,
      I1 => p_0_in,
      I2 => p_1_in25_in,
      O => arb_lost0
    );
msms_rst_i_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[2]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[4]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[5]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[6]\,
      O => n_0_msms_rst_i_i_5
    );
msms_rst_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_msms_rst_i_i_1,
      Q => msms_rst_i,
      R => '0'
    );
new_rcv_dta_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_cnt_en3,
      I1 => Ro_prev,
      I2 => n_0_new_rcv_dta_i_i_2,
      O => data_i2c_i0
    );
new_rcv_dta_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[3]\,
      I1 => \n_0_FSM_onehot_state_reg[7]\,
      I2 => \n_0_FSM_onehot_state_reg[6]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state_reg[2]\,
      I5 => \n_0_FSM_onehot_state_reg[4]\,
      O => n_0_new_rcv_dta_i_i_2
    );
new_rcv_dta_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => data_i2c_i0,
      Q => \^new_rcv_dta\,
      R => SR(0)
    );
rdCntrFrmTxFifo_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \^earlyackhdr\,
      I1 => Tx_data_exists,
      I2 => callingReadAccess,
      O => rdCntrFrmTxFifo0
    );
rdy_new_xmt_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222F2F2F22202020"
    )
    port map (
      I0 => shift_reg_ld_d1,
      I1 => \^shift_reg_ld\,
      I2 => p_0_in,
      I3 => p_1_in25_in,
      I4 => Q(1),
      I5 => \^rdy_new_xmt_i\,
      O => n_0_rdy_new_xmt_i_i_1
    );
rdy_new_xmt_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_rdy_new_xmt_i_i_1,
      Q => \^rdy_new_xmt_i\,
      R => SR(0)
    );
ro_prev_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Ro_prev,
      Q => ro_prev_d1,
      R => SR(0)
    );
rsta_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => \^rsta_d1\,
      R => SR(0)
    );
rsta_tx_under_prev_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I2,
      Q => \^o2\,
      R => '0'
    );
scl_cout_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
    port map (
      I0 => n_0_scl_cout_reg_i_2,
      I1 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[9]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I5 => Ro_prev,
      O => n_0_scl_cout_reg_i_1
    );
scl_cout_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEF"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[2]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[4]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[5]\,
      I4 => \n_0_FSM_onehot_scl_state_reg[1]\,
      O => n_0_scl_cout_reg_i_2
    );
scl_cout_reg_reg: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_scl_cout_reg_i_1,
      Q => scl_cout_reg,
      S => SR(0)
    );
scl_f_edg_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => bit_cnt_en3,
      Q => scl_f_edg_d1,
      R => SR(0)
    );
scl_f_edg_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d1,
      Q => scl_f_edg_d2,
      R => SR(0)
    );
scl_f_edg_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_f_edg_d2,
      Q => scl_f_edg_d3,
      R => SR(0)
    );
scl_falling_edge_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^scl_rin_d1\,
      I1 => scl_clean,
      O => n_0_scl_falling_edge_i_1
    );
scl_falling_edge_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_scl_falling_edge_i_1,
      Q => bit_cnt_en3,
      R => SR(0)
    );
scl_rin_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => scl_clean,
      Q => \^scl_rin_d1\,
      R => '0'
    );
scl_rising_edge_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => I1,
      Q => scl_rising_edge,
      R => SR(0)
    );
scl_t_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => Ro_prev,
      I1 => \^o2\,
      I2 => scl_cout_reg,
      I3 => n_0_sda_setup_reg,
      O => scl_t
    );
sda_cout_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
    port map (
      I0 => n_0_sm_stop_reg,
      I1 => n_0_gen_stop_reg,
      I2 => n_0_stop_scl_reg_i_4,
      I3 => \n_0_FSM_onehot_state_reg[4]\,
      I4 => \n_0_FSM_onehot_state_reg[2]\,
      I5 => \n_0_FSM_onehot_state_reg[5]\,
      O => sda_cout1
    );
sda_cout_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[8]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[3]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[9]\,
      I3 => \n_0_FSM_onehot_scl_state_reg[4]\,
      O => n_0_sda_cout_reg_i_6
    );
sda_cout_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[7]\,
      O => n_0_sda_cout_reg_i_7
    );
sda_cout_reg_reg: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_10_CLKCNT,
      Q => sda_cout_reg,
      S => SR(0)
    );
sda_rin_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => sda_clean,
      Q => \^sda_rin_d1\,
      R => '0'
    );
sda_sample_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => sda_clean,
      I1 => scl_rising_edge,
      I2 => sda_sample,
      O => n_0_sda_sample_i_1
    );
sda_sample_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_sda_sample_i_1,
      Q => sda_sample,
      R => SR(0)
    );
sda_setup_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_1_SETUP_CNT,
      Q => n_0_sda_setup_reg,
      R => '0'
    );
sda_t_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55455040"
    )
    port map (
      I0 => stop_scl_reg,
      I1 => sda_cout_reg,
      I2 => master_slave,
      I3 => \^arb_lost\,
      I4 => n_0_slave_sda_reg,
      O => sda_t
    );
shift_reg_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => master_slave,
      I1 => p_1_in25_in,
      I2 => scl_rising_edge,
      I3 => n_0_shift_reg_en_i_2,
      O => shift_reg_en0
    );
shift_reg_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
    port map (
      I0 => p_1_in24_in,
      I1 => scl_rising_edge,
      I2 => p_0_in,
      I3 => scl_f_edg_d2,
      I4 => detect_start,
      O => n_0_shift_reg_en_i_2
    );
shift_reg_en_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_en0,
      Q => shift_reg_en,
      R => SR(0)
    );
shift_reg_ld_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^shift_reg_ld\,
      Q => shift_reg_ld_d1,
      R => SR(0)
    );
shift_reg_ld_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[6]\,
      I1 => \n_0_FSM_onehot_state_reg[5]\,
      I2 => \n_0_FSM_onehot_state_reg[7]\,
      O => state_reg(2)
    );
shift_reg_ld_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[4]\,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => \n_0_FSM_onehot_state_reg[7]\,
      O => state_reg(1)
    );
shift_reg_ld_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => shift_reg_ld0,
      Q => \^shift_reg_ld\,
      R => SR(0)
    );
slave_sda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[6]\,
      I1 => \n_0_FSM_onehot_state_reg[7]\,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state_reg[2]\,
      I5 => \n_0_FSM_onehot_state_reg[4]\,
      O => n_0_slave_sda_i_3
    );
slave_sda_reg: unisim.vcomponents.FDSE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_4_I2CHEADER_REG,
      Q => n_0_slave_sda_reg,
      S => SR(0)
    );
sm_stop_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AEEAA22A"
    )
    port map (
      I0 => n_0_sm_stop_reg,
      I1 => n_0_sm_stop_i_2,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \n_0_FSM_onehot_state_reg[7]\,
      I4 => master_slave,
      I5 => \n_0_FSM_onehot_state[7]_i_1\,
      O => n_0_sm_stop_i_1
    );
sm_stop_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044404000000000"
    )
    port map (
      I0 => \^arb_lost\,
      I1 => master_slave,
      I2 => scl_f_edg_d2,
      I3 => Ro_prev,
      I4 => ro_prev_d1,
      I5 => n_0_sm_stop_i_3,
      O => n_0_sm_stop_i_2
    );
sm_stop_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[4]\,
      I1 => \n_0_FSM_onehot_state_reg[5]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      I3 => \n_0_FSM_onehot_state_reg[6]\,
      I4 => sda_sample,
      I5 => \n_0_FSM_onehot_state_reg[1]\,
      O => n_0_sm_stop_i_3
    );
sm_stop_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_sm_stop_i_1,
      Q => n_0_sm_stop_reg,
      R => '0'
    );
srw_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_8_I2CHEADER_REG,
      Q => \^o1\(1),
      R => SR(0)
    );
stop_scl_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEE0EEE00000"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[5]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[6]\,
      I2 => state_reg(0),
      I3 => n_0_stop_scl_reg_i_4,
      I4 => n_0_gen_stop_reg,
      I5 => n_0_sm_stop_reg,
      O => n_0_stop_scl_reg_i_2
    );
stop_scl_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[3]\,
      I1 => \n_0_FSM_onehot_state_reg[4]\,
      I2 => \n_0_FSM_onehot_state_reg[7]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state_reg[6]\,
      O => n_0_stop_scl_reg_i_4
    );
stop_scl_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_scl_state_reg[9]\,
      I1 => \n_0_FSM_onehot_scl_state_reg[7]\,
      I2 => \n_0_FSM_onehot_scl_state_reg[6]\,
      O => n_0_stop_scl_reg_i_5
    );
stop_scl_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => Q(3),
      I1 => stop_scl_reg,
      I2 => \^arb_lost\,
      O => n_0_stop_scl_reg_i_7
    );
stop_scl_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_9_CLKCNT,
      Q => stop_scl_reg,
      R => SR(0)
    );
tx_under_prev_d1_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^tx_under_prev\,
      Q => tx_under_prev_d1,
      R => SR(0)
    );
tx_under_prev_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0020AAAA0000"
    )
    port map (
      I0 => Q(0),
      I1 => p_1_in24_in,
      I2 => sr_i(0),
      I3 => n_0_tx_under_prev_i_i_2,
      I4 => tx_under_prev_i0,
      I5 => \^tx_under_prev\,
      O => n_0_tx_under_prev_i_i_1
    );
tx_under_prev_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[6]\,
      I1 => \n_0_FSM_onehot_state_reg[7]\,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state_reg[2]\,
      I5 => \n_0_FSM_onehot_state_reg[4]\,
      O => n_0_tx_under_prev_i_i_2
    );
tx_under_prev_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100000000000000"
    )
    port map (
      I0 => n_0_gen_stop_reg,
      I1 => \^aas\,
      I2 => \^o1\(1),
      I3 => tx_under_prev_i4,
      I4 => bit_cnt_en3,
      I5 => sr_i(0),
      O => tx_under_prev_i0
    );
tx_under_prev_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_tx_under_prev_i_i_1,
      Q => \^tx_under_prev\,
      R => '0'
    );
txer_edge_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2000000E200"
    )
    port map (
      I0 => \^d\(2),
      I1 => txer_i,
      I2 => sda_sample,
      I3 => Q(0),
      I4 => scl_f_edg_d2,
      I5 => bit_cnt_en3,
      O => n_0_txer_edge_i_1
    );
txer_edge_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAA8"
    )
    port map (
      I0 => bit_cnt_en3,
      I1 => \n_0_FSM_onehot_state_reg[7]\,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \n_0_FSM_onehot_state_reg[4]\,
      I4 => state_reg(2),
      I5 => state_reg(0),
      O => txer_i
    );
txer_edge_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_txer_edge_i_1,
      Q => \^d\(2),
      R => '0'
    );
txer_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF8880"
    )
    port map (
      I0 => sda_sample,
      I1 => bit_cnt_en3,
      I2 => tx_under_prev_i4,
      I3 => n_0_new_rcv_dta_i_i_2,
      I4 => n_0_txer_i_reg,
      O => n_0_txer_i_i_1
    );
txer_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000032"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[3]\,
      I1 => \n_0_FSM_onehot_state_reg[4]\,
      I2 => \n_0_FSM_onehot_state_reg[7]\,
      I3 => \n_0_FSM_onehot_state_reg[5]\,
      I4 => \n_0_FSM_onehot_state_reg[2]\,
      O => tx_under_prev_i4
    );
txer_i_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_txer_i_i_1,
      Q => n_0_txer_i_reg,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_slave_attachment is
  port (
    p_18_in : out STD_LOGIC;
    O1 : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    IIC2Bus_Data1 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    I26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I25 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I24 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I23 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O10 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    O14 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    AXI_IP2Bus_RdAck0 : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AXI_Bus2IP_Reset : in STD_LOGIC;
    AXI_IP2Bus_WrAck : in STD_LOGIC;
    AXI_IP2Bus_RdAck : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I27 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    I28 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_slave_attachment : entity is "slave_attachment";
end axi_iic_0_slave_attachment;

architecture STRUCTURE of axi_iic_0_slave_attachment is
  signal AXI_IP2Bus_Data : STD_LOGIC_VECTOR ( 24 to 31 );
  signal Intr2Bus_DBus : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o12\ : STD_LOGIC;
  signal \^o13\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\ : STD_LOGIC;
  signal \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ : STD_LOGIC;
  signal n_0_s_axi_bvalid_i_i_1 : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[0]_i_3\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[31]_i_1\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_11\ : STD_LOGIC;
  signal \n_0_s_axi_rdata_i[9]_i_12\ : STD_LOGIC;
  signal n_0_s_axi_rvalid_i_i_1 : STD_LOGIC;
  signal \n_0_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_state_reg[0]\ : STD_LOGIC;
  signal \n_0_state_reg[1]\ : STD_LOGIC;
  signal n_41_I_DECODER : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset2Bus_Error : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal timeout : STD_LOGIC;
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is std.standard.true;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair58";
  attribute counter : integer;
  attribute counter of \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : label is 4;
  attribute counter of \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\ : label is 4;
  attribute counter of \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ : label is 4;
  attribute counter of \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\ : label is 4;
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[9]_i_12\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair60";
begin
  O12 <= \^o12\;
  O13 <= \^o13\;
  O3 <= \^o3\;
  O5 <= \^o5\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      I2 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \n_0_state_reg[1]\,
      I1 => \n_0_state_reg[0]\,
      O => p_2_out
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      I1 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      I2 => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      I3 => timeout,
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      R => p_2_out
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\,
      R => p_2_out
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \n_0_INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      R => p_2_out
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => timeout,
      R => p_2_out
    );
I_DECODER: entity work.axi_iic_0_address_decoder
    port map (
      AXI_IP2Bus_RdAck => AXI_IP2Bus_RdAck,
      AXI_IP2Bus_RdAck0 => AXI_IP2Bus_RdAck0,
      AXI_IP2Bus_WrAck => AXI_IP2Bus_WrAck,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      D(8) => Intr2Bus_DBus(0),
      D(7) => AXI_IP2Bus_Data(24),
      D(6) => AXI_IP2Bus_Data(25),
      D(5) => AXI_IP2Bus_Data(26),
      D(4) => AXI_IP2Bus_Data(27),
      D(3) => AXI_IP2Bus_Data(28),
      D(2) => AXI_IP2Bus_Data(29),
      D(1) => AXI_IP2Bus_Data(30),
      D(0) => AXI_IP2Bus_Data(31),
      E(0) => E(0),
      I1 => \n_0_state_reg[0]\,
      I10 => I8,
      I11 => I9,
      I12 => I10,
      I13 => I11,
      I14 => I12,
      I15 => I13,
      I16 => I14,
      I17(0) => I17(0),
      I18(0) => I18(0),
      I19(0) => I19(0),
      I2 => \n_0_state_reg[1]\,
      I20(0) => I20(0),
      I21(0) => I21(0),
      I22(0) => I22(0),
      I23(0) => I23(0),
      I24(0) => I24(0),
      I25(0) => I25(0),
      I26(0) => I26(0),
      I27 => \n_0_s_axi_rdata_i[0]_i_3\,
      I28 => I15,
      I29 => I16,
      I3 => I1,
      I30 => I27,
      I31(7 downto 0) => Q(7 downto 0),
      I32 => I28,
      I4 => I2,
      I5 => I3,
      I6 => I4,
      I7 => I5,
      I8 => I6,
      I9 => I7,
      IIC2Bus_Data1 => IIC2Bus_Data1,
      O1 => O1,
      O10 => O10,
      O11(0) => O11(0),
      O12 => \^o13\,
      O13 => O14,
      O14 => n_41_I_DECODER,
      O16 => O16,
      O17 => O17,
      O2 => O2,
      O3 => \^o3\,
      O4 => O4,
      O5 => \^o5\,
      O6 => O6,
      O7 => O7,
      O8 => \^o12\,
      O9 => O9,
      Q(0) => timeout,
      gpo(0) => gpo(0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_18_in => p_18_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      reset2Bus_Error => reset2Bus_Error,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bresp(0) => \^s_axi_bresp\(0),
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
rst_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_Bus2IP_Reset,
      Q => rst,
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => AXI_IP2Bus_RdAck,
      I1 => timeout,
      O => \^s_axi_arready\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_41_I_DECODER,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800FF00080008"
    )
    port map (
      I0 => \^s_axi_awready\,
      I1 => \n_0_state_reg[1]\,
      I2 => \n_0_state_reg[0]\,
      I3 => rst,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => n_0_s_axi_bvalid_i_i_1
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_s_axi_bvalid_i_i_1,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053035"
    )
    port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_araddr(1),
      I2 => s_axi_arvalid,
      I3 => s_axi_awaddr(0),
      I4 => s_axi_araddr(0),
      O => \n_0_s_axi_rdata_i[0]_i_3\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_state_reg[0]\,
      I1 => \n_0_state_reg[1]\,
      O => \n_0_s_axi_rdata_i[31]_i_1\
    );
\s_axi_rdata_i[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00500353"
    )
    port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_arvalid,
      I3 => s_axi_araddr(7),
      I4 => s_axi_awaddr(7),
      O => O8
    );
\s_axi_rdata_i[9]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACFCA"
    )
    port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_araddr(0),
      I2 => s_axi_arvalid,
      I3 => s_axi_awaddr(7),
      I4 => s_axi_araddr(7),
      O => \n_0_s_axi_rdata_i[9]_i_11\
    );
\s_axi_rdata_i[9]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_arvalid,
      O => \n_0_s_axi_rdata_i[9]_i_12\
    );
\s_axi_rdata_i[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000015400"
    )
    port map (
      I0 => \n_0_s_axi_rdata_i[9]_i_11\,
      I1 => \^o5\,
      I2 => \^o13\,
      I3 => \^o12\,
      I4 => \^o3\,
      I5 => \n_0_s_axi_rdata_i[9]_i_12\,
      O => O15
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(31),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(30),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(29),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => Intr2Bus_DBus(0),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(28),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(27),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(26),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(25),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => AXI_IP2Bus_Data(24),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => D(0),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => D(1),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_s_axi_rdata_i[31]_i_1\,
      D => reset2Bus_Error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E000FF00E000E0"
    )
    port map (
      I0 => AXI_IP2Bus_RdAck,
      I1 => timeout,
      I2 => \n_0_s_axi_rdata_i[31]_i_1\,
      I3 => rst,
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => n_0_s_axi_rvalid_i_i_1
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_s_axi_rvalid_i_i_1,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => AXI_IP2Bus_WrAck,
      I1 => timeout,
      O => \^s_axi_awready\
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F4F7C4C"
    )
    port map (
      I0 => \n_0_state[1]_i_3\,
      I1 => \n_0_state_reg[0]\,
      I2 => \n_0_state_reg[1]\,
      I3 => \^s_axi_awready\,
      I4 => s_axi_arvalid,
      I5 => rst,
      O => \n_0_state[0]_i_1\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002F20EFEC"
    )
    port map (
      I0 => \^s_axi_arready\,
      I1 => \n_0_state_reg[1]\,
      I2 => \n_0_state_reg[0]\,
      I3 => \n_0_state[1]_i_2\,
      I4 => \n_0_state[1]_i_3\,
      I5 => rst,
      O => \n_0_state[1]_i_1\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAAA"
    )
    port map (
      I0 => \n_0_state_reg[1]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      O => \n_0_state[1]_i_2\
    );
\state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => \n_0_state[1]_i_3\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_state[0]_i_1\,
      Q => \n_0_state_reg[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_state[1]_i_1\,
      Q => \n_0_state_reg[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_axi_lite_ipif is
  port (
    p_18_in : out STD_LOGIC;
    p_27_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    IIC2Bus_Data1 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    I26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I25 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I24 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I23 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O9 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O10 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    O13 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    AXI_IP2Bus_RdAck0 : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AXI_Bus2IP_Reset : in STD_LOGIC;
    AXI_IP2Bus_WrAck : in STD_LOGIC;
    AXI_IP2Bus_RdAck : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I27 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in2_in : in STD_LOGIC;
    p_1_in5_in : in STD_LOGIC;
    p_1_in8_in : in STD_LOGIC;
    p_1_in11_in : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    I28 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_axi_lite_ipif : entity is "axi_lite_ipif";
end axi_iic_0_axi_lite_ipif;

architecture STRUCTURE of axi_iic_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.axi_iic_0_slave_attachment
    port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck => AXI_IP2Bus_RdAck,
      AXI_IP2Bus_RdAck0 => AXI_IP2Bus_RdAck0,
      AXI_IP2Bus_WrAck => AXI_IP2Bus_WrAck,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      I1 => I1,
      I10 => I10,
      I11 => I11,
      I12 => I12,
      I13 => I13,
      I14 => I14,
      I15 => I15,
      I16 => I16,
      I17(0) => I17(0),
      I18(0) => I18(0),
      I19(0) => I19(0),
      I2 => I2,
      I20(0) => I20(0),
      I21(0) => I21(0),
      I22(0) => I22(0),
      I23(0) => I23(0),
      I24(0) => I24(0),
      I25(0) => I25(0),
      I26(0) => I26(0),
      I27 => I27,
      I28 => I28,
      I3 => I3,
      I4 => I4,
      I5 => I5,
      I6 => I6,
      I7 => I7,
      I8 => I8,
      I9 => I9,
      IIC2Bus_Data1 => IIC2Bus_Data1,
      O1 => p_27_in,
      O10 => O9,
      O11(0) => O10(0),
      O12 => O11,
      O13 => O12,
      O14 => O13,
      O15 => O14,
      O16 => O15,
      O17 => O16,
      O2 => O1,
      O3 => O2,
      O4 => O3,
      O5 => O4,
      O6 => O5,
      O7 => O6,
      O8 => O7,
      O9 => O8,
      Q(7 downto 0) => Q(7 downto 0),
      gpo(0) => gpo(0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_18_in => p_18_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_filter is
  port (
    O1 : out STD_LOGIC;
    Sda_clean : out STD_LOGIC;
    O2 : out STD_LOGIC;
    Scl_clean : out STD_LOGIC;
    sda_rin_d1 : in STD_LOGIC;
    scl_rin_d1 : in STD_LOGIC;
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_filter : entity is "filter";
end axi_iic_0_filter;

architecture STRUCTURE of axi_iic_0_filter is
begin
SCL_DEBOUNCE: entity work.axi_iic_0_debounce
    port map (
      O2 => O2,
      Scl_clean => Scl_clean,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1
    );
SDA_DEBOUNCE: entity work.axi_iic_0_debounce_3
    port map (
      O1 => O1,
      Sda_clean => Sda_clean,
      s_axi_aclk => s_axi_aclk,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_axi_ipif_ssp1 is
  port (
    p_18_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    IIC2Bus_Data1 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    I26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I25 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I24 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I23 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O4 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    Bus2IIC_RdCE : out STD_LOGIC_VECTOR ( 0 to 0 );
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    IIC2Bus_IntrEvent : in STD_LOGIC_VECTOR ( 0 to 7 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpo : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_axi_ipif_ssp1 : entity is "axi_ipif_ssp1";
end axi_iic_0_axi_ipif_ssp1;

architecture STRUCTURE of axi_iic_0_axi_ipif_ssp1 is
  signal AXI_Bus2IP_Reset : STD_LOGIC;
  signal AXI_IP2Bus_RdAck : STD_LOGIC;
  signal AXI_IP2Bus_RdAck0 : STD_LOGIC;
  signal AXI_IP2Bus_WrAck : STD_LOGIC;
  signal \^bus_rnw_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal ipif_glbl_irpt_enable_reg : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal n_0_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal n_11_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_12_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_13_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal n_14_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_15_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal n_16_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal n_27_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_37_AXI_LITE_IPIF_I : STD_LOGIC;
  signal n_7_X_INTERRUPT_CONTROL : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in11_in : STD_LOGIC;
  signal p_1_in14_in : STD_LOGIC;
  signal p_1_in17_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_1_in8_in : STD_LOGIC;
  signal sw_rst_cond_d1 : STD_LOGIC;
begin
  Bus_RNW_reg <= \^bus_rnw_reg\;
  O1 <= \^o1\;
AXI_IP2Bus_RdAck_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_IP2Bus_RdAck0,
      Q => AXI_IP2Bus_RdAck,
      R => '0'
    );
AXI_IP2Bus_WrAck_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_14_AXI_LITE_IPIF_I,
      Q => AXI_IP2Bus_WrAck,
      R => '0'
    );
AXI_LITE_IPIF_I: entity work.axi_iic_0_axi_lite_ipif
    port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      AXI_IP2Bus_RdAck => AXI_IP2Bus_RdAck,
      AXI_IP2Bus_RdAck0 => AXI_IP2Bus_RdAck0,
      AXI_IP2Bus_WrAck => AXI_IP2Bus_WrAck,
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(0),
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      I1 => I1,
      I10 => I10,
      I11 => I11,
      I12 => I12,
      I13 => I13,
      I14 => I14,
      I15 => I15,
      I16 => I16,
      I17(0) => I17(0),
      I18(0) => I18(0),
      I19(0) => I19(0),
      I2 => I2,
      I20(0) => I20(0),
      I21(0) => I21(0),
      I22(0) => I22(0),
      I23(0) => I23(0),
      I24(0) => I24(0),
      I25(0) => I25(0),
      I26(0) => I26(0),
      I27 => n_7_X_INTERRUPT_CONTROL,
      I28 => n_0_X_INTERRUPT_CONTROL,
      I3 => I3,
      I4 => I4,
      I5 => I5,
      I6 => I6,
      I7 => I7,
      I8 => I8,
      I9 => I9,
      IIC2Bus_Data1 => IIC2Bus_Data1,
      O1 => \^bus_rnw_reg\,
      O10(0) => n_27_AXI_LITE_IPIF_I,
      O11 => O2(3),
      O12 => O2(2),
      O13 => O2(5),
      O14 => O5,
      O15 => n_37_AXI_LITE_IPIF_I,
      O16 => O6,
      O2 => O2(4),
      O3 => O2(0),
      O4 => O2(1),
      O5 => n_11_AXI_LITE_IPIF_I,
      O6 => n_12_AXI_LITE_IPIF_I,
      O7 => O3,
      O8 => n_14_AXI_LITE_IPIF_I,
      O9 => O4,
      Q(7) => p_0_in16_in,
      Q(6) => p_0_in13_in,
      Q(5) => p_0_in10_in,
      Q(4) => p_0_in7_in,
      Q(3) => n_13_X_INTERRUPT_CONTROL,
      Q(2) => p_0_in1_in,
      Q(1) => n_15_X_INTERRUPT_CONTROL,
      Q(0) => n_16_X_INTERRUPT_CONTROL,
      gpo(0) => gpo(0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_18_in => p_18_in,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      p_27_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(4) => s_axi_wdata(8),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
X_INTERRUPT_CONTROL: entity work.axi_iic_0_interrupt_control
    port map (
      E(0) => n_27_AXI_LITE_IPIF_I,
      I1 => \^o1\,
      I2 => n_37_AXI_LITE_IPIF_I,
      I3 => \^bus_rnw_reg\,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      O1 => n_0_X_INTERRUPT_CONTROL,
      O2 => n_7_X_INTERRUPT_CONTROL,
      Q(7) => p_0_in16_in,
      Q(6) => p_0_in13_in,
      Q(5) => p_0_in10_in,
      Q(4) => p_0_in7_in,
      Q(3) => n_13_X_INTERRUPT_CONTROL,
      Q(2) => p_0_in1_in,
      Q(1) => n_15_X_INTERRUPT_CONTROL,
      Q(0) => n_16_X_INTERRUPT_CONTROL,
      iic2intc_irpt => iic2intc_irpt,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_wrack => irpt_wrack,
      p_1_in11_in => p_1_in11_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in2_in => p_1_in2_in,
      p_1_in5_in => p_1_in5_in,
      p_1_in8_in => p_1_in8_in,
      p_27_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_27_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
X_SOFT_RESET: entity work.axi_iic_0_soft_reset
    port map (
      AXI_Bus2IP_Reset => AXI_Bus2IP_Reset,
      I1 => n_12_AXI_LITE_IPIF_I,
      I2 => n_11_AXI_LITE_IPIF_I,
      O1 => \^o1\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      sw_rst_cond_d1 => sw_rst_cond_d1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0_iic is
  port (
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic2intc_irpt : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_iic_0_iic : entity is "iic";
end axi_iic_0_iic;

architecture STRUCTURE of axi_iic_0_iic is
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\ : STD_LOGIC;
  signal Aas : STD_LOGIC;
  signal Abgc : STD_LOGIC;
  signal Al : STD_LOGIC;
  signal Bb : STD_LOGIC;
  signal Bus2IIC_Addr : STD_LOGIC_VECTOR ( 1 to 6 );
  signal Bus2IIC_RdCE : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \CLKCNT/q_int_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Cr : STD_LOGIC_VECTOR ( 1 to 7 );
  signal Data_i2c : STD_LOGIC_VECTOR ( 0 to 7 );
  signal IIC2Bus_Data1 : STD_LOGIC;
  signal IIC2Bus_IntrEvent : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Msms_set : STD_LOGIC;
  signal New_rcv_dta : STD_LOGIC;
  signal Rc_Data_Exists : STD_LOGIC;
  signal Rc_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Rc_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Rc_fifo_full : STD_LOGIC;
  signal Rc_fifo_rd : STD_LOGIC;
  signal Rc_fifo_rd_d : STD_LOGIC;
  signal Rc_fifo_wr : STD_LOGIC;
  signal Rc_fifo_wr_d : STD_LOGIC;
  signal Ro_prev : STD_LOGIC;
  signal \SETUP_CNT/q_int_reg__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Srw : STD_LOGIC;
  signal Tx_addr : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Tx_data_exists : STD_LOGIC;
  signal Tx_fifo_data : STD_LOGIC_VECTOR ( 0 to 7 );
  signal Tx_fifo_full : STD_LOGIC;
  signal Tx_fifo_rd : STD_LOGIC;
  signal Tx_fifo_rd_d : STD_LOGIC;
  signal Tx_fifo_rst : STD_LOGIC;
  signal Tx_fifo_wr : STD_LOGIC;
  signal Tx_fifo_wr_d : STD_LOGIC;
  signal Tx_under_prev : STD_LOGIC;
  signal Txer : STD_LOGIC;
  signal ackDataState : STD_LOGIC;
  signal arb_lost : STD_LOGIC;
  signal buffer_Empty : STD_LOGIC;
  signal buffer_Empty_0 : STD_LOGIC;
  signal buffer_Empty_1 : STD_LOGIC;
  signal callingReadAccess : STD_LOGIC;
  signal ctrl_fifo_wr_i : STD_LOGIC;
  signal dtre_d1 : STD_LOGIC;
  signal dynamic_MSMS : STD_LOGIC_VECTOR ( 0 to 1 );
  signal earlyAckDataState : STD_LOGIC;
  signal earlyAckHdr : STD_LOGIC;
  signal firstDynStartSeen : STD_LOGIC;
  signal \^gpo\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal n_0_FILTER_I : STD_LOGIC;
  signal n_0_WRITE_FIFO_CTRL_I : STD_LOGIC;
  signal n_108_REG_INTERFACE_I : STD_LOGIC;
  signal n_109_REG_INTERFACE_I : STD_LOGIC;
  signal n_10_IIC_CONTROL_I : STD_LOGIC;
  signal n_110_REG_INTERFACE_I : STD_LOGIC;
  signal n_111_REG_INTERFACE_I : STD_LOGIC;
  signal n_112_REG_INTERFACE_I : STD_LOGIC;
  signal n_114_REG_INTERFACE_I : STD_LOGIC;
  signal n_116_REG_INTERFACE_I : STD_LOGIC;
  signal n_117_REG_INTERFACE_I : STD_LOGIC;
  signal n_118_REG_INTERFACE_I : STD_LOGIC;
  signal n_119_REG_INTERFACE_I : STD_LOGIC;
  signal n_120_REG_INTERFACE_I : STD_LOGIC;
  signal n_121_REG_INTERFACE_I : STD_LOGIC;
  signal n_122_REG_INTERFACE_I : STD_LOGIC;
  signal n_123_REG_INTERFACE_I : STD_LOGIC;
  signal n_124_REG_INTERFACE_I : STD_LOGIC;
  signal n_125_REG_INTERFACE_I : STD_LOGIC;
  signal n_126_REG_INTERFACE_I : STD_LOGIC;
  signal n_127_REG_INTERFACE_I : STD_LOGIC;
  signal n_128_REG_INTERFACE_I : STD_LOGIC;
  signal n_129_REG_INTERFACE_I : STD_LOGIC;
  signal n_130_REG_INTERFACE_I : STD_LOGIC;
  signal n_131_REG_INTERFACE_I : STD_LOGIC;
  signal n_132_REG_INTERFACE_I : STD_LOGIC;
  signal n_133_REG_INTERFACE_I : STD_LOGIC;
  signal n_134_REG_INTERFACE_I : STD_LOGIC;
  signal n_135_REG_INTERFACE_I : STD_LOGIC;
  signal n_136_REG_INTERFACE_I : STD_LOGIC;
  signal n_137_REG_INTERFACE_I : STD_LOGIC;
  signal n_138_REG_INTERFACE_I : STD_LOGIC;
  signal n_139_REG_INTERFACE_I : STD_LOGIC;
  signal n_140_REG_INTERFACE_I : STD_LOGIC;
  signal n_141_REG_INTERFACE_I : STD_LOGIC;
  signal n_142_REG_INTERFACE_I : STD_LOGIC;
  signal n_143_REG_INTERFACE_I : STD_LOGIC;
  signal n_14_WRITE_FIFO_I : STD_LOGIC;
  signal n_14_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_15_WRITE_FIFO_I : STD_LOGIC;
  signal n_15_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_16_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_17_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_18_WRITE_FIFO_I : STD_LOGIC;
  signal n_18_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_19_IIC_CONTROL_I : STD_LOGIC;
  signal n_19_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_20_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_21_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_22_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_23_IIC_CONTROL_I : STD_LOGIC;
  signal n_23_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_24_IIC_CONTROL_I : STD_LOGIC;
  signal n_24_REG_INTERFACE_I : STD_LOGIC;
  signal n_24_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_25_IIC_CONTROL_I : STD_LOGIC;
  signal n_25_REG_INTERFACE_I : STD_LOGIC;
  signal n_25_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_26_REG_INTERFACE_I : STD_LOGIC;
  signal n_26_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_27_REG_INTERFACE_I : STD_LOGIC;
  signal n_2_FILTER_I : STD_LOGIC;
  signal n_2_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_31_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_32_X_AXI_IPIF_SSP1 : STD_LOGIC;
  signal n_4_DYN_MASTER_I : STD_LOGIC;
  signal n_82_REG_INTERFACE_I : STD_LOGIC;
  signal n_83_REG_INTERFACE_I : STD_LOGIC;
  signal n_84_REG_INTERFACE_I : STD_LOGIC;
  signal n_85_REG_INTERFACE_I : STD_LOGIC;
  signal n_86_REG_INTERFACE_I : STD_LOGIC;
  signal n_96_REG_INTERFACE_I : STD_LOGIC;
  signal n_97_REG_INTERFACE_I : STD_LOGIC;
  signal n_98_REG_INTERFACE_I : STD_LOGIC;
  signal new_rcv_dta_d1 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal rdCntrFrmTxFifo : STD_LOGIC;
  signal rdCntrFrmTxFifo0 : STD_LOGIC;
  signal rdy_new_xmt_i : STD_LOGIC;
  signal rsta_d1 : STD_LOGIC;
  signal rxCntDone : STD_LOGIC;
  signal scl_clean : STD_LOGIC;
  signal scl_rin_d1 : STD_LOGIC;
  signal sda_clean : STD_LOGIC;
  signal sda_rin_d1 : STD_LOGIC;
  signal shift_reg_ld : STD_LOGIC;
  signal sr_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal timing_param_tbuf_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_thddat_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_thdsta_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_thigh_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tlow_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tsudat_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tsusta_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal timing_param_tsusto_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal txFifoRd : STD_LOGIC;
  signal txak : STD_LOGIC;
begin
  gpo(0) <= \^gpo\(0);
DYN_MASTER_I: entity work.axi_iic_0_dynamic_master
    port map (
      Bus_RNW_reg => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(0) => n_4_DYN_MASTER_I,
      I1 => n_143_REG_INTERFACE_I,
      Q(1) => Cr(3),
      Q(0) => Cr(4),
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rst => Tx_fifo_rst,
      ackDataState => ackDataState,
      callingReadAccess => callingReadAccess,
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      p_18_in => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(0) => s_axi_wdata(3),
      txak => txak
    );
FILTER_I: entity work.axi_iic_0_filter
    port map (
      O1 => n_0_FILTER_I,
      O2 => n_2_FILTER_I,
      Scl_clean => scl_clean,
      Sda_clean => sda_clean,
      s_axi_aclk => s_axi_aclk,
      scl_i => scl_i,
      scl_rin_d1 => scl_rin_d1,
      sda_i => sda_i,
      sda_rin_d1 => sda_rin_d1
    );
IIC_CONTROL_I: entity work.axi_iic_0_iic_control
    port map (
      Aas => Aas,
      Bb => Bb,
      D(3) => Al,
      D(2) => Txer,
      D(1) => n_10_IIC_CONTROL_I,
      D(0) => p_0_out(0),
      E(0) => n_26_X_AXI_IPIF_SSP1,
      I1 => n_2_FILTER_I,
      I10(0) => n_98_REG_INTERFACE_I,
      I11 => n_108_REG_INTERFACE_I,
      I12(8 downto 0) => timing_param_tsusto_i(8 downto 0),
      I13(8 downto 0) => timing_param_thigh_i(8 downto 0),
      I14(8 downto 0) => timing_param_tsusta_i(8 downto 0),
      I15(8 downto 0) => timing_param_thddat_i(8 downto 0),
      I16(8 downto 0) => timing_param_thdsta_i(8 downto 0),
      I17(8 downto 0) => timing_param_tlow_i(8 downto 0),
      I18(8 downto 0) => timing_param_tbuf_i(8 downto 0),
      I19(8 downto 0) => timing_param_tsudat_i(8 downto 0),
      I2 => n_142_REG_INTERFACE_I,
      I20 => n_117_REG_INTERFACE_I,
      I21 => n_0_FILTER_I,
      I22(0) => n_18_WRITE_FIFO_I,
      I3(6) => n_135_REG_INTERFACE_I,
      I3(5) => n_136_REG_INTERFACE_I,
      I3(4) => n_137_REG_INTERFACE_I,
      I3(3) => n_138_REG_INTERFACE_I,
      I3(2) => n_139_REG_INTERFACE_I,
      I3(1) => n_140_REG_INTERFACE_I,
      I3(0) => n_141_REG_INTERFACE_I,
      I4(0) => n_83_REG_INTERFACE_I,
      I5(0) => n_84_REG_INTERFACE_I,
      I6(0) => n_85_REG_INTERFACE_I,
      I7(0) => n_86_REG_INTERFACE_I,
      I8(0) => n_96_REG_INTERFACE_I,
      I9(0) => n_97_REG_INTERFACE_I,
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      O1(1) => Srw,
      O1(0) => Abgc,
      O2 => n_19_IIC_CONTROL_I,
      O3(0) => \CLKCNT/q_int_reg__0\(0),
      O4(0) => \SETUP_CNT/q_int_reg__0\(0),
      O5 => n_23_IIC_CONTROL_I,
      O6(1) => n_24_IIC_CONTROL_I,
      O6(0) => n_25_IIC_CONTROL_I,
      O7(7) => Data_i2c(0),
      O7(6) => Data_i2c(1),
      O7(5) => Data_i2c(2),
      O7(4) => Data_i2c(3),
      O7(3) => Data_i2c(4),
      O7(2) => Data_i2c(5),
      O7(1) => Data_i2c(6),
      O7(0) => Data_i2c(7),
      Q(4) => Cr(1),
      Q(3) => Cr(2),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      Ro_prev => Ro_prev,
      S(0) => n_82_REG_INTERFACE_I,
      SR(0) => n_116_REG_INTERFACE_I,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(6) => Tx_fifo_data(0),
      Tx_fifo_data(5) => Tx_fifo_data(1),
      Tx_fifo_data(4) => Tx_fifo_data(2),
      Tx_fifo_data(3) => Tx_fifo_data(3),
      Tx_fifo_data(2) => Tx_fifo_data(4),
      Tx_fifo_data(1) => Tx_fifo_data(5),
      Tx_fifo_data(0) => Tx_fifo_data(6),
      Tx_under_prev => Tx_under_prev,
      ackDataState => ackDataState,
      arb_lost => arb_lost,
      callingReadAccess => callingReadAccess,
      dtre_d1 => dtre_d1,
      dynamic_MSMS(0) => dynamic_MSMS(0),
      earlyAckDataState => earlyAckDataState,
      earlyAckHdr => earlyAckHdr,
      firstDynStartSeen => firstDynStartSeen,
      new_rcv_dta_d1 => new_rcv_dta_d1,
      p_3_in => p_3_in,
      p_4_in => p_4_in,
      rdCntrFrmTxFifo0 => rdCntrFrmTxFifo0,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rsta_d1 => rsta_d1,
      rxCntDone => rxCntDone,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(1) => s_axi_wdata(5),
      s_axi_wdata(0) => s_axi_wdata(2),
      scl_clean => scl_clean,
      scl_rin_d1 => scl_rin_d1,
      scl_t => scl_t,
      sda_clean => sda_clean,
      sda_rin_d1 => sda_rin_d1,
      sda_t => sda_t,
      shift_reg_ld => shift_reg_ld,
      sr_i(0) => sr_i(0),
      txak => txak
    );
READ_FIFO_I: entity work.axi_iic_0_SRL_FIFO
    port map (
      D(1) => p_1_out(6),
      D(0) => Rc_fifo_full,
      I1 => n_2_X_AXI_IPIF_SSP1,
      I2 => n_118_REG_INTERFACE_I,
      I3 => n_110_REG_INTERFACE_I,
      I4 => n_111_REG_INTERFACE_I,
      O7(7) => Data_i2c(0),
      O7(6) => Data_i2c(1),
      O7(5) => Data_i2c(2),
      O7(4) => Data_i2c(3),
      O7(3) => Data_i2c(4),
      O7(2) => Data_i2c(5),
      O7(1) => Data_i2c(6),
      O7(0) => Data_i2c(7),
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      buffer_Empty => buffer_Empty,
      s_axi_aclk => s_axi_aclk
    );
REG_INTERFACE_I: entity work.axi_iic_0_reg_interface
    port map (
      Aas => Aas,
      Bus2IIC_Addr(5) => Bus2IIC_Addr(1),
      Bus2IIC_Addr(4) => Bus2IIC_Addr(2),
      Bus2IIC_Addr(3) => Bus2IIC_Addr(3),
      Bus2IIC_Addr(2) => Bus2IIC_Addr(4),
      Bus2IIC_Addr(1) => Bus2IIC_Addr(5),
      Bus2IIC_Addr(0) => Bus2IIC_Addr(6),
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      D(0) => Ro_prev,
      E(0) => n_26_X_AXI_IPIF_SSP1,
      I1 => n_2_X_AXI_IPIF_SSP1,
      I10(0) => n_98_REG_INTERFACE_I,
      I11(0) => \SETUP_CNT/q_int_reg__0\(0),
      I12 => n_0_WRITE_FIFO_CTRL_I,
      I13 => n_14_X_AXI_IPIF_SSP1,
      I14(5) => p_1_out(6),
      I14(4) => Rc_fifo_full,
      I14(3) => Tx_fifo_full,
      I14(2) => Srw,
      I14(1) => Bb,
      I14(0) => Abgc,
      I15 => n_19_IIC_CONTROL_I,
      I16(2) => n_24_IIC_CONTROL_I,
      I16(1) => n_4_DYN_MASTER_I,
      I16(0) => n_25_IIC_CONTROL_I,
      I17(0) => n_24_X_AXI_IPIF_SSP1,
      I18(0) => n_23_X_AXI_IPIF_SSP1,
      I19(0) => n_22_X_AXI_IPIF_SSP1,
      I2 => n_15_WRITE_FIFO_I,
      I20(0) => n_21_X_AXI_IPIF_SSP1,
      I21(0) => n_20_X_AXI_IPIF_SSP1,
      I22(0) => n_19_X_AXI_IPIF_SSP1,
      I23(0) => n_18_X_AXI_IPIF_SSP1,
      I24(0) => n_17_X_AXI_IPIF_SSP1,
      I25(0) => n_16_X_AXI_IPIF_SSP1,
      I26(0) => n_15_X_AXI_IPIF_SSP1,
      I27(4) => Al,
      I27(3) => Txer,
      I27(2) => Tx_under_prev,
      I27(1) => n_10_IIC_CONTROL_I,
      I27(0) => p_0_out(0),
      I3 => n_25_X_AXI_IPIF_SSP1,
      I4 => n_23_IIC_CONTROL_I,
      I5 => n_14_WRITE_FIFO_I,
      I6 => n_32_X_AXI_IPIF_SSP1,
      I7 => n_31_X_AXI_IPIF_SSP1,
      I8(0) => \CLKCNT/q_int_reg__0\(0),
      I9(0) => n_97_REG_INTERFACE_I,
      IIC2Bus_Data1 => IIC2Bus_Data1,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      Msms_set => Msms_set,
      New_rcv_dta => New_rcv_dta,
      O1(0) => sr_i(0),
      O10(8 downto 0) => timing_param_tlow_i(8 downto 0),
      O11(0) => n_83_REG_INTERFACE_I,
      O12(0) => n_84_REG_INTERFACE_I,
      O13(0) => n_85_REG_INTERFACE_I,
      O14(0) => n_86_REG_INTERFACE_I,
      O15(8 downto 0) => timing_param_thdsta_i(8 downto 0),
      O16(0) => n_96_REG_INTERFACE_I,
      O17(8 downto 0) => timing_param_tsudat_i(8 downto 0),
      O18 => n_108_REG_INTERFACE_I,
      O19 => n_109_REG_INTERFACE_I,
      O2(1) => n_24_REG_INTERFACE_I,
      O2(0) => n_25_REG_INTERFACE_I,
      O20 => n_110_REG_INTERFACE_I,
      O21 => n_111_REG_INTERFACE_I,
      O22 => n_112_REG_INTERFACE_I,
      O23 => n_114_REG_INTERFACE_I,
      O24 => n_117_REG_INTERFACE_I,
      O25 => n_118_REG_INTERFACE_I,
      O26 => n_119_REG_INTERFACE_I,
      O27 => n_120_REG_INTERFACE_I,
      O28 => n_121_REG_INTERFACE_I,
      O29 => n_122_REG_INTERFACE_I,
      O3 => n_26_REG_INTERFACE_I,
      O30 => n_123_REG_INTERFACE_I,
      O31 => n_124_REG_INTERFACE_I,
      O32 => n_125_REG_INTERFACE_I,
      O33 => n_126_REG_INTERFACE_I,
      O34 => n_127_REG_INTERFACE_I,
      O35 => n_128_REG_INTERFACE_I,
      O36 => n_129_REG_INTERFACE_I,
      O37 => n_130_REG_INTERFACE_I,
      O38 => n_131_REG_INTERFACE_I,
      O39 => n_132_REG_INTERFACE_I,
      O4 => n_27_REG_INTERFACE_I,
      O40 => n_133_REG_INTERFACE_I,
      O41 => n_134_REG_INTERFACE_I,
      O42(6) => n_135_REG_INTERFACE_I,
      O42(5) => n_136_REG_INTERFACE_I,
      O42(4) => n_137_REG_INTERFACE_I,
      O42(3) => n_138_REG_INTERFACE_I,
      O42(2) => n_139_REG_INTERFACE_I,
      O42(1) => n_140_REG_INTERFACE_I,
      O42(0) => n_141_REG_INTERFACE_I,
      O43 => n_142_REG_INTERFACE_I,
      O44 => n_143_REG_INTERFACE_I,
      O5(8 downto 0) => timing_param_tsusto_i(8 downto 0),
      O6(8 downto 0) => timing_param_thigh_i(8 downto 0),
      O7(8 downto 0) => timing_param_tsusta_i(8 downto 0),
      O8(8 downto 0) => timing_param_tbuf_i(8 downto 0),
      O9(8 downto 0) => timing_param_thddat_i(8 downto 0),
      Q(5) => Cr(1),
      Q(4) => Cr(2),
      Q(3) => Cr(3),
      Q(2) => Cr(4),
      Q(1) => Cr(5),
      Q(0) => Cr(7),
      Rc_Data_Exists => Rc_Data_Exists,
      Rc_addr(0 to 3) => Rc_addr(0 to 3),
      Rc_fifo_data(0 to 7) => Rc_fifo_data(0 to 7),
      Rc_fifo_rd => Rc_fifo_rd,
      Rc_fifo_rd_d => Rc_fifo_rd_d,
      Rc_fifo_wr => Rc_fifo_wr,
      Rc_fifo_wr_d => Rc_fifo_wr_d,
      S(0) => n_82_REG_INTERFACE_I,
      SR(0) => n_116_REG_INTERFACE_I,
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      arb_lost => arb_lost,
      buffer_Empty => buffer_Empty_0,
      buffer_Empty_0 => buffer_Empty_1,
      buffer_Empty_1 => buffer_Empty,
      ctrl_fifo_wr_i => ctrl_fifo_wr_i,
      dtre_d1 => dtre_d1,
      firstDynStartSeen => firstDynStartSeen,
      gpo(0) => \^gpo\(0),
      new_rcv_dta_d1 => new_rcv_dta_d1,
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      rdy_new_xmt_i => rdy_new_xmt_i,
      rsta_d1 => rsta_d1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(6 downto 5),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(6 downto 5),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      txFifoRd => txFifoRd
    );
Rc_fifo_rd_d_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_rd,
      Q => Rc_fifo_rd_d,
      R => n_2_X_AXI_IPIF_SSP1
    );
Rc_fifo_wr_d_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Rc_fifo_wr,
      Q => Rc_fifo_wr_d,
      R => n_2_X_AXI_IPIF_SSP1
    );
Tx_fifo_rd_d_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_rd,
      Q => Tx_fifo_rd_d,
      R => n_2_X_AXI_IPIF_SSP1
    );
Tx_fifo_wr_d_reg: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => Tx_fifo_wr,
      Q => Tx_fifo_wr_d,
      R => n_2_X_AXI_IPIF_SSP1
    );
WRITE_FIFO_CTRL_I: entity work.\axi_iic_0_SRL_FIFO__parameterized0\
    port map (
      I1 => n_112_REG_INTERFACE_I,
      I2 => n_27_REG_INTERFACE_I,
      I3 => n_26_REG_INTERFACE_I,
      O1 => n_0_WRITE_FIFO_CTRL_I,
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      buffer_Empty => buffer_Empty_0,
      ctrl_fifo_wr_i => ctrl_fifo_wr_i,
      dynamic_MSMS(0 to 1) => dynamic_MSMS(0 to 1),
      p_4_in => p_4_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      s_axi_aclk => s_axi_aclk,
      txFifoRd => txFifoRd
    );
WRITE_FIFO_I: entity work.axi_iic_0_SRL_FIFO_0
    port map (
      I1 => n_114_REG_INTERFACE_I,
      I14(0) => Tx_fifo_full,
      I2 => n_109_REG_INTERFACE_I,
      I22(0) => n_18_WRITE_FIFO_I,
      O1 => n_14_WRITE_FIFO_I,
      O2 => n_15_WRITE_FIFO_I,
      Tx_addr(0 to 3) => Tx_addr(0 to 3),
      Tx_data_exists => Tx_data_exists,
      Tx_fifo_data(0 to 7) => Tx_fifo_data(0 to 7),
      Tx_fifo_rd => Tx_fifo_rd,
      Tx_fifo_rd_d => Tx_fifo_rd_d,
      Tx_fifo_rst => Tx_fifo_rst,
      Tx_fifo_wr => Tx_fifo_wr,
      Tx_fifo_wr_d => Tx_fifo_wr_d,
      buffer_Empty => buffer_Empty_1,
      dynamic_MSMS(0) => dynamic_MSMS(1),
      p_3_in => p_3_in,
      rdCntrFrmTxFifo => rdCntrFrmTxFifo,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      sda_clean => sda_clean,
      shift_reg_ld => shift_reg_ld,
      txFifoRd => txFifoRd
    );
X_AXI_IPIF_SSP1: entity work.axi_iic_0_axi_ipif_ssp1
    port map (
      Bus2IIC_RdCE(0) => Bus2IIC_RdCE(3),
      Bus_RNW_reg => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(1) => n_24_REG_INTERFACE_I,
      D(0) => n_25_REG_INTERFACE_I,
      E(0) => n_26_X_AXI_IPIF_SSP1,
      I1 => n_132_REG_INTERFACE_I,
      I10 => n_123_REG_INTERFACE_I,
      I11 => n_122_REG_INTERFACE_I,
      I12 => n_121_REG_INTERFACE_I,
      I13 => n_134_REG_INTERFACE_I,
      I14 => n_133_REG_INTERFACE_I,
      I15 => n_119_REG_INTERFACE_I,
      I16 => n_120_REG_INTERFACE_I,
      I17(0) => n_24_X_AXI_IPIF_SSP1,
      I18(0) => n_23_X_AXI_IPIF_SSP1,
      I19(0) => n_22_X_AXI_IPIF_SSP1,
      I2 => n_131_REG_INTERFACE_I,
      I20(0) => n_21_X_AXI_IPIF_SSP1,
      I21(0) => n_20_X_AXI_IPIF_SSP1,
      I22(0) => n_19_X_AXI_IPIF_SSP1,
      I23(0) => n_18_X_AXI_IPIF_SSP1,
      I24(0) => n_17_X_AXI_IPIF_SSP1,
      I25(0) => n_16_X_AXI_IPIF_SSP1,
      I26(0) => n_15_X_AXI_IPIF_SSP1,
      I3 => n_130_REG_INTERFACE_I,
      I4 => n_129_REG_INTERFACE_I,
      I5 => n_128_REG_INTERFACE_I,
      I6 => n_127_REG_INTERFACE_I,
      I7 => n_126_REG_INTERFACE_I,
      I8 => n_125_REG_INTERFACE_I,
      I9 => n_124_REG_INTERFACE_I,
      IIC2Bus_Data1 => IIC2Bus_Data1,
      IIC2Bus_IntrEvent(0 to 7) => IIC2Bus_IntrEvent(0 to 7),
      O1 => n_2_X_AXI_IPIF_SSP1,
      O2(5) => Bus2IIC_Addr(1),
      O2(4) => Bus2IIC_Addr(2),
      O2(3) => Bus2IIC_Addr(3),
      O2(2) => Bus2IIC_Addr(4),
      O2(1) => Bus2IIC_Addr(5),
      O2(0) => Bus2IIC_Addr(6),
      O3 => n_14_X_AXI_IPIF_SSP1,
      O4 => n_25_X_AXI_IPIF_SSP1,
      O5 => n_31_X_AXI_IPIF_SSP1,
      O6 => n_32_X_AXI_IPIF_SSP1,
      gpo(0) => \^gpo\(0),
      iic2intc_irpt => iic2intc_irpt,
      p_18_in => \AXI_LITE_IPIF_I/I_SLAVE_ATTACHMENT/I_DECODER/p_18_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(8) => s_axi_wdata(10),
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_iic_0_axi_iic__parameterized0\ is
  port (
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic2intc_irpt : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    scl_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_iic_0_axi_iic__parameterized0\ : entity is "axi_iic";
end \axi_iic_0_axi_iic__parameterized0\;

architecture STRUCTURE of \axi_iic_0_axi_iic__parameterized0\ is
begin
X_IIC: entity work.axi_iic_0_iic
    port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10 downto 0) => s_axi_rdata(10 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(10 downto 0) => s_axi_wdata(10 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_iic_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_iic_0 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axi_iic_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of axi_iic_0 : entity is "axi_iic,Vivado 2014.2";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_iic_0 : entity is "axi_iic_0,axi_iic,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of axi_iic_0 : entity is "axi_iic_0,axi_iic,{x_ipProduct=Vivado 2014.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_iic,x_ipVersion=2.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,C_FAMILY=zynq,C_S_AXI_ADDR_WIDTH=9,C_S_AXI_DATA_WIDTH=32,C_IIC_FREQ=100000,C_TEN_BIT_ADR=0,C_GPO_WIDTH=1,C_S_AXI_ACLK_FREQ_HZ=100000000,C_SCL_INERTIAL_DELAY=0,C_SDA_INERTIAL_DELAY=0,C_SDA_LEVEL=1,C_SMBUS_PMBUS_HOST=0}";
end axi_iic_0;

architecture STRUCTURE of axi_iic_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9 downto 0) <= \^s_axi_rdata\(9 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
  scl_o <= \<const0>\;
  sda_o <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
U0: entity work.\axi_iic_0_axi_iic__parameterized0\
    port map (
      gpo(0) => gpo(0),
      iic2intc_irpt => iic2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(10) => \^s_axi_rdata\(31),
      s_axi_rdata(9 downto 0) => \^s_axi_rdata\(9 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(10) => s_axi_wdata(31),
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      scl_i => scl_i,
      scl_t => scl_t,
      sda_i => sda_i,
      sda_t => sda_t
    );
end STRUCTURE;
