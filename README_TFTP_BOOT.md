# PYNQ-Z2 Automatic TFTP Boot Setup Guide

This guide shows how to configure your PYNQ-Z2 board for automatic TFTP boot without manual U-Boot intervention.

## Generated Files

Two boot script versions have been created:

1. **`boot.scr`** - Basic automatic TFTP boot script
2. **`boot_advanced.scr`** - Advanced version with fallback options

## Prerequisites

### 1. TFTP Server Setup (Host PC)

Install and configure TFTP server on your development PC:

```bash
# Install TFTP server
sudo apt update
sudo apt install -y tftpd-hpa

# Create and configure TFTP directory
sudo mkdir -p /tftpboot
sudo chmod 777 /tftpboot
sudo chown -R tftp:tftp /tftpboot

# Configure TFTP server
sudo nano /etc/default/tftpd-hpa
```

Edit `/etc/default/tftpd-hpa`:
```
TFTP_USERNAME="tftp"
TFTP_DIRECTORY="/tftpboot"
TFTP_ADDRESS="0.0.0.0:69"
TFTP_OPTIONS="--secure"
```

```bash
# Restart and enable TFTP server
sudo systemctl restart tftpd-hpa
sudo systemctl enable tftpd-hpa
sudo systemctl status tftpd-hpa
```

### 2. Network Configuration

Configure static IP on your PC's Ethernet interface:

```bash
# Find your network interface
ip addr show

# Set static IP (replace eth0 with your interface)
sudo ip addr add 192.168.1.100/24 dev eth0
sudo ip link set eth0 up
```

### 3. Copy Boot Images to TFTP Directory

After building your PetaLinux project, copy the boot image:

```bash
# Copy the boot image to TFTP directory
sudo cp path/to/your/images/linux/image.ub /tftpboot/
sudo chmod 644 /tftpboot/image.ub
```

## SD Card Setup

### 1. Prepare SD Card

Format your SD card with a FAT32 boot partition:

```bash
# WARNING: Replace /dev/sdX with your actual SD card device
# Check with 'lsblk' or 'fdisk -l'

# Create partition table
sudo fdisk /dev/sdX
# Create FAT32 partition (type 'c' for W95 FAT32 LBA)

# Format as FAT32
sudo mkfs.vfat -F 32 /dev/sdX1
```

### 2. Deploy Boot Files

Mount the SD card and copy the necessary files:

```bash
# Mount SD card
sudo mkdir -p /mnt/sdcard
sudo mount /dev/sdX1 /mnt/sdcard

# Copy boot files
sudo cp path/to/your/images/linux/BOOT.BIN /mnt/sdcard/

# Copy ONE of the boot scripts (choose basic or advanced)
sudo cp boot.scr /mnt/sdcard/                    # Basic version
# OR
sudo cp boot_advanced.scr /mnt/sdcard/boot.scr   # Advanced version

# Sync and unmount
sync
sudo umount /mnt/sdcard
```

**Important**: The boot script MUST be named `boot.scr` on the SD card (not `boot_advanced.scr`).

## Network Configuration in Boot Script

The scripts are pre-configured with these network settings:

- **Board IP**: 192.168.1.10
- **Server IP**: 192.168.1.100 (your PC)
- **Netmask**: 255.255.255.0
- **Gateway**: 192.168.1.1

### Customizing Network Settings

To change the network configuration, edit the `.cmd` file and recompile:

```bash
# Edit boot.cmd or boot_advanced.cmd
nano boot.cmd

# Modify these lines:
setenv serverip 192.168.1.100    # Your PC's IP
setenv ipaddr 192.168.1.10       # Board's IP
setenv netmask 255.255.255.0
setenv gatewayip 192.168.1.1     # Gateway IP

# Recompile the script
mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "Custom Boot Script" -d boot.cmd boot.scr
```

## Testing the Setup

### 1. Verify TFTP Server

Test TFTP server from another machine:

```bash
# Test TFTP download
tftp 192.168.1.100
> get image.ub
> quit
```

### 2. Boot Sequence

1. Insert SD card into PYNQ-Z2
2. Connect Ethernet cable between PC and board
3. Power on the board
4. Watch for automatic boot sequence:

```
U-Boot 2023.01 (...)
...
=== PYNQ-Z2 Auto TFTP Boot Script ===
Configuring network for TFTP boot...
Network Configuration:
  Board IP: 192.168.1.10
  Server IP: 192.168.1.100
  Netmask: 255.255.255.0
  Gateway: 192.168.1.1
Saving network configuration to persistent storage...
Attempting TFTP boot...
Fetching image.ub from 192.168.1.100...
TFTP download successful. Booting kernel...
```

### 3. Interrupting Auto-Boot

If you need to access U-Boot prompt:

1. Power on the board
2. Press any key within 3 seconds when you see the countdown
3. You'll drop to U-Boot prompt for manual configuration

## Troubleshooting

### Common Issues

1. **"TFTP timeout"**
   - Check Ethernet cable connection
   - Verify PC IP is 192.168.1.100
   - Ensure TFTP server is running: `sudo systemctl status tftpd-hpa`

2. **"File not found"**
   - Verify `image.ub` exists in `/tftpboot/`
   - Check file permissions: `sudo chmod 644 /tftpboot/image.ub`

3. **"Network unreachable"**
   - Check network interface is up: `ip link show`
   - Verify IP configuration: `ip addr show`

4. **Script not running**
   - Ensure `boot.scr` is in root of FAT32 partition
   - Verify SD card is properly formatted as FAT32
   - Check `BOOT.BIN` is present on SD card

### Manual Network Configuration

If automatic configuration fails, you can manually set in U-Boot:

```
U-Boot> setenv serverip 192.168.1.100
U-Boot> setenv ipaddr 192.168.1.10
U-Boot> setenv netmask 255.255.255.0
U-Boot> saveenv
U-Boot> tftpboot 0x2000000 image.ub
U-Boot> bootm 0x2000000
```

## Development Workflow

Once set up, your development cycle becomes:

1. Edit kernel/application code
2. Run `petalinux-build` (5 minutes)
3. Copy new `image.ub` to `/tftpboot/`
4. Reset PYNQ-Z2 board
5. Board automatically boots new image (5 seconds)

**Total time per iteration: ~5 minutes** (vs 6+ minutes with SD card method)

## Advanced Features (boot_advanced.scr only)

The advanced script includes:

- **Fallback Boot**: If TFTP fails, attempts to boot from SD card
- **Smart Configuration**: Reuses existing network settings if available
- **Better Error Messages**: Detailed troubleshooting information
- **Graceful Degradation**: Attempts multiple boot methods before failing

Choose the advanced script if you want more robust boot behavior.

## Files Created

- `boot.cmd` - Basic boot script source
- `boot.scr` - Basic compiled boot script
- `boot_advanced.cmd` - Advanced boot script source  
- `boot_advanced.scr` - Advanced compiled boot script
- `README_TFTP_BOOT.md` - This documentation

## Next Steps

1. Copy your preferred `boot.scr` to the SD card
2. Set up TFTP server on your PC
3. Test the automatic boot process
4. Enjoy faster development iterations!