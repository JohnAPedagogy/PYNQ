# TCL script to fix the block design black box issue
# Change to the correct directory
cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"

# Open the project
open_project base/base.xpr

# Update IP catalog first
update_ip_catalog

# Open the block design
open_bd_design base/base.srcs/sources_1/bd/base/base.bd

# Reset and regenerate all IP blocks
reset_target all [get_files base/base.srcs/sources_1/bd/base/base.bd]
generate_target all [get_files base/base.srcs/sources_1/bd/base/base.bd]

# Regenerate the block design
regenerate_bd_layout

# Save the block design
save_bd_design

# Generate new wrapper
make_wrapper -files [get_files base/base.srcs/sources_1/bd/base/base.bd] -top -force

# Update sources
update_compile_order -fileset sources_1

# Save the project
save_project

puts "Block design regenerated successfully"