// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Sep 21 16:49:24 2025
// Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_pmoda_rpi_o_sel_0_stub.v
// Design      : base_pmoda_rpi_o_sel_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "base_pmoda_rpi_o_sel_0,mux_vector,{}" *) (* CORE_GENERATION_INFO = "base_pmoda_rpi_o_sel_0,mux_vector,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=mux_vector,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_SIZE=8,DELAY=0,C_NUM_CHANNELS=2}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "mux_vector,Vivado 2025.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(a, b, sel, y)
/* synthesis syn_black_box black_box_pad_pin="a[7:0],b[7:0],sel[0:0],y[7:0]" */;
  input [7:0]a;
  input [7:0]b;
  input [0:0]sel;
  output [7:0]y;
endmodule
