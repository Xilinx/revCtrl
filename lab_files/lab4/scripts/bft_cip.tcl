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
if {![file exists ./cip/bft/hdl]} {
   file mkdir ./cip/bft/hdl
}
if {![file exists ./cip/bft/hdl/bftLib]} {
   file mkdir ./cip/bft/hdl/bftLib
}
foreach f [glob ../hdl/bft/*.v*] {
   file copy -force $f ./cip/bft/hdl
}
foreach f [glob ../hdl/bft/bftLib/*.vhdl] {
   file copy -force $f ./cip/bft/hdl/bftLib/
}

# Create project
# Target ZC702 (xc7z020clg484-1)

# Fill in project creation here
# add command to package IP

# if everything is successful "touch" a file so make will note it's done
touch {.bft_cip.done}
