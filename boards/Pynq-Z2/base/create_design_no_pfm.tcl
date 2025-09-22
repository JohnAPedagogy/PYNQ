# TCL script to create design without the problematic PFM_NAME
# Change to the correct directory
cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"

# Set the overlay_name variable
set overlay_name "base"

# Open the project
open_project base/base.xpr

# Set the IP repository path correctly
set_property ip_repo_paths "C:/work/dev/PYNQ/boards/ip" [current_project]

# Update IP catalog
update_ip_catalog -rebuild

# Check if block design is open and close it
set open_designs [get_bd_designs -quiet]
if {$open_designs ne ""} {
    close_bd_design $open_designs
}

# Remove the existing block design file completely
catch {remove_files [get_files -quiet base/base.srcs/sources_1/bd/base/base.bd]}

# Create a temporary modified base.tcl that skips the PFM_NAME line
set temp_tcl "temp_base.tcl"
set input_file [open "base.tcl" r]
set output_file [open $temp_tcl w]

while {[gets $input_file line] >= 0} {
    # Skip the problematic PFM_NAME line
    if {[string match "*PFM_NAME*\${overlay_name}*" $line]} {
        puts $output_file "# SKIPPED: $line"
        puts "Skipping problematic line: $line"
    } else {
        puts $output_file $line
    }
}

close $input_file
close $output_file

# Now source the modified TCL file
puts "Sourcing modified base.tcl..."
source $temp_tcl

# Check if the design now has content
open_bd_design [get_files base/base.srcs/sources_1/bd/base/base.bd]
set bd_cells [get_bd_cells -quiet]
puts "Block design cells found: [llength $bd_cells]"

if {[llength $bd_cells] > 0} {
    puts "SUCCESS: Block design has [llength $bd_cells] cells!"

    # Regenerate all outputs
    reset_target all [get_files base/base.srcs/sources_1/bd/base/base.bd]
    generate_target all [get_files base/base.srcs/sources_1/bd/base/base.bd]

    # Validate the design
    validate_bd_design

    # Save the design
    save_bd_design

    # Generate new wrapper
    make_wrapper -files [get_files base/base.srcs/sources_1/bd/base/base.bd] -top -force

    # Update compile order
    update_compile_order -fileset sources_1

    puts "Block design successfully regenerated with [llength $bd_cells] IP blocks!"
} else {
    puts "ERROR: Block design is still empty"
}

# Clean up temporary file
file delete $temp_tcl

# Save the project
save_project

puts "Design creation complete with [llength $bd_cells] IP blocks"