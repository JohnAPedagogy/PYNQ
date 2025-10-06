# QEMU Build Fix for Ubuntu 25.04

## Issue
QEMU xilinx-native 8.2.7 fails to compile on Ubuntu 25.04 with glibc 2.41 due to `struct sched_attr` redefinition error.

```
error: redefinition of 'struct sched_attr'
  367 | struct sched_attr {
      |        ^~~~~~~~~~
```

## Root Cause
- Ubuntu 25.04 uses glibc 2.41 which defines `struct sched_attr` in `/usr/include/linux/sched/types.h`
- QEMU 8.2.7 `linux-user/syscall.c:365` also defines this struct
- Older glibc versions didn't have this definition, so QEMU provided its own

## Solution Applied
Created a patch that conditionally defines `struct sched_attr` only for glibc versions < 2.40:

```c
#if !defined(__GLIBC__) || \
    (__GLIBC__ < 2) || \
    (__GLIBC__ == 2 && __GLIBC_MINOR__ < 40)
struct sched_attr {
    // struct definition
};
#endif
```

## Files Created
1. **Patch file**: `project-spec/meta-user/recipes-devtools/qemu/qemu-xilinx-native/fix-sched-attr-redefinition.patch`
   - Patches `linux-user/syscall.c` to add glibc version checks

2. **BitBake append**: `project-spec/meta-user/recipes-devtools/qemu/qemu-xilinx-native_8.2.7.bbappend`
   - Instructs Yocto/PetaLinux to apply the patch during QEMU build

## Verification
```bash
# Clean previous build
petalinux-build -c qemu-xilinx-native -x cleansstate

# Rebuild QEMU with patch
petalinux-build -c qemu-xilinx-native
```

**Result**: ✅ QEMU compilation succeeds without errors

## Documentation
- Full fix documented in `/home/its/tools/yocto/petal/pynq/tutorial01.md` (Troubleshooting section)
- Progress tracked in `/home/its/tools/yocto/petal/pynq/progress.md`

## Impact
This fix allows PetaLinux builds to proceed on Ubuntu 25.04 without QEMU-related compilation failures, enabling full system builds including kernel, rootfs, and bootable images.

---
**Date**: 2025-10-06
**System**: Ubuntu 25.04 with glibc 2.41
**PetaLinux**: 2023.2
**QEMU Version**: 8.2.7
