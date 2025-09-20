// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:interface_switch:1.0
// IP Revision: 3

(* X_CORE_INFO = "interface_switch,Vivado 2025.1" *)
(* CHECK_LICENSE_TYPE = "logictools_interface_switch_0,interface_switch,{}" *)
(* CORE_GENERATION_INFO = "logictools_interface_switch_0,interface_switch,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=interface_switch,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SIZE=20}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module logictools_interface_switch_0 (
  sel,
  boolean_data_i,
  boolean_tri_i,
  boolean_data_o,
  pattern_data_i,
  pattern_tri_i,
  fsm_data_i,
  fsm_tri_i,
  fsm_data_o,
  switch_data_o,
  switch_tri_o,
  switch_data_i
);

input wire [39 : 0] sel;
input wire [19 : 0] boolean_data_i;
input wire [19 : 0] boolean_tri_i;
output wire [19 : 0] boolean_data_o;
input wire [19 : 0] pattern_data_i;
input wire [19 : 0] pattern_tri_i;
input wire [19 : 0] fsm_data_i;
input wire [19 : 0] fsm_tri_i;
output wire [19 : 0] fsm_data_o;
output wire [19 : 0] switch_data_o;
output wire [19 : 0] switch_tri_o;
input wire [19 : 0] switch_data_i;

  interface_switch #(
    .SIZE(20)
  ) inst (
    .sel(sel),
    .boolean_data_i(boolean_data_i),
    .boolean_tri_i(boolean_tri_i),
    .boolean_data_o(boolean_data_o),
    .pattern_data_i(pattern_data_i),
    .pattern_tri_i(pattern_tri_i),
    .fsm_data_i(fsm_data_i),
    .fsm_tri_i(fsm_tri_i),
    .fsm_data_o(fsm_data_o),
    .switch_data_o(switch_data_o),
    .switch_tri_o(switch_tri_o),
    .switch_data_i(switch_data_i)
  );
endmodule
