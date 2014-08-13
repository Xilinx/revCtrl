# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# script will be sourced from work directory
# output created in ip directory
set ipDir ./ip

# The following commands were pasted from the command history in the Tcl Console.
# Absolute paths were replaced by the reference to ipDir

create_project managed_ip_project $ipDir -part xc7z020clg484-1 -ip
set_property board_part xilinx.com:zc702:part0:1.0 [current_project]
set_property target_simulator XSim [current_project]
create_ip -name axi_iic -vendor xilinx.com -library ip -module_name axi_iic_0 -dir $ipDir

# design revision: clock changed from 25 MHz to 100 MHz
set_property -dict [list CONFIG.AXI_ACLK_FREQ_MHZ {100}] [get_ips axi_iic_0]

generate_target {instantiation_template} [get_files $ipDir/axi_iic_0/axi_iic_0.xci]
generate_target all [get_files  $ipDir/axi_iic_0/axi_iic_0.xci]

create_ip_run [get_files -of_objects [get_fileset sources_1] $ipDir/axi_iic_0/axi_iic_0.xci]
launch_run axi_iic_0_synth_1

# This is added to make the synthesis run a blocking step
# It is required to prevent downstream steps from beginning before synthesis is complete
wait_on_run axi_iic_0_synth_1

# This is for the Makefile to indicate the target is complete.
touch {.ip.done}
