#!/bin/bash
# Script to systematically remove XSCT dependencies from existing PetaLinux project
# This attempts to convert an XSCT-based project to work without XSCT

set -e  # Exit on error

PROJECT_DIR="/home/its/tools/yocto/petal/pynq/z2ptx"

echo "========================================="
echo "Fixing XSCT Dependencies in Existing Project"
echo "========================================="

if [ ! -d "$PROJECT_DIR" ]; then
    echo "ERROR: Project directory not found at $PROJECT_DIR"
    exit 1
fi

cd "$PROJECT_DIR"

echo "Step 1: Backing up current configuration..."
cp -r project-spec/meta-user project-spec/meta-user.backup.$(date +%Y%m%d_%H%M%S)

echo "Step 2: Creating dummy FSBL provider..."
mkdir -p project-spec/meta-user/recipes-bsp/fsbl
cat > project-spec/meta-user/recipes-bsp/fsbl/fsbl_1.0.bb << 'EOF'
# Dummy FSBL recipe to satisfy virtual/fsbl dependency without xsct
SUMMARY = "Dummy FSBL to satisfy dependencies"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

PROVIDES = "virtual/fsbl"

inherit deploy

do_deploy() {
    # Create placeholder
    touch ${DEPLOYDIR}/boot.bin
}

addtask deploy before do_build after do_compile
EOF

echo "Step 3: Overriding device-tree recipe to skip xsct..."
mkdir -p project-spec/meta-user/recipes-bsp/device-tree/files
cat > project-spec/meta-user/recipes-bsp/device-tree/device-tree.bbappend << 'EOF'
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://system-user.dtsi"

# Override do_configure to skip xsct dependency
do_configure() {
    # Use pre-existing device tree files from workspace if available
    if [ -d "${PROOT}/components/plnx_workspace/device-tree/device-tree" ]; then
        cp -r ${PROOT}/components/plnx_workspace/device-tree/device-tree/* ${S}/ || true
    fi
}

# Skip xsct-native dependency
DEPENDS:remove = "xsct-native"
EOF

# Create minimal system-user.dtsi if it doesn't exist
if [ ! -f "project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi" ]; then
    cat > project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi << 'EOF'
/include/ "system-conf.dtsi"
/ {
};
EOF
fi

echo "Step 4: Configuring BSP to skip problematic recipes..."
cat >> project-spec/meta-user/conf/petalinuxbsp.conf << 'EOF'

# Skip qemu-xilinx-native due to compilation failure with glibc 2.41
ASSUME_PROVIDED += "qemu-native"

# Use dummy FSBL to satisfy dependency without requiring xsct
PREFERRED_PROVIDER_virtual/fsbl = "fsbl"

# Skip PMU firmware if it requires xsct
EXTRA_IMAGEDEPENDS:remove = "pmu-firmware"

# Skip ARM trusted firmware if it requires xsct
EXTRA_IMAGEDEPENDS:remove = "arm-trusted-firmware"
EOF

echo "Step 5: Removing image dependencies on boot.bin..."
mkdir -p project-spec/meta-user/recipes-core/images
cat > project-spec/meta-user/recipes-core/images/petalinux-image-minimal.bbappend << 'EOF'
# Remove boot.bin dependency to avoid xsct issues
IMAGE_BOOT_FILES:remove = "boot.bin"
EOF

echo "Step 6: Blacklisting problematic recipes..."
cat >> project-spec/meta-user/conf/petalinuxbsp.conf << 'EOF'

# Blacklist recipes that depend on xsct and aren't essential
BBMASK += "fsbl-firmware_.*\.bb"
BBMASK += "pmufw_.*\.bb"
EOF

echo "Step 7: Cleaning previous build artifacts..."
echo "This will remove tmp/ and sstate-cache/ to force rebuild..."
read -p "Clean build artifacts? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -rf build/tmp
    rm -rf build/sstate-cache
    echo "Build artifacts cleaned"
fi

echo ""
echo "========================================="
echo "XSCT Dependencies Fix Complete!"
echo "========================================="
echo ""
echo "Changes made:"
echo "  ✓ Created dummy FSBL provider"
echo "  ✓ Overridden device-tree to skip xsct"
echo "  ✓ Configured BSP to skip QEMU"
echo "  ✓ Removed problematic image dependencies"
echo "  ✓ Blacklisted xsct-dependent recipes"
echo ""
echo "Backup saved to: project-spec/meta-user.backup.*"
echo ""
echo "To build the project, run:"
echo "  cd $PROJECT_DIR"
echo "  petalinux-build"
echo ""
echo "NOTE: This is a workaround. For best results,"
echo "consider creating a fresh project with SDT workflow:"
echo "  ./create_sdt_project.sh"
echo ""
echo "========================================="
