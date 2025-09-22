# TCL script to force regenerate using existing synthesis checkpoint
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

puts "Using existing synthesis checkpoint to complete implementation..."

# Check synthesis status
set synth_state [get_property STATE [get_runs synth_1]]
puts "Synthesis state: $synth_state"

if {$synth_state == "FINISHED"} {
    puts "SUCCESS: Synthesis already complete"

    # Reset implementation to clear any previous failures
    reset_run impl_1

    puts "Starting implementation with existing synthesis..."
    # Launch implementation using existing synthesis
    launch_runs impl_1 -to_step write_bitstream -jobs 8
    wait_on_run impl_1

    # Check implementation results
    set impl_state [get_property STATE [get_runs impl_1]]
    puts "Implementation state: $impl_state"

    if {$impl_state == "FINISHED"} {
        puts "SUCCESS: Implementation completed"

        # Generate XSA file
        write_hw_platform -fixed -include_bit -force -file base_existing_synth.xsa
        puts "XSA file generated: base_existing_synth.xsa"

        # Check bitstream
        set bitstream_file "base/base.runs/impl_1/base_wrapper.bit"
        if {[file exists $bitstream_file]} {
            puts "SUCCESS: Bitstream generated at $bitstream_file"
            puts "Design build COMPLETE using existing synthesis!"
        }
    } else {
        puts "ERROR: Implementation failed with state: $impl_state"
        puts "Checking implementation report..."

        # Try to get more details about the failure
        puts "Implementation details:"
        puts "  - State: $impl_state"
        puts "  - Progress: [get_property PROGRESS [get_runs impl_1]]"
    }
} else {
    puts "ERROR: Synthesis not complete - state: $synth_state"
    puts "Need to run synthesis first"
}

save_project
