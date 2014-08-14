# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# project name: top
# part xc7z020clg484-1
# Create project
create_project top ./top/ -part xc7z020clg484-1

add_files -norecurse ../hdl/top/top.v
add_files -norecurse ../hdl/top/iicWrapper.v
add_files -norecurse ../hdl/top/shift.v
add_files -norecurse ../hdl/threeFlop/threeFlop.v

add_files -norecurse ../ip/axi_iic_0/axi_iic_0.xci

add_files -norecurse ../xdc/top.xdc

update_compile_order -fileset sources_1

# if everything is successful "touch" a file so make will note it's done
touch {.setup.done}
