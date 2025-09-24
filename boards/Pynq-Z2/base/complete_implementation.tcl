# TCL script to complete implementation and generate XSA
cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"

# Safe project opening - check if already open
if {[catch {current_project}]} {
    puts "Opening project base/base.xpr..."
    open_project base/base.xpr
} else {
    set current_proj [current_project]
    if {[string match "*base*" $current_proj]} {
        puts "Project already open: $current_proj"
    } else {
        puts "Different project open: $current_proj - opening base/base.xpr..."
        open_project base/base.xpr
    }
}

# Reset and restart implementation run
reset_run impl_1
puts "Implementation run reset"

# Launch complete implementation flow
launch_runs impl_1 -to_step write_bitstream -jobs 8
puts "Implementation launched - waiting for completion..."

# Wait for implementation to complete
wait_on_run impl_1

# Check if implementation completed successfully
set impl_state [get_property STATE [get_runs impl_1]]
puts "Implementation final state: $impl_state"

if {$impl_state == "FINISHED"} {
    puts "SUCCESS: Implementation completed successfully"

    # Generate XSA file with bitstream
    write_hw_platform -fixed -include_bit -force -file base_wrapper.xsa
    puts "XSA file generated: base_wrapper.xsa"

    # Check bitstream file
    set bitstream_file "base/base.runs/impl_1/base_wrapper.bit"
    if {[file exists $bitstream_file]} {
        puts "Bitstream file exists: $bitstream_file"
    }
} else {
    puts "ERROR: Implementation failed with state: $impl_state"
    puts "Check implementation log for errors"
}

save_project