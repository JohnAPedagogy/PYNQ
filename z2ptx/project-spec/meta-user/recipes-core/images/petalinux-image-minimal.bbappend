# Remove FSBL dependency to work around xsct not found issue
# This allows the build to continue without FSBL firmware
# FSBL can be added separately if needed

# Remove virtual/fsbl from image dependencies
IMAGE_BOOT_FILES:remove = "boot.bin"
