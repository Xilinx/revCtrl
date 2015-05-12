# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source -notrace $thisDir/utils.tcl

# Create project
open_project ./top/top.xpr

launch_simulation
# export_simulation

# if everything is successful "touch" a file so make will not it's done
touch {.sim.done}
