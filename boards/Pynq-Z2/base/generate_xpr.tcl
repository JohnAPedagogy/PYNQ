# Script to generate XPR project file from base.tcl
# This creates a Vivado project that can be opened in the IDE

# Set project name and directory
set project_name "base_project"
set project_dir [file dirname [info script]]

# Remove existing project if it exists
if {[file exists "$project_dir/$project_name"]} {
    file delete -force "$project_dir/$project_name"
}

# Create new project
create_project $project_name $project_dir/$project_name -part xc7z020clg400-1 -force

# Add IP repositories
set_property ip_repo_paths "../../ip" [current_project]
update_ip_catalog

# Try to source the base design, but handle missing IPs gracefully
if {[catch {source [file join $project_dir base.tcl]} result]} {
    puts "Warning: Some IPs may be missing from the catalog."
    puts "Error details: $result"
    puts "The project has been created but the block design may be incomplete."
    puts "You may need to:"
    puts "1. Add missing IP repositories via Tools -> Settings -> IP"
    puts "2. Regenerate the block design"
} else {
    puts "Block design created successfully!"
}

# Save the project
save_project

puts "XPR project created at: $project_dir/$project_name/$project_name.xpr"
puts "You can now open this project in Vivado IDE."