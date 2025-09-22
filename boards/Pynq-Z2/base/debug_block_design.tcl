# TCL script to debug and fix the block design IP issues
# Change to the correct directory
cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"

# Open the project
open_project base/base.xpr

# Set the IP repository path correctly first
set_property ip_repo_paths "C:/work/dev/PYNQ/boards/ip" [current_project]

# Update IP catalog
update_ip_catalog -rebuild

# Open the block design
open_bd_design base/base.srcs/sources_1/bd/base/base.bd

# Check IP status
puts "=== IP Status Report ==="
report_ip_status

# Get all IP cores in the design
set all_ips [get_ips]
puts "=== All IPs in design ==="
foreach ip $all_ips {
    puts "IP: $ip"
    puts "  Status: [get_property -quiet CORE_REVISION $ip]"
    puts "  Type: [get_property -quiet IPDEF $ip]"
    puts "  Lock Status: [get_property -quiet IS_LOCKED $ip]"
}

# Try to upgrade any out-of-date IPs
puts "=== Upgrading IPs ==="
upgrade_ip [get_ips]

# Regenerate all IP cores
puts "=== Regenerating all IPs ==="
generate_target all [get_ips]

# Reset and regenerate the block design
reset_target all [get_files base/base.srcs/sources_1/bd/base/base.bd]
generate_target all [get_files base/base.srcs/sources_1/bd/base/base.bd]

# Save everything
save_bd_design
save_project

puts "=== Debug complete ==="