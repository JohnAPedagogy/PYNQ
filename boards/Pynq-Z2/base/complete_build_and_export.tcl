# Complete build and export script for PYNQ-Z2 base design
# This script will complete the implementation and generate a proper XSA

# Open the project
open_project /home/its/tools/yocto/petal/pynq/boards/Pynq-Z2/base/base/base.xpr

# Reset runs to ensure clean build
reset_run synth_1
reset_run impl_1

# Run synthesis
puts "Starting synthesis..."
launch_runs synth_1 -jobs 8
wait_on_run synth_1

# Check synthesis status
set synth_status [get_property STATUS [get_runs synth_1]]
puts "Synthesis status: $synth_status"

if {[string match "*Complete*" $synth_status]} {
    puts "Synthesis completed successfully. Starting implementation..."

    # Run implementation through bitstream generation
    launch_runs impl_1 -to_step write_bitstream -jobs 8
    wait_on_run impl_1

    # Check implementation status
    set impl_status [get_property STATUS [get_runs impl_1]]
    puts "Implementation status: $impl_status"

    if {[string match "*Complete*" $impl_status]} {
        puts "Implementation completed successfully. Exporting hardware..."

        # Open the implemented design
        open_run impl_1

        # Export hardware with bitstream
        write_hw_platform -fixed -include_bit -force -file /home/its/tools/yocto/petal/pynq/boards/Pynq-Z2/base/pynq_z2_complete.xsa

        puts "Hardware export completed successfully!"
        puts "XSA file created: /home/its/tools/yocto/petal/pynq/boards/Pynq-Z2/base/pynq_z2_complete.xsa"

    } else {
        puts "ERROR: Implementation failed with status: $impl_status"
        exit 1
    }
} else {
    puts "ERROR: Synthesis failed with status: $synth_status"
    exit 1
}

close_project
exit