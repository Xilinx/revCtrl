-- (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: User_Company:SysGen:module_1:2014.3
-- IP Revision: 54036541

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.module_1;

ENTITY module_1_0 IS
  PORT (
    clk : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    data_in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    data_in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    data_in3 : IN STD_LOGIC;
    data_out : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
    data_out1 : OUT STD_LOGIC;
    data_out2 : OUT STD_LOGIC
  );
END module_1_0;

ARCHITECTURE module_1_0_arch OF module_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF module_1_0_arch: ARCHITECTURE IS "yes";

  COMPONENT module_1 IS
    PORT (
      clk : IN STD_LOGIC;
      data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data_in1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      data_in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data_in3 : IN STD_LOGIC;
      data_out : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
      data_out1 : OUT STD_LOGIC;
      data_out2 : OUT STD_LOGIC
    );
  END COMPONENT module_1;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF module_1_0_arch: ARCHITECTURE IS "module_1,Vivado 2014.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF module_1_0_arch : ARCHITECTURE IS "module_1_0,module_1,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF data_in: SIGNAL IS "xilinx.com:signal:data:1.0 data_in_signal_data DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_in1: SIGNAL IS "xilinx.com:signal:data:1.0 data_in1_signal_data DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_in2: SIGNAL IS "xilinx.com:signal:data:1.0 data_in2_signal_data DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_in3: SIGNAL IS "xilinx.com:signal:data:1.0 data_in3 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_out: SIGNAL IS "xilinx.com:signal:data:1.0 data_out_signal_data DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_out1: SIGNAL IS "xilinx.com:signal:data:1.0 data_out1 DATA";
  ATTRIBUTE X_INTERFACE_INFO OF data_out2: SIGNAL IS "xilinx.com:signal:data:1.0 data_out2 DATA";
BEGIN
  U0 : module_1
    PORT MAP (
      clk => clk,
      data_in => data_in,
      data_in1 => data_in1,
      data_in2 => data_in2,
      data_in3 => data_in3,
      data_out => data_out,
      data_out1 => data_out1,
      data_out2 => data_out2
    );
END module_1_0_arch;
