# Script to check which IPs are available in the catalog
create_project temp_check temp_check -part xc7z020clg400-1 -force
set_property ip_repo_paths "../../ip" [current_project]
update_ip_catalog

puts "=== Checking for HLS IPs ==="
set missing_ips {
    "xilinx.com:hls:trace_cntrl_64:1.4"
    "xilinx.com:hls:trace_cntrl_32:1.4" 
    "xilinx.com:hls:color_convert:1.0"
    "xilinx.com:hls:pixel_pack:1.0"
    "xilinx.com:hls:pixel_unpack:1.0"
}

foreach ip_vlnv $missing_ips {
    set ip_obj [get_ipdefs -all $ip_vlnv]
    if { $ip_obj eq "" } {
        puts "MISSING: $ip_vlnv"
    } else {
        puts "FOUND: $ip_vlnv"
    }
}

puts "=== All Available HLS IPs ==="
set all_hls_ips [get_ipdefs -filter {VLNV =~ "*hls*"}]
foreach ip $all_hls_ips {
    puts "Available: [get_property VLNV $ip]"
}

close_project
file delete -force temp_check