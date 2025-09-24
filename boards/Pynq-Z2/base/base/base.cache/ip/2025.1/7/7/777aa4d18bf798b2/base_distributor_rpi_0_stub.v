// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Sep 21 16:53:23 2025
// Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_distributor_rpi_0_stub.v
// Design      : base_distributor_rpi_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "base_distributor_rpi_0,wire_distributor,{}" *) (* CORE_GENERATION_INFO = "base_distributor_rpi_0,wire_distributor,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=wire_distributor,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,TYPE=0,WIDTH=28}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "wire_distributor,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(gpio_i_i, gpio_i_o, gpio_i_t, wire_o_i, wire_o_o, 
  wire_o_t)
/* synthesis syn_black_box black_box_pad_pin="gpio_i_i[27:0],gpio_i_o[27:0],gpio_i_t[27:0],wire_o_i[27:0],wire_o_o[27:0],wire_o_t[27:0]" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_input TRI_I" *) (* X_INTERFACE_MODE = "mirroredMaster" *) output [27:0]gpio_i_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_input TRI_O" *) input [27:0]gpio_i_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_input TRI_T" *) input [27:0]gpio_i_t;
  input [27:0]wire_o_i;
  output [27:0]wire_o_o;
  output [27:0]wire_o_t;
endmodule
