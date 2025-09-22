// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Sep 21 16:54:24 2025
// Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/dev/PYNQ/boards/Pynq-Z2/base/base/base.gen/sources_1/bd/base/ip/base_collector_rpi_27_8_0/base_collector_rpi_27_8_0_stub.v
// Design      : base_collector_rpi_27_8_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "base_collector_rpi_27_8_0,wire_distributor,{}" *) (* CORE_GENERATION_INFO = "base_collector_rpi_27_8_0,wire_distributor,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=wire_distributor,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,TYPE=1,WIDTH=20}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "wire_distributor,Vivado 2025.1" *) 
module base_collector_rpi_27_8_0(wire_i_i, wire_i_o, wire_i_t, gpio_o_i, gpio_o_o, 
  gpio_o_t)
/* synthesis syn_black_box black_box_pad_pin="wire_i_i[19:0],wire_i_o[19:0],wire_i_t[19:0],gpio_o_i[19:0],gpio_o_o[19:0],gpio_o_t[19:0]" */;
  output [19:0]wire_i_i;
  input [19:0]wire_i_o;
  input [19:0]wire_i_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_output TRI_I" *) (* X_INTERFACE_MODE = "master" *) input [19:0]gpio_o_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_output TRI_O" *) output [19:0]gpio_o_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_output TRI_T" *) output [19:0]gpio_o_t;
endmodule
