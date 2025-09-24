# Simple script to create an XPR project that you can open in Vivado IDE
# You can then manually source the base.tcl script from within the GUI

set project_name "pynq_base"
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

# Save the project
save_project

puts ""
puts "================================================"
puts "XPR project created successfully!"
puts "Location: $project_dir/$project_name/$project_name.xpr"
puts ""
puts "To complete the setup:"
puts "1. Open the project in Vivado IDE"
puts "2. In the TCL Console, run: source base.tcl"
puts "3. If you get IP errors, check Tools -> Settings -> IP -> Repository"
puts "================================================"