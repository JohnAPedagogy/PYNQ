# Dockerfile for PetaLinux 2025.1 Build Environment
FROM ubuntu:20.04

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Install required system packages for PetaLinux
RUN apt-get update && apt-get install -y \
    # Basic tools
    wget curl git vim sudo \
    # Build essentials
    build-essential \
    # PetaLinux dependencies
    tofrodos gawk xvfb git gitk git-gui \
    libgtk2.0-dev lib32z1 libncurses5-dev \
    zlib1g-dev libssl-dev flex bison libselinux1 \
    gnupg2 libtool autoconf libc6-dev-i386 \
    # Additional Ubuntu 20.04 requirements
    chrpath socat xterm autoconf libtool tar unzip \
    texinfo zlib1g-dev gcc-multilib screen pax \
    gzip cpio python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping python3-git \
    python3-jinja2 libegl1-mesa libsdl1.2-dev \
    python3-subunit mesa-common-dev zstd liblz4-tool \
    # Xilinx specific requirements
    libtinfo5 libncurses5 \
    && rm -rf /var/lib/apt/lists/*

# Create petalinux user with sudo privileges
RUN useradd -m -s /bin/bash petalinux && \
    echo "petalinux:petalinux" | chpasswd && \
    adduser petalinux sudo && \
    echo "petalinux ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Set up working directories
RUN mkdir -p /opt/PetaLinux && \
    chown -R petalinux:petalinux /opt/PetaLinux && \
    mkdir -p /workspace && \
    chown -R petalinux:petalinux /workspace

# Switch to petalinux user
USER petalinux
WORKDIR /home/petalinux

# Set environment variables
ENV PETLINUX_VER=2025.1
ENV PATH="/opt/PetaLinux/petalinux-v${PETLINUX_VER}/tools/bin:$PATH"

# Set shell to bash
SHELL ["/bin/bash", "-c"]

# Create .bashrc with PetaLinux environment
RUN echo 'export PS1="\u@petalinux-docker:\w\$ "' >> ~/.bashrc && \
    echo 'source /opt/PetaLinux/petalinux-v${PETLINUX_VER}/settings.sh 2>/dev/null || true' >> ~/.bashrc

WORKDIR /workspace
CMD ["/bin/bash"]