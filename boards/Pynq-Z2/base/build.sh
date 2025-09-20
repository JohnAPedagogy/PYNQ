#!/bin/bash

# Source Xilinx tools
source /home/its/tools/Xilinx/2025.1/Vivado/settings64.sh

# Export PATH for Vitis HLS
export PATH=/home/its/tools/Xilinx/2025.1/Vitis/bin/unwrapped/lnx64.o:$PATH

# Export library paths for Vitis HLS
export LD_LIBRARY_PATH=/home/its/tools/Xilinx/2025.1/Vitis/lib/lnx64.o:/home/its/tools/Xilinx/2025.1/Vitis/runtime/lib/x86_64:$LD_LIBRARY_PATH

# Run make
make
