# Dummy FSBL recipe to satisfy virtual/fsbl and fsbl dependencies
# This allows the build to proceed without requiring xsct

SUMMARY = "Dummy FSBL to satisfy dependencies"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

PROVIDES = "virtual/fsbl"

inherit deploy

do_deploy() {
    # Create an empty boot.bin placeholder
    touch ${DEPLOYDIR}/boot.bin
}

addtask deploy before do_build after do_compile
