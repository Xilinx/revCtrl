# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# create the directories to package the IP cleanly
# These commands copy the HDL files recursively from the hdl
# source directory to the local cip directory for packaging

if {![file exists ./cip]} {
   file mkdir ./cip
}
if {![file exists ./cip/bft]} {
   file mkdir ./cip/bft
}
if {![file exists ./cip/bft/bftLib]} {
   file mkdir ./cip/bft/bftLib
}
foreach f [glob ../hdl/bft/*.v*] {
   file copy -force $f ./cip/bft/
}
foreach f [glob ../hdl/bft/bftLib/*.vhdl] {
   file copy -force $f ./cip/bft/bftLib/
}

# Create project
# Target ZC702 (xc7z020clg484-1)

# The project will not be saved, so it is named "bft_temp"
create_project bft_temp ./bft_temp/ -part xc7z020clg484-1

add_files -norecurse [glob ./cip/bft/*.v*]
add_files -norecurse [glob ./cip/bft/bftLib/*.vhdl]
set_property library bftLib [get_files */round_*.vhdl]
set_property library bftLib [get_files */bft_package.vhdl]
set_property library bftLib [get_files */core_transform.vhdl]

# Package the project as IP
ipx::package_project -root_dir ./cip

# if everything is successful "touch" a file so make will note it's done
touch {.cip.done}
