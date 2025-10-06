# WIC Image Generated for z2b PetaLinux Build

## Generated Files

**Main WIC Image**:
- **File**: `images/linux/petalinux-sdimage.wic`
- **Size**: 6.1 GB (6,442,455,040 bytes)
- **Type**: Complete bootable SD card image
- **Date**: 2025-10-06

**Compressed Version** (generating in background):
- **File**: `images/linux/petalinux-sdimage.wic.bz2`
- **Expected Size**: ~500-800 MB
- **Compression**: bzip2 level 9

## Partition Layout

```
Disk petalinux-sdimage.wic: 6 GiB
Disklabel type: dos

Device                          Boot   Start      End    Sectors Size Type
petalinux-sdimage.wic1          *          8  4194311  4194304   2G  W95 FAT32 (LBA)
petalinux-sdimage.wic2              4194312 12582919  8388608   4G  Linux (ext4)
```

### Partition 1: Boot Partition (FAT32, 2GB)
Contains:
- `BOOT.BIN` (1.2MB) - FSBL + U-Boot + Device Tree
- `boot.scr` (3.8KB) - U-Boot boot script
- `image.ub` (30MB) - Kernel FIT image with device tree

### Partition 2: Root Filesystem (ext4, 4GB)
Contains:
- Complete PetaLinux minimal root filesystem
- BusyBox userland
- System libraries and utilities

## How to Deploy

### Option 1: Using dd (Linux/macOS)

```bash
# Find your SD card device
lsblk

# Unmount any mounted partitions
sudo umount /dev/sdX*

# Write WIC image to SD card
sudo dd if=images/linux/petalinux-sdimage.wic \
  of=/dev/sdX \
  bs=4M \
  status=progress \
  conv=fsync

# Sync filesystem
sync
```

**⚠️ WARNING**: Replace `/dev/sdX` with your actual SD card device! Wrong device will destroy data.

### Option 2: Using bmaptool (Faster, Recommended)

```bash
# Install bmaptool
sudo apt install bmap-tools

# Write compressed image (when available)
sudo bmaptool copy images/linux/petalinux-sdimage.wic.bz2 /dev/sdX

# Or write uncompressed
sudo bmaptool copy images/linux/petalinux-sdimage.wic /dev/sdX
```

**Benefits**:
- 10x faster than dd (only writes used blocks)
- Built-in verification
- Works with compressed images

### Option 3: Using Etcher (GUI, All Platforms)

1. Download Etcher: https://www.balena.io/etcher/
2. Select `petalinux-sdimage.wic` (or .wic.bz2)
3. Select your SD card
4. Click "Flash!"

## Boot Configuration

### Hardware Setup
1. Insert SD card into PYNQ-Z2
2. Set boot mode jumpers to SD card boot:
   - JP4: Set to SD
3. Connect UART cable (115200 baud, 8N1)
4. Power on board

### Expected Boot Sequence
1. **FSBL** loads from BOOT.BIN
2. **U-Boot** initializes and runs boot script
3. **Linux kernel** loads from image.ub
4. **Rootfs** mounts from ext4 partition
5. **Login prompt** appears on serial console

### Default Login
- **Username**: root
- **Password**: root (or no password if not configured)

## Build Configuration

The WIC image was generated with:

**PetaLinux Configuration** (`project-spec/meta-user/conf/petalinuxbsp.conf`):
```bash
# Enable WIC image generation
IMAGE_FSTYPES += "wic wic.bmap wic.bz2"
IMAGE_BOOT_FILES:zynq = "BOOT.BIN boot.scr image.ub"
```

**Build Commands**:
```bash
# Build image
petalinux-build -c petalinux-image-minimal

# Package BOOT.BIN
petalinux-package --boot --fsbl images/linux/zynq_fsbl.elf --u-boot images/linux/u-boot.elf --force

# Generate WIC
petalinux-package wic --images-dir images/linux/ --bootfiles "BOOT.BIN boot.scr image.ub"
```

## Verification

Check WIC image integrity:

```bash
# Check file size
ls -lh images/linux/petalinux-sdimage.wic
# Should be ~6.1GB

# Check partition table
fdisk -l images/linux/petalinux-sdimage.wic
# Should show 2 partitions

# Checksum for integrity
sha256sum images/linux/petalinux-sdimage.wic > petalinux-sdimage.wic.sha256
```

## Customization

To modify the WIC image:

1. **Change partition sizes**: Edit `build/rootfs.wks`
2. **Add files to boot partition**: Update `IMAGE_BOOT_FILES:zynq`
3. **Modify rootfs**: Configure packages with `petalinux-config -c rootfs`
4. **Rebuild**: `petalinux-build` and regenerate WIC

## Troubleshooting

### SD Card Won't Boot
- Verify boot jumpers (JP4 = SD)
- Check UART connection (115200 8N1)
- Try different SD card (some cards are incompatible)
- Rewrite WIC image with verification

### Write Fails
- Check SD card isn't write-protected
- Verify sufficient permissions (use sudo)
- Ensure SD card has enough space (8GB+ recommended)
- Try different card reader

### Slow Boot
- Normal first boot (rootfs resize, initialization)
- Subsequent boots should be faster
- Check SD card speed (Class 10 or UHS recommended)

## Technical Details

**WIC Kickstart File**: `build/rootfs.wks`

```
# Boot partition (FAT32, bootable)
part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4096 --size 2048M

# Root filesystem (ext4)
part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label rootfs --align 4096 --size 4096M

bootloader --ptable msdos
```

**Image Format**: DOS partition table (MBR)
**Alignment**: 4096 bytes (optimized for SD card performance)
**Label IDs**:
- Boot partition: `boot`
- Root partition: `rootfs`

## Distribution

For sharing or production deployment:

```bash
# Create versioned archive
VERSION="1.0.0"
DATE=$(date +%Y%m%d)

# Compress (if not already done)
bzip2 -k -9 images/linux/petalinux-sdimage.wic

# Rename with version
mv images/linux/petalinux-sdimage.wic.bz2 \
   pynq-z2-petalinux-v${VERSION}-${DATE}.wic.bz2

# Generate checksum
sha256sum pynq-z2-petalinux-v${VERSION}-${DATE}.wic.bz2 > \
   pynq-z2-petalinux-v${VERSION}-${DATE}.sha256

# Create release notes
cat > RELEASE_NOTES.txt << EOF
PYNQ-Z2 PetaLinux Image v${VERSION}
Build Date: ${DATE}
Image: pynq-z2-petalinux-v${VERSION}-${DATE}.wic.bz2
Checksum: See .sha256 file

Flash with: bmaptool copy <image> /dev/sdX
Or: dd if=<image.wic> of=/dev/sdX bs=4M status=progress

Boot: SD card boot mode (JP4 = SD)
Serial: 115200 8N1 on UART
Login: root/root
EOF
```

---

**Generated**: 2025-10-06
**PetaLinux Version**: 2023.2
**Target**: PYNQ-Z2 (Zynq-7020)
**Build System**: Ubuntu 25.04
