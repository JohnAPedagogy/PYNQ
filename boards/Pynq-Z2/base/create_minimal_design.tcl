# TCL script to create a minimal working design for PYNQ-Z2
# This reduces IO requirements to fit within the FPGA constraints

cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"
open_project base/base.xpr

# Set IP repository path
set_property ip_repo_paths "C:/work/dev/PYNQ/boards/ip" [current_project]
update_ip_catalog -rebuild

puts "Creating minimal base design for PYNQ-Z2..."

# Open the block design
open_bd_design base/base.srcs/sources_1/bd/base/base.bd

# Remove problematic interfaces to reduce IO count
# Keep only essential components: PS7, basic GPIO, and minimal interfaces

puts "Removing high IO count interfaces..."

# Remove Arduino interfaces that use many pins
set arduino_cells [get_bd_cells -quiet -filter {NAME =~ "*arduino*"}]
if {[llength $arduino_cells] > 0} {
    puts "Removing Arduino interfaces: $arduino_cells"
    foreach cell $arduino_cells {
        remove_bd_cell $cell
    }
}

# Remove RPI interfaces that conflict with pin assignments
set rpi_cells [get_bd_cells -quiet -filter {NAME =~ "*rpi*"}]
if {[llength $rpi_cells] > 0} {
    puts "Removing RPI interfaces: $rpi_cells"
    foreach cell $rpi_cells {
        remove_bd_cell $cell
    }
}

# Remove PMODB to reduce pin conflicts
set pmodb_cells [get_bd_cells -quiet -filter {NAME =~ "*pmodb*"}]
if {[llength $pmodb_cells] > 0} {
    puts "Removing PMODB interfaces: $pmodb_cells"
    foreach cell $pmodb_cells {
        remove_bd_cell $cell
    }
}

# Remove video/HDMI interfaces that use many high-speed pins
set video_cells [get_bd_cells -quiet -filter {NAME =~ "*video*"}]
if {[llength $video_cells] > 0} {
    puts "Removing video interfaces: $video_cells"
    foreach cell $video_cells {
        remove_bd_cell $cell
    }
}

set hdmi_cells [get_bd_cells -quiet -filter {NAME =~ "*hdmi*"}]
if {[llength $hdmi_cells] > 0} {
    puts "Removing HDMI interfaces: $hdmi_cells"
    foreach cell $hdmi_cells {
        remove_bd_cell $cell
    }
}

set dvi_cells [get_bd_cells -quiet -filter {NAME =~ "*dvi*"}]
if {[llength $dvi_cells] > 0} {
    puts "Removing DVI interfaces: $dvi_cells"
    foreach cell $dvi_cells {
        remove_bd_cell $cell
    }
}

# Remove audio interfaces
set audio_cells [get_bd_cells -quiet -filter {NAME =~ "*audio*"}]
if {[llength $audio_cells] > 0} {
    puts "Removing audio interfaces: $audio_cells"
    foreach cell $audio_cells {
        remove_bd_cell $cell
    }
}

# Keep only basic interfaces: LEDs, buttons, minimal PMODA
puts "Keeping minimal interfaces: PS7, LEDs, buttons, basic PMODA"

# Regenerate layout
regenerate_bd_layout

# Validate design
validate_bd_design

# Save the block design
save_bd_design

# Generate wrapper
make_wrapper -files [get_files base/base.srcs/sources_1/bd/base/base.bd] -top
add_files -norecurse base/base.gen/sources_1/bd/base/hdl/base_wrapper.v
set_property top base_wrapper [current_fileset]

# Update compile order
update_compile_order -fileset sources_1

puts "Minimal design created successfully"
puts "Starting synthesis..."

# Launch synthesis
launch_runs synth_1 -jobs 8
wait_on_run synth_1

# Check synthesis results
set synth_state [get_property STATE [get_runs synth_1]]
puts "Synthesis state: $synth_state"

if {$synth_state == "FINISHED"} {
    puts "SUCCESS: Synthesis completed"

    puts "Starting implementation..."
    # Launch implementation
    launch_runs impl_1 -to_step write_bitstream -jobs 8
    wait_on_run impl_1

    # Check implementation results
    set impl_state [get_property STATE [get_runs impl_1]]
    puts "Implementation state: $impl_state"

    if {$impl_state == "FINISHED"} {
        puts "SUCCESS: Implementation completed"

        # Generate XSA file
        write_hw_platform -fixed -include_bit -force -file base_minimal.xsa
        puts "XSA file generated: base_minimal.xsa"

        # Check bitstream
        set bitstream_file "base/base.runs/impl_1/base_wrapper.bit"
        if {[file exists $bitstream_file]} {
            puts "SUCCESS: Bitstream generated at $bitstream_file"
        }
    } else {
        puts "ERROR: Implementation failed with state: $impl_state"
    }
} else {
    puts "ERROR: Synthesis failed with state: $synth_state"
}

save_project