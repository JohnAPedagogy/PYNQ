# TCL script to monitor implementation progress every 30 seconds
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

puts "=== Implementation Progress Monitor ==="
puts "Starting time: [clock format [clock seconds]]"

# Check if implementation is running
set impl_state [get_property STATE [get_runs impl_1]]
puts "Initial implementation state: $impl_state"

if {$impl_state == "RUNNING"} {
    puts "Implementation is running - monitoring progress..."
    
    # Monitor loop
    while {1} {
        # Get current status
        set current_state [get_property STATE [get_runs impl_1]]
        set current_progress [get_property PROGRESS [get_runs impl_1]]
        set timestamp [clock format [clock seconds] -format "%H:%M:%S"]
        
        # Display progress
        puts "\[$timestamp\] State: $current_state | Progress: $current_progress%"
        
        # Check if finished or failed
        if {$current_state == "FINISHED"} {
            puts "SUCCESS: Implementation completed at $timestamp"
            break
        } elseif {$current_state == "FAILED"} {
            puts "ERROR: Implementation failed at $timestamp"
            break
        }
        
        # Wait 30 seconds before next check
        after 30000
    }
} else {
    puts "Implementation is not running (state: $impl_state)"
    puts "Current progress: [get_property PROGRESS [get_runs impl_1]]%"
}

puts "Monitoring complete at [clock format [clock seconds]]"
save_project
