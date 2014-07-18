# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Create project
create_project top ./top/ -part xc7z020clg484-1

# Set project properties
set obj [get_projects top]
set_property "board_part" "xilinx.com:zc702:part0:1.0" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj

add_files -norecurse $thisDir/../hdl/top/threeFlop.v
add_files -norecurse $thisDir/../xdc//top.xdc
#add_files -norecurse $thisDir/../ip/axi_chip2chip_0/axi_chip2chip_0.xci
#update_compile_order -fileset sources_1
#set_property SOURCE_SET sources_1 [get_filesets sim_1]
#add_files -fileset sim_1 -norecurse $thisDir/../tb/hdl_zynq/tb.v
#update_compile_order -fileset sim_1

# if everything is successful "touch" a file so make will not it's done
touch {.setup.done}
