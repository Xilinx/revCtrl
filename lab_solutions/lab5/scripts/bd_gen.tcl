# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Create a project to hold the bd
create_project bd_temp ./bd_output -part xc7z020clg484-1 -force

# Recreate the block design
source $thisDir/bd.tcl

# Generate Target
generate_target all [get_files */zynq_bd.bd]

# if everything is successful "touch" a file so make will note it's done
touch {.bd_gen.done}
