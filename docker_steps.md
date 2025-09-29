# Docker-Based PetaLinux Build Solution

This document outlines the steps to use Docker for PetaLinux builds, bypassing Ubuntu 25.04 glibc 2.41 compatibility issues by using a known compatible Linux distribution.

## Overview

The QEMU glibc 2.41 conflict in Ubuntu 25.04 prevents complete PetaLinux builds. Docker provides an isolated environment with a compatible Linux distribution that can successfully build the complete Linux distribution and WIC files.

## Prerequisites

- Docker installed on Ubuntu 25.04 host
- Current PetaLinux project files available
- Sufficient disk space (minimum 100GB for PetaLinux builds)
- Internet connection for Docker image downloads

## Step 1: Install Docker

### Install Docker Engine
```bash
# Update package index
sudo apt update

# Install required packages
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up stable repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Add current user to docker group
sudo usermod -aG docker $USER

# Log out and back in, or run:
newgrp docker

# Verify installation
docker --version
docker run hello-world
```

## Step 2: Create PetaLinux Docker Image

### Base Image Selection
We'll use **Ubuntu 20.04 LTS** as the base, which is officially supported by PetaLinux 2025.1 and has glibc 2.31 (compatible with QEMU).

### Create Dockerfile
```dockerfile
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
```

## Step 3: Build Docker Image

### Create the Dockerfile
```bash
# Navigate to project directory
cd /home/its/tools/yocto/petal/pynq

# Create Dockerfile
cat > Dockerfile << 'EOF'
# [Insert the Dockerfile content from Step 2]
EOF

# Build the Docker image
docker build -t petalinux-ubuntu20:2025.1 .
```

### Alternative: Pre-built Base Image
If you prefer a faster setup, you can start with an existing PetaLinux-compatible base:
```bash
# Use official Ubuntu 20.04 and install PetaLinux requirements
docker run -it --name petalinux-setup ubuntu:20.04
```

## Step 4: Install PetaLinux in Container

### Method 1: Manual Installation
```bash
# Run container with mounted directories
docker run -it --name petalinux-build \
    -v /home/its/tools/yocto/petal/pynq:/workspace/pynq \
    -v /opt/ptx:/workspace/petalinux-installer \
    petalinux-ubuntu20:2025.1

# Inside container, install PetaLinux
cd /workspace/petalinux-installer
sudo ./petalinux-v2025.1-installer.run -d /opt/PetaLinux/petalinux-v2025.1
source /opt/PetaLinux/petalinux-v2025.1/settings.sh
```

### Method 2: Automated Installation Dockerfile
```dockerfile
# Extended Dockerfile with PetaLinux pre-installed
FROM ubuntu:20.04

# [Previous Dockerfile content...]

# Copy PetaLinux installer (if available locally)
COPY petalinux-v2025.1-installer.run /tmp/

# Install PetaLinux
RUN chmod +x /tmp/petalinux-v2025.1-installer.run && \
    /tmp/petalinux-v2025.1-installer.run -d /opt/PetaLinux/petalinux-v2025.1 && \
    rm /tmp/petalinux-v2025.1-installer.run

# Source PetaLinux in bashrc
RUN echo 'source /opt/PetaLinux/petalinux-v2025.1/settings.sh' >> /home/petalinux/.bashrc
```

## Step 5: Transfer Existing PetaLinux Project

### Copy Project Files
```bash
# Create container with volume mounts
docker run -it --name petalinux-continue \
    -v /home/its/tools/yocto/petal/pynq:/workspace/host-project \
    -v /opt/ptx:/workspace/petalinux-tools \
    petalinux-ubuntu20:2025.1

# Inside container, copy project
cp -r /workspace/host-project/boards/Pynq-Z2/base/pynq_z2_petalinux_fresh /workspace/
cd /workspace/pynq_z2_petalinux_fresh

# Source PetaLinux environment
source /opt/PetaLinux/petalinux-v2025.1/settings.sh
```

### Alternative: Direct Mount
```bash
# Mount the exact project directory
docker run -it --name petalinux-build-direct \
    -v /home/its/tools/yocto/petal/pynq/boards/Pynq-Z2/base:/workspace \
    petalinux-ubuntu20:2025.1

cd /workspace/pynq_z2_petalinux_fresh
```

## Step 6: Complete PetaLinux Build in Container

### Full System Build
```bash
# Inside container
source /opt/PetaLinux/petalinux-v2025.1/settings.sh
cd /workspace/pynq_z2_petalinux_fresh

# Verify configuration
petalinux-config --get-hw-description=../base_fresh.xsa --silentconfig

# Full build (should work in Ubuntu 20.04 environment)
petalinux-build

# Generate WIC files
petalinux-package --wic --bootfiles "BOOT.BIN,image.ub,boot.scr"
```

### Monitor Build Progress
```bash
# Check for generated files
ls -la images/linux/

# Look for WIC files specifically
find images/linux/ -name "*.wic" -ls

# Verify complete build artifacts
ls -la images/linux/{BOOT.BIN,Image,*.wic,*.tar.gz}
```

## Step 7: Extract Results

### Copy Files from Container
```bash
# From host system, copy completed build artifacts
docker cp petalinux-build-direct:/workspace/pynq_z2_petalinux_fresh/images/linux/ ./docker-build-results/

# Verify WIC files
ls -la docker-build-results/linux/*.wic
```

### Create Deployment Package
```bash
# Package essential files for PYNQ-Z2 deployment
mkdir -p pynq-z2-deployment
cd docker-build-results/linux/

# Copy essential files
cp BOOT.BIN ../../pynq-z2-deployment/
cp *.wic ../../pynq-z2-deployment/
cp Image ../../pynq-z2-deployment/
cp *.tar.gz ../../pynq-z2-deployment/ 2>/dev/null || true

# Create deployment info
cd ../../pynq-z2-deployment
echo "PYNQ-Z2 Deployment Files" > README.txt
echo "Generated: $(date)" >> README.txt
echo "Build Environment: Ubuntu 20.04 Docker Container" >> README.txt
echo "PetaLinux Version: 2025.1" >> README.txt
ls -la >> README.txt
```

## Docker Commands Reference

### Essential Docker Commands
```bash
# List images
docker images

# List containers
docker ps -a

# Start existing container
docker start petalinux-build-direct
docker exec -it petalinux-build-direct /bin/bash

# Stop container
docker stop petalinux-build-direct

# Remove container
docker rm petalinux-build-direct

# Remove image
docker rmi petalinux-ubuntu20:2025.1

# Container with X11 forwarding (if needed for GUI tools)
docker run -it --name petalinux-gui \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -v /home/its/tools/yocto/petal/pynq:/workspace \
    petalinux-ubuntu20:2025.1
```

### Persistent Container Setup
```bash
# Create container that persists between sessions
docker run -d --name petalinux-persistent \
    -v /home/its/tools/yocto/petal/pynq:/workspace \
    petalinux-ubuntu20:2025.1 tail -f /dev/null

# Connect to persistent container
docker exec -it petalinux-persistent /bin/bash
```

## Expected Results

### Successful Build Artifacts
- **WIC files**: Complete disk images for SD card deployment
- **BOOT.BIN**: Updated boot image with all components
- **Image**: Linux kernel binary
- **rootfs.tar.gz**: Complete root filesystem
- **image.ub**: U-Boot compatible kernel image

### Deployment to PYNQ-Z2
Once the Docker build completes successfully, you'll have all necessary files to:
1. Create bootable SD card using WIC files
2. Deploy complete Linux distribution to PYNQ-Z2
3. Boot into full PetaLinux environment with working package manager
4. Run PYNQ Python applications

## Troubleshooting

### Common Issues
- **Disk space**: Ensure host has >100GB available
- **Memory**: Container may need 8GB+ RAM for large builds
- **Permissions**: Use `docker exec -it container-name /bin/bash` to debug
- **Network**: Container needs internet access for package downloads

### Debugging Commands
```bash
# Check container logs
docker logs petalinux-build-direct

# Monitor build progress
docker exec -it petalinux-build-direct tail -f /workspace/pynq_z2_petalinux_fresh/build/tmp/log/cooker/*/console-latest.log

# Check available space in container
docker exec -it petalinux-build-direct df -h
```

## Benefits of Docker Approach

1. **Compatibility**: Ubuntu 20.04 environment with glibc 2.31 (QEMU compatible)
2. **Isolation**: Doesn't affect host Ubuntu 25.04 system
3. **Reproducibility**: Consistent build environment across different hosts
4. **Portability**: Can share Docker image with team members
5. **Cleanup**: Easy to remove/recreate clean build environments

---

**Next Steps**: Execute these steps to generate the complete WIC file and Linux distribution for PYNQ-Z2 deployment.