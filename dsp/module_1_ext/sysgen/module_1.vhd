-------------------------------------------------------------------
-- System Generator version 2014.2 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

-- Generated from Simulink block "module_1/module_1_struct"

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

entity module_1_struct is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    data_in3: in std_logic;
    data_in2: in std_logic_vector(15 downto 0);
    data_in1: in std_logic_vector(3 downto 0);
    data_in: in std_logic_vector(15 downto 0);
    data_out: out std_logic_vector(24 downto 0);
    data_out1: out std_logic;
    data_out2: out std_logic
  );
end module_1_struct;

architecture structural of module_1_struct is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal addsub_s_net: std_logic_vector(15 downto 0);
  signal fir_compiler_7_1_s_axis_data_tready_net: std_logic;
  signal fir_compiler_7_1_m_axis_data_tvalid_net: std_logic;
  signal fir_compiler_7_1_m_axis_data_tdata_real_net: std_logic_vector(24 downto 0);
  signal mult_p_net: std_logic_vector(31 downto 0);
  signal single_port_ram_data_out_net: std_logic_vector(15 downto 0);
  signal data_in3_net: std_logic;
  signal data_in2_net: std_logic_vector(15 downto 0);
  signal data_in1_net: std_logic_vector(3 downto 0);
  signal data_in_net: std_logic_vector(15 downto 0);
  signal data_out_net: std_logic_vector(24 downto 0);
  signal data_out1_net: std_logic;
  signal data_out2_net: std_logic;

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  data_in3_net <= data_in3;
  data_in2_net <= data_in2;
  data_in1_net <= data_in1;
  data_in_net <= data_in;
  data_out <= data_out_net;
  data_out1 <= data_out1_net;
  data_out2 <= data_out2_net;
  data_out_net <= fir_compiler_7_1_m_axis_data_tdata_real_net;
  data_out1_net <= fir_compiler_7_1_m_axis_data_tvalid_net;
  data_out2_net <= fir_compiler_7_1_s_axis_data_tready_net;

  addsub: entity xil_defaultlib.xladdsub_module_1
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 28,
      a_width => 32,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 46,
      core_name0 => "module_1_c_addsub_v12_0_0",
      extra_registers => 1,
      full_s_arith => 2,
      full_s_width => 46,
      latency => 2,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 16)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      a => mult_p_net,
      b => addsub_s_net,
      s => addsub_s_net
  );

  fir_compiler_7_1: entity xil_defaultlib.xlfir_compiler_76185f20713cf7fb7cee6314f0b87d2f
    port map (
      ce_logic_1 => ce_1_net,
      clk_logic_1 => clk_1_net,
      ce_2 => ce_2_net,
      clk_2 => clk_2_net,
      ce => ce_1_net,
      clk => clk_1_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      s_axis_data_tdata_real => addsub_s_net,
      s_axis_data_tready => fir_compiler_7_1_s_axis_data_tready_net,
      m_axis_data_tvalid => fir_compiler_7_1_m_axis_data_tvalid_net,
      m_axis_data_tdata_real => fir_compiler_7_1_m_axis_data_tdata_real_net
  );

  mult: entity xil_defaultlib.xlmult_module_1
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "module_1_mult_gen_v12_0_0",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 28,
      p_width => 32,
      quantization => 1)
    port map (
      core_ce => ce_1_net,
      core_clk => clk_1_net,
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      core_clr => '1',
      en => "1",
      rst => "0",
      a => single_port_ram_data_out_net,
      b => data_in_net,
      p => mult_p_net
  );

  single_port_ram: entity xil_defaultlib.xlspram_module_1
    generic map (
      c_address_width => 4,
      c_width => 16,
      core_name0 => "module_1_blk_mem_gen_v8_2_0",
      latency => 1)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      addr => data_in1_net,
      data_in => data_in2_net,
      we(0) => data_in3_net,
      data_out => single_port_ram_data_out_net
  );
end structural;


-- Generated from Simulink block "module_1/default_clock_driver_module_1"

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

entity default_clock_driver_module_1 is
  port (
    sysclk: in std_logic;
    sysce: in std_logic;
    sysce_clr: in std_logic;
    ce_1: out std_logic;
    clk_1: out std_logic;
    ce_2: out std_logic;
    clk_2: out std_logic
  );
end default_clock_driver_module_1;

architecture structural of default_clock_driver_module_1 is
  signal xlclockdriver_1_clk : std_logic;
  signal xlclockdriver_1_ce : std_logic;
  signal xlclockdriver_2_clk : std_logic;
  signal xlclockdriver_2_ce : std_logic;

begin
  clk_1 <= xlclockdriver_1_clk;
  ce_1 <= xlclockdriver_1_ce;
  clk_2 <= xlclockdriver_2_clk;
  ce_2 <= xlclockdriver_2_ce;

  xlclockdriver_1 : entity xil_defaultlib.xlclockdriver
    generic map (
      log_2_period => 1,
      period => 1,
      use_bufg => 0
    )
    port map (
      sysce => sysce,
      sysclk => sysclk,
      sysclr => sysce_clr,
      ce => xlclockdriver_1_ce,
      clk => xlclockdriver_1_clk
    );
  xlclockdriver_2 : entity xil_defaultlib.xlclockdriver
    generic map (
      log_2_period => 2,
      period => 2,
      use_bufg => 0
    )
    port map (
      sysce => sysce,
      sysclk => sysclk,
      sysclr => sysce_clr,
      ce => xlclockdriver_2_ce,
      clk => xlclockdriver_2_clk
    );
end structural;


-- Generated from Simulink block "module_1"

library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;

entity module_1 is
  port (
    clk: in std_logic;
    data_in3: in std_logic;
    data_in2: in std_logic_vector(15 downto 0);
    data_in1: in std_logic_vector(3 downto 0);
    data_in: in std_logic_vector(15 downto 0);
    data_out: out std_logic_vector(24 downto 0);
    data_out1: out std_logic;
    data_out2: out std_logic
  );
end module_1;

architecture structural of module_1 is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "module_1,sysgen_core_2014_2,{compilation=Synthesized Checkpoint,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_tool=Vivado,synthesis_language=vhdl,hdl_library=xil_defaultlib,proj_type=Vivado,synth_file=Vivado Synthesis Defaults,impl_file=Vivado Implementation Defaults,clock_loc=,clock_wrapper=Clock Enables,directory=C:/Data/tmp/dsp_src/module_1_ext,testbench=0,create_interface_document=0,ce_clr=0,base_system_period_hardware=10,dcm_input_clock_period=5,base_system_period_simulink=1,sim_time=10,sim_status=0,}";

  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal clk_net: std_logic;
  signal data_in3_net: std_logic;
  signal data_in2_net: std_logic_vector(15 downto 0);
  signal data_in1_net: std_logic_vector(3 downto 0);
  signal data_in_net: std_logic_vector(15 downto 0);
  signal data_out_net: std_logic_vector(24 downto 0);
  signal data_out1_net: std_logic;
  signal data_out2_net: std_logic;

begin
  clk_net <= clk;
  data_in3_net <= data_in3;
  data_in2_net <= data_in2;
  data_in1_net <= data_in1;
  data_in_net <= data_in;
  data_out <= data_out_net;
  data_out1 <= data_out1_net;
  data_out2 <= data_out2_net;

  module_1_struct: entity xil_defaultlib.module_1_struct
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      data_in3 => data_in3_net,
      data_in2 => data_in2_net,
      data_in1 => data_in1_net,
      data_in => data_in_net,
      data_out => data_out_net,
      data_out1 => data_out1_net,
      data_out2 => data_out2_net
    );

  default_clock_driver_module_1: entity xil_defaultlib.default_clock_driver_module_1
    port map (
      sysclk => clk_net,
      sysce => '1',
      sysce_clr => '0',
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net
    );
end structural;
