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

add_files -norecurse ../hdl/threeFlop/threeFlop.v
add_files -norecurse ../xdc/top.xdc
update_compile_order -fileset sources_1

# if everything is successful "touch" a file so make will not it's done
touch {.setup.done}
