# TCL script to set the block design as top module
# Change to the correct directory
cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"

# Open the project
open_project base/base.xpr

# Set the block design as the top module
set_property top base [current_fileset]

# Generate wrapper for the block design if needed
make_wrapper -files [get_files base/base.srcs/sources_1/bd/base/base.bd] -top

# Add the wrapper to the project
add_files -norecurse base/base.srcs/sources_1/bd/base/hdl/base_wrapper.v

# Set the wrapper as the top module
set_property top base_wrapper [current_fileset]

# Save the project
save_project

puts "Top module set to base_wrapper successfully"