# TCL script to properly generate XSA with implementation
# This ensures all necessary steps are completed before export

# Open the project
open_project /home/its/tools/yocto/petal/pynq/boards/Pynq-Z2/base/base/base.xpr

# Check current run status
set synth_run [get_runs synth_1]
set impl_run [get_runs impl_1]

puts "Synthesis run status: [get_property STATUS $synth_run]"
puts "Implementation run status: [get_property STATUS $impl_run]"

# Ensure synthesis is complete
if {[get_property STATUS $synth_run] != "synth_design Complete!"} {
    puts "Running synthesis..."
    reset_run synth_1
    launch_runs synth_1 -jobs 8
    wait_on_run synth_1
}

# Ensure implementation is complete
if {[get_property STATUS $impl_run] != "write_bitstream Complete!"} {
    puts "Running implementation..."
    reset_run impl_1
    launch_runs impl_1 -to_step write_bitstream -jobs 8
    wait_on_run impl_1
}

# Check if implementation completed successfully
set impl_status [get_property STATUS $impl_run]
puts "Final implementation status: $impl_status"

if {[string match "*Complete*" $impl_status]} {
    puts "Implementation completed successfully. Exporting hardware..."

    # Export hardware with bitstream
    write_hw_platform -fixed -include_bit -force -file /home/its/tools/yocto/petal/pynq/boards/Pynq-Z2/base/system.xsa

    puts "XSA export completed!"
} else {
    puts "ERROR: Implementation did not complete successfully: $impl_status"
    exit 1
}

close_project
exit