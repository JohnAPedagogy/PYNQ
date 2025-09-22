# TCL script to recreate the block design from base.tcl
# Change to the correct directory
cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"

# Open the project
open_project base/base.xpr

# Set the IP repository path correctly
set_property ip_repo_paths "C:/work/dev/PYNQ/boards/ip" [current_project]

# Update IP catalog
update_ip_catalog -rebuild

# Close any open block designs
close_bd_design -quiet [get_bd_designs -quiet]

# Source the base.tcl file to recreate the design
source base.tcl

# Open the recreated block design
open_bd_design [get_files base/base.srcs/sources_1/bd/base/base.bd]

# Regenerate layout and validate
regenerate_bd_layout
validate_bd_design

# Save the block design
save_bd_design

# Generate wrapper
make_wrapper -files [get_files base/base.srcs/sources_1/bd/base/base.bd] -top -force

# Update compile order
update_compile_order -fileset sources_1

# Save the project
save_project

puts "Block design recreated successfully from base.tcl"