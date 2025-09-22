// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Sep 21 16:50:36 2025
// Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/work/dev/PYNQ/boards/Pynq-Z2/base/base/base.gen/sources_1/bd/base/ip/base_mdm_1_0/base_mdm_1_0_stub.v
// Design      : base_mdm_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "base_mdm_1_0,MDM,{}" *) (* core_generation_info = "base_mdm_1_0,MDM,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=mdm,x_ipVersion=3.2,x_ipCoreRevision=28,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=zynq,C_DEVICE=xc7z020,C_JTAG_CHAIN=2,C_USE_BSCAN=0,C_BSCANID=76547328,C_DEBUG_INTERFACE=0,C_USE_CONFIG_RESET=0,C_AVOID_PRIMITIVES=0,C_INTERCONNECT=2,C_MB_DBG_PORTS=4,C_USE_UART=0,C_DBG_REG_ACCESS=0,C_DBG_MEM_ACCESS=0,C_USE_CROSS_TRIGGER=0,C_EXT_TRIG_RESET_VALUE=0xF1234,C_TRACE_OUTPUT=0,C_TRACE_DATA_WIDTH=32,C_TRACE_CLK_FREQ_HZ=200000000,C_TRACE_CLK_OUT_PHASE=90,C_TRACE_ASYNC_RESET=0,C_TRACE_PROTOCOL=1,C_TRACE_ID=110,C_S_AXI_ADDR_WIDTH=4,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ACLK_FREQ_HZ=100000000,C_M_AXI_ADDR_WIDTH=32,C_M_AXI_DATA_WIDTH=32,C_M_AXI_THREAD_ID_WIDTH=1,C_ADDR_SIZE=32,C_DATA_SIZE=32,C_LMB_PROTOCOL=0,C_M_AXIS_DATA_WIDTH=32,C_M_AXIS_ID_WIDTH=7}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "MDM,Vivado 2025.1" *) 
module base_mdm_1_0(Debug_SYS_Rst, Dbg_Clk_0, Dbg_TDI_0, Dbg_TDO_0, 
  Dbg_Reg_En_0, Dbg_Capture_0, Dbg_Shift_0, Dbg_Update_0, Dbg_Rst_0, Dbg_Disable_0, Dbg_Clk_1, 
  Dbg_TDI_1, Dbg_TDO_1, Dbg_Reg_En_1, Dbg_Capture_1, Dbg_Shift_1, Dbg_Update_1, Dbg_Rst_1, 
  Dbg_Disable_1, Dbg_Clk_2, Dbg_TDI_2, Dbg_TDO_2, Dbg_Reg_En_2, Dbg_Capture_2, Dbg_Shift_2, 
  Dbg_Update_2, Dbg_Rst_2, Dbg_Disable_2, Dbg_Clk_3, Dbg_TDI_3, Dbg_TDO_3, Dbg_Reg_En_3, 
  Dbg_Capture_3, Dbg_Shift_3, Dbg_Update_3, Dbg_Rst_3, Dbg_Disable_3)
/* synthesis syn_black_box black_box_pad_pin="Debug_SYS_Rst,Dbg_TDI_0,Dbg_TDO_0,Dbg_Reg_En_0[0:7],Dbg_Capture_0,Dbg_Shift_0,Dbg_Rst_0,Dbg_Disable_0,Dbg_TDI_1,Dbg_TDO_1,Dbg_Reg_En_1[0:7],Dbg_Capture_1,Dbg_Shift_1,Dbg_Rst_1,Dbg_Disable_1,Dbg_TDI_2,Dbg_TDO_2,Dbg_Reg_En_2[0:7],Dbg_Capture_2,Dbg_Shift_2,Dbg_Rst_2,Dbg_Disable_2,Dbg_TDI_3,Dbg_TDO_3,Dbg_Reg_En_3[0:7],Dbg_Capture_3,Dbg_Shift_3,Dbg_Rst_3,Dbg_Disable_3" */
/* synthesis syn_force_seq_prim="Dbg_Clk_0" */
/* synthesis syn_force_seq_prim="Dbg_Update_0" */
/* synthesis syn_force_seq_prim="Dbg_Clk_1" */
/* synthesis syn_force_seq_prim="Dbg_Update_1" */
/* synthesis syn_force_seq_prim="Dbg_Clk_2" */
/* synthesis syn_force_seq_prim="Dbg_Update_2" */
/* synthesis syn_force_seq_prim="Dbg_Clk_3" */
/* synthesis syn_force_seq_prim="Dbg_Update_3" */;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.Debug_SYS_Rst RST" *) (* x_interface_mode = "master RST.Debug_SYS_Rst" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.Debug_SYS_Rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output Debug_SYS_Rst;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 CLK" *) (* x_interface_mode = "master MBDEBUG_0" *) output Dbg_Clk_0 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 TDI" *) output Dbg_TDI_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 TDO" *) input Dbg_TDO_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 REG_EN" *) output [0:7]Dbg_Reg_En_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 CAPTURE" *) output Dbg_Capture_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 SHIFT" *) output Dbg_Shift_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 UPDATE" *) output Dbg_Update_0 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 RST" *) output Dbg_Rst_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_0 DISABLE" *) output Dbg_Disable_0;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 CLK" *) (* x_interface_mode = "master MBDEBUG_1" *) output Dbg_Clk_1 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 TDI" *) output Dbg_TDI_1;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 TDO" *) input Dbg_TDO_1;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 REG_EN" *) output [0:7]Dbg_Reg_En_1;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 CAPTURE" *) output Dbg_Capture_1;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 SHIFT" *) output Dbg_Shift_1;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 UPDATE" *) output Dbg_Update_1 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 RST" *) output Dbg_Rst_1;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_1 DISABLE" *) output Dbg_Disable_1;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 CLK" *) (* x_interface_mode = "master MBDEBUG_2" *) output Dbg_Clk_2 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 TDI" *) output Dbg_TDI_2;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 TDO" *) input Dbg_TDO_2;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 REG_EN" *) output [0:7]Dbg_Reg_En_2;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 CAPTURE" *) output Dbg_Capture_2;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 SHIFT" *) output Dbg_Shift_2;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 UPDATE" *) output Dbg_Update_2 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 RST" *) output Dbg_Rst_2;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_2 DISABLE" *) output Dbg_Disable_2;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 CLK" *) (* x_interface_mode = "master MBDEBUG_3" *) output Dbg_Clk_3 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 TDI" *) output Dbg_TDI_3;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 TDO" *) input Dbg_TDO_3;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 REG_EN" *) output [0:7]Dbg_Reg_En_3;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 CAPTURE" *) output Dbg_Capture_3;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 SHIFT" *) output Dbg_Shift_3;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 UPDATE" *) output Dbg_Update_3 /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 RST" *) output Dbg_Rst_3;
  (* x_interface_info = "xilinx.com:interface:mbdebug:3.0 MBDEBUG_3 DISABLE" *) output Dbg_Disable_3;
endmodule
