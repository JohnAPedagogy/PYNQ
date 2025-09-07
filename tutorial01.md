# PetaLinux Tutorial for PYNQ-Z2 Board

This tutorial outlines the steps to build PetaLinux for the PYNQ-Z2 board, adapted from the YouTube video: https://www.youtube.com/watch?v=OfozFBfvWeY

## Prerequisites

- Linux host machine (Ubuntu 18.04/20.04 LTS recommended)
- Minimum 100GB free disk space
- 8GB RAM minimum (16GB recommended)
- Internet connection for downloads

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

## Troubleshooting

### Common Issues and Solutions

1. **Build Errors**:
   - Ensure all required tools are sourced properly
   - Check disk space (PetaLinux builds require significant space)
   - Verify hardware description file (.xsa) is valid

2. **Boot Problems**:
   - Check SD card partitioning and file copying
   - Verify boot mode jumpers are set correctly
   - Ensure UART connection for debugging output
   - Check power supply stability

3. **PYNQ-Z2 Specific Issues**:
   - Verify correct part number (XC7Z020-1CLG400C) in Vivado
   - Check memory configuration matches PYNQ-Z2 specs
   - Ensure peripheral pin assignments are correct

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
