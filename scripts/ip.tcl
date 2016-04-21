# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source -notrace $thisDir/utils.tcl

set ipDir ./ip

create_project -force managed_ip_project $ipDir/managed_ip_project -part xc7z020clg484-1 -ip
# Set project properties
set obj [get_projects]
set_property "board_part" "xilinx.com:zc702:part0:1.0" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj
set_property coreContainer.enable 1 $obj

set_property target_simulator XSim [current_project]
create_ip -name axi_iic -vendor xilinx.com -library ip -module_name axi_iic_0 -dir $ipDir
set_property -dict [list CONFIG.AXI_ACLK_FREQ_MHZ {100}] [get_ips axi_iic_0]
generate_target all [get_files  axi_iic_0.xci]

export_ip_user_files -of_objects [get_files axi_iic_0.xci] -no_script -ip_user_files_dir $ipDir -force -quiet 

create_ip_run [get_files -of_objects [get_fileset sources_1] [get_files */axi_iic_0.xci]]
launch_run  axi_iic_0_synth_1
wait_on_run axi_iic_0_synth_1

export_simulation -of_objects [get_files axi_iic_0.xci] -force -quiet

# If successful, "touch" a file so the make utility will know it's done
touch {.ip.done}
