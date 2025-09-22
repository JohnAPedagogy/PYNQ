// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Sep 21 17:11:34 2025
// Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/work/dev/PYNQ/boards/Pynq-Z2/base/base/base.gen/sources_1/bd/base/ip/base_axi_mem_intercon_imp_auto_pc_3/base_axi_mem_intercon_imp_auto_pc_3_sim_netlist.v
// Design      : base_axi_mem_intercon_imp_auto_pc_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "base_axi_mem_intercon_imp_auto_pc_3,axi_protocol_converter_v2_1_36_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_36_axi_protocol_converter,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module base_axi_mem_intercon_imp_auto_pc_3
   (aclk,
    aresetn,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 142857132, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 142857132, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 32, PHASE 0.0, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 142857132, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_s_axi_awready_UNCONNECTED;
  wire NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_wready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  base_axi_mem_intercon_imp_auto_pc_3_axi_protocol_converter_v2_1_36_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[3:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[31:0]),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(NLW_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_35_axic_fifo" *) 
module base_axi_mem_intercon_imp_auto_pc_3_axi_data_fifo_v2_1_35_axic_fifo
   (empty,
    SR,
    din,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    aresetn_0,
    E,
    m_axi_arvalid,
    aclk,
    rd_en,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    command_ongoing_reg_0,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    aresetn,
    command_ongoing,
    command_ongoing_reg_1,
    m_axi_arready,
    cmd_push_block,
    need_to_split_q,
    Q,
    split_ongoing_reg,
    access_is_incr_q);
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output aresetn_0;
  output [0:0]E;
  output m_axi_arvalid;
  input aclk;
  input rd_en;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input command_ongoing_reg_0;
  input S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input aresetn;
  input command_ongoing;
  input command_ongoing_reg_1;
  input m_axi_arready;
  input cmd_push_block;
  input need_to_split_q;
  input [3:0]Q;
  input [3:0]split_ongoing_reg;
  input access_is_incr_q;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire access_is_incr_q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire command_ongoing_reg_1;
  wire [0:0]din;
  wire empty;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]split_ongoing_reg;

  base_axi_mem_intercon_imp_auto_pc_3_axi_data_fifo_v2_1_35_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(command_ongoing_reg),
        .command_ongoing_reg_0(command_ongoing_reg_0),
        .command_ongoing_reg_1(command_ongoing_reg_1),
        .din(din),
        .empty(empty),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .split_ongoing_reg(split_ongoing_reg));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_35_fifo_gen" *) 
module base_axi_mem_intercon_imp_auto_pc_3_axi_data_fifo_v2_1_35_fifo_gen
   (empty,
    SR,
    din,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    aresetn_0,
    E,
    m_axi_arvalid,
    aclk,
    rd_en,
    s_axi_rready,
    m_axi_rvalid,
    m_axi_rlast,
    command_ongoing_reg_0,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    aresetn,
    command_ongoing,
    command_ongoing_reg_1,
    m_axi_arready,
    cmd_push_block,
    need_to_split_q,
    Q,
    split_ongoing_reg,
    access_is_incr_q);
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output aresetn_0;
  output [0:0]E;
  output m_axi_arvalid;
  input aclk;
  input rd_en;
  input s_axi_rready;
  input m_axi_rvalid;
  input m_axi_rlast;
  input command_ongoing_reg_0;
  input S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input aresetn;
  input command_ongoing;
  input command_ongoing_reg_1;
  input m_axi_arready;
  input cmd_push_block;
  input need_to_split_q;
  input [3:0]Q;
  input [3:0]split_ongoing_reg;
  input access_is_incr_q;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_i_5_n_0;
  wire S_AXI_AREADY_I_reg;
  wire S_AXI_AREADY_I_reg_0;
  wire \USE_READ.USE_SPLIT_R.rd_cmd_split ;
  wire access_is_incr_q;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire cmd_push_block;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire command_ongoing_reg_0;
  wire command_ongoing_reg_1;
  wire [0:0]din;
  wire empty;
  wire full;
  wire last_split__1;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire rd_en;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [3:0]split_ongoing_reg;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT6 #(
    .INIT(64'h5575FF7500000000)) 
    S_AXI_AREADY_I_i_1
       (.I0(command_ongoing_reg_0),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(last_split__1),
        .I3(S_AXI_AREADY_I_reg_0),
        .I4(s_axi_arvalid),
        .I5(aresetn),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5DFF)) 
    S_AXI_AREADY_I_i_3
       (.I0(command_ongoing),
        .I1(full),
        .I2(cmd_push_block),
        .I3(m_axi_arready),
        .O(S_AXI_AREADY_I_i_3_n_0));
  LUT6 #(
    .INIT(64'h82000082FFFFFFFF)) 
    S_AXI_AREADY_I_i_4
       (.I0(S_AXI_AREADY_I_i_5_n_0),
        .I1(Q[2]),
        .I2(split_ongoing_reg[2]),
        .I3(Q[3]),
        .I4(split_ongoing_reg[3]),
        .I5(access_is_incr_q),
        .O(last_split__1));
  LUT4 #(
    .INIT(16'h9009)) 
    S_AXI_AREADY_I_i_5
       (.I0(Q[0]),
        .I1(split_ongoing_reg[0]),
        .I2(Q[1]),
        .I3(split_ongoing_reg[1]),
        .O(S_AXI_AREADY_I_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \S_AXI_ASIZE_Q[2]_i_1 
       (.I0(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2022A0A0)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_arready),
        .I2(cmd_push_block),
        .I3(full),
        .I4(command_ongoing),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'h8AFFAAAA00000000)) 
    command_ongoing_i_1
       (.I0(command_ongoing),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(last_split__1),
        .I3(command_ongoing_reg_1),
        .I4(command_ongoing_reg_0),
        .I5(aresetn),
        .O(command_ongoing_reg));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "1" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "1" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  base_axi_mem_intercon_imp_auto_pc_3_fifo_generator_v13_2_13 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(\USE_READ.USE_SPLIT_R.rd_cmd_split ),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_gen_inst_i_1
       (.I0(need_to_split_q),
        .I1(last_split__1),
        .O(din));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_2
       (.I0(command_ongoing),
        .I1(full),
        .I2(cmd_push_block),
        .O(cmd_push));
  LUT3 #(
    .INIT(8'hB0)) 
    m_axi_arvalid_INST_0
       (.I0(cmd_push_block),
        .I1(full),
        .I2(command_ongoing),
        .O(m_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    m_axi_rready_INST_0
       (.I0(s_axi_rready),
        .I1(m_axi_rvalid),
        .I2(empty),
        .O(m_axi_rready));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rlast_INST_0
       (.I0(m_axi_rlast),
        .I1(\USE_READ.USE_SPLIT_R.rd_cmd_split ),
        .O(s_axi_rlast));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rvalid_INST_0
       (.I0(m_axi_rvalid),
        .I1(empty),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    split_ongoing_i_1
       (.I0(m_axi_arready),
        .I1(cmd_push_block),
        .I2(full),
        .I3(command_ongoing),
        .O(E));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_36_a_axi3_conv" *) 
module base_axi_mem_intercon_imp_auto_pc_3_axi_protocol_converter_v2_1_36_a_axi3_conv
   (empty,
    E,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rlast,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arlen,
    m_axi_arlock,
    aclk,
    rd_en,
    s_axi_arlock,
    s_axi_rready,
    m_axi_rvalid,
    s_axi_arsize,
    s_axi_arlen,
    m_axi_rlast,
    s_axi_arvalid,
    aresetn,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    m_axi_arready);
  output empty;
  output [0:0]E;
  output m_axi_rready;
  output s_axi_rvalid;
  output s_axi_rlast;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output [3:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  input aclk;
  input rd_en;
  input [0:0]s_axi_arlock;
  input s_axi_rready;
  input m_axi_rvalid;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input m_axi_rlast;
  input s_axi_arvalid;
  input aresetn;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input m_axi_arready;

  wire [0:0]E;
  wire M_AXI_AADDR_I1__0;
  wire [31:0]S_AXI_AADDR_Q;
  wire [3:0]S_AXI_ALEN_Q;
  wire \S_AXI_ALOCK_Q_reg_n_0_[0] ;
  wire S_AXI_AREADY_I_i_2_n_0;
  wire \USE_R_CHANNEL.cmd_queue_n_1 ;
  wire \USE_R_CHANNEL.cmd_queue_n_6 ;
  wire \USE_R_CHANNEL.cmd_queue_n_7 ;
  wire \USE_R_CHANNEL.cmd_queue_n_8 ;
  wire access_is_incr;
  wire access_is_incr_q;
  wire aclk;
  wire [11:5]addr_step;
  wire [11:5]addr_step_q;
  wire \addr_step_q[6]_i_1_n_0 ;
  wire \addr_step_q[7]_i_1_n_0 ;
  wire \addr_step_q[8]_i_1_n_0 ;
  wire \addr_step_q[9]_i_1_n_0 ;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block;
  wire cmd_split_i;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire empty;
  wire first_split__2;
  wire [11:4]first_step;
  wire [11:0]first_step_q;
  wire \first_step_q[0]_i_1_n_0 ;
  wire \first_step_q[10]_i_2_n_0 ;
  wire \first_step_q[11]_i_2_n_0 ;
  wire \first_step_q[1]_i_1_n_0 ;
  wire \first_step_q[2]_i_1_n_0 ;
  wire \first_step_q[3]_i_1_n_0 ;
  wire \first_step_q[6]_i_2_n_0 ;
  wire \first_step_q[7]_i_2_n_0 ;
  wire \first_step_q[8]_i_2_n_0 ;
  wire \first_step_q[9]_i_2_n_0 ;
  wire incr_need_to_split__0;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire need_to_split_q;
  wire [31:0]next_mi_addr;
  wire \next_mi_addr[11]_i_2_n_0 ;
  wire \next_mi_addr[11]_i_3_n_0 ;
  wire \next_mi_addr[11]_i_4_n_0 ;
  wire \next_mi_addr[11]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_2_n_0 ;
  wire \next_mi_addr[15]_i_3_n_0 ;
  wire \next_mi_addr[15]_i_4_n_0 ;
  wire \next_mi_addr[15]_i_5_n_0 ;
  wire \next_mi_addr[15]_i_6_n_0 ;
  wire \next_mi_addr[15]_i_7_n_0 ;
  wire \next_mi_addr[15]_i_8_n_0 ;
  wire \next_mi_addr[15]_i_9_n_0 ;
  wire \next_mi_addr[19]_i_2_n_0 ;
  wire \next_mi_addr[19]_i_3_n_0 ;
  wire \next_mi_addr[19]_i_4_n_0 ;
  wire \next_mi_addr[19]_i_5_n_0 ;
  wire \next_mi_addr[23]_i_2_n_0 ;
  wire \next_mi_addr[23]_i_3_n_0 ;
  wire \next_mi_addr[23]_i_4_n_0 ;
  wire \next_mi_addr[23]_i_5_n_0 ;
  wire \next_mi_addr[27]_i_2_n_0 ;
  wire \next_mi_addr[27]_i_3_n_0 ;
  wire \next_mi_addr[27]_i_4_n_0 ;
  wire \next_mi_addr[27]_i_5_n_0 ;
  wire \next_mi_addr[31]_i_2_n_0 ;
  wire \next_mi_addr[31]_i_3_n_0 ;
  wire \next_mi_addr[31]_i_4_n_0 ;
  wire \next_mi_addr[31]_i_5_n_0 ;
  wire \next_mi_addr[3]_i_2_n_0 ;
  wire \next_mi_addr[3]_i_3_n_0 ;
  wire \next_mi_addr[3]_i_4_n_0 ;
  wire \next_mi_addr[3]_i_5_n_0 ;
  wire \next_mi_addr[7]_i_2_n_0 ;
  wire \next_mi_addr[7]_i_3_n_0 ;
  wire \next_mi_addr[7]_i_4_n_0 ;
  wire \next_mi_addr[7]_i_5_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_0 ;
  wire \next_mi_addr_reg[11]_i_1_n_1 ;
  wire \next_mi_addr_reg[11]_i_1_n_2 ;
  wire \next_mi_addr_reg[11]_i_1_n_3 ;
  wire \next_mi_addr_reg[11]_i_1_n_4 ;
  wire \next_mi_addr_reg[11]_i_1_n_5 ;
  wire \next_mi_addr_reg[11]_i_1_n_6 ;
  wire \next_mi_addr_reg[11]_i_1_n_7 ;
  wire \next_mi_addr_reg[15]_i_1_n_0 ;
  wire \next_mi_addr_reg[15]_i_1_n_1 ;
  wire \next_mi_addr_reg[15]_i_1_n_2 ;
  wire \next_mi_addr_reg[15]_i_1_n_3 ;
  wire \next_mi_addr_reg[15]_i_1_n_4 ;
  wire \next_mi_addr_reg[15]_i_1_n_5 ;
  wire \next_mi_addr_reg[15]_i_1_n_6 ;
  wire \next_mi_addr_reg[15]_i_1_n_7 ;
  wire \next_mi_addr_reg[19]_i_1_n_0 ;
  wire \next_mi_addr_reg[19]_i_1_n_1 ;
  wire \next_mi_addr_reg[19]_i_1_n_2 ;
  wire \next_mi_addr_reg[19]_i_1_n_3 ;
  wire \next_mi_addr_reg[19]_i_1_n_4 ;
  wire \next_mi_addr_reg[19]_i_1_n_5 ;
  wire \next_mi_addr_reg[19]_i_1_n_6 ;
  wire \next_mi_addr_reg[19]_i_1_n_7 ;
  wire \next_mi_addr_reg[23]_i_1_n_0 ;
  wire \next_mi_addr_reg[23]_i_1_n_1 ;
  wire \next_mi_addr_reg[23]_i_1_n_2 ;
  wire \next_mi_addr_reg[23]_i_1_n_3 ;
  wire \next_mi_addr_reg[23]_i_1_n_4 ;
  wire \next_mi_addr_reg[23]_i_1_n_5 ;
  wire \next_mi_addr_reg[23]_i_1_n_6 ;
  wire \next_mi_addr_reg[23]_i_1_n_7 ;
  wire \next_mi_addr_reg[27]_i_1_n_0 ;
  wire \next_mi_addr_reg[27]_i_1_n_1 ;
  wire \next_mi_addr_reg[27]_i_1_n_2 ;
  wire \next_mi_addr_reg[27]_i_1_n_3 ;
  wire \next_mi_addr_reg[27]_i_1_n_4 ;
  wire \next_mi_addr_reg[27]_i_1_n_5 ;
  wire \next_mi_addr_reg[27]_i_1_n_6 ;
  wire \next_mi_addr_reg[27]_i_1_n_7 ;
  wire \next_mi_addr_reg[31]_i_1_n_1 ;
  wire \next_mi_addr_reg[31]_i_1_n_2 ;
  wire \next_mi_addr_reg[31]_i_1_n_3 ;
  wire \next_mi_addr_reg[31]_i_1_n_4 ;
  wire \next_mi_addr_reg[31]_i_1_n_5 ;
  wire \next_mi_addr_reg[31]_i_1_n_6 ;
  wire \next_mi_addr_reg[31]_i_1_n_7 ;
  wire \next_mi_addr_reg[3]_i_1_n_0 ;
  wire \next_mi_addr_reg[3]_i_1_n_1 ;
  wire \next_mi_addr_reg[3]_i_1_n_2 ;
  wire \next_mi_addr_reg[3]_i_1_n_3 ;
  wire \next_mi_addr_reg[3]_i_1_n_4 ;
  wire \next_mi_addr_reg[3]_i_1_n_5 ;
  wire \next_mi_addr_reg[3]_i_1_n_6 ;
  wire \next_mi_addr_reg[3]_i_1_n_7 ;
  wire \next_mi_addr_reg[7]_i_1_n_0 ;
  wire \next_mi_addr_reg[7]_i_1_n_1 ;
  wire \next_mi_addr_reg[7]_i_1_n_2 ;
  wire \next_mi_addr_reg[7]_i_1_n_3 ;
  wire \next_mi_addr_reg[7]_i_1_n_4 ;
  wire \next_mi_addr_reg[7]_i_1_n_5 ;
  wire \next_mi_addr_reg[7]_i_1_n_6 ;
  wire \next_mi_addr_reg[7]_i_1_n_7 ;
  wire [3:0]num_transactions_q;
  wire [3:0]p_0_in;
  wire \pushed_commands[3]_i_1_n_0 ;
  wire [3:0]pushed_commands_reg;
  wire pushed_new_cmd;
  wire rd_en;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [6:0]size_mask;
  wire [31:0]size_mask_q;
  wire split_ongoing;
  wire [3:3]\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED ;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[0]),
        .Q(S_AXI_AADDR_Q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[10]),
        .Q(S_AXI_AADDR_Q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[11]),
        .Q(S_AXI_AADDR_Q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[12]),
        .Q(S_AXI_AADDR_Q[12]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[13]),
        .Q(S_AXI_AADDR_Q[13]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[14]),
        .Q(S_AXI_AADDR_Q[14]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[15]),
        .Q(S_AXI_AADDR_Q[15]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[16]),
        .Q(S_AXI_AADDR_Q[16]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[17]),
        .Q(S_AXI_AADDR_Q[17]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[18]),
        .Q(S_AXI_AADDR_Q[18]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[19]),
        .Q(S_AXI_AADDR_Q[19]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[1]),
        .Q(S_AXI_AADDR_Q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[20]),
        .Q(S_AXI_AADDR_Q[20]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[21]),
        .Q(S_AXI_AADDR_Q[21]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[22]),
        .Q(S_AXI_AADDR_Q[22]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[23]),
        .Q(S_AXI_AADDR_Q[23]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[24]),
        .Q(S_AXI_AADDR_Q[24]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[25]),
        .Q(S_AXI_AADDR_Q[25]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[26]),
        .Q(S_AXI_AADDR_Q[26]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[27]),
        .Q(S_AXI_AADDR_Q[27]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[28]),
        .Q(S_AXI_AADDR_Q[28]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[29]),
        .Q(S_AXI_AADDR_Q[29]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[2]),
        .Q(S_AXI_AADDR_Q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[30]),
        .Q(S_AXI_AADDR_Q[30]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[31]),
        .Q(S_AXI_AADDR_Q[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[3]),
        .Q(S_AXI_AADDR_Q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[4]),
        .Q(S_AXI_AADDR_Q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[5]),
        .Q(S_AXI_AADDR_Q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[6]),
        .Q(S_AXI_AADDR_Q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[7]),
        .Q(S_AXI_AADDR_Q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[8]),
        .Q(S_AXI_AADDR_Q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_araddr[9]),
        .Q(S_AXI_AADDR_Q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arburst[0]),
        .Q(m_axi_arburst[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arburst[1]),
        .Q(m_axi_arburst[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[0]),
        .Q(m_axi_arcache[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[1]),
        .Q(m_axi_arcache[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[2]),
        .Q(m_axi_arcache[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arcache[3]),
        .Q(m_axi_arcache[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[0]),
        .Q(S_AXI_ALEN_Q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[1]),
        .Q(S_AXI_ALEN_Q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[2]),
        .Q(S_AXI_ALEN_Q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[3]),
        .Q(S_AXI_ALEN_Q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlock),
        .Q(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[0]),
        .Q(m_axi_arprot[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[1]),
        .Q(m_axi_arprot[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arprot[2]),
        .Q(m_axi_arprot[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[0]),
        .Q(m_axi_arqos[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[1]),
        .Q(m_axi_arqos[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[2]),
        .Q(m_axi_arqos[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arqos[3]),
        .Q(m_axi_arqos[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    S_AXI_AREADY_I_i_2
       (.I0(areset_d[0]),
        .I1(areset_d[1]),
        .O(S_AXI_AREADY_I_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_6 ),
        .Q(E),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[0]),
        .Q(m_axi_arsize[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[1]),
        .Q(m_axi_arsize[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arsize[2]),
        .Q(m_axi_arsize[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  base_axi_mem_intercon_imp_auto_pc_3_axi_data_fifo_v2_1_35_axic_fifo \USE_R_CHANNEL.cmd_queue 
       (.E(pushed_new_cmd),
        .Q(num_transactions_q),
        .SR(\USE_R_CHANNEL.cmd_queue_n_1 ),
        .S_AXI_AREADY_I_reg(\USE_R_CHANNEL.cmd_queue_n_6 ),
        .S_AXI_AREADY_I_reg_0(E),
        .access_is_incr_q(access_is_incr_q),
        .aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(\USE_R_CHANNEL.cmd_queue_n_8 ),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(\USE_R_CHANNEL.cmd_queue_n_7 ),
        .command_ongoing_reg_0(S_AXI_AREADY_I_i_2_n_0),
        .command_ongoing_reg_1(command_ongoing_i_2_n_0),
        .din(cmd_split_i),
        .empty(empty),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .need_to_split_q(need_to_split_q),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .split_ongoing_reg(pushed_commands_reg));
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(access_is_incr));
  FDRE #(
    .INIT(1'b0)) 
    access_is_incr_q_reg
       (.C(aclk),
        .CE(E),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addr_step_q[10]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \addr_step_q[11]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[5]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(addr_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[6]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\addr_step_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[7]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\addr_step_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_step_q[8]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\addr_step_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr_step_q[9]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(\addr_step_q[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[10]),
        .Q(addr_step_q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[11]),
        .Q(addr_step_q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(addr_step[5]),
        .Q(addr_step_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[6]_i_1_n_0 ),
        .Q(addr_step_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[7]_i_1_n_0 ),
        .Q(addr_step_q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[8]_i_1_n_0 ),
        .Q(addr_step_q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\addr_step_q[9]_i_1_n_0 ),
        .Q(addr_step_q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_1 ),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_8 ),
        .Q(cmd_push_block),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    command_ongoing_i_2
       (.I0(s_axi_arvalid),
        .I1(E),
        .O(command_ongoing_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_R_CHANNEL.cmd_queue_n_7 ),
        .Q(command_ongoing),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \first_step_q[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[2]),
        .O(\first_step_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[10]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[10]));
  LUT6 #(
    .INIT(64'h2AAA800080000000)) 
    \first_step_q[10]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[3]),
        .I5(s_axi_arsize[0]),
        .O(\first_step_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[11]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[11]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \first_step_q[11]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arsize[0]),
        .O(\first_step_q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000514)) 
    \first_step_q[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arsize[2]),
        .O(\first_step_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000F3C6A)) 
    \first_step_q[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(\first_step_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \first_step_q[3]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .O(\first_step_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \first_step_q[4]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[4]));
  LUT6 #(
    .INIT(64'h0036FFFF00360000)) 
    \first_step_q[5]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .I5(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[6]_i_1 
       (.I0(\first_step_q[6]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\first_step_q[10]_i_2_n_0 ),
        .O(first_step[6]));
  LUT5 #(
    .INIT(32'h07531642)) 
    \first_step_q[6]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[2]),
        .O(\first_step_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \first_step_q[7]_i_1 
       (.I0(\first_step_q[7]_i_2_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\first_step_q[11]_i_2_n_0 ),
        .O(first_step[7]));
  LUT6 #(
    .INIT(64'h07FD53B916EC42A8)) 
    \first_step_q[7]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arlen[3]),
        .O(\first_step_q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[8]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[8]_i_2_n_0 ),
        .O(first_step[8]));
  LUT6 #(
    .INIT(64'h14EAEA6262C8C840)) 
    \first_step_q[8]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arlen[2]),
        .O(\first_step_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \first_step_q[9]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(\first_step_q[9]_i_2_n_0 ),
        .O(first_step[9]));
  LUT6 #(
    .INIT(64'h4AA2A2A228808080)) 
    \first_step_q[9]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[2]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[1]),
        .I5(s_axi_arlen[3]),
        .O(\first_step_q[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[0]_i_1_n_0 ),
        .Q(first_step_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(first_step[10]),
        .Q(first_step_q[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(first_step[11]),
        .Q(first_step_q[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[1]_i_1_n_0 ),
        .Q(first_step_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[2]_i_1_n_0 ),
        .Q(first_step_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\first_step_q[3]_i_1_n_0 ),
        .Q(first_step_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(first_step[4]),
        .Q(first_step_q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(first_step[5]),
        .Q(first_step_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(first_step[6]),
        .Q(first_step_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(first_step[7]),
        .Q(first_step_q[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(first_step[8]),
        .Q(first_step_q[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \first_step_q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(first_step[9]),
        .Q(first_step_q[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    incr_need_to_split
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[6]),
        .I5(s_axi_arlen[7]),
        .O(incr_need_to_split__0));
  FDRE #(
    .INIT(1'b0)) 
    incr_need_to_split_q_reg
       (.C(aclk),
        .CE(E),
        .D(incr_need_to_split__0),
        .Q(need_to_split_q),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(next_mi_addr[0]),
        .I1(size_mask_q[0]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[0]),
        .O(m_axi_araddr[0]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(next_mi_addr[10]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[10]),
        .O(m_axi_araddr[10]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(next_mi_addr[11]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[11]),
        .O(m_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[12]_INST_0 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(m_axi_araddr[12]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[13]_INST_0 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(m_axi_araddr[13]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[14]_INST_0 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(m_axi_araddr[14]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[15]_INST_0 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(m_axi_araddr[15]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[16]_INST_0 
       (.I0(next_mi_addr[16]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[16]),
        .O(m_axi_araddr[16]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[17]_INST_0 
       (.I0(next_mi_addr[17]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[17]),
        .O(m_axi_araddr[17]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[18]_INST_0 
       (.I0(next_mi_addr[18]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[18]),
        .O(m_axi_araddr[18]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[19]_INST_0 
       (.I0(next_mi_addr[19]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[19]),
        .O(m_axi_araddr[19]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(next_mi_addr[1]),
        .I1(size_mask_q[1]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[1]),
        .O(m_axi_araddr[1]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[20]_INST_0 
       (.I0(next_mi_addr[20]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[20]),
        .O(m_axi_araddr[20]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[21]_INST_0 
       (.I0(next_mi_addr[21]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[21]),
        .O(m_axi_araddr[21]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[22]_INST_0 
       (.I0(next_mi_addr[22]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[22]),
        .O(m_axi_araddr[22]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[23]_INST_0 
       (.I0(next_mi_addr[23]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[23]),
        .O(m_axi_araddr[23]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[24]_INST_0 
       (.I0(next_mi_addr[24]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[24]),
        .O(m_axi_araddr[24]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[25]_INST_0 
       (.I0(next_mi_addr[25]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[25]),
        .O(m_axi_araddr[25]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[26]_INST_0 
       (.I0(next_mi_addr[26]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[26]),
        .O(m_axi_araddr[26]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[27]_INST_0 
       (.I0(next_mi_addr[27]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[27]),
        .O(m_axi_araddr[27]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[28]_INST_0 
       (.I0(next_mi_addr[28]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[28]),
        .O(m_axi_araddr[28]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[29]_INST_0 
       (.I0(next_mi_addr[29]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[29]),
        .O(m_axi_araddr[29]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(next_mi_addr[2]),
        .I1(size_mask_q[2]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[2]),
        .O(m_axi_araddr[2]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[30]_INST_0 
       (.I0(next_mi_addr[30]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[30]),
        .O(m_axi_araddr[30]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[31]_INST_0 
       (.I0(next_mi_addr[31]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[31]),
        .O(m_axi_araddr[31]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(next_mi_addr[3]),
        .I1(size_mask_q[3]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[3]),
        .O(m_axi_araddr[3]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(next_mi_addr[4]),
        .I1(size_mask_q[4]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[4]),
        .O(m_axi_araddr[4]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(next_mi_addr[5]),
        .I1(size_mask_q[5]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[5]),
        .O(m_axi_araddr[5]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(next_mi_addr[6]),
        .I1(size_mask_q[6]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[6]),
        .O(m_axi_araddr[6]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(next_mi_addr[7]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[7]),
        .O(m_axi_araddr[7]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(next_mi_addr[8]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[8]),
        .O(m_axi_araddr[8]));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(next_mi_addr[9]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[9]),
        .O(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[0]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[0]),
        .O(m_axi_arlen[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[1]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[1]),
        .O(m_axi_arlen[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[2]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[2]),
        .O(m_axi_arlen[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \m_axi_arlen[3]_INST_0 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .I4(need_to_split_q),
        .I5(S_AXI_ALEN_Q[3]),
        .O(m_axi_arlen[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_arlock[0]_INST_0 
       (.I0(\S_AXI_ALOCK_Q_reg_n_0_[0] ),
        .I1(need_to_split_q),
        .O(m_axi_arlock));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_2 
       (.I0(m_axi_araddr[11]),
        .I1(addr_step_q[11]),
        .I2(first_split__2),
        .I3(first_step_q[11]),
        .O(\next_mi_addr[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_3 
       (.I0(m_axi_araddr[10]),
        .I1(addr_step_q[10]),
        .I2(first_split__2),
        .I3(first_step_q[10]),
        .O(\next_mi_addr[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_4 
       (.I0(m_axi_araddr[9]),
        .I1(addr_step_q[9]),
        .I2(first_split__2),
        .I3(first_step_q[9]),
        .O(\next_mi_addr[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[11]_i_5 
       (.I0(m_axi_araddr[8]),
        .I1(addr_step_q[8]),
        .I2(first_split__2),
        .I3(first_step_q[8]),
        .O(\next_mi_addr[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \next_mi_addr[11]_i_6 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[3]),
        .I3(pushed_commands_reg[2]),
        .O(first_split__2));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_2 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(\next_mi_addr[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_3 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(\next_mi_addr[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_4 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(\next_mi_addr[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_5 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(\next_mi_addr[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_6 
       (.I0(next_mi_addr[15]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[15]),
        .O(\next_mi_addr[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_7 
       (.I0(next_mi_addr[14]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[14]),
        .O(\next_mi_addr[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_8 
       (.I0(next_mi_addr[13]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[13]),
        .O(\next_mi_addr[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[15]_i_9 
       (.I0(next_mi_addr[12]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[12]),
        .O(\next_mi_addr[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_2 
       (.I0(next_mi_addr[19]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[19]),
        .O(\next_mi_addr[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_3 
       (.I0(next_mi_addr[18]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[18]),
        .O(\next_mi_addr[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_4 
       (.I0(next_mi_addr[17]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[17]),
        .O(\next_mi_addr[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[19]_i_5 
       (.I0(next_mi_addr[16]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[16]),
        .O(\next_mi_addr[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_2 
       (.I0(next_mi_addr[23]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[23]),
        .O(\next_mi_addr[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_3 
       (.I0(next_mi_addr[22]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[22]),
        .O(\next_mi_addr[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_4 
       (.I0(next_mi_addr[21]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[21]),
        .O(\next_mi_addr[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[23]_i_5 
       (.I0(next_mi_addr[20]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[20]),
        .O(\next_mi_addr[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_2 
       (.I0(next_mi_addr[27]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[27]),
        .O(\next_mi_addr[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_3 
       (.I0(next_mi_addr[26]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[26]),
        .O(\next_mi_addr[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_4 
       (.I0(next_mi_addr[25]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[25]),
        .O(\next_mi_addr[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[27]_i_5 
       (.I0(next_mi_addr[24]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[24]),
        .O(\next_mi_addr[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_2 
       (.I0(next_mi_addr[31]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[31]),
        .O(\next_mi_addr[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_3 
       (.I0(next_mi_addr[30]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[30]),
        .O(\next_mi_addr[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_4 
       (.I0(next_mi_addr[29]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[29]),
        .O(\next_mi_addr[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \next_mi_addr[31]_i_5 
       (.I0(next_mi_addr[28]),
        .I1(size_mask_q[31]),
        .I2(split_ongoing),
        .I3(access_is_incr_q),
        .I4(S_AXI_AADDR_Q[28]),
        .O(\next_mi_addr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_2 
       (.I0(S_AXI_AADDR_Q[3]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[3]),
        .I3(next_mi_addr[3]),
        .I4(first_split__2),
        .I5(first_step_q[3]),
        .O(\next_mi_addr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_3 
       (.I0(S_AXI_AADDR_Q[2]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[2]),
        .I3(next_mi_addr[2]),
        .I4(first_split__2),
        .I5(first_step_q[2]),
        .O(\next_mi_addr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_4 
       (.I0(S_AXI_AADDR_Q[1]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[1]),
        .I3(next_mi_addr[1]),
        .I4(first_split__2),
        .I5(first_step_q[1]),
        .O(\next_mi_addr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1DDDE222E222E222)) 
    \next_mi_addr[3]_i_5 
       (.I0(S_AXI_AADDR_Q[0]),
        .I1(M_AXI_AADDR_I1__0),
        .I2(size_mask_q[0]),
        .I3(next_mi_addr[0]),
        .I4(first_split__2),
        .I5(first_step_q[0]),
        .O(\next_mi_addr[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_mi_addr[3]_i_6 
       (.I0(split_ongoing),
        .I1(access_is_incr_q),
        .O(M_AXI_AADDR_I1__0));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_2 
       (.I0(m_axi_araddr[7]),
        .I1(addr_step_q[7]),
        .I2(first_split__2),
        .I3(first_step_q[7]),
        .O(\next_mi_addr[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_3 
       (.I0(m_axi_araddr[6]),
        .I1(addr_step_q[6]),
        .I2(first_split__2),
        .I3(first_step_q[6]),
        .O(\next_mi_addr[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_4 
       (.I0(m_axi_araddr[5]),
        .I1(addr_step_q[5]),
        .I2(first_split__2),
        .I3(first_step_q[5]),
        .O(\next_mi_addr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \next_mi_addr[7]_i_5 
       (.I0(m_axi_araddr[4]),
        .I1(size_mask_q[0]),
        .I2(first_split__2),
        .I3(first_step_q[4]),
        .O(\next_mi_addr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_7 ),
        .Q(next_mi_addr[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[10] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_5 ),
        .Q(next_mi_addr[10]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[11] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_4 ),
        .Q(next_mi_addr[11]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[11]_i_1 
       (.CI(\next_mi_addr_reg[7]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[11]_i_1_n_0 ,\next_mi_addr_reg[11]_i_1_n_1 ,\next_mi_addr_reg[11]_i_1_n_2 ,\next_mi_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[11:8]),
        .O({\next_mi_addr_reg[11]_i_1_n_4 ,\next_mi_addr_reg[11]_i_1_n_5 ,\next_mi_addr_reg[11]_i_1_n_6 ,\next_mi_addr_reg[11]_i_1_n_7 }),
        .S({\next_mi_addr[11]_i_2_n_0 ,\next_mi_addr[11]_i_3_n_0 ,\next_mi_addr[11]_i_4_n_0 ,\next_mi_addr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[12] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_7 ),
        .Q(next_mi_addr[12]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[13] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_6 ),
        .Q(next_mi_addr[13]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[14] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_5 ),
        .Q(next_mi_addr[14]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[15] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[15]_i_1_n_4 ),
        .Q(next_mi_addr[15]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[15]_i_1 
       (.CI(\next_mi_addr_reg[11]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[15]_i_1_n_0 ,\next_mi_addr_reg[15]_i_1_n_1 ,\next_mi_addr_reg[15]_i_1_n_2 ,\next_mi_addr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\next_mi_addr[15]_i_2_n_0 ,\next_mi_addr[15]_i_3_n_0 ,\next_mi_addr[15]_i_4_n_0 ,\next_mi_addr[15]_i_5_n_0 }),
        .O({\next_mi_addr_reg[15]_i_1_n_4 ,\next_mi_addr_reg[15]_i_1_n_5 ,\next_mi_addr_reg[15]_i_1_n_6 ,\next_mi_addr_reg[15]_i_1_n_7 }),
        .S({\next_mi_addr[15]_i_6_n_0 ,\next_mi_addr[15]_i_7_n_0 ,\next_mi_addr[15]_i_8_n_0 ,\next_mi_addr[15]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[16] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_7 ),
        .Q(next_mi_addr[16]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[17] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_6 ),
        .Q(next_mi_addr[17]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[18] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_5 ),
        .Q(next_mi_addr[18]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[19] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[19]_i_1_n_4 ),
        .Q(next_mi_addr[19]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[19]_i_1 
       (.CI(\next_mi_addr_reg[15]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[19]_i_1_n_0 ,\next_mi_addr_reg[19]_i_1_n_1 ,\next_mi_addr_reg[19]_i_1_n_2 ,\next_mi_addr_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[19]_i_1_n_4 ,\next_mi_addr_reg[19]_i_1_n_5 ,\next_mi_addr_reg[19]_i_1_n_6 ,\next_mi_addr_reg[19]_i_1_n_7 }),
        .S({\next_mi_addr[19]_i_2_n_0 ,\next_mi_addr[19]_i_3_n_0 ,\next_mi_addr[19]_i_4_n_0 ,\next_mi_addr[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_6 ),
        .Q(next_mi_addr[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[20] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_7 ),
        .Q(next_mi_addr[20]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[21] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_6 ),
        .Q(next_mi_addr[21]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[22] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_5 ),
        .Q(next_mi_addr[22]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[23] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[23]_i_1_n_4 ),
        .Q(next_mi_addr[23]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[23]_i_1 
       (.CI(\next_mi_addr_reg[19]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[23]_i_1_n_0 ,\next_mi_addr_reg[23]_i_1_n_1 ,\next_mi_addr_reg[23]_i_1_n_2 ,\next_mi_addr_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[23]_i_1_n_4 ,\next_mi_addr_reg[23]_i_1_n_5 ,\next_mi_addr_reg[23]_i_1_n_6 ,\next_mi_addr_reg[23]_i_1_n_7 }),
        .S({\next_mi_addr[23]_i_2_n_0 ,\next_mi_addr[23]_i_3_n_0 ,\next_mi_addr[23]_i_4_n_0 ,\next_mi_addr[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[24] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_7 ),
        .Q(next_mi_addr[24]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[25] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_6 ),
        .Q(next_mi_addr[25]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[26] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_5 ),
        .Q(next_mi_addr[26]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[27] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[27]_i_1_n_4 ),
        .Q(next_mi_addr[27]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[27]_i_1 
       (.CI(\next_mi_addr_reg[23]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[27]_i_1_n_0 ,\next_mi_addr_reg[27]_i_1_n_1 ,\next_mi_addr_reg[27]_i_1_n_2 ,\next_mi_addr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[27]_i_1_n_4 ,\next_mi_addr_reg[27]_i_1_n_5 ,\next_mi_addr_reg[27]_i_1_n_6 ,\next_mi_addr_reg[27]_i_1_n_7 }),
        .S({\next_mi_addr[27]_i_2_n_0 ,\next_mi_addr[27]_i_3_n_0 ,\next_mi_addr[27]_i_4_n_0 ,\next_mi_addr[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[28] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_7 ),
        .Q(next_mi_addr[28]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[29] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_6 ),
        .Q(next_mi_addr[29]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_5 ),
        .Q(next_mi_addr[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[30] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_5 ),
        .Q(next_mi_addr[30]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[31] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[31]_i_1_n_4 ),
        .Q(next_mi_addr[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[31]_i_1 
       (.CI(\next_mi_addr_reg[27]_i_1_n_0 ),
        .CO({\NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED [3],\next_mi_addr_reg[31]_i_1_n_1 ,\next_mi_addr_reg[31]_i_1_n_2 ,\next_mi_addr_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_mi_addr_reg[31]_i_1_n_4 ,\next_mi_addr_reg[31]_i_1_n_5 ,\next_mi_addr_reg[31]_i_1_n_6 ,\next_mi_addr_reg[31]_i_1_n_7 }),
        .S({\next_mi_addr[31]_i_2_n_0 ,\next_mi_addr[31]_i_3_n_0 ,\next_mi_addr[31]_i_4_n_0 ,\next_mi_addr[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[3]_i_1_n_4 ),
        .Q(next_mi_addr[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\next_mi_addr_reg[3]_i_1_n_0 ,\next_mi_addr_reg[3]_i_1_n_1 ,\next_mi_addr_reg[3]_i_1_n_2 ,\next_mi_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[3:0]),
        .O({\next_mi_addr_reg[3]_i_1_n_4 ,\next_mi_addr_reg[3]_i_1_n_5 ,\next_mi_addr_reg[3]_i_1_n_6 ,\next_mi_addr_reg[3]_i_1_n_7 }),
        .S({\next_mi_addr[3]_i_2_n_0 ,\next_mi_addr[3]_i_3_n_0 ,\next_mi_addr[3]_i_4_n_0 ,\next_mi_addr[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[4] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_7 ),
        .Q(next_mi_addr[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[5] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_6 ),
        .Q(next_mi_addr[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[6] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_5 ),
        .Q(next_mi_addr[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[7] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[7]_i_1_n_4 ),
        .Q(next_mi_addr[7]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_mi_addr_reg[7]_i_1 
       (.CI(\next_mi_addr_reg[3]_i_1_n_0 ),
        .CO({\next_mi_addr_reg[7]_i_1_n_0 ,\next_mi_addr_reg[7]_i_1_n_1 ,\next_mi_addr_reg[7]_i_1_n_2 ,\next_mi_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_axi_araddr[7:4]),
        .O({\next_mi_addr_reg[7]_i_1_n_4 ,\next_mi_addr_reg[7]_i_1_n_5 ,\next_mi_addr_reg[7]_i_1_n_6 ,\next_mi_addr_reg[7]_i_1_n_7 }),
        .S({\next_mi_addr[7]_i_2_n_0 ,\next_mi_addr[7]_i_3_n_0 ,\next_mi_addr[7]_i_4_n_0 ,\next_mi_addr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[8] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_7 ),
        .Q(next_mi_addr[8]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_mi_addr_reg[9] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr_reg[11]_i_1_n_6 ),
        .Q(next_mi_addr[9]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[4]),
        .Q(num_transactions_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[5]),
        .Q(num_transactions_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[6]),
        .Q(num_transactions_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_transactions_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_arlen[7]),
        .Q(num_transactions_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1 
       (.I0(pushed_commands_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1 
       (.I0(pushed_commands_reg[0]),
        .I1(pushed_commands_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pushed_commands[2]_i_1 
       (.I0(pushed_commands_reg[1]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[3]_i_1 
       (.I0(E),
        .I1(aresetn),
        .O(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pushed_commands[3]_i_2 
       (.I0(pushed_commands_reg[2]),
        .I1(pushed_commands_reg[0]),
        .I2(pushed_commands_reg[1]),
        .I3(pushed_commands_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[0] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[0]),
        .Q(pushed_commands_reg[0]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[1] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[1]),
        .Q(pushed_commands_reg[1]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[2] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[2]),
        .Q(pushed_commands_reg[2]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pushed_commands_reg[3] 
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(p_0_in[3]),
        .Q(pushed_commands_reg[3]),
        .R(\pushed_commands[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(size_mask[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \size_mask_q[2]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \size_mask_q[3]_i_1 
       (.I0(s_axi_arsize[2]),
        .O(size_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \size_mask_q[4]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \size_mask_q[5]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(size_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \size_mask_q[6]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(size_mask[6]));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[0]),
        .Q(size_mask_q[0]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[1]),
        .Q(size_mask_q[1]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[2]),
        .Q(size_mask_q[2]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(1'b1),
        .Q(size_mask_q[31]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[3]),
        .Q(size_mask_q[3]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[4]),
        .Q(size_mask_q[4]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[5]),
        .Q(size_mask_q[5]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \size_mask_q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(size_mask[6]),
        .Q(size_mask_q[6]),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    split_ongoing_reg
       (.C(aclk),
        .CE(pushed_new_cmd),
        .D(cmd_split_i),
        .Q(split_ongoing),
        .R(\USE_R_CHANNEL.cmd_queue_n_1 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_36_axi3_conv" *) 
module base_axi_mem_intercon_imp_auto_pc_3_axi_protocol_converter_v2_1_36_axi3_conv
   (m_axi_rready,
    s_axi_rvalid,
    S_AXI_AREADY_I_reg,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arlen,
    m_axi_arlock,
    s_axi_rlast,
    s_axi_rready,
    m_axi_rvalid,
    s_axi_arsize,
    s_axi_arlen,
    aclk,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    aresetn,
    m_axi_arready,
    m_axi_rlast);
  output m_axi_rready;
  output s_axi_rvalid;
  output S_AXI_AREADY_I_reg;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [31:0]m_axi_araddr;
  output m_axi_arvalid;
  output [3:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output s_axi_rlast;
  input s_axi_rready;
  input m_axi_rvalid;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input aclk;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  input aresetn;
  input m_axi_arready;
  input m_axi_rlast;

  wire S_AXI_AREADY_I_reg;
  wire \USE_READ.USE_SPLIT_R.rd_cmd_ready ;
  wire \USE_R_CHANNEL.cmd_queue/inst/empty ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  base_axi_mem_intercon_imp_auto_pc_3_axi_protocol_converter_v2_1_36_a_axi3_conv \USE_READ.USE_SPLIT_R.read_addr_inst 
       (.E(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty(\USE_R_CHANNEL.cmd_queue/inst/empty ),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .rd_en(\USE_READ.USE_SPLIT_R.rd_cmd_ready ),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  base_axi_mem_intercon_imp_auto_pc_3_axi_protocol_converter_v2_1_36_r_axi3_conv \USE_READ.USE_SPLIT_R.read_data_inst 
       (.empty(\USE_R_CHANNEL.cmd_queue/inst/empty ),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .rd_en(\USE_READ.USE_SPLIT_R.rd_cmd_ready ),
        .s_axi_rready(s_axi_rready));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_protocol_converter_v2_1_36_axi_protocol_converter" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b010" *) (* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) 
(* P_INCR = "2'b01" *) (* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module base_axi_mem_intercon_imp_auto_pc_3_axi_protocol_converter_v2_1_36_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  base_axi_mem_intercon_imp_auto_pc_3_axi_protocol_converter_v2_1_36_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.S_AXI_AREADY_I_reg(s_axi_arready),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(\^m_axi_arlock ),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_36_r_axi3_conv" *) 
module base_axi_mem_intercon_imp_auto_pc_3_axi_protocol_converter_v2_1_36_r_axi3_conv
   (rd_en,
    m_axi_rlast,
    s_axi_rready,
    m_axi_rvalid,
    empty);
  output rd_en;
  input m_axi_rlast;
  input s_axi_rready;
  input m_axi_rvalid;
  input empty;

  wire empty;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire rd_en;
  wire s_axi_rready;

  LUT4 #(
    .INIT(16'h0080)) 
    cmd_ready_i
       (.I0(m_axi_rlast),
        .I1(s_axi_rready),
        .I2(m_axi_rvalid),
        .I3(empty),
        .O(rd_en));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module base_axi_mem_intercon_imp_auto_pc_3_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DkrAesSLBeDxhaXI0asb+puroLvZBWosIXruDqTgmPTfjI3i0ebKCZLqSBTKg5KUexTiKWVl+9Ug
OYhkMJXkn0n/j8/6GJO1z/4tReZHG89WtZnUKH7DqjJ9cbYER+xiMOLSptE29AOOLGbQ4MjVzy18
/GymLeiAgR0qzkp9N7Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yr55bXOTA5/Rx+gX4TeeJXN0K2cBO3bWYWFnZFCMoAD3+p3RscsDqPrCcQoQK89bE+j5quTJPCqN
12//qWlZoWwZn76VLtgZ6uR08n49XeFz74xjL/TLVxYGXt6h6xX4vQmlg4FObv4H7DjasBX3ZKbJ
ok2aUJCoVpTf1qKo+JcowFn3wCJuym0DTf+pKogOmnP+lFMp5UqrHjukbVdejhRT74VR1/DemaE8
T5gZjbZ3QR/HcWThFnFovoQYfDe6/w6F45CxJCG+PeP9h3J9NvtHuoTROp/4Pm3PwHsb42eiSpxr
pnyaDp+17FZLap9oxsD4do1RXjk5D34ULkJVIA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
O7CLKF7GDUoxVy+wsDp+MYsQrWrtsRT6vUjYFyhzMh6Ub+aCHVi4kv7qJlcKC/lqgz7jtEMHuwnT
UOnYZwGZhoYQGiyYgQ49hiQ3ZRRKZhFERi0ZIsCQqnt9KL/lctiP1qftlXs9jExoeBOOF7u/WVi3
pyQy0g7Wba9UIUGIm6s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GNpCV29nEkhsU3/WearppJw/bF+jpNkJZ/R95n3ICdpGLWfuUStwlUy8HF9jlXwQBHOlyBOP7M8y
5/3deJ7dP9wf0/ktca2pbkd2baod2G4UyNgD7Kw6HEUvRRpyTJZ/L3VmfGT+tIbWo6HIxzLTs/m5
5iqKTaDaI4Q3qK4JULeTAAdRL/RfQmSpb3LUmOqKahCwxslnzUfjlDrQ1yr6O4UDsXY4hdfrGK9D
/I7KoTKVvEhrueaX2jRmY3TQrBUt4jyGRe3PZ6bG503/ai2p2yjlgo+WpvN4/p05/WKtMyZOkIZl
UJBltJG+KSXZ7ZMQP6CiBt0LOX7irCbHz0Jc8g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DywZ/kNdKOmRTL7XhjPG/GfMoClg4ctHdFzXJa3aew7oWOtgVWlq099QePdVKIIjIu5l23MJcdIO
oqynvDtsO7VQVhHYIpsQFOj2gSnqXKfBL8B5bT2FcKG3ooFRv+3lkOFeU5Nw8WL0q47fLhyAMLNd
/9HoUonhRo19wn0Me1Do9aWic/JVt3e9Nd7ru1ix5nBBPNQOlYU7SVx+2X1T2XaJWYvLixlk0Mhc
jMhvX3YFZPzZ0+CM93ob1QR9ScG+y4XfYgNogHRVVefGFoLz2+xnJN+Bu/U0KTX6CQMDDd3buBwQ
T6pBRJKKEDybcMbPkbOJLE5f5LO6qExT7Tg1VA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xk76vYY5+Mi9SikZxGvoXU0nDA0NsPtFqoFTdNelYrbJJjzYNc3fKoKmeAPJEHAK68DYNC1hfZ+h
wET+8JT5Y0DFS6q4lseScDHDk1aw1B8bX+BjAZGKZ0aHGVLPVIBWoebVqqt6jq4ixwO9FqIZHsBM
+MvVrCQvX1DCzUaRFYo14SpAvNJqUYqu6GG3yylKDKwbG8MXyf+cxyC3SADqw9GIWVeUU6K6qVhw
xPAS+X8RLs2umC5guWQim6qB6i7UvICDc0XHSGBJTshyHB7pJ2HTmwrJM0u4VdB6VWY7d3+mSXiS
DD460Qt+vAgSG+7W6NzEmdFsY1oS7d9BmIM8TQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lnn2zznD4woSpcQ8qX9T+xHBP0X7XM2/xXLBM/d+4CrXYKZQlI5YUEvGjRGGV7RB+4F2JgUow8cF
xFJeqARfTzUNSbwmUP/DFMtqlGEpM1nl55xR/wX4ilkSqJcznCGf58hVz/IgOrc5d0OVvOQ/RNYL
rQXtkBsY4w2O8c7EGphPL24fy/JJg5k7ryF7nyHr6SJRrqNDPv/NiKuP5m/kV27HfpteXE06q4M0
JWC5QAIiv5LTpXAb+DVggJmRRAjxMvV2S84NjffxHFMCaMTvtc+jxlYh9aF+cQNAKPRiHAx85SiJ
PEFLBbwPCT5vvJDdLpasydWmMxkjZHzK2xrqeQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
DUNozA2bEHamc0iNCnZvk8LepBeINdhN5GX+6IX34qnspEKMKv7BjtLqXgwW/V/JCnWf8Y7OIbw4
f22QHEpI1y43+nOTrbDPPtprE6ltlBCtccryEPYttIQJF/Tiu49G9uWMIYmXUXgklMNLgBGIeDiK
MdigVvsFpWQ6/uEjPAFsj2WD2pLIKxqEXb3OZ0Nem9xlsoptO6Uf3qgYsXspsW/L4zVBsQNlETzy
cGcBkm40vHTRqemA2HpoPknluLKSuOwehOGvmKh55bvIJRxVFCrPdV4bF50Nq2S4uePYJ2wCeLJb
1sDpBCI5cUI6kGfJN0e+OIQ/DwN9iIoPWSdiKj6BN3I0bmh8maYAcAmtDaAzTaXC3jXkFQB+ik7h
V11sxx0a+8ZYnH66nJrJftgrmqQZU1leLEGxxaKkkPXytKyATXEpCz9MbzyjKwvliQljZcszf7lH
WWRPP6R6bKU8hpjrVAMsuRm+R8j4iHc4nTPqt7cZhlyhAViBvlB2C40D

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHaUQmQmLufYzNZ5QppuzuiisgA7fFX3fAiRBFmfJqYPZjTG0XgsTNCRYHWXcuY3m9BX/s9Er2Gd
/L/4+bT/RXW5ZkETw2SBQHO7qe1CJqtNqDahDuB0zADrCR/cKwPDQtFItqIOeGeJoLEA9s/HUvSD
th2uPFi0+hFXeDicj+1plX4ApmUWJska8TlRwC0oi/m+lIBBbRrdYO5XY38+qhOgnKC2wPmdMbkc
EFGNFdyzlp/ZUen6C7tswoDOjsDSmlB3wOq10stSLY7Bo90k8f9xLzuwI5q+H7plQuinSdWPRTYu
x9hcgLtu9zFvPwNz/KNLHShBAtzUCp4bx3dwGw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sOYoFu61UC8Y00qCHUNN26P31U5AWJ63SSgVOs2Gp7CWPJ+P3OCRLePUP3+bAteUgBN7AVfI4R/z
Yw2S8JiIqaRcTitNUHv2Diet7aTJZ4Pnf0fbOaK8TOtu0MU72ttMTQPYuX472KGwdJiqBAxB4FzH
KuXCK8Q+rXGxbV5Sub0rOi5KOyQYei7zMxxhQsQHIl4iRkiNGJ5OLhaX6w1YJw60TzJq3XLnqBbu
hbrtcwSQccW8il9D3IlW+Uk+JKVURvFU0ULOXoBLyfWnFH57yQp5QhIrCf8jqGqVd4po+EbPJz6B
sWESgEhaJa8ccl9THIShRCNPAVXkyfN7wTTFmA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fz3nBHklRG4aYQk8bMLrCmmQlzihvhNQmRJkDjMqAVQp3WfT3s29tMACoxDJDWmUKcN48pRpjTcS
XQtCGGmwDaUP9aAsJBVtDs3tIakQoXZ/Q+b6bJy16xRLtVX3DbYsT5harhUkmBWCTRn3H1XrmQyv
sxbL1P6awsZjt9hO4Mdv3YOqh9IsIKEnsRIHQNdH6IFLnpz/3Zi3LzPQNq06nEuGqIvBuo3484HA
Oqj7FoYVOOEHSLUEZOW8wOSmhniWeAOKTQGQRonLiMMuS8yDcXSIQh1zEg+e0cBH8+1DW5cFMzeD
wCbuSTLTBwW2672ks/1kB5Hp7UKgj/KoG2ySZA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 73744)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
