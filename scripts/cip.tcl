# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Create project
create_project bft ./bft/ -part xc7z020clg484-1

import_files -norecurse [glob ../hdl/bft/*.v*]
import_files -norecurse [glob ../hdl/bft/bftLib/*.vhdl]
#add_files -norecurse [glob ../hdl/bft/*.v*]
#add_files -norecurse [glob ../hdl/bft/bftLib/*.vhdl]
set_property library bftLib [get_files */round_*.vhdl]
set_property library bftLib [get_files */bft_package.vhdl]
set_property library bftLib [get_files */core_transform.vhdl]

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

# TODO - file a CR - package_project should create dir - jou can't reproduce
if {![file exists ./cip]} {
   file mkdir ./cip
}

ipx::package_project -root_dir ./cip

# if everything is successful "touch" a file so make will not it's done
touch {.cip.done}
