# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Create project
create_project zynq ./zynq -part xc7z020clg484-1

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Source the bd.tcl file to create the bd
source $thisDir/bd.tcl
validate_bd_design
save_bd_design

# Generate Target
generate_target all [get_files */zynq_bd.bd]

# if everything is successful "touch" a file so make will not it's done
touch {.bd_gen.done}
