FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://system-user.dtsi"

# Override do_configure to skip xsct dependency
do_configure() {
    # Use pre-existing device tree files from workspace
    if [ -d "${PROOT}/components/plnx_workspace/device-tree/device-tree" ]; then
        cp -r ${PROOT}/components/plnx_workspace/device-tree/device-tree/* ${S}/ || true
    fi
}

# Skip xsct-native dependency
DEPENDS:remove = "xsct-native"
