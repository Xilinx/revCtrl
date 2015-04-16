# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source -notrace $thisDir/utils.tcl

puts "DEBUG:  This is a bitstream pre hook script!"
