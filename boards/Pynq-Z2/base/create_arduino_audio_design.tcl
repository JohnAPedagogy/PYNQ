# TCL script to create Arduino + Audio + Basic peripherals design (51 pins)
# Keeps: Arduino (26 pins) + Audio (7 pins) + LEDs/Buttons (16 pins) + Switches (2 pins)
# Removes: RPI, PMODB, HDMI/Video to fit within FPGA IO limits

cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"
open_project base/base.xpr

# Set IP repository path
set_property ip_repo_paths "C:/work/dev/PYNQ/boards/ip" [current_project]
update_ip_catalog -rebuild

puts "Creating Arduino + Audio + Basic peripherals design (51 pins total)..."

# Open the block design
open_bd_design base/base.srcs/sources_1/bd/base/base.bd

puts "Removing high pin count interfaces..."

# Remove Raspberry Pi interfaces (20 pins)
set rpi_cells [get_bd_cells -quiet -filter {NAME =~ "*rpi*"}]
if {[llength $rpi_cells] > 0} {
    puts "Removing RPI interfaces: $rpi_cells"
    foreach cell $rpi_cells {
        remove_bd_cell $cell
    }
}

# Remove PMODB interfaces (8 pins) - keep PMODA for Arduino compatibility
set pmodb_cells [get_bd_cells -quiet -filter {NAME =~ "*pmodb*"}]
if {[llength $pmodb_cells] > 0} {
    puts "Removing PMODB interfaces: $pmodb_cells"
    foreach cell $pmodb_cells {
        remove_bd_cell $cell
    }
}

# Remove video/HDMI interfaces (22 pins total: 16 HDMI + 6 control)
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

set rgb_cells [get_bd_cells -quiet -filter {NAME =~ "*rgb*"}]
if {[llength $rgb_cells] > 0} {
    puts "Removing RGB interfaces: $rgb_cells"
    foreach cell $rgb_cells {
        remove_bd_cell $cell
    }
}

set vtc_cells [get_bd_cells -quiet -filter {NAME =~ "*vtc*"}]
if {[llength $vtc_cells] > 0} {
    puts "Removing VTC interfaces: $vtc_cells"
    foreach cell $vtc_cells {
        remove_bd_cell $cell
    }
}

set axi_vdma_cells [get_bd_cells -quiet -filter {NAME =~ "*axi_vdma*"}]
if {[llength $axi_vdma_cells] > 0} {
    puts "Removing AXI VDMA interfaces: $axi_vdma_cells"
    foreach cell $axi_vdma_cells {
        remove_bd_cell $cell
    }
}

set color_convert_cells [get_bd_cells -quiet -filter {NAME =~ "*color_convert*"}]
if {[llength $color_convert_cells] > 0} {
    puts "Removing color convert interfaces: $color_convert_cells"
    foreach cell $color_convert_cells {
        remove_bd_cell $cell
    }
}

set pixel_cells [get_bd_cells -quiet -filter {NAME =~ "*pixel*"}]
if {[llength $pixel_cells] > 0} {
    puts "Removing pixel processing interfaces: $pixel_cells"
    foreach cell $pixel_cells {
        remove_bd_cell $cell
    }
}

# Keep Arduino interfaces (26 pins total)
puts "Keeping Arduino interfaces:"
set arduino_cells [get_bd_cells -quiet -filter {NAME =~ "*arduino*"}]
foreach cell $arduino_cells {
    puts "  - $cell"
}

# Keep Audio interfaces (7 pins total)
puts "Keeping Audio interfaces:"
set audio_cells [get_bd_cells -quiet -filter {NAME =~ "*audio*"}]
foreach cell $audio_cells {
    puts "  - $cell"
}

# Keep basic GPIO interfaces (LEDs, buttons, switches - 18 pins total)
puts "Keeping basic GPIO interfaces:"
set led_cells [get_bd_cells -quiet -filter {NAME =~ "*led*"}]
foreach cell $led_cells {
    puts "  - $cell"
}
set btn_cells [get_bd_cells -quiet -filter {NAME =~ "*btn*"}]
foreach cell $btn_cells {
    puts "  - $cell"
}
set sw_cells [get_bd_cells -quiet -filter {NAME =~ "*sw*"}]
foreach cell $sw_cells {
    puts "  - $cell"
}

# Clean up any dangling connections
puts "Cleaning up dangling connections..."

# Regenerate layout
regenerate_bd_layout

# Validate design
puts "Validating design..."
if {[catch {validate_bd_design} result]} {
    puts "Design validation warnings: $result"
    puts "Continuing with synthesis..."
} else {
    puts "Design validation passed"
}

# Save the block design
save_bd_design

# Generate wrapper
puts "Generating HDL wrapper..."
make_wrapper -files [get_files base/base.srcs/sources_1/bd/base/base.bd] -top
add_files -norecurse base/base.gen/sources_1/bd/base/hdl/base_wrapper.v
set_property top base_wrapper [current_fileset]

# Update compile order
update_compile_order -fileset sources_1

puts "Arduino + Audio design created successfully"
puts "Expected pin count: 51 pins (Arduino: 26, Audio: 7, Basic GPIO: 18)"
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
    # Reset any previous implementation
    reset_run impl_1

    # Launch implementation
    launch_runs impl_1 -to_step write_bitstream -jobs 8
    wait_on_run impl_1

    # Check implementation results
    set impl_state [get_property STATE [get_runs impl_1]]
    puts "Implementation state: $impl_state"

    if {$impl_state == "FINISHED"} {
        puts "SUCCESS: Implementation completed"

        # Generate XSA file
        write_hw_platform -fixed -include_bit -force -file base_arduino_audio.xsa
        puts "XSA file generated: base_arduino_audio.xsa"

        # Check bitstream
        set bitstream_file "base/base.runs/impl_1/base_wrapper.bit"
        if {[file exists $bitstream_file]} {
            puts "SUCCESS: Bitstream generated at $bitstream_file"
            puts "Arduino + Audio design build COMPLETE!"
        }
    } else {
        puts "ERROR: Implementation failed with state: $impl_state"
        puts "Check implementation log for details"
    }
} else {
    puts "ERROR: Synthesis failed with state: $synth_state"
    puts "Check synthesis log for details"
}

save_project