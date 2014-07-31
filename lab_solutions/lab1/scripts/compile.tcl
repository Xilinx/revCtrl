# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Open project
open_project ./top/top.xpr

launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

# if everything is successful "touch" a file so make will note it's done
touch {.compile.done}
