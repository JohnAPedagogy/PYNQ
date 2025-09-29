# Build bitstream for fresh PYNQ-Z2 project
# This script opens the project, runs synthesis, implementation, and generates bitstream

# Open the project
open_project "./pynq_z2_fresh/pynq_z2_fresh.xpr"

# Reset runs to ensure clean build
reset_run synth_1
reset_run impl_1

# Run synthesis
puts "Starting synthesis..."
launch_runs synth_1 -jobs 4
wait_on_run synth_1

# Check synthesis results
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {
    error "Synthesis failed"
}

puts "Synthesis completed successfully"

# Run implementation
puts "Starting implementation..."
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

# Check implementation results
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    error "Implementation failed"
}

puts "Implementation and bitstream generation completed successfully"

# Get project directory for file locations
set project_dir [get_property DIRECTORY [current_project]]
puts "Project directory: $project_dir"
puts "Bitstream location: $project_dir/[current_project].runs/impl_1/design_1_wrapper.bit"
puts "Build completed successfully!"