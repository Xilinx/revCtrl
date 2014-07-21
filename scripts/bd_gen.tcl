# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source $thisDir/utils.tcl

# Create project
create_project zynq ./zynq -part xc7z020clg484-1

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects zynq]
set_property "board_part" "xilinx.com:zc702:part0:1.0" $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "Verilog" $obj

puts "INFO: Project created:zynq"

# Source the bd.tcl file to create the bd
source $thisDir/bd.tcl
validate_bd_design
save_bd_design

# Close the IPI design without any layout information
#close_bd_design zynq_bd

# Apply UI file
#  set folder [pwd]
#  set ui_file "bd_cf78a2d4.ui"
#  set ui_file_path [glob $folder/$ui_file]
#  set project_name [current_project]
#  set project_dir  [get_property DIRECTORY [current_project]]

#  if { [file exists "$ui_file_path"] == 1 } { 
#     set str_ui_folder $proj_dir/../zynq_bd/ui
#     puts "Copying <$ui_file_path> to <$str_ui_folder/$ui_file>..."
#     file copy -force $ui_file_path "$str_ui_folder/$ui_file"
#  } else {
#     puts "ERROR: Unable to find the .ui file <$ui_file>!"
#  }

# Re-open IPI design with layout and comments
#set bd_file  $proj_dir/../zynq_bd/zynq_bd.bd
#open_bd_design $bd_file

# Re-generate layout
#regenerate_bd_layout

# Validate bd
#validate_bd_design

#save_bd_design

# Generate Target
generate_target all [get_files */zynq_bd.bd]

# if everything is successful "touch" a file so make will not it's done
touch {.bd_gen.done}
