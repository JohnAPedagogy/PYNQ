# Create fresh PYNQ-Z2 project compatible with Vivado 2024.2
# This script creates a basic design for the PYNQ-Z2 board

# Set project name and directory
set project_name "pynq_z2_fresh"
set project_dir [file normalize "./${project_name}"]

# Create project
create_project $project_name $project_dir -part xc7z020clg400-1 -force

# Note: Using part only since PYNQ-Z2 board part may not be available

# Create block design
create_bd_design "design_1"

# Add Zynq Processing System
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0

# Run block automation (without board preset)
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "0" Master "Disable" Slave "Disable"} [get_bd_cells processing_system7_0]

# Configure PS for PYNQ-Z2
set_property -dict [list CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
                         CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
                         CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
                         CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
                         CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
                         CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
                         CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1}] [get_bd_cells processing_system7_0]

# Add GPIO for LEDs and switches
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
set_property -dict [list CONFIG.C_GPIO_WIDTH {4} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_0]

# Add another GPIO for switches
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1
set_property -dict [list CONFIG.C_GPIO_WIDTH {2} CONFIG.C_ALL_INPUTS {1}] [get_bd_cells axi_gpio_1]

# Add another GPIO for buttons
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_2
set_property -dict [list CONFIG.C_GPIO_WIDTH {4} CONFIG.C_ALL_INPUTS {1}] [get_bd_cells axi_gpio_2]

# Run connection automation
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_gpio_0/S_AXI} ddr_seg {Auto} intc_ip {New AXI Interconnect} master_apm {0}} [get_bd_intf_pins axi_gpio_0/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_gpio_1/S_AXI} ddr_seg {Auto} intc_ip {New AXI Interconnect} master_apm {0}} [get_bd_intf_pins axi_gpio_1/S_AXI]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_gpio_2/S_AXI} ddr_seg {Auto} intc_ip {New AXI Interconnect} master_apm {0}} [get_bd_intf_pins axi_gpio_2/S_AXI]

# Make GPIO ports external
make_bd_pins_external  [get_bd_pins axi_gpio_0/gpio_io_o]
make_bd_pins_external  [get_bd_pins axi_gpio_1/gpio_io_i]
make_bd_pins_external  [get_bd_pins axi_gpio_2/gpio_io_i]

# Rename external ports
set_property name leds_4bits [get_bd_ports gpio_io_o_0]
set_property name sws_2bits [get_bd_ports gpio_io_i_0]
set_property name btns_4bits [get_bd_ports gpio_io_i_1]

# Validate design
validate_bd_design

# Save block design
save_bd_design

# Create HDL wrapper
make_wrapper -files [get_files ${project_dir}/${project_name}.srcs/sources_1/bd/design_1/design_1.bd] -top
add_files -norecurse ${project_dir}/${project_name}.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v

# Set top module
set_property top design_1_wrapper [current_fileset]

puts "Fresh PYNQ-Z2 project created successfully!"
puts "Project location: $project_dir"