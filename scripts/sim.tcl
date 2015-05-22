# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source -notrace $thisDir/utils.tcl

# Create project
open_project ./top/top.xpr

# This script launches Vivado Simulator
launch_simulation
# For third party simulators, you can set it up to generate do file scripts
#set_property target_simulator questa [current_project] 
#launch_simulation -scripts_only
#

# if everything is successful "touch" a file so make will not it's done
touch {.sim.done}
