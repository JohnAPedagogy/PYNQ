# Build project and export XSA
puts "Building project from base.tcl..."
cd [file dirname [info script]]

# Source the base design
source base.tcl

# Set top module to wrapper
puts "Setting top module..."
set_property top base_wrapper [current_fileset]

# Generate output products
puts "Generating output products..."
generate_target all [get_files base/base.srcs/sources_1/bd/base/base.bd]

# Create HDL wrapper
puts "Creating HDL wrapper..."
make_wrapper -files [get_files base/base.srcs/sources_1/bd/base/base.bd] -top

# Export hardware platform
puts "Exporting hardware platform..."
write_hw_platform -fixed -force -file system.xsa
puts "XSA file exported successfully to system.xsa"

close_project
exit