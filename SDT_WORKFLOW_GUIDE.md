# SDT (System Device Tree) Workflow Guide for PetaLinux

## Overview

AMD/Xilinx is transitioning from the deprecated XSCT-based device tree generation workflow to the modern **SDT (System Device Tree)** workflow. This guide explains how to configure PetaLinux to use SDT instead of XSCT.

## Why SDT Instead of XSCT?

### XSCT Issues:
- **Deprecated**: XSCT is officially deprecated by AMD
- **Missing Tool**: XSCT binary not found error (`xsct: not found`)
- **Complex Setup**: Requires separate Vitis/XSCT installation
- **Build Failures**: Causes device-tree and fsbl-firmware build failures

### SDT Advantages:
- **Modern Approach**: Recommended by AMD for PetaLinux 2025.1+
- **Native Support**: Built into PetaLinux, no external tools needed
- **Better Integration**: Works directly with XSA files
- **Future-Proof**: Will be the only supported method in future releases

## Current Build Errors (XSCT-based)

When using the default XSCT workflow, you'll encounter:

```
ERROR: device-tree-1_2025.1+git-r0 do_configure: ExecutionError
xsct: not found

ERROR: fsbl-firmware-2025.1+git-r0 do_configure: ExecutionError
xsct: not found
```

## Enabling SDT Workflow

### Method 1: Interactive Configuration (Recommended)

1. **Configure PetaLinux project**:
   ```bash
   cd /path/to/petalinux/project
   petalinux-config
   ```

2. **Navigate to settings**:
   - Go to: `Yocto Settings` → `Enable SUBSYSTEM_SDT_FLOW`
   - Or search for "SDT" in the configuration menu
   - Enable the `SUBSYSTEM_SDT_FLOW` option

3. **Save and exit** the configuration

### Method 2: Manual Configuration File Edit

Edit `project-spec/configs/config` and add:

```bash
CONFIG_SUBSYSTEM_SDT_FLOW=y
```

And remove or comment out:
```bash
# CONFIG_SUBSYSTEM_COMPONENT_DEVICE__TREE_NAME_DEVICE__TREE__GENERATOR=y
```

### Method 3: Command Line (Automated)

```bash
# Enable SDT workflow
echo 'CONFIG_SUBSYSTEM_SDT_FLOW=y' >> project-spec/configs/config

# Reconfigure project
petalinux-config --silentconfig
```

## Alternative Workaround: Using Pre-generated Device Trees

If SDT configuration doesn't work or you need a quick workaround:

### 1. Use SYSTEM_DTFILE Variable

Add to `project-spec/meta-user/conf/petalinuxbsp.conf`:

```bash
# Use pre-generated device tree from workspace
SYSTEM_DTFILE = "${PROOT}/components/plnx_workspace/device-tree/device-tree/system-top.dts"
```

### 2. Copy Device Tree Files

If you have a working reference project:

```bash
# Copy device-tree workspace
cp -r /path/to/reference/components/plnx_workspace/device-tree/* \
      /path/to/current/project/components/plnx_workspace/device-tree/

# Copy to meta-user layer
mkdir -p project-spec/meta-user/recipes-bsp/device-tree/files
cp components/plnx_workspace/device-tree/device-tree/system-top.dts \
   project-spec/meta-user/recipes-bsp/device-tree/files/
```

### 3. Skip FSBL-firmware if not needed

For Linux-only builds, you can skip FSBL firmware generation:

Add to `project-spec/meta-user/conf/petalinuxbsp.conf`:

```bash
# Skip FSBL firmware if using pre-built FSBL
EXTRA_IMAGEDEPENDS:remove = "fsbl-firmware"
```

## Verification Steps

After enabling SDT workflow:

1. **Clean previous builds**:
   ```bash
   petalinux-build -x mrproper
   # Or for less aggressive clean:
   petalinux-build -c device-tree -x cleansstate
   petalinux-build -c fsbl-firmware -x cleansstate
   ```

2. **Rebuild project**:
   ```bash
   petalinux-build
   ```

3. **Check for SDT usage** in build logs:
   ```bash
   # Look for SDT-related messages instead of XSCT
   grep -i "sdt\|system.*device.*tree" build/tmp/work/*/device-tree/*/temp/log.do_configure.*
   ```

## Comparison: XSCT vs SDT Workflow

| Aspect | XSCT (Old) | SDT (New) |
|--------|-----------|----------|
| Tool Required | External XSCT binary | Built into PetaLinux |
| Configuration | DTG (Device Tree Generator) | SDT (System Device Tree) |
| XSA Processing | Via XSCT TCL scripts | Direct XSA parsing |
| Maintenance | Deprecated | Actively maintained |
| Error Prone | Yes (tool not found errors) | No |
| PetaLinux 2025.1+ | Not recommended | Recommended |

## Expected Build Behavior with SDT

When SDT is properly enabled:

1. **No XSCT calls**: Build logs won't show `xsct` commands
2. **Direct XSA processing**: Device trees generated directly from XSA
3. **Faster builds**: No external tool invocation overhead
4. **Cleaner logs**: No deprecated tool warnings

## Troubleshooting

### Issue: SDT option not available in config menu

**Solution**: Update PetaLinux to 2024.2+ or 2025.1+ where SDT is fully supported.

### Issue: Build still tries to use XSCT after enabling SDT

**Solution**:
```bash
# Clean sstate cache
petalinux-build -c device-tree -x cleansstate
petalinux-build -c fsbl-firmware -x cleansstate

# Reconfigure
petalinux-config --silentconfig

# Rebuild
petalinux-build
```

### Issue: Device tree generation fails with SDT

**Solution**: Ensure XSA file is valid and properly imported:
```bash
petalinux-config --get-hw-description=/path/to/design.xsa --silentconfig
```

## References

- **AMD PetaLinux Tools Documentation**: UG1144
- **System Device Tree (SDT) Flow**: Introduced in PetaLinux 2024.1+
- **XSCT Deprecation Notice**: See PetaLinux 2025.1 Release Notes

## Current Project Status

For the `/home/its/tools/yocto/petal/pynq/z2ptx` project:

### Applied Workarounds:
1. ✅ QEMU skip: `ASSUME_PROVIDED += "qemu-native"`
2. ✅ SYSTEM_DTFILE: Pre-generated device tree
3. ✅ Device tree files copied to meta-user layer

### Recommended Next Step:
Enable SDT workflow by running:
```bash
cd /home/its/tools/yocto/petal/pynq/z2ptx
petalinux-config
# Enable SUBSYSTEM_SDT_FLOW option
# Save and rebuild
petalinux-build
```

This will eliminate all XSCT dependency issues permanently.
