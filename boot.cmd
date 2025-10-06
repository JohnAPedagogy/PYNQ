# U-Boot boot script for automatic TFTP boot on PYNQ-Z2
# This script automatically configures network and boots from TFTP server
# without requiring manual intervention in U-Boot prompt

echo "=== PYNQ-Z2 Automatic TFTP Boot Script ==="
echo "Configuring network for TFTP boot..."

# Set network parameters
setenv serverip 192.168.1.100
setenv ipaddr 192.168.1.10  
setenv netmask 255.255.255.0
setenv gatewayip 192.168.1.1

# Display network configuration
echo "Network Configuration:"
echo "  Board IP: ${ipaddr}"
echo "  Server IP: ${serverip}"
echo "  Netmask: ${netmask}"
echo "  Gateway: ${gatewayip}"

# Configure environment variables for TFTP boot
setenv bootfile image.ub
setenv loadaddr 0x2000000

# Set the automatic boot command for future boots
setenv bootcmd 'echo "Auto TFTP Boot..."; tftpboot ${loadaddr} ${bootfile}; if test $? -eq 0; then bootm ${loadaddr}; else echo "TFTP boot failed, dropping to U-Boot prompt"; fi'

# Set boot delay to 3 seconds (gives time to interrupt if needed)
setenv bootdelay 3

# Save environment to persistent storage
echo "Saving network configuration to persistent storage..."
saveenv

# Perform TFTP boot immediately
echo "Attempting TFTP boot..."
echo "Fetching ${bootfile} from ${serverip}..."

if tftpboot ${loadaddr} ${bootfile}; then
    echo "TFTP download successful. Booting kernel..."
    bootm ${loadaddr}
else
    echo "TFTP boot failed!"
    echo "Please check:"
    echo "  1. TFTP server is running on ${serverip}"
    echo "  2. ${bootfile} exists in /tftpboot/"
    echo "  3. Network cable is connected"
    echo "  4. Network settings are correct"
    echo ""
    echo "Dropping to U-Boot prompt for manual configuration..."
fi