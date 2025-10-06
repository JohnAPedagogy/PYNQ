# Next Steps: Recommended Actions

## Summary

After extensive debugging, we've identified that the current PetaLinux project (`z2ptx`) uses the **deprecated XSCT workflow**, which causes pervasive build failures due to missing `xsct` tool dependencies throughout the entire project.

## Problem

- **Root Cause**: XSCT (Xilinx Software Command Tool) workflow is deprecated and tool is unavailable
- **Impact**: Multiple recipes fail (device-tree, fsbl-firmware, pmu-firmware, etc.)
- **Workarounds Applied**: Dummy FSBL, device-tree overrides - fragile and unsupported

## Recommendation: Start Fresh with SDT Workflow

### Why SDT?

✅ **Officially supported** by AMD/Xilinx for PetaLinux 2025.1+
✅ **No XSCT dependencies** - all tools built-in
✅ **Future-proof** - actively maintained
✅ **Faster builds** - direct XSA processing
✅ **Better reliability** - modern toolchain

### Quick Start (30 minutes)

```bash
# Navigate to project directory
cd /home/its/tools/yocto/petal/pynq

# Run automated SDT project creation script
./create_sdt_project.sh

# Build the new project
cd pynq_z2_sdt
petalinux-build

# Expected build time: 2-4 hours (first time)
# Output: WIC image in images/linux/petalinux-image-minimal-zynq-generic-7z020.wic
```

## Scripts Available

| Script | Purpose | When to Use |
|--------|---------|-------------|
| **create_sdt_project.sh** | Creates fresh SDT-based project | ⭐ **Use this** for production |
| **fix_xsct_dependencies.sh** | Patches current project | Only for quick testing |

## Detailed Documentation

All documentation is available in the project root:

- **XSCT_MIGRATION_GUIDE.md** - Complete comparison and migration guide
- **SDT_WORKFLOW_GUIDE.md** - Deep dive into SDT workflow
- **progress.md** - Updated with current status and recommendations

## What Gets Fixed with SDT?

| Issue | XSCT Workflow (Current) | SDT Workflow (New) |
|-------|------------------------|-------------------|
| device-tree build | ❌ Fails (xsct not found) | ✅ Works |
| fsbl-firmware build | ❌ Fails (xsct not found) | ✅ Works |
| pmu-firmware build | ❌ Fails (xsct not found) | ✅ Works |
| WIC image generation | ❌ Never completes | ✅ Works |
| Boot functionality | ❌ Won't boot (dummy FSBL) | ✅ Boots |
| Maintenance | ❌ Constant workarounds | ✅ Clean builds |

## Expected Timeline

### Option 1: Fresh SDT Project (Recommended)
- Setup: 30 minutes (automated)
- First build: 2-4 hours
- **Total**: ~4.5 hours to working WIC image
- **Future builds**: <1 hour (cached)

### Option 2: Continue Patching Current Project
- Apply fixes: 10 minutes
- Debug new issues: Unknown (could be hours/days)
- **Total**: Unpredictable
- **Risk**: May never produce bootable image

## Action Plan

### Immediate (Now)

```bash
cd /home/its/tools/yocto/petal/pynq
./create_sdt_project.sh
```

### During Build (2-4 hours later)

Monitor build progress:
```bash
tail -f pynq_z2_sdt/build.log
```

### After Build Completes

Check for WIC image:
```bash
ls -lh pynq_z2_sdt/images/linux/*.wic
```

Expected output:
```
petalinux-image-minimal-zynq-generic-7z020.wic  (varies, typically 100MB-1GB)
```

## If You Want to Keep Current Project Customizations

After creating the new SDT project, migrate customizations:

```bash
# Device tree customizations
cp z2ptx/project-spec/meta-user/recipes-bsp/device-tree/files/* \
   pynq_z2_sdt/project-spec/meta-user/recipes-bsp/device-tree/files/

# RootFS configuration
cp z2ptx/project-spec/configs/rootfs_config \
   pynq_z2_sdt/project-spec/configs/

# Kernel config fragments
cp z2ptx/project-spec/meta-user/recipes-kernel/linux/linux-xlnx/*.cfg \
   pynq_z2_sdt/project-spec/meta-user/recipes-kernel/linux/linux-xlnx/

# Rebuild after migrating customizations
cd pynq_z2_sdt
petalinux-build
```

## Questions?

Refer to:
- **XSCT_MIGRATION_GUIDE.md** - Comprehensive migration guide
- **SDT_WORKFLOW_GUIDE.md** - SDT workflow details
- **tutorial01.md** - Will be updated with SDT approach

## Bottom Line

🎯 **Use `create_sdt_project.sh` to create a clean, modern, working PetaLinux project.**

The current `z2ptx` project is built on deprecated XSCT workflow and will continue to encounter issues. Starting fresh with SDT is the only sustainable path forward.
