library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;

entity module_1_stub is
  port(
    data_in3 : in std_logic;
    data_in2 : in std_logic_vector(15 downto 0);
    data_in1 : in std_logic_vector(3 downto 0);
    data_in : in std_logic_vector(15 downto 0);
    data_out : out std_logic_vector(24 downto 0);
    data_out1 : out std_logic;
    data_out2 : out std_logic;
    clk:in std_logic
    );
end module_1_stub;
architecture STRUCTURAL of module_1_stub is
  signal data_in3_net : std_logic;
  signal data_in2_net : std_logic_vector(15 downto 0);
  signal data_in1_net : std_logic_vector(3 downto 0);
  signal data_in_net : std_logic_vector(15 downto 0);
  signal data_out_net : std_logic_vector(24 downto 0);
  signal data_out1_net : std_logic;
  signal data_out2_net : std_logic;
  signal clk_net : std_logic;
  component module_1 is
    port(
      data_in3 : in std_logic;
      data_in2 : in std_logic_vector(15 downto 0);
      data_in1 : in std_logic_vector(3 downto 0);
      data_in : in std_logic_vector(15 downto 0);
      data_out : out std_logic_vector(24 downto 0);
      data_out1 : out std_logic;
      data_out2 : out std_logic;
      clk:in std_logic
      );
  end component;
begin
  data_in3_net <= data_in3;
  data_in2_net <= data_in2;
  data_in1_net <= data_in1;
  data_in_net <= data_in;
  data_out <= data_out_net;
  data_out1 <= data_out1_net;
  data_out2 <= data_out2_net;
  clk_net <= clk;
  sysgen_dut: module_1
  port map (
    data_in3 => data_in3_net,
    data_in2 => data_in2_net,
    data_in1 => data_in1_net,
    data_in => data_in_net,
    data_out => data_out_net,
    data_out1 => data_out1_net,
    data_out2 => data_out2_net,
    clk => clk_net    );
end STRUCTURAL;
