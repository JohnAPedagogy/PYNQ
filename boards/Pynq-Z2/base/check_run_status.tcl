# TCL script to check run status and generate XSA file
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

# Check synthesis run status
puts "=== Synthesis Run Status ==="
puts "Synth run state: [get_property STATE [get_runs synth_1]]"
puts "Synth run progress: [get_property PROGRESS [get_runs synth_1]]"

# Check implementation run status
puts "=== Implementation Run Status ==="
puts "Impl run state: [get_property STATE [get_runs impl_1]]"
puts "Impl run progress: [get_property PROGRESS [get_runs impl_1]]"

# Check if bitstream exists
set bitstream_file "base/base.runs/impl_1/base_wrapper.bit"
if {[file exists $bitstream_file]} {
    puts "Bitstream file exists: $bitstream_file"
} else {
    puts "Bitstream file NOT found: $bitstream_file"
}

# Check if we can generate XSA
if {[get_property STATE [get_runs impl_1]] == "FINISHED"} {
    puts "Implementation completed - can generate XSA"

    # Generate XSA file
    write_hw_platform -fixed -include_bit -force -file base_wrapper.xsa
    puts "XSA file generated: base_wrapper.xsa"
} else {
    puts "Implementation not complete - need to run implementation first"

    # Launch implementation if synthesis is done
    if {[get_property STATE [get_runs synth_1]] == "FINISHED"} {
        puts "Launching implementation run..."
        launch_runs impl_1 -to_step write_bitstream -jobs 8
        puts "Implementation launched - wait for completion before generating XSA"
    } else {
        puts "Synthesis not complete - need to run synthesis first"
    }
}

save_project