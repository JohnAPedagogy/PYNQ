// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Sep 21 17:04:42 2025
// Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top base_dff_en_reset_vector_0_1 -prefix
//               base_dff_en_reset_vector_0_1_ base_dff_en_reset_vector_0_0_stub.v
// Design      : base_dff_en_reset_vector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "base_dff_en_reset_vector_0_0,dff_en_reset_vector,{}" *) (* CORE_GENERATION_INFO = "base_dff_en_reset_vector_0_0,dff_en_reset_vector,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=dff_en_reset_vector,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SIZE=1,DELAY=3}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "dff_en_reset_vector,Vivado 2025.1" *) 
module base_dff_en_reset_vector_0_1(d, clk, en, reset, q)
/* synthesis syn_black_box black_box_pad_pin="d[0:0],en,reset,q[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [0:0]d;
  input clk /* synthesis syn_isclock = 1 */;
  input en;
  input reset;
  output [0:0]q;
endmodule
