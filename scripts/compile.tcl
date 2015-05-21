# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source -notrace $thisDir/utils.tcl

# Create project
open_project ./top/top.xpr

#launch_runs impl_1 -to_step write_bitstream
launch_runs impl_1 
wait_on_run impl_1
open_run impl_1

write_bitstream top.bit
write_hwdef -file top.hwdef
write_sysdef -bitfile top.bit -hwdef top.hwdef -file top.sysdef

# if everything is successful "touch" a file so make will not it's done
touch {.compile.done}
