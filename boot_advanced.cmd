# PYNQ-Z2 Automatic TFTP Boot Script
# This script provides automatic TFTP boot with fallback options
# Place this file as boot.scr on the FAT32 boot partition of your SD card

echo "=== PYNQ-Z2 Auto TFTP Boot Script v1.0 ==="

# Check if network settings are already configured
if test -z "${serverip}"; then
    echo "Configuring network settings..."
    setenv serverip 192.168.1.100
    setenv ipaddr 192.168.1.10  
    setenv netmask 255.255.255.0
    setenv gatewayip 192.168.1.1
    echo "Network configured: Board=${ipaddr}, Server=${serverip}"
else
    echo "Using existing network config: Board=${ipaddr}, Server=${serverip}"
fi

# Configure boot parameters
setenv bootfile image.ub
setenv loadaddr 0x2000000

# Set environment for automatic TFTP boot on future reboots
setenv bootcmd_tftp 'echo "Auto TFTP Boot..."; if tftpboot ${loadaddr} ${bootfile}; then echo "TFTP success, booting..."; bootm ${loadaddr}; else echo "TFTP failed, trying backup methods..."; run bootcmd_fallback; fi'

# Fallback boot command (try from SD card)
setenv bootcmd_fallback 'echo "Attempting SD card boot..."; if fatload mmc 0:1 ${loadaddr} image.ub; then echo "SD boot success"; bootm ${loadaddr}; else echo "All boot methods failed - manual intervention required"; fi'

# Set main boot command
setenv bootcmd 'run bootcmd_tftp'

# Set boot delay (3 seconds allows interruption with any key)
setenv bootdelay 3

# Save environment for persistence
echo "Saving configuration..."
saveenv

# Execute boot immediately
echo "Starting auto-boot sequence..."
echo "Press any key within 3 seconds to interrupt..."
echo "Fetching ${bootfile} from ${serverip}..."

# Attempt TFTP boot
if tftpboot ${loadaddr} ${bootfile}; then
    echo "TFTP download successful!"
    echo "Booting kernel from TFTP..."
    bootm ${loadaddr}
else
    echo ""
    echo "=== TFTP Boot Failed ==="
    echo "Troubleshooting checklist:"
    echo "1. Verify TFTP server is running on ${serverip}"
    echo "2. Check ${bootfile} exists in /tftpboot/ directory"
    echo "3. Ensure Ethernet cable is connected"
    echo "4. Verify network settings:"
    echo "   Board IP: ${ipaddr}"
    echo "   Server IP: ${serverip}"
    echo "   Netmask: ${netmask}"
    echo ""
    echo "Attempting fallback boot methods..."
    run bootcmd_fallback
fi