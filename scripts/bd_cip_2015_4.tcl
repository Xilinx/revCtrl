
################################################################
# This is a generated script based on design: zynq_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source zynq_bd_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART xilinx.com:zc702:part0:1.0 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name zynq_bd

# This script was generated for a remote BD.
set str_bd_folder .
set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

# Check if remote design exists on disk
if { [file exists $str_bd_filepath ] == 1 } {
   puts "ERROR: The remote BD file path <$str_bd_filepath> already exists!\n"

   puts "INFO: Please modify the variable <str_bd_folder> to another path or modify the variable <design_name>."

   return 1
}

# Check if design exists in memory
set list_existing_designs [get_bd_designs -quiet $design_name]
if { $list_existing_designs ne "" } {
   puts "ERROR: The design <$design_name> already exists in this project!"
   puts "ERROR: Will not create the remote BD <$design_name> at the folder <$str_bd_folder>.\n"

   puts "INFO: Please modify the variable <design_name>."

   return 1
}

# Check if design exists on disk within project
set list_existing_designs [get_files */${design_name}.bd]
if { $list_existing_designs ne "" } {
   puts "ERROR: The design <$design_name> already exists in this project at location:"
   puts "   $list_existing_designs"
   puts "ERROR: Will not create the remote BD <$design_name> at the folder <$str_bd_folder>.\n"

   puts "INFO: Please modify the variable <design_name>."

   return 1
}

# Now can create the remote BD
create_bd_design -dir $str_bd_folder $design_name
current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set LEDs_4Bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 LEDs_4Bits ]
  set video_in_stream [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 video_in_stream ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {1} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.LAYERED_METADATA {undef} \
CONFIG.PHASE {0.000} \
CONFIG.TDATA_NUM_BYTES {3} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {1} \
 ] $video_in_stream
  set video_out_stream [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 video_out_stream ]

  # Create ports
  set ap_clk [ create_bd_port -dir I -type clk ap_clk ]
  set ap_rst_n [ create_bd_port -dir I -type rst ap_rst_n ]
  set bftClk [ create_bd_port -dir I bftClk ]
  set error [ create_bd_port -dir O error ]
  set mux_V [ create_bd_port -dir I -from 1 -to 0 -type data mux_V ]
  set reset [ create_bd_port -dir I reset ]
  set wbClk [ create_bd_port -dir I wbClk ]
  set wbDataForInput [ create_bd_port -dir I wbDataForInput ]
  set wbDataForOutput [ create_bd_port -dir O wbDataForOutput ]
  set wbInputData [ create_bd_port -dir I -from 31 -to 0 wbInputData ]
  set wbOutputData [ create_bd_port -dir O -from 31 -to 0 wbOutputData ]
  set wbWriteOut [ create_bd_port -dir I wbWriteOut ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.GPIO_BOARD_INTERFACE {leds_4bits} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {2} \
CONFIG.NUM_SI {1} \
 ] $axi_mem_intercon

  # Create instance: bft_0, and set properties
  set bft_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:bft:1.0 bft_0 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.preset {ZC702} \
 ] $processing_system7_0

  # Create instance: rgb_mux_0, and set properties
  set rgb_mux_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:rgb_mux:2.3 rgb_mux_0 ]

  # Create instance: rst_processing_system7_0_50M, and set properties
  set rst_processing_system7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_50M ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_gpio_0_gpio [get_bd_intf_ports LEDs_4Bits] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m00_axi [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m01_axi [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_m_axi_gp0 [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net rgb_mux_0_video_out_stream [get_bd_intf_ports video_out_stream] [get_bd_intf_pins rgb_mux_0/video_out_stream]
  connect_bd_intf_net -intf_net video_in_stream_1 [get_bd_intf_ports video_in_stream] [get_bd_intf_pins rgb_mux_0/video_in_stream]

  # Create port connections
  connect_bd_net -net ap_clk_1 [get_bd_ports ap_clk] [get_bd_pins rgb_mux_0/ap_clk]
  connect_bd_net -net ap_rst_n_1 [get_bd_ports ap_rst_n] [get_bd_pins rgb_mux_0/ap_rst_n]
  connect_bd_net -net bftClk_1 [get_bd_ports bftClk] [get_bd_pins bft_0/bftClk]
  connect_bd_net -net bft_0_error [get_bd_ports error] [get_bd_pins bft_0/error]
  connect_bd_net -net bft_0_wbDataForOutput [get_bd_ports wbDataForOutput] [get_bd_pins bft_0/wbDataForOutput]
  connect_bd_net -net bft_0_wbOutputData [get_bd_ports wbOutputData] [get_bd_pins bft_0/wbOutputData]
  connect_bd_net -net mux_V_1 [get_bd_ports mux_V] [get_bd_pins rgb_mux_0/mux_V]
  connect_bd_net -net proc_sys_reset_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins rst_processing_system7_0_50M/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/M01_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]
  connect_bd_net -net processing_system7_0_fclk_clk0 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/M01_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_fclk_reset0_n [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins bft_0/reset]
  connect_bd_net -net wbClk_1 [get_bd_ports wbClk] [get_bd_pins bft_0/wbClk]
  connect_bd_net -net wbDataForInput_1 [get_bd_ports wbDataForInput] [get_bd_pins bft_0/wbDataForInput]
  connect_bd_net -net wbInputData_1 [get_bd_ports wbInputData] [get_bd_pins bft_0/wbInputData]
  connect_bd_net -net wbWriteOut_1 [get_bd_ports wbWriteOut] [get_bd_pins bft_0/wbWriteOut]

  # Create address segments
  create_bd_addr_seg -range 0x1000 -offset 0x40000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 290 -defaultsOSRD
preplace port error -pg 1 -y 730 -defaultsOSRD
preplace port wbWriteOut -pg 1 -y 740 -defaultsOSRD
preplace port wbDataForInput -pg 1 -y 720 -defaultsOSRD
preplace port wbDataForOutput -pg 1 -y 690 -defaultsOSRD
preplace port ap_clk -pg 1 -y 540 -defaultsOSRD
preplace port LEDs_4Bits -pg 1 -y 100 -defaultsOSRD
preplace port bftClk -pg 1 -y 680 -defaultsOSRD
preplace port ap_rst_n -pg 1 -y 560 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 310 -defaultsOSRD
preplace port wbClk -pg 1 -y 660 -defaultsOSRD
preplace port reset -pg 1 -y 700 -defaultsOSRD
preplace port video_out_stream -pg 1 -y 550 -defaultsOSRD
preplace port video_in_stream -pg 1 -y 520 -defaultsOSRD
preplace portBus wbInputData -pg 1 -y 760 -defaultsOSRD
preplace portBus mux_V -pg 1 -y 580 -defaultsOSRD
preplace portBus wbOutputData -pg 1 -y 710 -defaultsOSRD
preplace inst rgb_mux_0 -pg 1 -lvl 4 -y 550 -defaultsOSRD
preplace inst bft_0 -pg 1 -lvl 4 -y 710 -defaultsOSRD
preplace inst axi_gpio_0 -pg 1 -lvl 3 -y 100 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 4 -y 220 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 1 -y 150 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 2 -y 130 -defaultsOSRD
preplace inst axi_bram_ctrl_0 -pg 1 -lvl 3 -y 220 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 1 -y 360 -defaultsOSRD
preplace netloc processing_system7_0_ddr 1 1 4 NJ 290 NJ 290 NJ 290 NJ
preplace netloc wbClk_1 1 0 4 NJ 660 NJ 660 NJ 660 NJ
preplace netloc proc_sys_reset_interconnect_aresetn 1 1 1 420
preplace netloc rgb_mux_0_video_out_stream 1 4 1 NJ
preplace netloc axi_gpio_0_gpio 1 3 2 NJ 100 NJ
preplace netloc proc_sys_reset_peripheral_aresetn 1 1 2 430 270 750
preplace netloc bft_0_wbOutputData 1 4 1 NJ
preplace netloc ap_rst_n_1 1 0 4 NJ 560 NJ 560 NJ 560 NJ
preplace netloc axi_bram_ctrl_0_BRAM_PORTA 1 3 1 NJ
preplace netloc mux_V_1 1 0 4 NJ 580 NJ 580 NJ 580 NJ
preplace netloc wbInputData_1 1 0 4 NJ 760 NJ 760 NJ 760 NJ
preplace netloc video_in_stream_1 1 0 4 NJ 520 NJ 520 NJ 520 NJ
preplace netloc processing_system7_0_axi_periph_m01_axi 1 2 1 730
preplace netloc wbDataForInput_1 1 0 4 NJ 720 NJ 720 NJ 720 NJ
preplace netloc bft_0_wbDataForOutput 1 4 1 NJ
preplace netloc ap_clk_1 1 0 4 NJ 540 NJ 540 NJ 540 NJ
preplace netloc processing_system7_0_fclk_reset0_n 1 0 2 20 40 410
preplace netloc bft_0_error 1 4 1 NJ
preplace netloc processing_system7_0_fixed_io 1 1 4 NJ 300 NJ 300 NJ 300 NJ
preplace netloc processing_system7_0_fclk_clk0 1 0 3 30 60 440 280 740
preplace netloc processing_system7_0_axi_periph_m00_axi 1 2 1 730
preplace netloc wbWriteOut_1 1 0 4 NJ 740 NJ 740 NJ 740 NJ
preplace netloc reset_1 1 0 4 NJ 700 NJ 700 NJ 700 NJ
preplace netloc processing_system7_0_m_axi_gp0 1 1 1 450
preplace netloc bftClk_1 1 0 4 NJ 680 NJ 680 NJ 680 NJ
levelinfo -pg 1 0 220 600 890 1200 1400 -top 0 -bot 810
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


