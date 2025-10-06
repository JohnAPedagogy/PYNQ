#!/bin/bash
# Script to create a fresh PetaLinux project using SDT workflow
# This avoids all XSCT dependencies and uses the modern recommended approach

set -e  # Exit on error

# Configuration
PROJECT_NAME="pynq_z2_sdt"
XSA_FILE="/home/its/tools/yocto/petal/pynq/boards/Pynq-Z2/base/pynq_z2_petalinux_fresh/project-spec/hw-description/system.xsa"
PETALINUX_DIR="/home/its/tools/yocto/ptx"
BUILD_DIR="/home/its/tools/yocto/petal/pynq"

echo "========================================="
echo "Creating Fresh SDT-based PetaLinux Project"
echo "========================================="

# Check prerequisites
if [ ! -f "$XSA_FILE" ]; then
    echo "ERROR: XSA file not found at $XSA_FILE"
    exit 1
fi

if [ ! -d "$PETALINUX_DIR" ]; then
    echo "ERROR: PetaLinux installation not found at $PETALINUX_DIR"
    exit 1
fi

# Source PetaLinux environment
echo "Sourcing PetaLinux environment..."
source "$PETALINUX_DIR/settings.sh"

# Navigate to build directory
cd "$BUILD_DIR"

# Remove old project if exists
if [ -d "$PROJECT_NAME" ]; then
    echo "Removing existing project: $PROJECT_NAME"
    rm -rf "$PROJECT_NAME"
fi

# Create new PetaLinux project
echo "Creating new PetaLinux project: $PROJECT_NAME"
petalinux-create --type project --template zynq --name "$PROJECT_NAME"

# Navigate into project
cd "$PROJECT_NAME"

# Import hardware description
echo "Importing hardware description from XSA file..."
petalinux-config --get-hw-description="$(dirname $XSA_FILE)" --silentconfig

# Configure for SDT workflow
echo "Configuring project for SDT workflow..."

# Create configuration script
cat > /tmp/petalinux_sdt_config.sh << 'EOF'
#!/bin/bash
# Enable SDT workflow in PetaLinux configuration

CONFIG_FILE="project-spec/configs/config"

# Check if SDT option exists
if grep -q "CONFIG_SUBSYSTEM_SDT_FLOW" "$CONFIG_FILE"; then
    echo "Enabling SDT workflow..."
    sed -i 's/# CONFIG_SUBSYSTEM_SDT_FLOW is not set/CONFIG_SUBSYSTEM_SDT_FLOW=y/' "$CONFIG_FILE"
else
    echo "Adding SDT workflow configuration..."
    echo "CONFIG_SUBSYSTEM_SDT_FLOW=y" >> "$CONFIG_FILE"
fi

# Disable DTG (Device Tree Generator) if using SDT
if grep -q "CONFIG_SUBSYSTEM_COMPONENT_DEVICE__TREE_NAME_DEVICE__TREE__GENERATOR" "$CONFIG_FILE"; then
    sed -i 's/CONFIG_SUBSYSTEM_COMPONENT_DEVICE__TREE_NAME_DEVICE__TREE__GENERATOR=y/# CONFIG_SUBSYSTEM_COMPONENT_DEVICE__TREE_NAME_DEVICE__TREE__GENERATOR is not set/' "$CONFIG_FILE"
fi

echo "SDT workflow enabled successfully"
EOF

chmod +x /tmp/petalinux_sdt_config.sh
/tmp/petalinux_sdt_config.sh
rm /tmp/petalinux_sdt_config.sh

# Add QEMU workaround for Ubuntu 25.04 glibc 2.41
echo "Adding QEMU workaround..."
cat >> project-spec/meta-user/conf/petalinuxbsp.conf << 'EOF'

# Skip qemu-xilinx-native due to compilation failure with glibc 2.41
ASSUME_PROVIDED += "qemu-native"
EOF

# Reconfigure with new settings
echo "Applying configuration..."
petalinux-config --silentconfig

# Build the project
echo ""
echo "========================================="
echo "Configuration Complete!"
echo "========================================="
echo ""
echo "Project created at: $BUILD_DIR/$PROJECT_NAME"
echo ""
echo "To build the project, run:"
echo "  cd $BUILD_DIR/$PROJECT_NAME"
echo "  petalinux-build"
echo ""
echo "To build specific components:"
echo "  petalinux-build -c u-boot"
echo "  petalinux-build -c kernel"
echo "  petalinux-build -c rootfs"
echo ""
echo "To generate boot files:"
echo "  petalinux-package --boot --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/system.bit --u-boot --force"
echo ""
echo "========================================="
echo "SDT Workflow Benefits:"
echo "========================================="
echo "✓ No XSCT dependency"
echo "✓ Direct XSA processing"
echo "✓ Modern, actively maintained"
echo "✓ Recommended by AMD/Xilinx"
echo "✓ Future-proof"
echo "========================================="
