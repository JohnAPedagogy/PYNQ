# TCL script to generate XSA file
puts "Opening project..."
open_project base/base.xpr

puts "Getting block design files..."
set bd_files [get_files -of_objects [get_filesets sources_1] -filter {FILE_TYPE == "Block Designs"}]
puts "Found block design files: $bd_files"

if {[llength $bd_files] > 0} {
    set bd_file [lindex $bd_files 0]
    puts "Opening block design: $bd_file"
    open_bd_design $bd_file

    puts "Making wrapper..."
    make_wrapper -files [get_files $bd_file] -top

    puts "Adding wrapper file..."
    set wrapper_file [make_wrapper -files [get_files $bd_file] -top -fileset sources_1]

    puts "Setting top module..."
    set_property top base_wrapper [current_fileset]

    puts "Writing hardware platform..."
    write_hw_platform -fixed -include_bit -force -file system.xsa
    puts "XSA file generated successfully"
} else {
    puts "ERROR: No block design files found"
}

close_project
exit