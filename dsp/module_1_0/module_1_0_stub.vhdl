-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.3 (win64) Build 1033155 Thu Oct  2 17:33:07 MDT 2014
-- Date        : Thu Feb 05 15:17:25 2015
-- Host        : XCODAUGHTRY30 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub c:/junk/revCtrl/work_2014_3_regen/ip/module_1_0/module_1_0_stub.vhdl
-- Design      : module_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity module_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in3 : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 24 downto 0 );
    data_out1 : out STD_LOGIC;
    data_out2 : out STD_LOGIC
  );

end module_1_0;

architecture stub of module_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,data_in[15:0],data_in1[3:0],data_in2[15:0],data_in3,data_out[24:0],data_out1,data_out2";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "module_1,Vivado 2014.3";
begin
end;
