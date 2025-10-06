# XSCT to SDT Migration Guide

## Problem Summary

The current PetaLinux project (`z2ptx`) was created using the deprecated **XSCT (Xilinx Software Command Tool)** workflow. This causes widespread build failures because:

1. **XSCT is deprecated** - AMD/Xilinx no longer recommends this approach
2. **XSCT binary not available** - The tool is not installed and difficult to obtain
3. **Pervasive dependencies** - Many recipes (device-tree, fsbl-firmware, pmu-firmware, etc.) depend on xsct
4. **Workarounds are fragile** - Patching individual recipes is time-consuming and error-prone

## Solution Options

### Option 1: Create Fresh Project with SDT Workflow ⭐ **RECOMMENDED**

**Advantages:**
- ✅ Clean, modern approach
- ✅ No XSCT dependencies at all
- ✅ Officially supported by AMD/Xilinx
- ✅ Future-proof (SDT is the way forward)
- ✅ Faster, more reliable builds
- ✅ Better tooling integration

**Disadvantages:**
- ⚠️ Need to reconfigure customizations
- ⚠️ ~30 minutes to set up

**Time Investment:** 30-60 minutes setup, saves hours of debugging

### Option 2: Fix Current Project with Workarounds

**Advantages:**
- ✅ Keeps existing configuration
- ✅ Quick to apply fixes

**Disadvantages:**
- ❌ Still fragile and may break
- ❌ Not officially supported
- ❌ May encounter new issues
- ❌ Requires maintaining workarounds
- ❌ Not future-proof

**Time Investment:** 10 minutes setup, potentially hours of ongoing debugging

---

## Option 1: Fresh SDT Project (RECOMMENDED)

### Step-by-Step Instructions

#### 1. Run the Creation Script

```bash
cd /home/its/tools/yocto/petal/pynq
./create_sdt_project.sh
```

This will:
- Create a new project named `pynq_z2_sdt`
- Import the XSA hardware description
- Enable SDT workflow automatically
- Apply QEMU workaround for Ubuntu 25.04

#### 2. Build the Project

```bash
cd pynq_z2_sdt
petalinux-build
```

#### 3. Generate Boot Files

```bash
petalinux-package --boot --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/system.bit --u-boot --force
```

#### 4. Expected Output

After successful build, you'll find:
- **WIC Image**: `images/linux/petalinux-image-minimal-zynq-generic-7z020.wic`
- **Boot Files**: `images/linux/BOOT.BIN`, `images/linux/image.ub`
- **Root Filesystem**: `images/linux/rootfs.tar.gz`

### What is SDT Workflow?

**SDT (System Device Tree)** is AMD/Xilinx's modern approach to device tree generation:

| Feature | XSCT (Old) | SDT (New) |
|---------|-----------|----------|
| Tool Required | External XSCT binary | Built into PetaLinux |
| Maintenance | Deprecated | Actively maintained |
| XSA Processing | Via TCL scripts | Direct parsing |
| Performance | Slower | Faster |
| Error Handling | Poor | Better |
| PetaLinux 2025.1+ | ❌ Not recommended | ✅ Recommended |

### Migrating Customizations

If you have customizations in the old project, migrate them:

#### Device Tree Customizations
```bash
# Old location
cp z2ptx/project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi \
   pynq_z2_sdt/project-spec/meta-user/recipes-bsp/device-tree/files/

# Old location
cp z2ptx/project-spec/meta-user/recipes-bsp/device-tree/device-tree.bbappend \
   pynq_z2_sdt/project-spec/meta-user/recipes-bsp/device-tree/
```

#### RootFS Customizations
```bash
# Copy rootfs config
cp z2ptx/project-spec/configs/rootfs_config \
   pynq_z2_sdt/project-spec/configs/
```

#### Kernel Config
```bash
# Copy kernel config fragments
cp z2ptx/project-spec/meta-user/recipes-kernel/linux/linux-xlnx/*.cfg \
   pynq_z2_sdt/project-spec/meta-user/recipes-kernel/linux/linux-xlnx/
```

---

## Option 2: Fix Current Project

### Step-by-Step Instructions

#### 1. Run the Fix Script

```bash
cd /home/its/tools/yocto/petal/pynq
./fix_xsct_dependencies.sh
```

This will:
- Create dummy FSBL provider
- Override device-tree recipe to skip xsct
- Blacklist problematic recipes
- Configure workarounds

#### 2. Review Changes

Check the backup:
```bash
ls -la z2ptx/project-spec/meta-user.backup.*
```

#### 3. Clean Build (Optional but Recommended)

```bash
cd z2ptx
petalinux-build -x mrproper
```

#### 4. Rebuild

```bash
petalinux-build
```

### Limitations of This Approach

1. **FSBL is a dummy** - You won't get a real FSBL, just a placeholder
2. **Boot may not work** - Without real FSBL, the system may not boot
3. **Fragile** - Other recipes may still fail due to xsct dependencies
4. **Unsupported** - This is not an official AMD/Xilinx approach

---

## Comparison: Build Time & Reliability

| Metric | Fresh SDT Project | Fixed Current Project |
|--------|-------------------|----------------------|
| Initial Setup | 30 min | 10 min |
| First Build | 2-4 hours | 2-4 hours (may fail) |
| Reliability | ⭐⭐⭐⭐⭐ | ⭐⭐ |
| Future Builds | Fast (cached) | May encounter new issues |
| Maintenance | Minimal | Ongoing workarounds |
| Boot Success | High | Low (dummy FSBL) |

---

## Recommendation

### For Production Use: **Option 1 (Fresh SDT Project)**

Create a new project with proper SDT workflow. This is the only sustainable approach.

```bash
cd /home/its/tools/yocto/petal/pynq
./create_sdt_project.sh
cd pynq_z2_sdt
petalinux-build
```

### For Quick Testing: **Option 2 (Fix Current)**

Only if you need to quickly test something and don't care about boot functionality.

```bash
cd /home/its/tools/yocto/petal/pynq
./fix_xsct_dependencies.sh
cd z2ptx
petalinux-build
```

---

## Documentation Updates Required

After choosing your approach, update these files:

### tutorial01.md
Add a section on SDT workflow:
```markdown
## Modern SDT Workflow (Recommended)

Instead of the deprecated XSCT workflow, use SDT:
1. Create project with `petalinux-create`
2. Enable SDT in configuration
3. Build normally - no xsct required
```

### progress.md
Update the build process checklist:
```markdown
### Build Process
- [x] Created fresh SDT-based project
- [x] Enabled SDT workflow configuration
- [x] Applied QEMU workaround
- [ ] Full system build in progress
- [ ] Verify WIC image generation
```

---

## Troubleshooting

### Issue: "xsct: not found" after applying fixes

**Solution:** You're still using old project. Create fresh SDT project instead.

### Issue: Build succeeds but system won't boot

**Solution:** The dummy FSBL doesn't actually initialize hardware. Create fresh SDT project to get real FSBL.

### Issue: SDT option not available in petalinux-config

**Solution:** Your PetaLinux version may be too old. Update to 2024.2+ or 2025.1+.

---

## References

- **AMD UG1144**: PetaLinux Tools Documentation
- **SDT Workflow**: Introduced in PetaLinux 2024.1+
- **XSCT Deprecation**: See PetaLinux 2025.1 Release Notes
- **Migration Guide**: Created `/home/its/tools/yocto/petal/pynq/SDT_WORKFLOW_GUIDE.md`

---

## Quick Start Commands

### Fresh SDT Project (Recommended)
```bash
cd /home/its/tools/yocto/petal/pynq
./create_sdt_project.sh
cd pynq_z2_sdt
petalinux-build
```

### Fix Current Project (Not Recommended)
```bash
cd /home/its/tools/yocto/petal/pynq
./fix_xsct_dependencies.sh
cd z2ptx
petalinux-build
```

---

**Bottom Line:** Use Option 1 (Fresh SDT Project) unless you have a very good reason not to.
