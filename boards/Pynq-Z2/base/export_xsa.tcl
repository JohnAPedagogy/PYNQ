# Export XSA file from fresh PYNQ-Z2 project
# This script opens the project and exports the hardware specification

# Open the project
open_project "./pynq_z2_fresh/pynq_z2_fresh.xpr"

# Export hardware specification (XSA) without bitstream since implementation failed
# This still contains all the hardware definition needed for PetaLinux
write_hw_platform -fixed -force -file "./pynq_z2_fresh_design.xsa"

puts "XSA file exported successfully: pynq_z2_fresh_design.xsa"

# Also copy to a standard name for easier use with PetaLinux
file copy -force "./pynq_z2_fresh_design.xsa" "./base_fresh.xsa"

puts "XSA file also copied as: base_fresh.xsa"
puts "Hardware export completed successfully!"