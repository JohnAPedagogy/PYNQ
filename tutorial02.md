# PetaLinux Tutorial for PYNQ-Z2 Board

This tutorial outlines the steps to build PetaLinux for the PYNQ-Z2 board, adapted from the YouTube video: https://www.youtube.com/watch?v=OfozFBfvWeY

## Prerequisites

- Linux host machine (Ubuntu 18.04/20.04 LTS recommended, Ubuntu 25.04 requires additional configuration)
- Minimum 100GB free disk space
- 8GB RAM minimum (16GB recommended)
- Internet connection for downloads

### Ubuntu 25.04 Compatibility Notice

**Important**: If using Ubuntu 25.04, additional steps are required to resolve PetaLinux compatibility issues.

## Step 0: Download and Install AMD Vivado and PetaLinux

### Download AMD Vivado Design Suite

1. **Create AMD Account**:
   - Go to https://www.amd.com/
   - Create a free account or log in to existing account

2. **Download Vivado**:
   - Navigate to Support → Downloads
   - Select "Vivado Design Suite - HLx Editions"
   - Choose "2023.2" or latest stable version
   - Download "AMD Vivado Design Suite Standard Edition" for Linux
   - File: `FPGAs_AdaptiveSoCs_Unified_2023.2_1013_2256_Lin64.bin` (~35GB)

### Download PetaLinux

1. **Download PetaLinux Tools**:
   - From the same AMD downloads page
   - Select "PetaLinux" under Embedded Development
   - Choose matching version (e.g., "2023.2")
   - Download "PetaLinux 2023.2 Installer"
   - File: `petalinux-v2023.2-10121855-installer.run` (~10GB)

### Install Vivado Design Suite

1. **Prepare Installation**:
```bash
# Make installer executable
chmod +x FPGAs_AdaptiveSoCs_Unified_2023.2_1013_2256_Lin64.bin

# Install required dependencies (Ubuntu)
sudo apt update
sudo apt install -y libtinfo5 libncurses5 libncurses5-dev libxext6 libxrender1 libxtst6 libxi6 libfreetype6 libfontconfig1
```

2. **Run Vivado Installer**:
```bash
# Launch installer
sudo ./FPGAs_AdaptiveSoCs_Unified_2023.2_1013_2256_Lin64.bin
```

3. **Installation Configuration**:
   - Accept license agreements
   - Select "Vivado Design Suite Standard Edition"
   - Choose installation directory: `/opt/Xilinx/Vivado/2023.2`
   - Select required devices: Include Zynq-7000 (for PYNQ-Z2)
   - Installation takes 30-60 minutes

4. **Setup Environment**:
```bash
# Add to ~/.bashrc for permanent setup
echo "source /opt/Xilinx/Vivado/2023.2/settings64.sh" >> ~/.bashrc
```

### Install PetaLinux

1. **Prepare System Dependencies**:
```bash
# Install required packages (Ubuntu)
sudo apt install -y iproute2 gawk python3 python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 cpio file lsb-release python3-pip python3-pexpect python3-git python3-jinja2

# Install additional dependencies
sudo apt install -y chrpath socat autoconf libtool tar unzip texinfo zlib1g-dev gcc-multilib build-essential libsdl1.2-dev libglib2.0-dev screen pax gzip

# Create installation directory
sudo mkdir -p /opt/PetaLinux
sudo chmod 755 /opt/PetaLinux
```

2. **Run PetaLinux Installer**:
```bash
# Make installer executable
chmod +x petalinux-v2023.2-10121855-installer.run

# Install to /opt/PetaLinux
sudo ./petalinux-v2023.2-10121855-installer.run -d /opt/PetaLinux/petalinux-v2023.2
```

3. **Accept License and Complete Installation**:
   - Accept End User License Agreement
   - Installation takes 10-20 minutes
   - Verify installation completes successfully

4. **Setup PetaLinux Environment**:
```bash
# Add to ~/.bashrc for permanent setup  
echo "source /opt/PetaLinux/petalinux-v2023.2/settings.sh" >> ~/.bashrc

# Source for current session
source /opt/PetaLinux/petalinux-v2023.2/settings.sh
```

### Verify Installation

1. **Test Vivado**:
```bash
# Source environment
source /opt/Xilinx/Vivado/2023.2/settings64.sh

# Check Vivado version
vivado -version
```

2. **Test PetaLinux**:
```bash
# Source environment  
source /opt/PetaLinux/petalinux-v2023.2/settings.sh

# Check PetaLinux version
petalinux-util --webtalk off
petalinux-create --help
```

### Post-Installation Setup

1. **Configure Git** (if not already done):
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

2. **Disable WebTalk** (optional, for privacy):
```bash
# Disable Vivado WebTalk
echo "disable_webtalk" > ~/.Xilinx/Vivado/2023.2/vivado_disable_webtalk

# Disable PetaLinux WebTalk
petalinux-util --webtalk off
```

### PYNQ-Z2 XSA Files with Default Features (Recommended Approach)

Instead of creating a custom Vivado project from scratch, you can use the pre-built PYNQ-Z2 design files included in the official PYNQ repository:

#### Option 1: Use PYNQ Repository Build System
```bash
# Clone the PYNQ repository (if not already done)
git clone https://github.com/Xilinx/PYNQ.git

# Navigate to PYNQ root directory
cd PYNQ/

# Source Vivado environment (match the version used for PYNQ development)
source /opt/Xilinx/Vivado/2024.1/settings64.sh  # Note: Use 2024.1 for compatibility

# Build specific overlay for PYNQ-Z2
cd boards/Pynq-Z2/base/
make block_design bitstream
```

**Important:** The PYNQ project TCL scripts are created with specific Vivado versions. Using a mismatched version (e.g., running 2025.1 TCL scripts created for 2024.1) will cause compatibility errors.

#### Generated Files and Locations
After successful build, the following files are generated:

**Hardware Specification Archives (XSA):**
- `boards/Pynq-Z2/base/base.xsa` - Base overlay hardware specification for PetaLinux
- `boards/Pynq-Z2/logictools/logictools.xsa` - Logic tools overlay hardware specification

**Bitstream Files:**
- `boards/Pynq-Z2/base/base.bit` - FPGA configuration bitstream for base overlay
- `boards/Pynq-Z2/logictools/logictools.bit` - FPGA configuration bitstream for logic tools

**Hardware Handoff Files:**
- `boards/Pynq-Z2/base/base.hwh` - JSON hardware description for Python integration
- `boards/Pynq-Z2/logictools/logictools.hwh` - Hardware description for logic tools overlay

#### Option 2: Download Pre-built Files
If build environment setup is problematic, download pre-built files:

```bash
# Download PYNQ-Z2 v3.1 SDCard image from GitHub releases
# Extract overlay files from: /opt/python3.9/lib/python3.9/site-packages/pynq/overlays/

# Or use wget to download specific files (if available on releases)
wget https://github.com/Xilinx/PYNQ/releases/download/v3.1.0/pynq-z2-v3.1.img
```

#### Using XSA Files for PetaLinux
The generated `.xsa` files contain all necessary hardware information for PetaLinux:
- Processing system configuration (ARM Cortex-A9)
- Memory interface settings (DDR3 512MB)
- Peripheral configurations (GPIO, UART, USB, Ethernet)
- AXI interconnect and addressing
- Clock and reset configurations

#### Default Features Included
The PYNQ-Z2 base design includes:
- Zynq-7020 Processing System with dual-core ARM Cortex-A9
- AXI GPIO controllers for LEDs (4), switches (2), buttons (4)
- AXI interfaces for custom IP integration
- HDMI input/output with video processing pipeline
- Audio codec interface (ADAU1761)
- Standard peripheral interfaces:
  - UART for console communication
  - USB 2.0 host/device controller
  - Ethernet MAC for network connectivity
  - SPI and I2C controllers
  - SD card controller for storage

#### Build Dependencies and Requirements
**Required Tools:**
- Vivado Design Suite (2024.1 recommended for compatibility)
- Vitis HLS (for building IP cores from HLS source)
- Matching versions between Vivado and Vitis tools

**Build Environment Setup:**
```bash
# Source both Vivado and Vitis environments
source /opt/Xilinx/Vivado/2024.1/settings64.sh
source /opt/Xilinx/Vitis_HLS/2024.1/settings64.sh  # If HLS IP rebuild needed
```

#### Troubleshooting Common Build Issues

**Version Compatibility Errors:**
```
ERROR: [BD::TCL 103-2041] This script was generated using Vivado <2024.1> and is being run in <2025.1>
```
**Solution:** Use matching Vivado version (2024.1) or regenerate TCL scripts with newer version.

**Missing Vitis HLS:**
```
couldn't execute "vitis_hls": no such file or directory
```
**Solution:** Install Vitis HLS or skip HLS IP building if pre-built IP cores exist.

### Required Tools Summary

After installation, you should have:
- AMD Vivado Design Suite Standard Edition (2023.2 or compatible)
- PetaLinux Tools (matching version)
- PYNQ-Z2 board support (included in Vivado)
- Proper environment setup for both tools
- Optional: PYNQ-Z2 XSA files with default features

## Hardware Setup

- Target Board: PYNQ-Z2
- FPGA: Zynq XC7Z020-1CLG400C
- ARM Cortex-A9 dual core processor

## Step 1: Environment Setup

```bash
# Source PetaLinux tools
source /opt/PetaLinux/petalinux-v<version>/settings.sh

# Source Vivado
source /opt/Xilinx/Vivado/<version>/settings64.sh
```

## Step 2: Create Vivado Project for PYNQ-Z2

1. Launch Vivado and create a new project:
   - Click "Create Project"
   - Choose project name and location
   - Select "RTL Project" and check "Do not specify sources at this time"

2. Select PYNQ-Z2 board or part:
   - In Parts selection, choose "Boards" tab
   - Search for "PYNQ-Z2" or select part "XC7Z020-1CLG400C"
   - Package: CLG400, Speed grade: -1

3. Create Block Design:
   - In Flow Navigator: IP Integrator → Create Block Design
   - Add Zynq processing system IP core
   - Run Block Automation to configure basic connections

4. Configure Zynq Processing System:
   - Double-click ZYNQ7 Processing System
   - Enable required peripherals (UART, SD, USB, Ethernet as needed)
   - Configure DDR memory settings for PYNQ-Z2
   - Set up clock configurations

5. Generate bitstream:
   - Create HDL wrapper for block design
   - Run Synthesis and Implementation
   - Generate Bitstream

## Step 3: Export Hardware Definition

1. Export hardware platform:
   - In Vivado: File → Export → Export Hardware
   - Choose "Include bitstream" option
   - Select export location and name (e.g., `system_wrapper.xsa`)
   - Click "OK" to export

2. Note the .xsa file location for PetaLinux configuration

## Step 4: Create PetaLinux Project

```bash
# Create PetaLinux project for PYNQ-Z2
petalinux-create -t project --template zynq -n pynq_z2_petalinux

# Change to project directory
cd pynq_z2_petalinux
```

## Step 5: Configure PetaLinux Project

```bash
# Import hardware definition
petalinux-config --get-hw-description=<path_to_xsa_file>
```

Configuration steps:
1. System-level configuration will open automatically
2. Configure boot options and memory settings for PYNQ-Z2
3. Set up root filesystem type (initramfs or SD card)
4. Configure networking and peripheral options as needed

Additional configurations:
```bash
# Configure kernel if needed
petalinux-config -c kernel

# Configure root filesystem
petalinux-config -c rootfs

# Configure device tree if needed  
petalinux-config -c device-tree
```

## Step 6: PYNQ-Z2 Specific Configurations

Key PYNQ-Z2 configurations:

1. **Memory Configuration**:
   - DDR3 memory: 512 MB
   - Ensure proper memory timing settings in Zynq PS configuration

2. **Boot Configuration**:
   - Primary boot device: SD card (default for PYNQ-Z2)
   - Boot mode jumpers: Set for SD card boot

3. **Peripheral Configurations**:
   - UART: Enable UART1 for console
   - USB: Configure USB0 for host/device mode
   - Ethernet: Enable if network connectivity needed
   - GPIO: Configure for on-board LEDs and switches

4. **Device Tree Adjustments**:
   - Verify clock configurations match PYNQ-Z2 specifications
   - Confirm peripheral pin assignments
   - Set up proper voltage levels for I/Os

## Step 7: Build the Project

```bash
# Build the complete system
petalinux-build
```

**Note**: After a successful build, PetaLinux will attempt to copy built images to `/tftpboot` for network boot development workflows. If you see "Failed to copy built images to tftp dir", this is harmless - images are still available in `images/linux/`. See Step 9b for setting up TFTP network boot if you want faster development iteration.

### Ubuntu 25.04 Specific Issues and Solutions

#### Issue 1: User Namespace Restrictions (AppArmor)

**Problem**: PetaLinux build fails with error:
```
ERROR: User namespaces are not usable by BitBake, possibly due to AppArmor.
```

**Cause**: Ubuntu 25.04 introduced stricter AppArmor policies that restrict unprivileged user namespaces, which BitBake (the build system used by PetaLinux) requires for secure container-like builds.

**Solution**: Enable unprivileged user namespaces system-wide:

```bash
# Add kernel parameter to allow unprivileged user namespaces
echo 'kernel.apparmor_restrict_unprivileged_userns = 0' | sudo tee -a /etc/sysctl.conf

# Apply the setting immediately without reboot
sudo sysctl -p

# Verify the setting is applied
sysctl kernel.apparmor_restrict_unprivileged_userns
```

**Expected output**: `kernel.apparmor_restrict_unprivileged_userns = 0`

#### Issue 2: Host Distribution Warning

**Problem**: PetaLinux shows warning:
```
WARNING: Host distribution "ubuntu-25.04" has not been validated with this version of the build system
```

**Cause**: PetaLinux officially supports Ubuntu 18.04/20.04 LTS. Ubuntu 25.04 is newer and not in the validated list.

**Impact**: This is usually just a warning and doesn't prevent builds from completing successfully.

**Action**: No action required - this warning can be safely ignored as long as the build completes successfully.

#### Issue 3: Shell Compatibility Warning

**Problem**: PetaLinux shows warning:
```
WARNING: /bin/sh is not bash! bash is PetaLinux recommended shell.
```

**Cause**: Ubuntu 25.04 uses dash (`/bin/sh`) as the default shell instead of bash.

**Solution** (Optional): Set bash as the default shell:
```bash
# Check current default shell
ls -la /bin/sh

# If it's not bash, reconfigure (optional)
sudo dpkg-reconfigure dash
# Choose "No" when asked if you want to install dash as /bin/sh
```

**Note**: This warning usually doesn't prevent builds from succeeding and can be ignored.

#### Complete Ubuntu 25.04 Setup Sequence

For Ubuntu 25.04 users, follow this sequence after PetaLinux installation:

```bash
# 1. Enable user namespaces
echo 'kernel.apparmor_restrict_unprivileged_userns = 0' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# 2. Verify the setting
sysctl kernel.apparmor_restrict_unprivileged_userns

# 3. Proceed with normal PetaLinux workflow
source /opt/ptx/settings.sh
petalinux-build
```

#### Verification Steps

After applying the fixes, verify PetaLinux can build successfully:

```bash
# Check that user namespaces are enabled
sysctl kernel.apparmor_restrict_unprivileged_userns
# Should output: kernel.apparmor_restrict_unprivileged_userns = 0

# Test PetaLinux build (should progress past the user namespace error)
source /opt/ptx/settings.sh
petalinux-build
```

**Success indicators**:
- No "User namespaces are not usable" error
- Build progresses to "Loading cache...done" and "Parsing recipes"
- BitBake server starts successfully

#### Alternative Solutions (If Primary Solution Doesn't Work)

If the sysctl approach doesn't work, try these alternatives:

**Method 1: Temporary per-session fix**
```bash
# Enable for current session only
echo 0 | sudo tee /proc/sys/kernel/apparmor_restrict_unprivileged_userns
```

**Method 2: Use system containers (Advanced)**
```bash
# Use podman or docker to run PetaLinux in a compatible container
# (Requires additional container setup - not covered in this tutorial)
```

**Method 3: Virtual Machine**
```bash
# Install Ubuntu 20.04 LTS in a virtual machine
# Run PetaLinux in the VM environment
```

#### Security Considerations

**Important**: Disabling AppArmor user namespace restrictions reduces system security by allowing unprivileged processes to create user namespaces. Consider these alternatives for production systems:

1. **Use Ubuntu 20.04 LTS** for PetaLinux development (officially supported)
2. **Use dedicated development VM** with Ubuntu 20.04 LTS
3. **Re-enable restrictions** after PetaLinux development: `kernel.apparmor_restrict_unprivileged_userns = 1`

#### Known Working Configurations

✅ **Verified working combinations**:
- Ubuntu 20.04 LTS + PetaLinux 2023.2 (Official)
- Ubuntu 25.04 + PetaLinux 2025.1 + AppArmor fix (Community tested)
- Ubuntu 22.04 LTS + PetaLinux 2023.2 (Community tested)

❌ **Known problematic combinations**:
- Ubuntu 25.04 + PetaLinux without AppArmor configuration
- Ubuntu 25.04 + PetaLinux with default AppArmor policies
- Ubuntu 25.04 + PetaLinux full build (due to QEMU glibc conflicts)

#### Issue 4: QEMU Build Failures with Newer glibc

**Problem**: PetaLinux full build fails with QEMU compilation error:
```
error: redefinition of 'struct sched_attr'
```

**Cause**: Ubuntu 25.04 uses glibc 2.41 which conflicts with QEMU's internal structure definitions. The `struct sched_attr` is already defined in newer glibc versions, causing redefinition errors during QEMU compilation.

**Impact**: Prevents complete PetaLinux image build, blocking WIC file generation.

**Solution 1: Component-by-Component Build**
```bash
# Build essential components separately to avoid QEMU dependency
source /opt/ptx/settings.sh

# Build kernel (essential for boot)
petalinux-build -c kernel

# Build U-Boot bootloader
petalinux-build -c u-boot

# Build device tree and FSBL
petalinux-build -c device-tree
petalinux-build -c fsbl

# Check generated files
ls -la images/linux/
```

**Solution 2: Minimal Image Build**
```bash
# Attempt to build minimal image without QEMU components
source /opt/ptx/settings.sh
petalinux-build -c core-image-minimal
```

**Verification Steps**:
```bash
# Check for essential boot components
ls -la images/linux/Image          # Kernel image
ls -la images/linux/u-boot.elf     # U-Boot bootloader
ls -la images/linux/system.dtb     # Device tree
ls -la images/linux/zynq_fsbl.elf  # First Stage Boot Loader

# Monitor build progress
find images/linux/ -name "*.wic" -o -name "BOOT.BIN" -o -name "boot.scr"
```

**Alternative Approach: Manual Boot File Creation**
If full build continues to fail:
```bash
# Create boot files manually using available components
source /opt/ptx/settings.sh

# Package boot files if components are available
petalinux-package --boot --fsbl ./images/linux/zynq_fsbl.elf --u-boot --force

# Check for BOOT.BIN creation
ls -la images/linux/BOOT.BIN
```

**Monitoring Strategy**:
```bash
# Set up continuous monitoring for build completion
while true; do
  echo "=== $(date) - Build Status ==="

  # Check for WIC files (primary goal)
  find images/linux/ -name "*.wic" -ls 2>/dev/null

  # Check for essential components
  [ -f "images/linux/Image" ] && echo "Kernel: Ready"
  [ -f "images/linux/u-boot.elf" ] && echo "U-Boot: Ready"
  [ -f "images/linux/BOOT.BIN" ] && echo "Boot image: Ready"

  sleep 300  # Check every 5 minutes
done
```

**Known Limitations**:
- Component builds may not generate WIC files directly
- Some PetaLinux features requiring QEMU will be unavailable
- Full system validation may require alternative approaches

**Recovery Steps**:
If builds fail completely:
1. Use Ubuntu 20.04 LTS in virtual machine
2. Use Docker container with compatible environment
3. Use pre-built PYNQ images as starting point

## Step 8: Package for Boot

```bash
# Create boot image with all necessary components
petalinux-package --boot --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/system_wrapper.bit --u-boot

# Alternative packaging command format
petalinux-package --boot --force --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/system_wrapper.bit --u-boot ./images/linux/u-boot.elf
```

This creates `BOOT.BIN` in the `images/linux/` directory containing:
- First Stage Boot Loader (FSBL)
- Bitstream file
- U-Boot bootloader

## Step 8b: Generate WIC Image (Complete SD Card Image)

WIC (Wic Image Creator) files are complete, bootable SD card images that combine boot partition and root filesystem. They can be directly written to SD cards using tools like `dd` or Etcher.

### Why Use WIC Images?

**Traditional Method**:
```
1. Partition SD card (FAT32 + ext4)
2. Copy BOOT.BIN, image.ub to boot partition
3. Extract rootfs.tar.gz to rootfs partition
4. Configure fstab, boot files
Total: ~15 minutes, error-prone
```

**WIC Image Method**:
```
1. Write WIC file to SD card with dd
Total: ~3 minutes, reliable
```

### WIC File Benefits

- ✅ **One-step deployment**: Single command to write bootable SD card
- ✅ **Reproducible**: Same image every time
- ✅ **Distribution-ready**: Easy to share and deploy
- ✅ **Includes everything**: Boot files + rootfs + partitioning
- ✅ **Verified layout**: Tested partition structure

### Option 1: Enable WIC Generation in Build Configuration

This is the **recommended approach** as WIC files are generated automatically during `petalinux-build`.

#### 1. Remove QEMU Skip (If Present)

If you previously skipped QEMU due to compilation issues:

```bash
cd /path/to/petalinux/project

# Edit petalinuxbsp.conf
nano project-spec/meta-user/conf/petalinuxbsp.conf
```

Remove or comment out this line if present:
```bash
# ASSUME_PROVIDED += "qemu-native"   # Remove this line
```

**Note**: QEMU is required for WIC generation. If you're on Ubuntu 25.04 and QEMU fails to compile, apply the QEMU fix from the troubleshooting section first.

#### 2. Enable WIC Image Format

Add WIC to the image formats:

```bash
# Add to petalinuxbsp.conf
echo 'IMAGE_FSTYPES += "wic wic.bmap wic.bz2"' >> project-spec/meta-user/conf/petalinuxbsp.conf
```

**Format Options**:
- `wic` - Uncompressed WIC image (~2GB)
- `wic.bmap` - Block map for faster writing with `bmaptool`
- `wic.bz2` - Compressed WIC image (~500MB, slower to write)
- `wic.gz` - Gzip compressed (~600MB)

#### 3. Configure WIC Layout (Optional)

PetaLinux uses a default WIC layout, but you can customize it:

```bash
# Create custom WIC file
mkdir -p project-spec/meta-user/wic
nano project-spec/meta-user/wic/sdimage-bootpart.wks
```

Example WIC kickstart file (`sdimage-bootpart.wks`):
```
# Short-description: Create SD card image with boot and rootfs partitions
# Long-description: Creates a partitioned SD card image for Zynq boards

# Boot partition (FAT32, 100MB)
part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4096 --size 100M

# Root filesystem partition (ext4, remaining space)
part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label rootfs --align 4096

bootloader --ptable msdos
```

To use custom WIC file:
```bash
echo 'WKS_FILE = "sdimage-bootpart.wks"' >> project-spec/meta-user/conf/petalinuxbsp.conf
```

#### 4. Rebuild with WIC Generation

```bash
# Clean previous build (optional, but recommended)
petalinux-build -x mrproper

# Rebuild with WIC generation enabled
petalinux-build
```

#### 5. Verify WIC File Generation

```bash
# Check for WIC files
ls -lh images/linux/*.wic*

# Expected output:
# -rw-r--r-- 1 user user 2.0G Oct 06 18:30 petalinux-image-minimal-zynq-generic.wic
# -rw-r--r-- 1 user user  50K Oct 06 18:30 petalinux-image-minimal-zynq-generic.wic.bmap
# -rw-r--r-- 1 user user 500M Oct 06 18:30 petalinux-image-minimal-zynq-generic.wic.bz2
```

### Option 2: Manual WIC Creation (Post-Build)

If you already have a completed build and want to generate WIC without rebuilding:

#### Method A: Using petalinux-package

```bash
cd /path/to/petalinux/project

# Create boot files first (if not already done)
petalinux-package --boot --fsbl images/linux/zynq_fsbl.elf --u-boot --force

# Generate WIC image
petalinux-package --wic --images-dir images/linux/ \
  --bootfiles "BOOT.BIN boot.scr image.ub"
```

**Explanation**:
- `--wic`: Specifies WIC image creation
- `--images-dir`: Directory containing build outputs
- `--bootfiles`: List of files to include in boot partition

#### Method B: Using wic Command Directly

```bash
# Source PetaLinux environment
source /opt/PetaLinux/petalinux-v2023.2/settings.sh

# Navigate to build directory
cd /path/to/petalinux/project/build/tmp

# Create WIC image using default kickstart
wic create sdimage-bootpart \
  -e petalinux-image-minimal \
  -o /path/to/output/
```

#### Method C: Custom Manual WIC Creation

```bash
# Create temporary WIC work directory
mkdir -p /tmp/wic-work

# Create WIC kickstart file
cat > /tmp/wic-work/custom.wks << 'EOF'
part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4096 --size 100M
part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label rootfs --align 4096
bootloader --ptable msdos
EOF

# Run WIC with custom kickstart
wic create /tmp/wic-work/custom.wks \
  -e petalinux-image-minimal \
  --rootfs-dir=images/linux/rootfs \
  --bootimg-dir=images/linux/ \
  -o images/linux/
```

### Option 3: WIC from Separate Components

If you built components separately (kernel, u-boot, etc.) and want to create WIC:

```bash
cd /path/to/petalinux/project

# Ensure all components are built
petalinux-build -c fsbl
petalinux-build -c u-boot
petalinux-build -c kernel
petalinux-build -c device-tree
petalinux-build -c rootfs

# Package boot files
petalinux-package --boot \
  --fsbl images/linux/zynq_fsbl.elf \
  --u-boot images/linux/u-boot.elf \
  --force

# Create WIC manually
petalinux-package --wic \
  --images-dir images/linux/ \
  --bootfiles "BOOT.BIN image.ub boot.scr"
```

### Writing WIC Image to SD Card

Once you have a WIC file, write it to SD card:

#### Option A: Using dd (Linux/macOS)

```bash
# Find SD card device
lsblk
# Look for your SD card (e.g., /dev/sdb or /dev/mmcblk0)

# Unmount any mounted partitions
sudo umount /dev/sdX*

# Write WIC image
sudo dd if=images/linux/petalinux-image-minimal-zynq-generic.wic \
  of=/dev/sdX \
  bs=4M \
  status=progress \
  conv=fsync

# Sync filesystem
sync
```

**⚠️ Warning**: Double-check device name! Wrong device will destroy data.

#### Option B: Using bmaptool (Faster, Recommended)

```bash
# Install bmaptool
sudo apt install bmap-tools

# Write with block map (much faster)
sudo bmaptool copy \
  images/linux/petalinux-image-minimal-zynq-generic.wic.bz2 \
  /dev/sdX
```

**Benefits of bmaptool**:
- Only writes used blocks (10x faster)
- Built-in verification
- Works with compressed images

#### Option C: Using Etcher (GUI, Cross-platform)

1. Download from https://www.balena.io/etcher/
2. Select WIC file
3. Select SD card
4. Click "Flash!"

### Verifying WIC Image

After creating WIC file, verify its contents:

```bash
# Check WIC file size (should be ~2GB for typical build)
ls -lh images/linux/*.wic

# List partitions in WIC image
wic ls images/linux/petalinux-image-minimal-zynq-generic.wic

# Expected output:
# Num     Start        End          Size      Fstype
#  1       4096      204799       200704       fat16
#  2     204800     4194303      3989504       ext4

# Check boot partition contents
wic ls images/linux/petalinux-image-minimal-zynq-generic.wic:1

# Expected output:
# BOOT.BIN
# boot.scr
# image.ub
```

### Troubleshooting WIC Generation

#### Error: "wic command not found"

**Solution**: Ensure PetaLinux environment is sourced:
```bash
source /opt/PetaLinux/petalinux-v2023.2/settings.sh
petalinux-build
```

#### Error: "QEMU required for WIC generation"

**Solution**: Ensure QEMU is built successfully. On Ubuntu 25.04, apply QEMU fix:
```bash
# See troubleshooting section for complete QEMU fix
petalinux-build -c qemu-xilinx-native
```

#### Error: "No space left on device"

**Solution**: WIC generation requires temporary space (~4GB):
```bash
# Check disk space
df -h /tmp

# Clean up if needed
rm -rf build/tmp/work/*/petalinux-image-minimal/*/deploy-wic*
petalinux-build -x cleansstate
```

#### WIC File Too Large

**Solution**: Use compressed format or minimal rootfs:
```bash
# Use compressed WIC
IMAGE_FSTYPES = "wic.bz2"

# Or reduce rootfs size
petalinux-config -c rootfs
# Deselect unnecessary packages
```

#### Boot Partition Files Missing

**Solution**: Ensure BOOT.BIN is created before WIC generation:
```bash
# Package boot files first
petalinux-package --boot \
  --fsbl images/linux/zynq_fsbl.elf \
  --u-boot \
  --force

# Then generate WIC
petalinux-build -c petalinux-image-minimal -f
```

### WIC vs Manual SD Card Preparation

| Aspect | WIC Image | Manual Preparation |
|--------|-----------|-------------------|
| **Time** | 3 minutes | 15 minutes |
| **Steps** | 1 (dd command) | 5-7 steps |
| **Errors** | Rare | Common (partitioning, fstab) |
| **Reproducibility** | Perfect | Variable |
| **Sharing** | Easy (single file) | Complex (multiple files) |
| **Production** | Ideal | Not recommended |

### Best Practices

1. **Always generate WIC.bz2**: Compressed images save bandwidth and storage
2. **Keep WIC.bmap**: Enables fast flashing with bmaptool
3. **Test WIC images**: Boot test before distribution
4. **Version WIC files**: Include version in filename
5. **Document custom WIC**: If using custom .wks files, document changes

### Production WIC Workflow

```bash
# Complete production WIC generation workflow

# 1. Configure for WIC generation
echo 'IMAGE_FSTYPES += "wic wic.bmap wic.bz2"' >> project-spec/meta-user/conf/petalinuxbsp.conf

# 2. Build with WIC enabled
petalinux-build

# 3. Verify WIC generation
ls -lh images/linux/*.wic*

# 4. Test WIC image
sudo bmaptool copy images/linux/*.wic.bz2 /dev/sdX
# Boot test on PYNQ-Z2

# 5. Archive for distribution
mv images/linux/*.wic.bz2 pynq-z2-v1.0-$(date +%Y%m%d).wic.bz2
mv images/linux/*.wic.bmap pynq-z2-v1.0-$(date +%Y%m%d).wic.bmap
sha256sum pynq-z2-v1.0-*.wic.bz2 > pynq-z2-v1.0.sha256
```

## PYNQ Build Outputs and Locations

### Primary Build Outputs

The PYNQ build system generates several key files used for FPGA development and deployment:

#### 1. Bitstream Files (*.bit)
- **Location**: `boards/Pynq-Z1/logictools/logictools.bit`
- **Purpose**: FPGA configuration files that define the hardware logic implementation
- **Usage**: Loaded onto the FPGA to configure the programmable logic
- **File Size**: Typically 2-4 MB for Zynq-7000 devices

#### 2. Hardware Specification Archive (*.xsa)
- **Location**: `boards/Pynq-Z2/logictools/logictools.xsa`
- **Purpose**: Contains complete hardware design information for software tools
- **Contents**: 
  - Hardware handoff file (.hwh)
  - Address map information
  - Clock and reset information
  - IP core configurations
- **Usage**: Used by PetaLinux and software development tools

#### 3. Board Support Packages (BSP)
- **Location**: `pynq/lib/logictools/bsp_lcp_ar_mb/`
- **Purpose**: Contains drivers, libraries, and configuration files for embedded processors
- **Contents**:
  - MicroBlaze processor libraries
  - Device drivers for custom IP cores
  - Hardware abstraction layer (HAL)
  - Linker scripts and startup code

#### 4. Overlay Python Files
- **Location**: `pynq/overlays/logictools/`
- **Purpose**: Python classes and methods for hardware control
- **Contents**:
  - Overlay class definitions
  - IP driver Python wrappers
  - Documentation and examples

#### 5. Hardware Handoff Files (*.hwh)
- **Location**: Generated alongside bitstream files
- **Purpose**: JSON-formatted hardware description for PYNQ framework
- **Contents**:
  - IP core hierarchy and addressing
  - Clock domain information
  - GPIO and interrupt mappings
  - Memory map definitions

### Build Directory Structure

```
PYNQ/
├── boards/
│   ├── Pynq-Z1/
│   │   └── logictools/
│   │       ├── logictools.bit        # Main bitstream
│   │       ├── logictools.xsa        # Hardware specification
│   │       ├── logictools.hwh        # Hardware handoff
│   │       └── logictools/           # Vivado project files
│   └── Pynq-Z2/
│       └── base/
│           ├── base.bit              # Base overlay bitstream
│           ├── base.xsa              # Base hardware specification
│           └── base.hwh              # Base hardware handoff
├── pynq/
│   ├── lib/
│   │   └── logictools/
│   │       └── bsp_lcp_ar_mb/        # Board support packages
│   └── overlays/
│       ├── base/                     # Base overlay Python files
│       └── logictools/               # Logic tools overlay files
└── sdbuild/                          # SD card image build files
```

### Intermediate Build Files

During the build process, several intermediate files are created:

#### Vivado Project Files
- **Location**: `boards/*/logictools/logictools/`
- **Contents**:
  - `.xpr` - Vivado project file
  - `.srcs/` - Source files directory
  - `.runs/` - Synthesis and implementation runs
  - `.cache/` - IP and synthesis cache

#### HLS IP Cores
- **Location**: `boards/ip/hls/`
- **Contents**:
  - C++ source files for HLS IP
  - Generated RTL (Verilog/VHDL)
  - IP packaging files
  - Simulation and verification files
#### Windows builds
```
%SystemRoot%\system32\cmd.exe /k d:\Xilinx\2025.1/Vivado\bin\vivado.bat -mode tcl

```
### Generated Software Components

#### Device Drivers
- **Location**: Within BSP directories
- **Types**:
  - Bare-metal drivers for custom IP
  - Linux device tree overlays
  - User-space library wrappers

#### Documentation
- **Location**: `docs/` directories within overlay folders
- **Contents**:
  - IP core documentation
  - Usage examples
  - API reference guides

### Build Verification

To verify successful build completion, check for these key files:

```bash
# Check for bitstream generation
ls -la boards/Pynq-Z1/logictools/logictools.bit

# Verify hardware specification
ls -la boards/Pynq-Z2/logictools/logictools.xsa

# Confirm BSP generation
ls -la pynq/lib/logictools/bsp_lcp_ar_mb/

# Check overlay Python files
ls -la pynq/overlays/logictools/
```

### File Usage in Deployment

1. **FPGA Programming**: `.bit` files program the FPGA fabric
2. **Software Development**: `.xsa` files provide hardware information to software tools
3. **Driver Integration**: BSP files enable software to interact with custom hardware
4. **Python Integration**: Overlay files provide high-level Python APIs
5. **System Integration**: `.hwh` files enable runtime hardware discovery

## Step 9: Deploy to PYNQ-Z2

### SD Card Preparation

1. **Format SD Card**:
   - Create FAT32 partition for boot files
   - Create ext4 partition for root filesystem (if not using initramfs)

2. **Copy Boot Files**:
```bash
# Copy to FAT32 boot partition
cp images/linux/BOOT.BIN /media/<boot_partition>/
cp images/linux/image.ub /media/<boot_partition>/
cp images/linux/boot.scr /media/<boot_partition>/  # if present
```

3. **Copy Root Filesystem** (if using SD card rootfs):
```bash
# Extract and copy rootfs
sudo tar -xf images/linux/rootfs.tar.gz -C /media/<rootfs_partition>/
sync
```

### Boot Sequence Verification

1. **Hardware Setup**:
   - Set PYNQ-Z2 boot mode jumpers for SD card boot
   - Insert prepared SD card
   - Connect UART cable for console access

2. **Power On and Monitor**:
   - Connect to UART console (115200 baud)
   - Power on PYNQ-Z2
   - Monitor boot process through console
   - Login when system boots completely

## Step 9b: Alternative - TFTP Network Boot (Advanced Development Workflow)

TFTP (Trivial File Transfer Protocol) network boot enables rapid kernel development by fetching boot images over Ethernet instead of copying to SD card. This is why PetaLinux attempts to copy images to `/tftpboot` after builds.

### Why Use TFTP Boot?

**Speed Comparison**:

**SD Card Method** (Traditional):
```
Edit code → Build (5 min) → Copy to SD → Eject SD →
Insert into board → Power on → Boot (30 sec)
Total: ~6 minutes per iteration
```

**TFTP Method** (Network Boot):
```
Edit code → Build (5 min) → Auto-copy to /tftpboot →
Reset board → U-Boot fetches new image (5 sec) → Boot
Total: ~5 minutes, no SD card handling
```

### Architecture

```
┌─────────────────┐         Ethernet Cable        ┌──────────────┐
│  Your PC        │◄──────────────────────────────►│  PYNQ-Z2     │
│  (TFTP Server)  │         192.168.1.x            │  (U-Boot)    │
│                 │                                 │              │
│  /tftpboot/     │                                 │  Fetches     │
│  ├─ image.ub    │                                 │  files via   │
│  └─ boot.scr    │                                 │  TFTP        │
└─────────────────┘                                 └──────────────┘
```

### How It Works

1. **Initial Boot**: PYNQ-Z2 still boots FSBL and U-Boot from SD card (`BOOT.BIN`)
2. **Network Configuration**: U-Boot configures Ethernet and connects to your PC
3. **Kernel Fetch**: U-Boot fetches `image.ub` via TFTP from your PC
4. **Boot**: U-Boot loads the kernel from RAM and boots

### Host PC Setup

#### 1. Install TFTP Server

```bash
# Install TFTP server package
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
# Restart TFTP server
sudo systemctl restart tftpd-hpa
sudo systemctl enable tftpd-hpa

# Verify TFTP server is running
sudo systemctl status tftpd-hpa
```

#### 2. Configure Network

**Option A: Direct Connection** (Simplest)
```
PC Ethernet ◄──── Ethernet Cable ────► PYNQ-Z2 Ethernet
192.168.1.100                           192.168.1.10
```

Configure static IP on your PC's Ethernet interface:
```bash
# Identify network interface
ip addr show

# Set static IP (replace eth0 with your interface)
sudo ip addr add 192.168.1.100/24 dev eth0
sudo ip link set eth0 up
```

**Option B: Via Network Switch** (Better for multiple boards)
```
PC ◄─── Switch ───► PYNQ-Z2
        ▲
        └───► Other boards (optional)
```

All devices on same subnet (192.168.1.x).

#### 3. Verify PetaLinux Auto-Copy

After `petalinux-build` completes, you should see:
```
[INFO] Successfully built images
[INFO] Copying built images to tftp dir: /tftpboot
```

If you see "Failed to copy", it means `/tftpboot` doesn't exist (create it with step 1).

### PYNQ-Z2 U-Boot Configuration

#### 1. Prepare SD Card with BOOT.BIN

Your SD card still needs `BOOT.BIN` (FSBL + U-Boot):
```bash
# Format SD card with FAT32 partition
sudo mkfs.vfat -F 32 /dev/sdX1

# Copy only BOOT.BIN
cp images/linux/BOOT.BIN /media/<boot_partition>/
sync
```

**Note**: No need for `image.ub` or rootfs on SD card when using TFTP!

#### 2. Configure U-Boot for Network Boot

Insert SD card and boot PYNQ-Z2. At U-Boot prompt, configure network:

```bash
# Stop autoboot by pressing any key
# You should see: U-Boot>

# Set network parameters
setenv serverip 192.168.1.100          # Your PC's IP
setenv ipaddr 192.168.1.10              # Board's IP
setenv netmask 255.255.255.0
setenv gatewayip 192.168.1.1            # Optional, if using router

# Set boot command to TFTP boot
setenv bootcmd 'tftpboot 0x2000000 image.ub; bootm 0x2000000'

# Save environment to persistent storage
saveenv

# Test TFTP boot immediately
run bootcmd
```

**Manual TFTP Boot** (for testing):
```bash
U-Boot> tftpboot 0x2000000 image.ub    # Fetch kernel to RAM
U-Boot> bootm 0x2000000                 # Boot the kernel
```

#### 3. Automatic Boot on Power-On

After `saveenv`, the board will automatically:
1. Boot FSBL and U-Boot from SD card
2. Initialize Ethernet
3. Fetch `image.ub` from TFTP server at `192.168.1.100`
4. Boot the kernel

### Development Workflow

Once set up, your workflow becomes:

```bash
# 1. Edit kernel code
vim components/kernel/drivers/mydriver.c

# 2. Rebuild kernel (3-5 minutes)
petalinux-build -c kernel
# Images automatically copied to /tftpboot

# 3. Reset PYNQ-Z2 board
# Press reset button or power cycle

# 4. Watch serial console
# U-Boot automatically fetches new image and boots

# Total time: ~3-5 minutes!
```

### What Gets Transferred via TFTP

- **Kernel image** (`image.ub`) - ~10-20MB
- **Device tree** (embedded in image.ub)
- **Boot script** (`boot.scr`) - optional

**Not transferred**: Root filesystem (still from SD card or initramfs)

### Advanced: NFS Root Filesystem

For ultimate development speed, combine TFTP kernel boot with NFS-mounted root filesystem:

#### Host PC NFS Setup:

```bash
# Install NFS server
sudo apt install nfs-kernel-server

# Create NFS export directory
sudo mkdir -p /nfs/rootfs

# Extract rootfs
sudo tar -xf images/linux/rootfs.tar.gz -C /nfs/rootfs/

# Configure NFS exports
echo "/nfs/rootfs 192.168.1.10(rw,sync,no_root_squash,no_subtree_check)" | sudo tee -a /etc/exports

# Restart NFS server
sudo exportfs -ra
sudo systemctl restart nfs-kernel-server
```

#### U-Boot NFS Boot Configuration:

```bash
U-Boot> setenv bootargs 'console=ttyPS0,115200 root=/dev/nfs nfsroot=192.168.1.100:/nfs/rootfs,tcp,nfsvers=3 ip=192.168.1.10:192.168.1.100:192.168.1.1:255.255.255.0:pynq:eth0:off'
U-Boot> setenv bootcmd 'tftpboot 0x2000000 image.ub; bootm 0x2000000'
U-Boot> saveenv
U-Boot> boot
```

**Benefits**:
- Edit Python scripts, configs, binaries on PC - instantly live on board
- No need to rebuild rootfs or copy files
- Perfect for application development

### Network Boot Troubleshooting

#### TFTP Connection Failed

```bash
# Test TFTP from another PC
tftp 192.168.1.100
tftp> get image.ub
tftp> quit

# Check firewall
sudo ufw status
sudo ufw allow 69/udp

# Check TFTP server logs
sudo journalctl -u tftpd-hpa -f
```

#### U-Boot Can't Find File

```bash
# Verify file is in /tftpboot
ls -lh /tftpboot/image.ub

# Check file permissions
chmod 644 /tftpboot/image.ub

# Verify TFTP server is serving the file
sudo tcpdump -i eth0 port 69
```

#### Network Configuration Issues

```bash
# On U-Boot console, test network
U-Boot> ping 192.168.1.100

# Check Ethernet link
U-Boot> mii info

# Verify IP configuration
U-Boot> printenv ipaddr serverip
```

### Security Warning

⚠️ **TFTP has NO security features**:
- No authentication
- No encryption
- Anyone on the network can fetch files
- **Only use on trusted local networks**
- **Never expose TFTP server to the Internet**

For production deployment, always use SD card or secure boot methods.

### When to Use TFTP Boot

**Use TFTP for**:
- Kernel driver development
- U-Boot debugging
- Device tree modifications
- Rapid prototyping
- CI/CD automated testing

**Don't use TFTP for**:
- Production deployments
- Field updates
- Secure environments
- Untrusted networks

## Troubleshooting

### Common Issues and Solutions

1. **Build Errors**:
   - Ensure all required tools are sourced properly
   - Check disk space (PetaLinux builds require significant space)
   - Verify hardware description file (.xsa) is valid

2. **Ubuntu 25.04 Specific Issues**:
   - **User Namespace Error**: Apply AppArmor fix: `kernel.apparmor_restrict_unprivileged_userns = 0`
   - **Host Distribution Warning**: Safe to ignore if build completes successfully
   - **Shell Compatibility Warning**: Usually non-critical, can be ignored
   - **QEMU glibc Conflicts**: Use component-by-component build approach
   - See detailed solutions in Step 7 Ubuntu 25.04 section above

3. **QEMU Build Failures**:
   - **struct sched_attr redefinition on Ubuntu 25.04**: This occurs because glibc 2.41+ defines struct sched_attr in `/usr/include/linux/sched/types.h`, but QEMU 8.2.7 also defines it
   - **Solution**: Apply patch to conditionally define the struct (see detailed fix below)
   - **Alternative**: Build components separately (`petalinux-build -c kernel`, `petalinux-build -c u-boot`)

   **Detailed Fix for struct sched_attr Redefinition**:

   1. Create patch directory:
   ```bash
   mkdir -p project-spec/meta-user/recipes-devtools/qemu/qemu-xilinx-native
   ```

   2. Create patch file `project-spec/meta-user/recipes-devtools/qemu/qemu-xilinx-native/fix-sched-attr-redefinition.patch`:
   ```patch
   From: Your Name <your.email@example.com>
   Subject: [PATCH] linux-user: Fix struct sched_attr redefinition on glibc >= 2.40

   Fix compilation error on Ubuntu 25.04 and other systems with glibc >= 2.40
   where struct sched_attr is already defined in <linux/sched/types.h>.

   --- a/linux-user/syscall.c
   +++ b/linux-user/syscall.c
   @@ -361,7 +361,11 @@
    #define __NR_sys_sched_setaffinity __NR_sched_setaffinity
    _syscall3(int, sys_sched_setaffinity, pid_t, pid, unsigned int, len,
              unsigned long *, user_mask_ptr);
   -/* sched_attr is not defined in glibc */
   +/* sched_attr is not defined in glibc < 2.40 */
   +#if !defined(__GLIBC__) || \
   +    (__GLIBC__ < 2) || \
   +    (__GLIBC__ == 2 && __GLIBC_MINOR__ < 40)
   +/* Define struct sched_attr for older glibc versions */
    struct sched_attr {
        uint32_t size;
        uint32_t sched_policy;
   @@ -374,6 +378,7 @@ struct sched_attr {
        uint32_t sched_util_min;
        uint32_t sched_util_max;
    };
   +#endif
    #define __NR_sys_sched_getattr __NR_sched_getattr
    _syscall4(int, sys_sched_getattr, pid_t, pid, struct sched_attr *, attr,
              unsigned int, size, unsigned int, flags);
   ```

   3. Create bbappend file `project-spec/meta-user/recipes-devtools/qemu/qemu-xilinx-native_8.2.7.bbappend`:
   ```bitbake
   FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

   SRC_URI += "file://fix-sched-attr-redefinition.patch"
   ```

   4. Clean and rebuild QEMU:
   ```bash
   petalinux-build -c qemu-xilinx-native -x cleansstate
   petalinux-build -c qemu-xilinx-native
   ```

   This patch conditionally defines `struct sched_attr` only for glibc versions < 2.40, avoiding the redefinition error on newer systems.

4. **Boot Problems**:
   - Check SD card partitioning and file copying
   - Verify boot mode jumpers are set correctly
   - Ensure UART connection for debugging output
   - Check power supply stability
   - **Alternative Development Method**: Consider using TFTP network boot (see Step 9b) for faster iteration during kernel development

4. **PYNQ-Z2 Specific Issues**:
   - Verify correct part number (XC7Z020-1CLG400C) in Vivado
   - Check memory configuration matches PYNQ-Z2 specs
   - Ensure peripheral pin assignments are correct

5. **Version Compatibility Issues**:
   - Use matching Vivado/PetaLinux versions (e.g., both 2023.2)
   - For PYNQ repository: Use Vivado 2024.2 for compatibility with existing TCL scripts
   - If version mismatch errors occur, consider regenerating project files

## Key Differences from Custom Board

- PYNQ-Z2 uses XC7Z020-1CLG400C instead of custom FPGA
- Different memory configuration
- Specific peripheral mappings for PYNQ-Z2
- Pre-configured board support files available

## References

- Original video: https://www.youtube.com/watch?v=OfozFBfvWeY
- PYNQ-Z2 documentation
- PetaLinux documentation
- Xilinx support resources

---

**Note**: This tutorial has been updated with comprehensive PetaLinux development steps for the PYNQ-Z2 board, based on standard Xilinx embedded Linux development practices and official documentation.
