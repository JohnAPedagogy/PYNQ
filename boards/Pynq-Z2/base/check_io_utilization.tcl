# TCL script to check IO utilization and issues
cd "C:/work/dev/PYNQ/boards/Pynq-Z2/base"
open_project base/base.xpr

# Check current project status
puts "=== Project Status ==="
puts "Project directory: [get_property DIRECTORY [current_project]]"
puts "Top module: [get_property TOP [current_fileset]]"

# Check constraints
puts "\n=== Constraints Files ==="
set constrs_files [get_files -filter {FILE_TYPE == XDC}]
foreach file $constrs_files {
    puts "XDC: $file"
}

# Check IO ports in the design
puts "\n=== IO Ports in Design ==="
set all_ports [get_ports]
puts "Total ports: [llength $all_ports]"

# Count different types of ports
set input_ports 0
set output_ports 0
set inout_ports 0

foreach port $all_ports {
    set direction [get_property DIRECTION $port]
    switch $direction {
        "IN" { incr input_ports }
        "OUT" { incr output_ports }
        "INOUT" { incr inout_ports }
    }
}

puts "Input ports: $input_ports"
puts "Output ports: $output_ports"
puts "Inout ports: $inout_ports"

# Check if ports have location constraints
puts "\n=== Unconstrained Ports ==="
set unconstrained 0
foreach port $all_ports {
    if {[get_property PACKAGE_PIN $port] == ""} {
        puts "Unconstrained: $port ([get_property DIRECTION $port])"
        incr unconstrained
    }
}
puts "Total unconstrained ports: $unconstrained"

# Check for Arduino and RPi interfaces that might not be needed
puts "\n=== Arduino/RPi Interface Check ==="
set arduino_ports [get_ports -quiet arduino*]
set rpi_ports [get_ports -quiet rpi*]
set pmoda_ports [get_ports -quiet pmoda*]
set pmodb_ports [get_ports -quiet pmodb*]

puts "Arduino ports: [llength $arduino_ports]"
puts "RPi ports: [llength $rpi_ports]"
puts "Pmoda ports: [llength $pmoda_ports]"
puts "Pmodb ports: [llength $pmodb_ports]"

save_project