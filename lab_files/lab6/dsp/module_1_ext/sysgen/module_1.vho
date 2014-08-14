-- Component Declaration for the design
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
-- Instantiation Template for the design 
module_1_inst : module_1
  port map (
    data_in3=>data_in3_net,
    data_in2=>data_in2_net,
    data_in1=>data_in1_net,
    data_in=>data_in_net,
    data_out=>data_out_net,
    data_out1=>data_out1_net,
    data_out2=>data_out2_net,
    clk=>clk_net  );
