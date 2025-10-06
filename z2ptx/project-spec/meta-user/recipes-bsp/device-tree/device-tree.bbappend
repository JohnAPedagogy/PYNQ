FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://system-user.dtsi"

# Override do_configure to skip xsct dependency
do_configure() {
    # Use pre-existing device tree files from workspace
    cp -r ${PROOT}/components/plnx_workspace/device-tree/device-tree/* ${S}/
}

# Skip xsct-native dependency
DEPENDS:remove = "xsct-native"
