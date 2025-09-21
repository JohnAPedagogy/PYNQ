# TCL script to update IP repository in base.xpr with newly built IPs
# Change to the correct directory
cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"

# Open the project
open_project base/base.xpr

# Get current IP repository paths
set current_repos [get_property ip_repo_paths [current_project]]
puts "Current IP repositories: $current_repos"

# Set the IP repository path to the boards/ip directory
set_property ip_repo_paths "../../../ip" [current_project]

# Update IP catalog to recognize newly built IPs
update_ip_catalog

# Refresh the IP repository
update_ip_catalog -rebuild

# Save the project
save_project

# Report IP repository status
report_ip_status

puts "IP repository updated successfully with newly built IPs"