-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Sep 21 16:57:00 2025
-- Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/work/dev/PYNQ/boards/Pynq-Z2/base/base/base.gen/sources_1/bd/base/ip/base_pixel_pack_0/base_pixel_pack_0_sim_netlist.vhdl
-- Design      : base_pixel_pack_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_control_s_axi is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \int_mode_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst_n : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_control_s_axi : entity is "pixel_pack_control_s_axi";
end base_pixel_pack_0_pixel_pack_control_s_axi;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal int_alpha : STD_LOGIC;
  signal \int_alpha[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_alpha[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_alpha[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_alpha[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_alpha[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_alpha[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_alpha[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_alpha[7]_i_1_n_0\ : STD_LOGIC;
  signal int_mode : STD_LOGIC;
  signal \int_mode[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[10]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[13]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[14]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[16]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[17]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[18]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[20]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[21]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[22]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[24]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[25]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[26]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[27]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[28]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[29]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[30]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[31]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_mode[9]_i_1_n_0\ : STD_LOGIC;
  signal \^int_mode_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rdata : STD_LOGIC;
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal \waddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \waddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \int_alpha[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_alpha[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_alpha[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_alpha[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_alpha[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_alpha[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_alpha[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_alpha[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_mode[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_mode[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_mode[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_mode[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_mode[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_mode[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_mode[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_mode[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_mode[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_mode[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_mode[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_mode[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_mode[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_mode[21]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_mode[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_mode[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_mode[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_mode[25]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_mode[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_mode[27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_mode[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_mode[29]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_mode[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_mode[30]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_mode[31]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_mode[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_mode[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_mode[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_mode[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_mode[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_mode[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_mode[9]_i_1\ : label is "soft_lutpair9";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  Q(7 downto 0) <= \^q\(7 downto 0);
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  \int_mode_reg[31]_0\(31 downto 0) <= \^int_mode_reg[31]_0\(31 downto 0);
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F747"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => \^s_axi_control_rvalid\,
      I3 => s_axi_control_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_control_rvalid\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BFF8B"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_control_AWVALID,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_control_BREADY,
      I3 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^ap_rst_n_inv\
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => \^ap_rst_n_inv\
    );
\__4/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_control_WVALID,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[4]\,
      O => int_alpha
    );
\__5/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_control_WVALID,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => \waddr_reg_n_0_[4]\,
      O => int_mode
    );
ack_in_t_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\int_alpha[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(0),
      O => \int_alpha[0]_i_1_n_0\
    );
\int_alpha[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(1),
      O => \int_alpha[1]_i_1_n_0\
    );
\int_alpha[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(2),
      O => \int_alpha[2]_i_1_n_0\
    );
\int_alpha[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(3),
      O => \int_alpha[3]_i_1_n_0\
    );
\int_alpha[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(4),
      O => \int_alpha[4]_i_1_n_0\
    );
\int_alpha[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(5),
      O => \int_alpha[5]_i_1_n_0\
    );
\int_alpha[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(6),
      O => \int_alpha[6]_i_1_n_0\
    );
\int_alpha[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(7),
      O => \int_alpha[7]_i_1_n_0\
    );
\int_alpha_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_alpha,
      D => \int_alpha[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \^ap_rst_n_inv\
    );
\int_alpha_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_alpha,
      D => \int_alpha[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \^ap_rst_n_inv\
    );
\int_alpha_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_alpha,
      D => \int_alpha[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \^ap_rst_n_inv\
    );
\int_alpha_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_alpha,
      D => \int_alpha[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \^ap_rst_n_inv\
    );
\int_alpha_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_alpha,
      D => \int_alpha[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \^ap_rst_n_inv\
    );
\int_alpha_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_alpha,
      D => \int_alpha[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \^ap_rst_n_inv\
    );
\int_alpha_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_alpha,
      D => \int_alpha[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \^ap_rst_n_inv\
    );
\int_alpha_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_alpha,
      D => \int_alpha[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \^ap_rst_n_inv\
    );
\int_mode[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_mode_reg[31]_0\(0),
      O => \int_mode[0]_i_1_n_0\
    );
\int_mode[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_mode_reg[31]_0\(10),
      O => \int_mode[10]_i_1_n_0\
    );
\int_mode[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_mode_reg[31]_0\(11),
      O => \int_mode[11]_i_1_n_0\
    );
\int_mode[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_mode_reg[31]_0\(12),
      O => \int_mode[12]_i_1_n_0\
    );
\int_mode[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_mode_reg[31]_0\(13),
      O => \int_mode[13]_i_1_n_0\
    );
\int_mode[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_mode_reg[31]_0\(14),
      O => \int_mode[14]_i_1_n_0\
    );
\int_mode[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_mode_reg[31]_0\(15),
      O => \int_mode[15]_i_1_n_0\
    );
\int_mode[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_mode_reg[31]_0\(16),
      O => \int_mode[16]_i_1_n_0\
    );
\int_mode[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_mode_reg[31]_0\(17),
      O => \int_mode[17]_i_1_n_0\
    );
\int_mode[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_mode_reg[31]_0\(18),
      O => \int_mode[18]_i_1_n_0\
    );
\int_mode[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_mode_reg[31]_0\(19),
      O => \int_mode[19]_i_1_n_0\
    );
\int_mode[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_mode_reg[31]_0\(1),
      O => \int_mode[1]_i_1_n_0\
    );
\int_mode[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_mode_reg[31]_0\(20),
      O => \int_mode[20]_i_1_n_0\
    );
\int_mode[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_mode_reg[31]_0\(21),
      O => \int_mode[21]_i_1_n_0\
    );
\int_mode[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_mode_reg[31]_0\(22),
      O => \int_mode[22]_i_1_n_0\
    );
\int_mode[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => \^int_mode_reg[31]_0\(23),
      O => \int_mode[23]_i_1_n_0\
    );
\int_mode[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_mode_reg[31]_0\(24),
      O => \int_mode[24]_i_1_n_0\
    );
\int_mode[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_mode_reg[31]_0\(25),
      O => \int_mode[25]_i_1_n_0\
    );
\int_mode[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_mode_reg[31]_0\(26),
      O => \int_mode[26]_i_1_n_0\
    );
\int_mode[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_mode_reg[31]_0\(27),
      O => \int_mode[27]_i_1_n_0\
    );
\int_mode[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_mode_reg[31]_0\(28),
      O => \int_mode[28]_i_1_n_0\
    );
\int_mode[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_mode_reg[31]_0\(29),
      O => \int_mode[29]_i_1_n_0\
    );
\int_mode[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_mode_reg[31]_0\(2),
      O => \int_mode[2]_i_1_n_0\
    );
\int_mode[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_mode_reg[31]_0\(30),
      O => \int_mode[30]_i_1_n_0\
    );
\int_mode[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => \^int_mode_reg[31]_0\(31),
      O => \int_mode[31]_i_1_n_0\
    );
\int_mode[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_mode_reg[31]_0\(3),
      O => \int_mode[3]_i_1_n_0\
    );
\int_mode[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_mode_reg[31]_0\(4),
      O => \int_mode[4]_i_1_n_0\
    );
\int_mode[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_mode_reg[31]_0\(5),
      O => \int_mode[5]_i_1_n_0\
    );
\int_mode[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_mode_reg[31]_0\(6),
      O => \int_mode[6]_i_1_n_0\
    );
\int_mode[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_mode_reg[31]_0\(7),
      O => \int_mode[7]_i_1_n_0\
    );
\int_mode[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_mode_reg[31]_0\(8),
      O => \int_mode[8]_i_1_n_0\
    );
\int_mode[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_mode_reg[31]_0\(9),
      O => \int_mode[9]_i_1_n_0\
    );
\int_mode_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[0]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(0),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[10]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(10),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[11]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(11),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[12]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(12),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[13]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(13),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[14]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(14),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[15]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(15),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[16]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(16),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[17]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(17),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[18]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(18),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[19]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(19),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[1]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(1),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[20]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(20),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[21]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(21),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[22]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(22),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[23]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(23),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[24]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(24),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[25]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(25),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[26]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(26),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[27]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(27),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[28]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(28),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[29]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(29),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[2]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(2),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[30]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(30),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[31]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(31),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[3]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(3),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[4]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(4),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[5]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(5),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[6]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(6),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[7]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(7),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[8]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(8),
      R => \^ap_rst_n_inv\
    );
\int_mode_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_mode,
      D => \int_mode[9]_i_1_n_0\,
      Q => \^int_mode_reg[31]_0\(9),
      R => \^ap_rst_n_inv\
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(0),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^q\(0),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(10),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[10]_i_1_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(11),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[11]_i_1_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(12),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[12]_i_1_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(13),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[13]_i_1_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(14),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[14]_i_1_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(15),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[15]_i_1_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(16),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[16]_i_1_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(17),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[17]_i_1_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(18),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[18]_i_1_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(19),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[19]_i_1_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(1),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^q\(1),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(20),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[20]_i_1_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(21),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[21]_i_1_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(22),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[22]_i_1_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(23),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[23]_i_1_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(24),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[24]_i_1_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(25),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[25]_i_1_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(26),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[26]_i_1_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(27),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[27]_i_1_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(28),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[28]_i_1_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(29),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[29]_i_1_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(2),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^q\(2),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[2]_i_1_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(30),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[30]_i_1_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => s_axi_control_ARADDR(4),
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => rdata
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(31),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[31]_i_3_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(3),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^q\(3),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[3]_i_1_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(4),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^q\(4),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[4]_i_1_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(5),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^q\(5),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[5]_i_1_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(6),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^q\(6),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[6]_i_1_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(7),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^q\(7),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(8),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[8]_i_1_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^int_mode_reg[31]_0\(9),
      I1 => s_axi_control_ARADDR(2),
      I2 => s_axi_control_ARADDR(1),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[9]_i_1_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[0]_i_1_n_0\,
      Q => s_axi_control_RDATA(0),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[10]_i_1_n_0\,
      Q => s_axi_control_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[11]_i_1_n_0\,
      Q => s_axi_control_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[12]_i_1_n_0\,
      Q => s_axi_control_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[13]_i_1_n_0\,
      Q => s_axi_control_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[14]_i_1_n_0\,
      Q => s_axi_control_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[15]_i_1_n_0\,
      Q => s_axi_control_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[16]_i_1_n_0\,
      Q => s_axi_control_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[17]_i_1_n_0\,
      Q => s_axi_control_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[18]_i_1_n_0\,
      Q => s_axi_control_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[19]_i_1_n_0\,
      Q => s_axi_control_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[1]_i_1_n_0\,
      Q => s_axi_control_RDATA(1),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[20]_i_1_n_0\,
      Q => s_axi_control_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[21]_i_1_n_0\,
      Q => s_axi_control_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[22]_i_1_n_0\,
      Q => s_axi_control_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[23]_i_1_n_0\,
      Q => s_axi_control_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[24]_i_1_n_0\,
      Q => s_axi_control_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[25]_i_1_n_0\,
      Q => s_axi_control_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[26]_i_1_n_0\,
      Q => s_axi_control_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[27]_i_1_n_0\,
      Q => s_axi_control_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[28]_i_1_n_0\,
      Q => s_axi_control_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[29]_i_1_n_0\,
      Q => s_axi_control_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_control_RDATA(2),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[30]_i_1_n_0\,
      Q => s_axi_control_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[31]_i_3_n_0\,
      Q => s_axi_control_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[3]_i_1_n_0\,
      Q => s_axi_control_RDATA(3),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[4]_i_1_n_0\,
      Q => s_axi_control_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[5]_i_1_n_0\,
      Q => s_axi_control_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[6]_i_1_n_0\,
      Q => s_axi_control_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_control_RDATA(7),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[8]_i_1_n_0\,
      Q => s_axi_control_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[9]_i_1_n_0\,
      Q => s_axi_control_RDATA(9),
      R => \rdata[31]_i_1_n_0\
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_control_AWADDR(0),
      I1 => s_axi_control_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \waddr_reg_n_0_[2]\,
      O => \waddr[2]_i_1_n_0\
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_control_AWADDR(1),
      I1 => s_axi_control_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \waddr_reg_n_0_[3]\,
      O => \waddr[3]_i_1_n_0\
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s_axi_control_AWADDR(2),
      I1 => s_axi_control_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \waddr_reg_n_0_[4]\,
      O => \waddr[4]_i_1_n_0\
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \waddr[2]_i_1_n_0\,
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \waddr[3]_i_1_n_0\,
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \waddr[4]_i_1_n_0\,
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init is
  port (
    ap_done_cache : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_cache_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TLAST_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init : entity is "pixel_pack_flow_control_loop_pipe_sequential_init";
end base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init is
  signal \^ap_done_cache\ : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_0\ : STD_LOGIC;
begin
  ap_done_cache <= \^ap_done_cache\;
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5555550C000000"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      I1 => ap_done_cache_reg_0(0),
      I2 => ap_done_cache_reg_1,
      I3 => Q(0),
      I4 => stream_in_24_TLAST_int_regslice,
      I5 => \^ap_done_cache\,
      O => \ap_done_cache_i_1__0_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_0\,
      Q => \^ap_done_cache\,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_3 is
  port (
    \delayed_last_reg_103_reg[0]\ : out STD_LOGIC;
    ap_ready_int : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mode_read_reg_236_reg[0]\ : out STD_LOGIC;
    ap_NS_fsm1 : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mode_read_reg_236_reg[1]\ : out STD_LOGIC;
    \data_p1_reg[0]\ : out STD_LOGIC;
    \delayed_last_reg_103_reg[0]_0\ : out STD_LOGIC;
    ap_predicate_pred258_state4_reg : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    delayed_last_reg_103 : in STD_LOGIC;
    last_4_reg_114 : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[3]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[3]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[3]_2\ : in STD_LOGIC;
    \ap_CS_fsm_reg[3]_3\ : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[3]_4\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \last_4_reg_114_reg[0]\ : in STD_LOGIC;
    \in_pixel_user_4_reg_280_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_4_reg_114_reg[0]_0\ : in STD_LOGIC;
    in_pixel_last_reg_286 : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_1 : in STD_LOGIC;
    stream_in_24_TLAST_int_regslice : in STD_LOGIC;
    ack_in_t_i_3 : in STD_LOGIC;
    ap_predicate_pred258_state4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_3 : entity is "pixel_pack_flow_control_loop_pipe_sequential_init";
end base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_3;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_3 is
  signal ack_in_t_i_9_n_0 : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_8_n_0\ : STD_LOGIC;
  signal \^ap_ns_fsm1\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__1_n_0\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_0\ : STD_LOGIC;
  signal \^ap_ready_int\ : STD_LOGIC;
  signal \last_4_reg_114[0]_i_3_n_0\ : STD_LOGIC;
  signal \^mode_read_reg_236_reg[0]\ : STD_LOGIC;
  signal \^mode_read_reg_236_reg[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__1\ : label is "soft_lutpair27";
begin
  ap_NS_fsm1 <= \^ap_ns_fsm1\;
  ap_ready_int <= \^ap_ready_int\;
  \mode_read_reg_236_reg[0]\ <= \^mode_read_reg_236_reg[0]\;
  \mode_read_reg_236_reg[1]\ <= \^mode_read_reg_236_reg[1]\;
ack_in_t_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4F44FFFFFFFF"
    )
        port map (
      I0 => \last_4_reg_114_reg[0]\,
      I1 => \^ap_ready_int\,
      I2 => ack_in_t_i_9_n_0,
      I3 => \^ap_ns_fsm1\,
      I4 => ack_in_t_i_3,
      I5 => ap_predicate_pred258_state4,
      O => ap_predicate_pred258_state4_reg
    );
ack_in_t_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEEEEEE"
    )
        port map (
      I0 => delayed_last_reg_103,
      I1 => last_4_reg_114,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      I3 => Q(0),
      I4 => ap_loop_init_int,
      O => ack_in_t_i_9_n_0
    );
\ap_CS_fsm[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBBAAAA"
    )
        port map (
      I0 => \^ap_ready_int\,
      I1 => \^ap_ns_fsm1\,
      I2 => ap_loop_init_int,
      I3 => delayed_last_reg_103,
      I4 => Q(0),
      O => \state_reg[0]\(0)
    );
\ap_CS_fsm[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_2__0_n_0\,
      I1 => \in_pixel_user_4_reg_280_reg[0]\(0),
      I2 => last_4_reg_114,
      I3 => delayed_last_reg_103,
      I4 => in_pixel_last_reg_286,
      I5 => Q(1),
      O => \state_reg[0]\(1)
    );
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808000008080C080"
    )
        port map (
      I0 => \in_pixel_user_4_reg_280_reg[0]\(0),
      I1 => Q(0),
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      I3 => last_4_reg_114,
      I4 => ap_loop_init_int,
      I5 => delayed_last_reg_103,
      O => \ap_CS_fsm[1]_i_2__0_n_0\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFAAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(0),
      I1 => \^mode_read_reg_236_reg[0]\,
      I2 => \ap_CS_fsm_reg[3]_0\,
      I3 => \ap_CS_fsm_reg[3]_1\,
      I4 => \ap_CS_fsm_reg[3]_2\,
      I5 => \ap_CS_fsm_reg[3]\(1),
      O => D(0)
    );
\ap_CS_fsm[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEEE00000000"
    )
        port map (
      I0 => \last_4_reg_114_reg[0]\,
      I1 => \in_pixel_user_4_reg_280_reg[0]\(0),
      I2 => delayed_last_reg_103,
      I3 => last_4_reg_114,
      I4 => \last_4_reg_114_reg[0]_0\,
      I5 => Q(2),
      O => \^ap_ready_int\
    );
\ap_CS_fsm[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000010300"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_8_n_0\,
      I1 => \ap_CS_fsm_reg[3]_3\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg,
      I3 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_0(0),
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_0(1),
      I5 => \ap_CS_fsm_reg[3]_4\,
      O => \^mode_read_reg_236_reg[0]\
    );
\ap_CS_fsm[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => delayed_last_reg_103,
      I1 => ap_loop_init_int,
      I2 => \^ap_ns_fsm1\,
      I3 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      I4 => ap_done_cache,
      O => \ap_CS_fsm[4]_i_8_n_0\
    );
\ap_done_cache_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => \^ap_ns_fsm1\,
      I1 => ap_loop_init_int,
      I2 => delayed_last_reg_103,
      I3 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      I4 => ap_done_cache,
      O => \ap_done_cache_i_1__1_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__1_n_0\,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F8FFF8F"
    )
        port map (
      I0 => delayed_last_reg_103,
      I1 => \^ap_ns_fsm1\,
      I2 => ap_rst_n,
      I3 => ap_loop_init_int,
      I4 => \^ap_ready_int\,
      O => \ap_loop_init_int_i_1__0_n_0\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_0\,
      Q => ap_loop_init_int,
      R => '0'
    );
ap_predicate_pred258_state4_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_1,
      I1 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_0(1),
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg,
      O => \^mode_read_reg_236_reg[1]\
    );
\delayed_last_reg_103[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => delayed_last_reg_103,
      I1 => \^ap_ready_int\,
      I2 => last_4_reg_114,
      I3 => \last_4_reg_114[0]_i_3_n_0\,
      O => \delayed_last_reg_103_reg[0]\
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDFDF00FF0000"
    )
        port map (
      I0 => delayed_last_reg_103,
      I1 => ap_loop_init_int,
      I2 => \^ap_ns_fsm1\,
      I3 => \^mode_read_reg_236_reg[1]\,
      I4 => \ap_CS_fsm_reg[3]\(0),
      I5 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      O => \delayed_last_reg_103_reg[0]_0\
    );
\in_pixel_last_reg_286[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F0000000E000"
    )
        port map (
      I0 => delayed_last_reg_103,
      I1 => last_4_reg_114,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      I3 => Q(0),
      I4 => ap_loop_init_int,
      I5 => \in_pixel_user_4_reg_280_reg[0]\(0),
      O => \^ap_ns_fsm1\
    );
\last_4_reg_114[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FEFF00000E00"
    )
        port map (
      I0 => \last_4_reg_114_reg[0]\,
      I1 => stream_in_24_TLAST_int_regslice,
      I2 => delayed_last_reg_103,
      I3 => \^ap_ready_int\,
      I4 => \last_4_reg_114[0]_i_3_n_0\,
      I5 => last_4_reg_114,
      O => \data_p1_reg[0]\
    );
\last_4_reg_114[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      I1 => Q(0),
      I2 => ap_loop_init_int,
      I3 => \in_pixel_user_4_reg_280_reg[0]\(0),
      O => \last_4_reg_114[0]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_4 is
  port (
    ap_done_cache : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_4 : entity is "pixel_pack_flow_control_loop_pipe_sequential_init";
end base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_4;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_4 is
begin
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_reg_0,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_5 is
  port (
    \mode_read_reg_236_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mode_read_reg_236_reg[1]_0\ : out STD_LOGIC;
    ap_NS_fsm9 : out STD_LOGIC;
    \in_pixel_last_5_reg_475_reg[0]\ : out STD_LOGIC;
    ap_done_reg1 : out STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_block_pp0_stage1_subdone_grp1_done_reg_reg : out STD_LOGIC;
    \last_8_reg_138_reg[0]\ : out STD_LOGIC;
    ap_block_pp0_stage0_subdone_grp4_done_reg_reg : out STD_LOGIC;
    \mode_read_reg_236_reg[2]\ : out STD_LOGIC;
    \mode_read_reg_236_reg[0]\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : out STD_LOGIC;
    \delayed_last_reg_127_reg[0]\ : out STD_LOGIC;
    \last_8_reg_138_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg_0 : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]_2\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ack_in_t_i_3 : in STD_LOGIC;
    ack_in_t_i_3_0 : in STD_LOGIC;
    ack_in_t_i_3_1 : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_block_pp0_stage1_subdone_grp1_done_reg_reg_0 : in STD_LOGIC;
    ap_block_pp0_stage0_subdone_grp4_done_reg : in STD_LOGIC;
    ap_block_pp0_stage0_subdone_grp4_done_reg_reg_0 : in STD_LOGIC;
    \delayed_last_reg_127_reg[0]_0\ : in STD_LOGIC;
    \last_8_reg_138_reg[0]_1\ : in STD_LOGIC;
    \last_8_reg_138_reg[0]_2\ : in STD_LOGIC;
    \last_8_reg_138_reg[0]_3\ : in STD_LOGIC;
    ap_predicate_pred229_state4_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \delayed_last_reg_127_reg[0]_1\ : in STD_LOGIC;
    has_last_fu_257_p4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC;
    ap_predicate_pred229_state4_reg_0 : in STD_LOGIC;
    in_pixel_last_5_reg_475 : in STD_LOGIC;
    delayed_last_reg_127_pp0_iter1_reg : in STD_LOGIC;
    last_8_reg_138_pp0_iter1_reg : in STD_LOGIC;
    ap_block_pp0_stage1_subdone_grp1_done_reg_reg_1 : in STD_LOGIC;
    last_2_31207_reg_206 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_5 : entity is "pixel_pack_flow_control_loop_pipe_sequential_init";
end base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_5;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_5 is
  signal ack_in_t_i_12_n_0 : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_4_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_5_n_0\ : STD_LOGIC;
  signal \^ap_ns_fsm9\ : STD_LOGIC;
  signal \^ap_block_pp0_stage1_subdone_grp1_done_reg_reg\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__2_n_0\ : STD_LOGIC;
  signal \^ap_done_reg1\ : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter0_reg_reg\ : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter1_reg\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_0 : STD_LOGIC;
  signal ap_predicate_pred229_state4_i_3_n_0 : STD_LOGIC;
  signal delayed_last_reg_1278_out : STD_LOGIC;
  signal \^in_pixel_last_5_reg_475_reg[0]\ : STD_LOGIC;
  signal \in_pixel_last_reg_441[0]_i_2_n_0\ : STD_LOGIC;
  signal \^last_8_reg_138_reg[0]\ : STD_LOGIC;
  signal \^mode_read_reg_236_reg[0]\ : STD_LOGIC;
  signal \^mode_read_reg_236_reg[1]_0\ : STD_LOGIC;
  signal \^mode_read_reg_236_reg[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ack_in_t_i_12 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \delayed_last_reg_127_pp0_iter1_reg[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \in_pixel_last_4_reg_458[0]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \in_pixel_last_reg_441[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \last_8_reg_138[0]_i_2\ : label is "soft_lutpair23";
begin
  ap_NS_fsm9 <= \^ap_ns_fsm9\;
  ap_block_pp0_stage1_subdone_grp1_done_reg_reg <= \^ap_block_pp0_stage1_subdone_grp1_done_reg_reg\;
  ap_done_reg1 <= \^ap_done_reg1\;
  ap_enable_reg_pp0_iter0_reg_reg <= \^ap_enable_reg_pp0_iter0_reg_reg\;
  ap_enable_reg_pp0_iter1_reg <= \^ap_enable_reg_pp0_iter1_reg\;
  \in_pixel_last_5_reg_475_reg[0]\ <= \^in_pixel_last_5_reg_475_reg[0]\;
  \last_8_reg_138_reg[0]\ <= \^last_8_reg_138_reg[0]\;
  \mode_read_reg_236_reg[0]\ <= \^mode_read_reg_236_reg[0]\;
  \mode_read_reg_236_reg[1]_0\ <= \^mode_read_reg_236_reg[1]_0\;
  \mode_read_reg_236_reg[2]\ <= \^mode_read_reg_236_reg[2]\;
ack_in_t_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I1 => Q(0),
      I2 => ap_loop_init_int,
      I3 => \last_8_reg_138_reg[0]_3\,
      O => ack_in_t_i_12_n_0
    );
ack_in_t_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2F2F2FFF2F2"
    )
        port map (
      I0 => ack_in_t_i_3,
      I1 => ack_in_t_i_3_0,
      I2 => ack_in_t_i_3_1,
      I3 => \in_pixel_last_reg_441[0]_i_2_n_0\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I5 => ack_in_t_i_12_n_0,
      O => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg
    );
\ap_CS_fsm[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_4_n_0\,
      I1 => Q(0),
      I2 => \^in_pixel_last_5_reg_475_reg[0]\,
      I3 => \^ap_done_reg1\,
      O => D(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111F111FFFFFFFF"
    )
        port map (
      I0 => in_pixel_last_5_reg_475,
      I1 => \^ap_enable_reg_pp0_iter0_reg_reg\,
      I2 => ap_block_pp0_stage1_subdone_grp1_done_reg_reg_0,
      I3 => p_0_in(1),
      I4 => \^last_8_reg_138_reg[0]\,
      I5 => Q(2),
      O => \^in_pixel_last_5_reg_475_reg[0]\
    );
\ap_CS_fsm[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1_reg\,
      I1 => \^ap_block_pp0_stage1_subdone_grp1_done_reg_reg\,
      I2 => p_0_in(1),
      I3 => \delayed_last_reg_127_reg[0]_0\,
      O => \^ap_done_reg1\
    );
\ap_CS_fsm[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0E0E0"
    )
        port map (
      I0 => \ap_CS_fsm_reg[1]\,
      I1 => \^ap_block_pp0_stage1_subdone_grp1_done_reg_reg\,
      I2 => Q(1),
      I3 => \ap_CS_fsm[1]_i_4_n_0\,
      I4 => Q(0),
      O => D(1)
    );
\ap_CS_fsm[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \delayed_last_reg_127_reg[0]_0\,
      I3 => \delayed_last_reg_127_reg[0]_1\,
      I4 => has_last_fu_257_p4(0),
      I5 => \ap_CS_fsm_reg[2]\(0),
      O => \^ap_block_pp0_stage1_subdone_grp1_done_reg_reg\
    );
\ap_CS_fsm[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545454541054"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_5_n_0\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I3 => ap_block_pp0_stage1_subdone_grp1_done_reg_reg_0,
      I4 => ap_block_pp0_stage0_subdone_grp4_done_reg,
      I5 => \^last_8_reg_138_reg[0]\,
      O => \ap_CS_fsm[1]_i_4_n_0\
    );
\ap_CS_fsm[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0AAE000"
    )
        port map (
      I0 => \last_8_reg_138_reg[0]_3\,
      I1 => ap_loop_init_int,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I3 => Q(0),
      I4 => p_0_in(1),
      I5 => \ap_CS_fsm_reg[2]\(0),
      O => \ap_CS_fsm[1]_i_5_n_0\
    );
\ap_CS_fsm[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \ap_CS_fsm_reg[2]\(0),
      I2 => has_last_fu_257_p4(0),
      I3 => \ap_CS_fsm_reg[2]_0\,
      I4 => \delayed_last_reg_127_reg[0]_1\,
      I5 => \delayed_last_reg_127_reg[0]_0\,
      O => \^ap_enable_reg_pp0_iter0_reg_reg\
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004500"
    )
        port map (
      I0 => \^mode_read_reg_236_reg[1]_0\,
      I1 => \ap_CS_fsm_reg[4]\,
      I2 => \^ap_ns_fsm9\,
      I3 => \ap_CS_fsm_reg[4]_0\,
      I4 => \ap_CS_fsm_reg[4]_1\,
      I5 => \ap_CS_fsm_reg[4]_2\,
      O => \mode_read_reg_236_reg[1]\(0)
    );
\ap_CS_fsm[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010001"
    )
        port map (
      I0 => \^mode_read_reg_236_reg[2]\,
      I1 => ap_predicate_pred229_state4_reg(1),
      I2 => \^mode_read_reg_236_reg[0]\,
      I3 => ap_done_cache,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I5 => \^ap_done_reg1\,
      O => \^mode_read_reg_236_reg[1]_0\
    );
ap_block_pp0_stage0_subdone_grp4_done_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => \in_pixel_last_reg_441[0]_i_2_n_0\,
      I1 => ap_block_pp0_stage0_subdone_grp4_done_reg,
      I2 => ap_block_pp0_stage0_subdone_grp4_done_reg_reg_0,
      I3 => ap_rst_n,
      O => ap_block_pp0_stage0_subdone_grp4_done_reg_reg
    );
ap_block_pp0_stage1_subdone_grp1_done_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_block_pp0_stage1_subdone_grp1_done_reg_reg_1,
      I2 => last_8_reg_138_pp0_iter1_reg,
      I3 => delayed_last_reg_127_pp0_iter1_reg,
      I4 => ap_block_pp0_stage1_subdone_grp1_done_reg_reg_0,
      I5 => Q(1),
      O => \^ap_enable_reg_pp0_iter1_reg\
    );
\ap_done_cache_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I1 => \^ap_done_reg1\,
      I2 => ap_done_cache,
      O => \ap_done_cache_i_1__2_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__2_n_0\,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD0FF"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \^in_pixel_last_5_reg_475_reg[0]\,
      I2 => ap_loop_init_int,
      I3 => ap_rst_n,
      I4 => \^ap_done_reg1\,
      O => ap_loop_init_int_i_1_n_0
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_0,
      Q => ap_loop_init_int,
      R => '0'
    );
ap_predicate_pred229_state4_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^mode_read_reg_236_reg[0]\,
      I1 => ap_predicate_pred229_state4_reg(1),
      I2 => ap_predicate_pred229_state4_reg(2),
      I3 => ap_predicate_pred229_state4_i_3_n_0,
      O => \^ap_ns_fsm9\
    );
ap_predicate_pred229_state4_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_predicate_pred229_state4_reg(0),
      I1 => ap_predicate_pred229_state4_reg_0,
      O => \^mode_read_reg_236_reg[0]\
    );
ap_predicate_pred229_state4_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ap_predicate_pred229_state4_reg(3),
      I1 => ap_predicate_pred229_state4_reg(7),
      I2 => ap_predicate_pred229_state4_reg(4),
      I3 => ap_predicate_pred229_state4_reg(6),
      I4 => ap_predicate_pred229_state4_reg(5),
      O => ap_predicate_pred229_state4_i_3_n_0
    );
ap_predicate_pred325_state4_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ap_predicate_pred229_state4_reg(2),
      I1 => ap_predicate_pred229_state4_reg(5),
      I2 => ap_predicate_pred229_state4_reg(6),
      I3 => ap_predicate_pred229_state4_reg(4),
      I4 => ap_predicate_pred229_state4_reg(7),
      I5 => ap_predicate_pred229_state4_reg(3),
      O => \^mode_read_reg_236_reg[2]\
    );
\delayed_last_reg_127[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC00CCECCCECCCEC"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \delayed_last_reg_127_reg[0]_0\,
      I2 => \delayed_last_reg_127_reg[0]_1\,
      I3 => \in_pixel_last_reg_441[0]_i_2_n_0\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I5 => ap_loop_init_int,
      O => ap_enable_reg_pp0_iter1_reg_0
    );
\delayed_last_reg_127_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \delayed_last_reg_127_reg[0]_0\,
      I1 => \in_pixel_last_reg_441[0]_i_2_n_0\,
      I2 => delayed_last_reg_127_pp0_iter1_reg,
      O => \delayed_last_reg_127_reg[0]\
    );
\in_pixel_last_4_reg_458[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \delayed_last_reg_127_reg[0]_1\,
      I1 => \delayed_last_reg_127_reg[0]_0\,
      O => \^last_8_reg_138_reg[0]\
    );
\in_pixel_last_reg_441[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \in_pixel_last_reg_441[0]_i_2_n_0\,
      I1 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      O => E(0)
    );
\in_pixel_last_reg_441[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFBBFFBAFFAAFF"
    )
        port map (
      I0 => \last_8_reg_138_reg[0]_1\,
      I1 => \last_8_reg_138_reg[0]_2\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I3 => Q(0),
      I4 => ap_loop_init_int,
      I5 => \last_8_reg_138_reg[0]_3\,
      O => \in_pixel_last_reg_441[0]_i_2_n_0\
    );
\last_8_reg_138[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB000B0FFF000F0"
    )
        port map (
      I0 => \in_pixel_last_reg_441[0]_i_2_n_0\,
      I1 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I2 => \delayed_last_reg_127_reg[0]_1\,
      I3 => delayed_last_reg_1278_out,
      I4 => last_2_31207_reg_206,
      I5 => ap_loop_init_int,
      O => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg_0
    );
\last_8_reg_138[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \delayed_last_reg_127_reg[0]_0\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \in_pixel_last_reg_441[0]_i_2_n_0\,
      O => delayed_last_reg_1278_out
    );
\last_8_reg_138_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \delayed_last_reg_127_reg[0]_1\,
      I1 => \in_pixel_last_reg_441[0]_i_2_n_0\,
      I2 => last_8_reg_138_pp0_iter1_reg,
      O => \last_8_reg_138_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_6 is
  port (
    \mode_read_reg_236_reg[1]\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \ap_CS_fsm[3]_i_2_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg : in STD_LOGIC;
    ap_done_reg1 : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_cache_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TLAST_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_6 : entity is "pixel_pack_flow_control_loop_pipe_sequential_init";
end base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_6;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_6 is
  signal \ap_CS_fsm[3]_i_3__0_n_0\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_0 : STD_LOGIC;
begin
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010001"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_3__0_n_0\,
      I1 => \ap_CS_fsm[3]_i_2_0\(0),
      I2 => \ap_CS_fsm_reg[3]\,
      I3 => ap_done_cache,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      I5 => ap_done_reg1,
      O => \mode_read_reg_236_reg[1]\
    );
\ap_CS_fsm[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_2_0\(4),
      I1 => \ap_CS_fsm[3]_i_2_0\(5),
      I2 => \ap_CS_fsm[3]_i_2_0\(3),
      I3 => \ap_CS_fsm[3]_i_2_0\(6),
      I4 => \ap_CS_fsm[3]_i_2_0\(2),
      I5 => \ap_CS_fsm[3]_i_2_0\(1),
      O => \ap_CS_fsm[3]_i_3__0_n_0\
    );
\ap_CS_fsm[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20002000"
    )
        port map (
      I0 => ap_done_cache_reg_0(0),
      I1 => ap_done_cache_reg_1,
      I2 => Q(0),
      I3 => stream_in_24_TLAST_int_regslice,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      I5 => ap_done_cache,
      O => \state_reg[0]\
    );
ap_done_cache_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5555550C000000"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      I1 => ap_done_cache_reg_0(0),
      I2 => ap_done_cache_reg_1,
      I3 => Q(0),
      I4 => stream_in_24_TLAST_int_regslice,
      I5 => ap_done_cache,
      O => ap_done_cache_i_1_n_0
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_0,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_regslice_both is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    \data_p1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \alpha_read_reg_231_reg[0]\ : out STD_LOGIC;
    \alpha_read_reg_231_reg[1]\ : out STD_LOGIC;
    \alpha_read_reg_231_reg[2]\ : out STD_LOGIC;
    \alpha_read_reg_231_reg[3]\ : out STD_LOGIC;
    \alpha_read_reg_231_reg[4]\ : out STD_LOGIC;
    \alpha_read_reg_231_reg[5]\ : out STD_LOGIC;
    \alpha_read_reg_231_reg[6]\ : out STD_LOGIC;
    \alpha_read_reg_231_reg[7]\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_1\ : out STD_LOGIC;
    \state_reg[0]_2\ : out STD_LOGIC;
    ap_NS_fsm6 : out STD_LOGIC;
    \mode_read_reg_236_reg[25]\ : out STD_LOGIC;
    \state_reg[0]_3\ : out STD_LOGIC;
    ap_NS_fsm8 : out STD_LOGIC;
    \state_reg[0]_4\ : out STD_LOGIC;
    ap_predicate_pred258_state4_reg : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p2[11]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1[24]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1[27]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[24]\ : in STD_LOGIC;
    \data_p1_reg[31]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_p1_reg[24]_0\ : in STD_LOGIC;
    \data_p1_reg[24]_1\ : in STD_LOGIC;
    \data_p1[31]_i_5_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_p2[23]_i_3\ : in STD_LOGIC;
    \data_p1[31]_i_5_1\ : in STD_LOGIC;
    ack_in_t_reg_1 : in STD_LOGIC;
    stream_in_24_TVALID : in STD_LOGIC;
    \ap_CS_fsm[4]_i_5\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stream_out_32_TREADY_int_regslice : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_predicate_pred249_state4 : in STD_LOGIC;
    stream_in_24_TLAST_int_regslice : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg : in STD_LOGIC;
    ap_done_cache : in STD_LOGIC;
    ap_predicate_pred325_state4_i_3_0 : in STD_LOGIC_VECTOR ( 25 downto 0 );
    ap_predicate_pred249_state4_reg : in STD_LOGIC;
    stream_in_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg_reg : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg : in STD_LOGIC;
    ap_predicate_pred258_state4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_regslice_both : entity is "pixel_pack_regslice_both";
end base_pixel_pack_0_pixel_pack_regslice_both;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_regslice_both is
  signal \^q\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ack_in_t_i_2_n_0 : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \^ap_ns_fsm6\ : STD_LOGIC;
  signal \^ap_ns_fsm8\ : STD_LOGIC;
  signal ap_predicate_pred325_state4_i_4_n_0 : STD_LOGIC;
  signal ap_predicate_pred325_state4_i_5_n_0 : STD_LOGIC;
  signal ap_predicate_pred325_state4_i_6_n_0 : STD_LOGIC;
  signal ap_predicate_pred325_state4_i_7_n_0 : STD_LOGIC;
  signal ap_predicate_pred325_state4_i_8_n_0 : STD_LOGIC;
  signal ap_predicate_pred325_state4_i_9_n_0 : STD_LOGIC;
  signal \data_p1[24]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[29]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[30]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_8_n_0\ : STD_LOGIC;
  signal \data_p1_reg[26]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1_reg[26]_i_5_n_1\ : STD_LOGIC;
  signal \data_p1_reg[26]_i_5_n_2\ : STD_LOGIC;
  signal \data_p1_reg[26]_i_5_n_3\ : STD_LOGIC;
  signal \data_p1_reg[30]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1_reg[30]_i_5_n_1\ : STD_LOGIC;
  signal \data_p1_reg[30]_i_5_n_2\ : STD_LOGIC;
  signal \data_p1_reg[30]_i_5_n_3\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \data_p2_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_p2_reg[10]_i_5_n_1\ : STD_LOGIC;
  signal \data_p2_reg[10]_i_5_n_2\ : STD_LOGIC;
  signal \data_p2_reg[10]_i_5_n_3\ : STD_LOGIC;
  signal \data_p2_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_p2_reg[14]_i_5_n_1\ : STD_LOGIC;
  signal \data_p2_reg[14]_i_5_n_2\ : STD_LOGIC;
  signal \data_p2_reg[14]_i_5_n_3\ : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg0 : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \^mode_read_reg_236_reg[25]\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^state_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_data_p1_reg[26]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_data_p1_reg[31]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_p1_reg[31]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_p2_reg[10]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_data_p2_reg[15]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_data_p2_reg[15]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair39";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of ap_predicate_pred249_state4_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of ap_predicate_pred267_state4_i_1 : label is "soft_lutpair40";
begin
  Q(23 downto 0) <= \^q\(23 downto 0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  ap_NS_fsm6 <= \^ap_ns_fsm6\;
  ap_NS_fsm8 <= \^ap_ns_fsm8\;
  \mode_read_reg_236_reg[25]\ <= \^mode_read_reg_236_reg[25]\;
  \state_reg[0]_0\(0) <= \^state_reg[0]_0\(0);
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAF"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => stream_in_24_TVALID,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF050F0"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => \^ack_in_t_reg_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => stream_in_24_TVALID,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
ack_in_t_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F6622"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => stream_in_24_TVALID,
      I3 => ack_in_t_reg_1,
      I4 => \^ack_in_t_reg_0\,
      O => ack_in_t_i_2_n_0
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_2_n_0,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => \^state_reg[0]_0\(0),
      I1 => \ap_CS_fsm[4]_i_5\(1),
      I2 => stream_out_32_TREADY_int_regslice,
      I3 => stream_in_24_TLAST_int_regslice,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      I5 => ap_done_cache,
      O => \state_reg[0]_2\
    );
ap_predicate_pred249_state4_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^mode_read_reg_236_reg[25]\,
      I1 => ap_predicate_pred325_state4_i_3_0(0),
      I2 => ap_predicate_pred249_state4_reg,
      I3 => ap_predicate_pred325_state4_i_3_0(1),
      O => \^ap_ns_fsm6\
    );
ap_predicate_pred267_state4_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => ap_predicate_pred249_state4_reg,
      I1 => \^mode_read_reg_236_reg[25]\,
      I2 => ap_predicate_pred325_state4_i_3_0(0),
      I3 => ap_predicate_pred325_state4_i_3_0(1),
      O => \^ap_ns_fsm8\
    );
ap_predicate_pred325_state4_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ap_predicate_pred325_state4_i_4_n_0,
      I1 => ap_predicate_pred325_state4_i_5_n_0,
      I2 => ap_predicate_pred325_state4_i_6_n_0,
      I3 => ap_predicate_pred325_state4_i_7_n_0,
      I4 => ap_predicate_pred325_state4_i_8_n_0,
      I5 => ap_predicate_pred325_state4_i_9_n_0,
      O => \^mode_read_reg_236_reg[25]\
    );
ap_predicate_pred325_state4_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_predicate_pred325_state4_i_3_0(19),
      I1 => ap_predicate_pred325_state4_i_3_0(11),
      I2 => ap_predicate_pred325_state4_i_3_0(25),
      I3 => ap_predicate_pred325_state4_i_3_0(15),
      O => ap_predicate_pred325_state4_i_4_n_0
    );
ap_predicate_pred325_state4_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_predicate_pred325_state4_i_3_0(2),
      I1 => ap_predicate_pred325_state4_i_3_0(13),
      I2 => ap_predicate_pred325_state4_i_3_0(9),
      I3 => ap_predicate_pred325_state4_i_3_0(4),
      O => ap_predicate_pred325_state4_i_5_n_0
    );
ap_predicate_pred325_state4_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_predicate_pred325_state4_i_3_0(6),
      I1 => ap_predicate_pred325_state4_i_3_0(14),
      I2 => ap_predicate_pred325_state4_i_3_0(24),
      I3 => ap_predicate_pred325_state4_i_3_0(17),
      O => ap_predicate_pred325_state4_i_6_n_0
    );
ap_predicate_pred325_state4_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_predicate_pred325_state4_i_3_0(3),
      I1 => ap_predicate_pred325_state4_i_3_0(8),
      I2 => ap_predicate_pred325_state4_i_3_0(20),
      I3 => ap_predicate_pred325_state4_i_3_0(10),
      O => ap_predicate_pred325_state4_i_7_n_0
    );
ap_predicate_pred325_state4_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_predicate_pred325_state4_i_3_0(21),
      I1 => ap_predicate_pred325_state4_i_3_0(18),
      I2 => ap_predicate_pred325_state4_i_3_0(16),
      I3 => ap_predicate_pred325_state4_i_3_0(12),
      O => ap_predicate_pred325_state4_i_8_n_0
    );
ap_predicate_pred325_state4_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_predicate_pred325_state4_i_3_0(5),
      I1 => ap_predicate_pred325_state4_i_3_0(22),
      I2 => ap_predicate_pred325_state4_i_3_0(7),
      I3 => ap_predicate_pred325_state4_i_3_0(23),
      O => ap_predicate_pred325_state4_i_9_n_0
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(10),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(11),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(12),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(13),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(14),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(15),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(15),
      O => p_0_in(15)
    );
\data_p1[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(16),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(16),
      O => p_0_in(16)
    );
\data_p1[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(17),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(17),
      O => p_0_in(17)
    );
\data_p1[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(18),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(18),
      O => p_0_in(18)
    );
\data_p1[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(19),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(19),
      O => p_0_in(19)
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(1),
      O => p_0_in(1)
    );
\data_p1[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(20),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(20),
      O => p_0_in(20)
    );
\data_p1[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(21),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(21),
      O => p_0_in(21)
    );
\data_p1[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(22),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(22),
      O => p_0_in(22)
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E420"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => stream_in_24_TVALID,
      I3 => ack_in_t_reg_1,
      O => load_p1
    );
\data_p1[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(23),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(23),
      O => p_0_in(23)
    );
\data_p1[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \data_p1[24]_i_4_n_0\,
      I1 => \data_p1_reg[24]\,
      I2 => \data_p1_reg[31]\(0),
      I3 => \data_p1_reg[24]_0\,
      I4 => \^q\(0),
      I5 => \data_p1_reg[24]_1\,
      O => \alpha_read_reg_231_reg[0]\
    );
\data_p1[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \data_p1[31]_i_5_0\(0),
      I1 => \data_p2[23]_i_3\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(24),
      I3 => \data_p1[31]_i_5_1\,
      I4 => \^q\(8),
      O => \data_p1[24]_i_4_n_0\
    );
\data_p1[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \data_p1[25]_i_4_n_0\,
      I1 => \data_p1_reg[24]\,
      I2 => \data_p1_reg[31]\(1),
      I3 => \data_p1_reg[24]_0\,
      I4 => \^q\(1),
      I5 => \data_p1_reg[24]_1\,
      O => \alpha_read_reg_231_reg[1]\
    );
\data_p1[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(25),
      I1 => \data_p2[23]_i_3\,
      I2 => \data_p1[31]_i_5_0\(1),
      I3 => \data_p1[31]_i_5_1\,
      I4 => \^q\(9),
      O => \data_p1[25]_i_4_n_0\
    );
\data_p1[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \data_p1[26]_i_4_n_0\,
      I1 => \data_p1_reg[24]\,
      I2 => \data_p1_reg[31]\(2),
      I3 => \data_p1_reg[24]_0\,
      I4 => \^q\(2),
      I5 => \data_p1_reg[24]_1\,
      O => \alpha_read_reg_231_reg[2]\
    );
\data_p1[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \data_p1[31]_i_5_0\(2),
      I1 => \data_p2[23]_i_3\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(26),
      I3 => \data_p1[31]_i_5_1\,
      I4 => \^q\(10),
      O => \data_p1[26]_i_4_n_0\
    );
\data_p1[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \data_p1[27]_i_4_n_0\,
      I1 => \data_p1_reg[24]\,
      I2 => \data_p1_reg[31]\(3),
      I3 => \data_p1_reg[24]_0\,
      I4 => \^q\(3),
      I5 => \data_p1_reg[24]_1\,
      O => \alpha_read_reg_231_reg[3]\
    );
\data_p1[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \data_p1[31]_i_5_0\(3),
      I1 => \data_p2[23]_i_3\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(27),
      I3 => \data_p1[31]_i_5_1\,
      I4 => \^q\(11),
      O => \data_p1[27]_i_4_n_0\
    );
\data_p1[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \data_p1[28]_i_4_n_0\,
      I1 => \data_p1_reg[24]\,
      I2 => \data_p1_reg[31]\(4),
      I3 => \data_p1_reg[24]_0\,
      I4 => \^q\(4),
      I5 => \data_p1_reg[24]_1\,
      O => \alpha_read_reg_231_reg[4]\
    );
\data_p1[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \data_p1[31]_i_5_0\(4),
      I1 => \data_p2[23]_i_3\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(28),
      I3 => \data_p1[31]_i_5_1\,
      I4 => \^q\(12),
      O => \data_p1[28]_i_4_n_0\
    );
\data_p1[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \data_p1[29]_i_4_n_0\,
      I1 => \data_p1_reg[24]\,
      I2 => \data_p1_reg[31]\(5),
      I3 => \data_p1_reg[24]_0\,
      I4 => \^q\(5),
      I5 => \data_p1_reg[24]_1\,
      O => \alpha_read_reg_231_reg[5]\
    );
\data_p1[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \data_p1[31]_i_5_0\(5),
      I1 => \data_p2[23]_i_3\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(29),
      I3 => \data_p1[31]_i_5_1\,
      I4 => \^q\(13),
      O => \data_p1[29]_i_4_n_0\
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(2),
      O => p_0_in(2)
    );
\data_p1[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \data_p1[30]_i_4_n_0\,
      I1 => \data_p1_reg[24]\,
      I2 => \data_p1_reg[31]\(6),
      I3 => \data_p1_reg[24]_0\,
      I4 => \^q\(6),
      I5 => \data_p1_reg[24]_1\,
      O => \alpha_read_reg_231_reg[6]\
    );
\data_p1[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \data_p1[31]_i_5_0\(6),
      I1 => \data_p2[23]_i_3\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(30),
      I3 => \data_p1[31]_i_5_1\,
      I4 => \^q\(14),
      O => \data_p1[30]_i_4_n_0\
    );
\data_p1[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \data_p1[31]_i_8_n_0\,
      I1 => \data_p1_reg[24]\,
      I2 => \data_p1_reg[31]\(7),
      I3 => \data_p1_reg[24]_0\,
      I4 => \^q\(7),
      I5 => \data_p1_reg[24]_1\,
      O => \alpha_read_reg_231_reg[7]\
    );
\data_p1[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \data_p1[31]_i_5_0\(7),
      I1 => \data_p2[23]_i_3\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(31),
      I3 => \data_p1[31]_i_5_1\,
      I4 => \^q\(15),
      O => \data_p1[31]_i_8_n_0\
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(3),
      O => p_0_in(3)
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(4),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(4),
      O => p_0_in(4)
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(5),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(5),
      O => p_0_in(5)
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(6),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(7),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(8),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(9),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TDATA(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
      Q => \^q\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(10),
      Q => \^q\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(11),
      Q => \^q\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(12),
      Q => \^q\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(13),
      Q => \^q\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(14),
      Q => \^q\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(15),
      Q => \^q\(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(16),
      Q => \^q\(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(17),
      Q => \^q\(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(18),
      Q => \^q\(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(19),
      Q => \^q\(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(1),
      Q => \^q\(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(20),
      Q => \^q\(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(21),
      Q => \^q\(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(22),
      Q => \^q\(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(23),
      Q => \^q\(23),
      R => '0'
    );
\data_p1_reg[26]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_p1_reg[26]_i_5_n_0\,
      CO(2) => \data_p1_reg[26]_i_5_n_1\,
      CO(1) => \data_p1_reg[26]_i_5_n_2\,
      CO(0) => \data_p1_reg[26]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(19 downto 16),
      O(3 downto 1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(26 downto 24),
      O(0) => \NLW_data_p1_reg[26]_i_5_O_UNCONNECTED\(0),
      S(3 downto 0) => \data_p1[24]_i_4_0\(3 downto 0)
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(2),
      Q => \^q\(2),
      R => '0'
    );
\data_p1_reg[30]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p1_reg[26]_i_5_n_0\,
      CO(3) => \data_p1_reg[30]_i_5_n_0\,
      CO(2) => \data_p1_reg[30]_i_5_n_1\,
      CO(1) => \data_p1_reg[30]_i_5_n_2\,
      CO(0) => \data_p1_reg[30]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(23 downto 20),
      O(3 downto 0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(30 downto 27),
      S(3 downto 0) => \data_p1[27]_i_4_0\(3 downto 0)
    );
\data_p1_reg[31]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p1_reg[30]_i_5_n_0\,
      CO(3 downto 1) => \NLW_data_p1_reg[31]_i_9_CO_UNCONNECTED\(3 downto 1),
      CO(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(31),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_data_p1_reg[31]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(3),
      Q => \^q\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(4),
      Q => \^q\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(5),
      Q => \^q\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(6),
      Q => \^q\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(7),
      Q => \^q\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(8),
      Q => \^q\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(9),
      Q => \^q\(9),
      R => '0'
    );
\data_p2[23]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stream_in_24_TVALID,
      I1 => \^ack_in_t_reg_0\,
      O => load_p2
    );
\data_p2[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => \^state_reg[0]_0\(0),
      I1 => \ap_CS_fsm[4]_i_5\(1),
      I2 => stream_out_32_TREADY_int_regslice,
      I3 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg(0),
      I4 => ap_predicate_pred249_state4,
      I5 => \data_p2[23]_i_3\,
      O => \state_reg[0]_1\
    );
\data_p2[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFAAAAAAAA"
    )
        port map (
      I0 => ap_predicate_pred258_state4,
      I1 => \^state_reg[0]_0\(0),
      I2 => \ap_CS_fsm[4]_i_5\(1),
      I3 => stream_out_32_TREADY_int_regslice,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg(0),
      I5 => ap_predicate_pred249_state4,
      O => ap_predicate_pred258_state4_reg
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(10),
      Q => data_p2(10),
      R => '0'
    );
\data_p2_reg[10]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_p2_reg[10]_i_5_n_0\,
      CO(2) => \data_p2_reg[10]_i_5_n_1\,
      CO(1) => \data_p2_reg[10]_i_5_n_2\,
      CO(0) => \data_p2_reg[10]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(11 downto 8),
      O(3 downto 1) => \data_p1_reg[15]_0\(2 downto 0),
      O(0) => \NLW_data_p2_reg[10]_i_5_O_UNCONNECTED\(0),
      S(3 downto 0) => S(3 downto 0)
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(11),
      Q => data_p2(11),
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(12),
      Q => data_p2(12),
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(13),
      Q => data_p2(13),
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(14),
      Q => data_p2(14),
      R => '0'
    );
\data_p2_reg[14]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p2_reg[10]_i_5_n_0\,
      CO(3) => \data_p2_reg[14]_i_5_n_0\,
      CO(2) => \data_p2_reg[14]_i_5_n_1\,
      CO(1) => \data_p2_reg[14]_i_5_n_2\,
      CO(0) => \data_p2_reg[14]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(15 downto 12),
      O(3 downto 0) => \data_p1_reg[15]_0\(6 downto 3),
      S(3 downto 0) => \data_p2[11]_i_3\(3 downto 0)
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(15),
      Q => data_p2(15),
      R => '0'
    );
\data_p2_reg[15]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p2_reg[14]_i_5_n_0\,
      CO(3 downto 1) => \NLW_data_p2_reg[15]_i_6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \data_p1_reg[15]_0\(7),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_data_p2_reg[15]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(16),
      Q => data_p2(16),
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(17),
      Q => data_p2(17),
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(18),
      Q => data_p2(18),
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(19),
      Q => data_p2(19),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(20),
      Q => data_p2(20),
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(21),
      Q => data_p2(21),
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(22),
      Q => data_p2(22),
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(23),
      Q => data_p2(23),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(3),
      Q => data_p2(3),
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(4),
      Q => data_p2(4),
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(5),
      Q => data_p2(5),
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(6),
      Q => data_p2(6),
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(7),
      Q => data_p2(7),
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(8),
      Q => data_p2(8),
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => stream_in_24_TDATA(9),
      Q => data_p2(9),
      R => '0'
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD0F0D0F0D0F0"
    )
        port map (
      I0 => \^state_reg[0]_0\(0),
      I1 => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg_reg,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      I3 => stream_in_24_TLAST_int_regslice,
      I4 => \^ap_ns_fsm8\,
      I5 => \ap_CS_fsm[4]_i_5\(0),
      O => \state_reg[0]_3\
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFF0000"
    )
        port map (
      I0 => \^state_reg[0]_0\(0),
      I1 => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg_reg,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg(0),
      I3 => stream_in_24_TLAST_int_regslice,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg0,
      I5 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      O => \state_reg[0]_4\
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_5\(0),
      I1 => \^ap_ns_fsm6\,
      O => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg0
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF77C000"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => state(1),
      I2 => \^ack_in_t_reg_0\,
      I3 => stream_in_24_TVALID,
      I4 => \^state_reg[0]_0\(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => state(1),
      I2 => stream_in_24_TVALID,
      I3 => \^state_reg[0]_0\(0),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^state_reg[0]_0\(0),
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1\ is
  port (
    stream_in_24_TLAST_int_regslice : out STD_LOGIC;
    stream_out_32_TLAST_int_regslice : out STD_LOGIC;
    ap_done_reg1 : out STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg : out STD_LOGIC;
    \data_p1_reg[0]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ack_in_t_reg_0 : in STD_LOGIC;
    stream_in_24_TVALID : in STD_LOGIC;
    \stream_out_32_TLAST_reg_reg[0]\ : in STD_LOGIC;
    \stream_out_32_TLAST_reg_reg[0]_0\ : in STD_LOGIC;
    \stream_out_32_TLAST_reg_reg[0]_1\ : in STD_LOGIC;
    \stream_out_32_TLAST_reg_reg[0]_2\ : in STD_LOGIC;
    \stream_out_32_TLAST_reg_reg[0]_3\ : in STD_LOGIC;
    stream_out_32_TLAST_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_32_TREADY_int_regslice : in STD_LOGIC;
    ap_done_cache_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_done_cache_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_NS_fsm6 : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg : in STD_LOGIC;
    ap_done_cache : in STD_LOGIC;
    ap_predicate_pred325_state4 : in STD_LOGIC;
    \ap_CS_fsm[4]_i_4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg : in STD_LOGIC;
    ap_done_cache_0 : in STD_LOGIC;
    ap_NS_fsm9 : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1\ : entity is "pixel_pack_regslice_both";
end \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1\;

architecture STRUCTURE of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__1_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \^ap_done_reg1\ : STD_LOGIC;
  signal \data_p1[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_2__2_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120/ap_done_reg1\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^stream_in_24_tlast_int_regslice\ : STD_LOGIC;
  signal \stream_out_32_TLAST_reg[0]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair41";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__1\ : label is "soft_lutpair41";
begin
  ap_done_reg1 <= \^ap_done_reg1\;
  stream_in_24_TLAST_int_regslice <= \^stream_in_24_tlast_int_regslice\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAF"
    )
        port map (
      I0 => ack_in_t_reg_0,
      I1 => stream_in_24_TVALID,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF050F0"
    )
        port map (
      I0 => ack_in_t_reg_0,
      I1 => ack_in_t_reg_n_0,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => stream_in_24_TVALID,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F6622"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => stream_in_24_TVALID,
      I3 => ack_in_t_reg_0,
      I4 => ack_in_t_reg_n_0,
      O => \ack_in_t_i_1__1_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__1_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\ap_CS_fsm[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDD000000000000"
    )
        port map (
      I0 => ap_NS_fsm6,
      I1 => \grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120/ap_done_reg1\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      I3 => ap_done_cache,
      I4 => ap_predicate_pred325_state4,
      I5 => ap_done_cache_reg(1),
      O => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg
    );
\ap_CS_fsm[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^stream_in_24_tlast_int_regslice\,
      I1 => \ap_CS_fsm[4]_i_4_0\(0),
      I2 => stream_out_32_TREADY_int_regslice,
      I3 => ap_done_cache_reg(1),
      I4 => ap_done_cache_reg_0(0),
      O => \grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120/ap_done_reg1\
    );
\ap_done_cache_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => \^stream_in_24_tlast_int_regslice\,
      I1 => stream_out_32_TREADY_int_regslice,
      I2 => ap_done_cache_reg(1),
      I3 => ap_done_cache_reg_0(0),
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      I5 => ap_done_cache_0,
      O => \data_p1_reg[0]_0\
    );
\data_p1[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEFFBFFA8200800"
    )
        port map (
      I0 => \data_p1[0]_i_2__2_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => stream_in_24_TVALID,
      I4 => ack_in_t_reg_0,
      I5 => \^stream_in_24_tlast_int_regslice\,
      O => \data_p1[0]_i_1__2_n_0\
    );
\data_p1[0]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TLAST(0),
      O => \data_p1[0]_i_2__2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__2_n_0\,
      Q => \^stream_in_24_tlast_int_regslice\,
      R => '0'
    );
\data_p2[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => stream_in_24_TLAST(0),
      I1 => stream_in_24_TVALID,
      I2 => ack_in_t_reg_n_0,
      I3 => data_p2,
      O => \data_p2[0]_i_1__1_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__1_n_0\,
      Q => data_p2,
      R => '0'
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5C0"
    )
        port map (
      I0 => \^ap_done_reg1\,
      I1 => ap_NS_fsm9,
      I2 => ap_done_cache_reg(0),
      I3 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      O => \ap_CS_fsm_reg[2]\
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^stream_in_24_tlast_int_regslice\,
      I1 => Q(0),
      I2 => stream_out_32_TREADY_int_regslice,
      I3 => ap_done_cache_reg(1),
      I4 => ap_done_cache_reg_0(0),
      O => \^ap_done_reg1\
    );
\stream_out_32_TLAST_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBB80000BBB8"
    )
        port map (
      I0 => \stream_out_32_TLAST_reg[0]_i_2_n_0\,
      I1 => \stream_out_32_TLAST_reg_reg[0]\,
      I2 => \^stream_in_24_tlast_int_regslice\,
      I3 => \stream_out_32_TLAST_reg_reg[0]_0\,
      I4 => \stream_out_32_TLAST_reg_reg[0]_1\,
      I5 => \stream_out_32_TLAST_reg_reg[0]_2\,
      O => stream_out_32_TLAST_int_regslice
    );
\stream_out_32_TLAST_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^stream_in_24_tlast_int_regslice\,
      I1 => \stream_out_32_TLAST_reg_reg[0]_3\,
      I2 => stream_out_32_TLAST_reg,
      O => \stream_out_32_TLAST_reg[0]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_0\ is
  port (
    stream_in_24_TUSER_int_regslice : out STD_LOGIC;
    user_3_fu_237_p2 : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ack_in_t_reg_0 : in STD_LOGIC;
    stream_in_24_TVALID : in STD_LOGIC;
    user_2_reg_306 : in STD_LOGIC;
    stream_in_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_0\ : entity is "pixel_pack_regslice_both";
end \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_0\;

architecture STRUCTURE of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_0\ is
  signal \ack_in_t_i_1__0_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_2__1_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^stream_in_24_tuser_int_regslice\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair42";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__0\ : label is "soft_lutpair42";
begin
  stream_in_24_TUSER_int_regslice <= \^stream_in_24_tuser_int_regslice\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAF"
    )
        port map (
      I0 => ack_in_t_reg_0,
      I1 => stream_in_24_TVALID,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF050F0"
    )
        port map (
      I0 => ack_in_t_reg_0,
      I1 => ack_in_t_reg_n_0,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => stream_in_24_TVALID,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F6622"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => stream_in_24_TVALID,
      I3 => ack_in_t_reg_0,
      I4 => ack_in_t_reg_n_0,
      O => \ack_in_t_i_1__0_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEFFBFFA8200800"
    )
        port map (
      I0 => \data_p1[0]_i_2__1_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => stream_in_24_TVALID,
      I4 => ack_in_t_reg_0,
      I5 => \^stream_in_24_tuser_int_regslice\,
      O => \data_p1[0]_i_1__1_n_0\
    );
\data_p1[0]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_in_24_TUSER(0),
      O => \data_p1[0]_i_2__1_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__1_n_0\,
      Q => \^stream_in_24_tuser_int_regslice\,
      R => '0'
    );
\data_p2[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => stream_in_24_TUSER(0),
      I1 => stream_in_24_TVALID,
      I2 => ack_in_t_reg_n_0,
      I3 => data_p2,
      O => \data_p2[0]_i_1__0_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__0_n_0\,
      Q => data_p2,
      R => '0'
    );
\user_3_reg_327[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^stream_in_24_tuser_int_regslice\,
      I1 => user_2_reg_306,
      O => user_3_fu_237_p2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_1\ is
  port (
    stream_out_32_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    stream_out_32_TREADY : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    stream_out_32_TLAST_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_1\ : entity is "pixel_pack_regslice_both";
end \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_1\;

architecture STRUCTURE of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_1\ is
  signal \ack_in_t_i_1__4_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__4_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1__3_n_0\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^stream_out_32_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__4\ : label is "soft_lutpair47";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \data_p1[0]_i_2__0\ : label is "soft_lutpair48";
begin
  stream_out_32_TLAST(0) <= \^stream_out_32_tlast\(0);
\FSM_sequential_state[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \state__0\(1),
      I1 => stream_out_32_TREADY,
      I2 => load_p2,
      I3 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3FF8080"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => \state__0\(0),
      I2 => load_p2,
      I3 => stream_out_32_TREADY,
      I4 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF5588"
    )
        port map (
      I0 => \state__0\(1),
      I1 => stream_out_32_TREADY,
      I2 => load_p2,
      I3 => \state__0\(0),
      I4 => ack_in_t_reg_n_0,
      O => \ack_in_t_i_1__4_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__4_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_out_32_TLAST_int_regslice,
      I4 => load_p1,
      I5 => \^stream_out_32_tlast\(0),
      O => \data_p1[0]_i_1__4_n_0\
    );
\data_p1[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D088"
    )
        port map (
      I0 => \state__0\(1),
      I1 => stream_out_32_TREADY,
      I2 => load_p2,
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__4_n_0\,
      Q => \^stream_out_32_tlast\(0),
      R => '0'
    );
\data_p2[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => stream_out_32_TLAST_int_regslice,
      I1 => ack_in_t_reg_n_0,
      I2 => load_p2,
      I3 => data_p2,
      O => \data_p2[0]_i_1__3_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__3_n_0\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_2\ is
  port (
    stream_out_32_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    stream_out_32_TREADY : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    stream_out_32_TUSER_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_2\ : entity is "pixel_pack_regslice_both";
end \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_2\;

architecture STRUCTURE of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_2\ is
  signal \ack_in_t_i_1__3_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__3_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal \data_p2[0]_i_1__2_n_0\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^stream_out_32_tuser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__3\ : label is "soft_lutpair49";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \data_p1[0]_i_2\ : label is "soft_lutpair50";
begin
  stream_out_32_TUSER(0) <= \^stream_out_32_tuser\(0);
\FSM_sequential_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => stream_out_32_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => load_p2,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAB0F0F0"
    )
        port map (
      I0 => load_p2,
      I1 => stream_out_32_TREADY,
      I2 => \state__0\(1),
      I3 => ack_in_t_reg_n_0,
      I4 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF3838"
    )
        port map (
      I0 => stream_out_32_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => load_p2,
      I4 => ack_in_t_reg_n_0,
      O => \ack_in_t_i_1__3_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__3_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => data_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_out_32_TUSER_int_regslice,
      I4 => load_p1,
      I5 => \^stream_out_32_tuser\(0),
      O => \data_p1[0]_i_1__3_n_0\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D808"
    )
        port map (
      I0 => \state__0\(1),
      I1 => stream_out_32_TREADY,
      I2 => \state__0\(0),
      I3 => load_p2,
      O => load_p1
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__3_n_0\,
      Q => \^stream_out_32_tuser\(0),
      R => '0'
    );
\data_p2[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => stream_out_32_TUSER_int_regslice,
      I1 => ack_in_t_reg_n_0,
      I2 => load_p2,
      I3 => data_p2,
      O => \data_p2[0]_i_1__2_n_0\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__2_n_0\,
      Q => data_p2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \base_pixel_pack_0_pixel_pack_regslice_both__parameterized2\ is
  port (
    stream_out_32_TREADY_int_regslice : out STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    ap_predicate_pred267_state4_reg : out STD_LOGIC;
    stream_out_32_TVALID : out STD_LOGIC;
    \ap_CS_fsm_reg[3]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    \mode_0_data_reg_reg[4]\ : out STD_LOGIC;
    \mode_0_data_reg_reg[9]\ : out STD_LOGIC;
    \mode_0_data_reg_reg[22]\ : out STD_LOGIC;
    stream_out_32_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_p1_reg[24]_0\ : in STD_LOGIC;
    \data_p1_reg[24]_1\ : in STD_LOGIC;
    \data_p1_reg[24]_2\ : in STD_LOGIC;
    \data_p1_reg[25]_0\ : in STD_LOGIC;
    \data_p1_reg[25]_1\ : in STD_LOGIC;
    \data_p1_reg[26]_0\ : in STD_LOGIC;
    \data_p1_reg[26]_1\ : in STD_LOGIC;
    \data_p1_reg[27]_0\ : in STD_LOGIC;
    \data_p1_reg[27]_1\ : in STD_LOGIC;
    \data_p1_reg[28]_0\ : in STD_LOGIC;
    \data_p1_reg[28]_1\ : in STD_LOGIC;
    \data_p1_reg[29]_0\ : in STD_LOGIC;
    \data_p1_reg[29]_1\ : in STD_LOGIC;
    \data_p1_reg[30]_0\ : in STD_LOGIC;
    \data_p1_reg[30]_1\ : in STD_LOGIC;
    \data_p1_reg[31]_0\ : in STD_LOGIC;
    \data_p1_reg[31]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_predicate_pred276_state4 : in STD_LOGIC;
    ack_in_t_reg_0 : in STD_LOGIC;
    ack_in_t_reg_1 : in STD_LOGIC;
    ack_in_t_reg_2 : in STD_LOGIC;
    load_p2 : in STD_LOGIC;
    stream_out_32_TREADY : in STD_LOGIC;
    ap_predicate_pred267_state4 : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg : in STD_LOGIC;
    \data_p2_reg[16]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm[4]_i_17_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized2\ : entity is "pixel_pack_regslice_both";
end \base_pixel_pack_0_pixel_pack_regslice_both__parameterized2\;

architecture STRUCTURE of \base_pixel_pack_0_pixel_pack_regslice_both__parameterized2\ is
  signal \FSM_sequential_state[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \ack_in_t_i_1__2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_10_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_13_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_15_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_16_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_17_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_18_n_0\ : STD_LOGIC;
  signal \^ap_predicate_pred267_state4_reg\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal \^mode_0_data_reg_reg[22]\ : STD_LOGIC;
  signal \^mode_0_data_reg_reg[4]\ : STD_LOGIC;
  signal \^mode_0_data_reg_reg[9]\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^stream_out_32_tready_int_regslice\ : STD_LOGIC;
  signal \^stream_out_32_tvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__2\ : label is "soft_lutpair44";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_13\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_p1[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \data_p2[31]_i_5\ : label is "soft_lutpair43";
begin
  ap_predicate_pred267_state4_reg <= \^ap_predicate_pred267_state4_reg\;
  \mode_0_data_reg_reg[22]\ <= \^mode_0_data_reg_reg[22]\;
  \mode_0_data_reg_reg[4]\ <= \^mode_0_data_reg_reg[4]\;
  \mode_0_data_reg_reg[9]\ <= \^mode_0_data_reg_reg[9]\;
  stream_out_32_TREADY_int_regslice <= \^stream_out_32_tready_int_regslice\;
  stream_out_32_TVALID <= \^stream_out_32_tvalid\;
\FSM_sequential_state[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => load_p2,
      I1 => \state__0\(0),
      I2 => stream_out_32_TREADY,
      I3 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1__4_n_0\
    );
\FSM_sequential_state[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACEC"
    )
        port map (
      I0 => load_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_out_32_TREADY,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__4_n_0\,
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F3C30"
    )
        port map (
      I0 => load_p2,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_out_32_TREADY,
      I4 => \^stream_out_32_tready_int_regslice\,
      O => \ack_in_t_i_1__2_n_0\
    );
ack_in_t_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A820AA2020"
    )
        port map (
      I0 => Q(1),
      I1 => ap_predicate_pred276_state4,
      I2 => \^ap_predicate_pred267_state4_reg\,
      I3 => ack_in_t_reg_0,
      I4 => ack_in_t_reg_1,
      I5 => ack_in_t_reg_2,
      O => \ap_CS_fsm_reg[3]\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__2_n_0\,
      Q => \^stream_out_32_tready_int_regslice\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => Q(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => stream_out_32_TREADY,
      O => \ap_CS_fsm_reg[4]\(0)
    );
\ap_CS_fsm[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(1),
      I1 => \^stream_out_32_tready_int_regslice\,
      O => \ap_CS_fsm_reg[3]_0\
    );
\ap_CS_fsm[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_17_0\(0),
      I1 => \ap_CS_fsm[4]_i_17_0\(1),
      I2 => \ap_CS_fsm[4]_i_17_0\(2),
      I3 => \^mode_0_data_reg_reg[22]\,
      I4 => \ap_CS_fsm[4]_i_15_n_0\,
      O => \ap_CS_fsm[4]_i_10_n_0\
    );
\ap_CS_fsm[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_16_n_0\,
      I1 => \ap_CS_fsm[4]_i_17_0\(4),
      I2 => \ap_CS_fsm[4]_i_17_0\(16),
      I3 => \ap_CS_fsm[4]_i_17_0\(11),
      I4 => \ap_CS_fsm[4]_i_17_0\(3),
      I5 => \ap_CS_fsm[4]_i_17_n_0\,
      O => \^mode_0_data_reg_reg[4]\
    );
\ap_CS_fsm[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_17_0\(9),
      I1 => \ap_CS_fsm[4]_i_17_0\(28),
      I2 => \ap_CS_fsm[4]_i_17_0\(13),
      I3 => \ap_CS_fsm[4]_i_17_0\(17),
      I4 => \ap_CS_fsm[4]_i_17_0\(20),
      I5 => \ap_CS_fsm[4]_i_17_0\(5),
      O => \^mode_0_data_reg_reg[9]\
    );
\ap_CS_fsm[4]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => stream_out_32_TREADY,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \ap_CS_fsm[4]_i_13_n_0\
    );
\ap_CS_fsm[4]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_17_0\(22),
      I1 => \ap_CS_fsm[4]_i_17_0\(27),
      I2 => \ap_CS_fsm[4]_i_17_0\(8),
      I3 => \ap_CS_fsm[4]_i_17_0\(24),
      O => \^mode_0_data_reg_reg[22]\
    );
\ap_CS_fsm[4]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_17_0\(30),
      I1 => \ap_CS_fsm[4]_i_17_0\(18),
      I2 => \ap_CS_fsm[4]_i_17_0\(10),
      O => \ap_CS_fsm[4]_i_15_n_0\
    );
\ap_CS_fsm[4]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_17_0\(23),
      I1 => \ap_CS_fsm[4]_i_17_0\(15),
      I2 => \ap_CS_fsm[4]_i_17_0\(29),
      I3 => \ap_CS_fsm[4]_i_17_0\(21),
      O => \ap_CS_fsm[4]_i_16_n_0\
    );
\ap_CS_fsm[4]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_17_0\(26),
      I1 => \ap_CS_fsm[4]_i_17_0\(14),
      I2 => \ap_CS_fsm[4]_i_17_0\(12),
      I3 => \ap_CS_fsm[4]_i_17_0\(25),
      I4 => \ap_CS_fsm[4]_i_18_n_0\,
      O => \ap_CS_fsm[4]_i_17_n_0\
    );
\ap_CS_fsm[4]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_17_0\(7),
      I1 => \ap_CS_fsm[4]_i_17_0\(6),
      I2 => \ap_CS_fsm[4]_i_17_0\(19),
      I3 => \ap_CS_fsm[4]_i_17_0\(31),
      O => \ap_CS_fsm[4]_i_18_n_0\
    );
\ap_CS_fsm[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_10_n_0\,
      I1 => \^mode_0_data_reg_reg[4]\,
      I2 => \^mode_0_data_reg_reg[9]\,
      I3 => Q(0),
      I4 => \ap_CS_fsm[4]_i_13_n_0\,
      I5 => Q(2),
      O => \ap_CS_fsm_reg[1]\
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(10),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(11),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(12),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(13),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(14),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(15),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(15),
      O => p_0_in(15)
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(16),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(16),
      O => p_0_in(16)
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(17),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(17),
      O => p_0_in(17)
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(18),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(18),
      O => p_0_in(18)
    );
\data_p1[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(19),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(19),
      O => p_0_in(19)
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(1),
      O => p_0_in(1)
    );
\data_p1[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(20),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(20),
      O => p_0_in(20)
    );
\data_p1[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(21),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(21),
      O => p_0_in(21)
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(22),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(22),
      O => p_0_in(22)
    );
\data_p1[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(23),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(23),
      O => p_0_in(23)
    );
\data_p1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(24),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[24]_0\,
      I4 => \data_p1_reg[24]_1\,
      I5 => \data_p1_reg[24]_2\,
      O => p_0_in(24)
    );
\data_p1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(25),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[25]_0\,
      I4 => \data_p1_reg[24]_1\,
      I5 => \data_p1_reg[25]_1\,
      O => p_0_in(25)
    );
\data_p1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(26),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[26]_0\,
      I4 => \data_p1_reg[24]_1\,
      I5 => \data_p1_reg[26]_1\,
      O => p_0_in(26)
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(27),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[27]_0\,
      I4 => \data_p1_reg[24]_1\,
      I5 => \data_p1_reg[27]_1\,
      O => p_0_in(27)
    );
\data_p1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(28),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[28]_0\,
      I4 => \data_p1_reg[24]_1\,
      I5 => \data_p1_reg[28]_1\,
      O => p_0_in(28)
    );
\data_p1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(29),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[29]_0\,
      I4 => \data_p1_reg[24]_1\,
      I5 => \data_p1_reg[29]_1\,
      O => p_0_in(29)
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(2),
      O => p_0_in(2)
    );
\data_p1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(30),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[30]_0\,
      I4 => \data_p1_reg[24]_1\,
      I5 => \data_p1_reg[30]_1\,
      O => p_0_in(30)
    );
\data_p1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D088"
    )
        port map (
      I0 => \state__0\(1),
      I1 => stream_out_32_TREADY,
      I2 => load_p2,
      I3 => \state__0\(0),
      O => load_p1
    );
\data_p1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(31),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[31]_0\,
      I4 => \data_p1_reg[24]_1\,
      I5 => \data_p1_reg[31]_1\,
      O => p_0_in(31)
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(3),
      O => p_0_in(3)
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(4),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(4),
      O => p_0_in(4)
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(5),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(5),
      O => p_0_in(5)
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(6),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(7),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(8),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(9),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
      Q => stream_out_32_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(10),
      Q => stream_out_32_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(11),
      Q => stream_out_32_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(12),
      Q => stream_out_32_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(13),
      Q => stream_out_32_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(14),
      Q => stream_out_32_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(15),
      Q => stream_out_32_TDATA(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(16),
      Q => stream_out_32_TDATA(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(17),
      Q => stream_out_32_TDATA(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(18),
      Q => stream_out_32_TDATA(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(19),
      Q => stream_out_32_TDATA(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(1),
      Q => stream_out_32_TDATA(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(20),
      Q => stream_out_32_TDATA(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(21),
      Q => stream_out_32_TDATA(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(22),
      Q => stream_out_32_TDATA(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(23),
      Q => stream_out_32_TDATA(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(24),
      Q => stream_out_32_TDATA(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(25),
      Q => stream_out_32_TDATA(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(26),
      Q => stream_out_32_TDATA(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(27),
      Q => stream_out_32_TDATA(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(28),
      Q => stream_out_32_TDATA(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(29),
      Q => stream_out_32_TDATA(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(2),
      Q => stream_out_32_TDATA(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(30),
      Q => stream_out_32_TDATA(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(31),
      Q => stream_out_32_TDATA(31),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(3),
      Q => stream_out_32_TDATA(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(4),
      Q => stream_out_32_TDATA(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(5),
      Q => stream_out_32_TDATA(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(6),
      Q => stream_out_32_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(7),
      Q => stream_out_32_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(8),
      Q => stream_out_32_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(9),
      Q => stream_out_32_TDATA(9),
      R => '0'
    );
\data_p2[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ap_predicate_pred267_state4,
      I1 => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      I2 => \^stream_out_32_tready_int_regslice\,
      I3 => Q(1),
      I4 => \data_p2_reg[16]_0\(0),
      O => \^ap_predicate_pred267_state4_reg\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(10),
      Q => data_p2(10),
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(11),
      Q => data_p2(11),
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(12),
      Q => data_p2(12),
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(13),
      Q => data_p2(13),
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(14),
      Q => data_p2(14),
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(15),
      Q => data_p2(15),
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(16),
      Q => data_p2(16),
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(17),
      Q => data_p2(17),
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(18),
      Q => data_p2(18),
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(19),
      Q => data_p2(19),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(20),
      Q => data_p2(20),
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(21),
      Q => data_p2(21),
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(22),
      Q => data_p2(22),
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(23),
      Q => data_p2(23),
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(24),
      Q => data_p2(24),
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(25),
      Q => data_p2(25),
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(26),
      Q => data_p2(26),
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(27),
      Q => data_p2(27),
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(28),
      Q => data_p2(28),
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(29),
      Q => data_p2(29),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(30),
      Q => data_p2(30),
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(31),
      Q => data_p2(31),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(3),
      Q => data_p2(3),
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(4),
      Q => data_p2(4),
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(5),
      Q => data_p2(5),
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(6),
      Q => data_p2(6),
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(7),
      Q => data_p2(7),
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(8),
      Q => data_p2(8),
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => D(9),
      Q => data_p2(9),
      R => '0'
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFA0"
    )
        port map (
      I0 => load_p2,
      I1 => stream_out_32_TREADY,
      I2 => state(1),
      I3 => \^stream_out_32_tvalid\,
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => load_p2,
      I1 => state(1),
      I2 => \^stream_out_32_tvalid\,
      I3 => stream_out_32_TREADY,
      O => \state[1]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => \^stream_out_32_tvalid\,
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_101_9 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \stream_out_32_TDATA_reg_reg[0]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    \trunc_ln116_reg_225_reg[1]_0\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[2]\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[3]\ : out STD_LOGIC;
    \trunc_ln116_reg_225_reg[4]_0\ : out STD_LOGIC;
    \trunc_ln116_reg_225_reg[5]_0\ : out STD_LOGIC;
    \trunc_ln116_reg_225_reg[6]_0\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[7]\ : out STD_LOGIC;
    ap_predicate_pred229_state4_reg : out STD_LOGIC;
    \data_p1_reg[0]\ : out STD_LOGIC;
    \mode_read_reg_236_reg[1]\ : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_24_TUSER_int_regslice : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    stream_out_32_TREADY_int_regslice : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_cache_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg : in STD_LOGIC;
    \data_p2_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_p2_reg[0]\ : in STD_LOGIC;
    \data_p2_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_predicate_pred229_state4 : in STD_LOGIC;
    ap_predicate_pred249_state4 : in STD_LOGIC;
    empty_reg_130_3 : in STD_LOGIC;
    stream_out_32_TUSER_reg : in STD_LOGIC;
    \ap_CS_fsm[3]_i_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC;
    ap_done_reg1 : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC;
    stream_in_24_TLAST_int_regslice : in STD_LOGIC;
    \tmp_6_reg_220_reg[7]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_101_9 : entity is "pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_101_9";
end base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_101_9;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_101_9 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal empty_reg_210_3 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_4_reg_215 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_6_reg_220 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
begin
  Q(0) <= \^q\(0);
  \ap_CS_fsm_reg[1]_0\ <= \^ap_cs_fsm_reg[1]_0\;
ack_in_t_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\,
      I1 => ap_predicate_pred229_state4,
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_done_cache_reg(0),
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      I5 => ap_predicate_pred249_state4,
      O => ap_predicate_pred229_state4_reg
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C4C4C4C4C4C4C4C"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_done_cache_reg(0),
      I3 => \ap_CS_fsm_reg[1]_1\(0),
      I4 => stream_out_32_TREADY_int_regslice,
      I5 => \^q\(0),
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF007FFF00007FFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => stream_out_32_TREADY_int_regslice,
      I2 => \ap_CS_fsm_reg[1]_1\(0),
      I3 => ap_done_cache_reg(0),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^q\(0),
      R => ap_rst_n_inv
    );
\data_p1[26]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(19),
      I1 => tmp_6_reg_220(3),
      O => \data_p1_reg[19]\(3)
    );
\data_p1[26]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(18),
      I1 => tmp_6_reg_220(2),
      O => \data_p1_reg[19]\(2)
    );
\data_p1[26]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(17),
      I1 => tmp_6_reg_220(1),
      O => \data_p1_reg[19]\(1)
    );
\data_p1[26]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(16),
      I1 => tmp_6_reg_220(0),
      O => \data_p1_reg[19]\(0)
    );
\data_p1[30]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(23),
      I1 => tmp_6_reg_220(7),
      O => \data_p1_reg[23]\(3)
    );
\data_p1[30]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(22),
      I1 => tmp_6_reg_220(6),
      O => \data_p1_reg[23]\(2)
    );
\data_p1[30]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(21),
      I1 => tmp_6_reg_220(5),
      O => \data_p1_reg[23]\(1)
    );
\data_p1[30]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(20),
      I1 => tmp_6_reg_220(4),
      O => \data_p1_reg[23]\(0)
    );
\data_p2[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => \data_p2_reg[7]\(0),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(0),
      I3 => \data_p2_reg[0]\,
      I4 => \data_p2_reg[7]_0\(0),
      O => \stream_out_32_TDATA_reg_reg[0]\
    );
\data_p2[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(11),
      I1 => tmp_4_reg_215(3),
      O => S(3)
    );
\data_p2[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(10),
      I1 => tmp_4_reg_215(2),
      O => S(2)
    );
\data_p2[10]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(9),
      I1 => tmp_4_reg_215(1),
      O => S(1)
    );
\data_p2[10]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(8),
      I1 => tmp_4_reg_215(0),
      O => S(0)
    );
\data_p2[14]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(15),
      I1 => tmp_4_reg_215(7),
      O => \data_p1_reg[15]\(3)
    );
\data_p2[14]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(14),
      I1 => tmp_4_reg_215(6),
      O => \data_p1_reg[15]\(2)
    );
\data_p2[14]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(13),
      I1 => tmp_4_reg_215(5),
      O => \data_p1_reg[15]\(1)
    );
\data_p2[14]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_6_reg_220_reg[7]_0\(12),
      I1 => tmp_4_reg_215(4),
      O => \data_p1_reg[15]\(0)
    );
\data_p2[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(1),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      I2 => \data_p2_reg[7]\(1),
      I3 => \data_p2_reg[0]\,
      I4 => \data_p2_reg[7]_0\(1),
      O => \trunc_ln116_reg_225_reg[1]_0\
    );
\data_p2[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => \data_p2_reg[7]\(2),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(2),
      I3 => \data_p2_reg[0]\,
      I4 => \data_p2_reg[7]_0\(2),
      O => \stream_out_32_TDATA_reg_reg[2]\
    );
\data_p2[31]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => stream_out_32_TREADY_int_regslice,
      I2 => \ap_CS_fsm_reg[1]_1\(0),
      I3 => ap_done_cache_reg(0),
      I4 => ap_predicate_pred229_state4,
      O => \^ap_cs_fsm_reg[1]_0\
    );
\data_p2[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => \data_p2_reg[7]\(3),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(3),
      I3 => \data_p2_reg[0]\,
      I4 => \data_p2_reg[7]_0\(3),
      O => \stream_out_32_TDATA_reg_reg[3]\
    );
\data_p2[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(4),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      I2 => \data_p2_reg[7]\(4),
      I3 => \data_p2_reg[0]\,
      I4 => \data_p2_reg[7]_0\(4),
      O => \trunc_ln116_reg_225_reg[4]_0\
    );
\data_p2[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(5),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      I2 => \data_p2_reg[7]\(5),
      I3 => \data_p2_reg[0]\,
      I4 => \data_p2_reg[7]_0\(5),
      O => \trunc_ln116_reg_225_reg[5]_0\
    );
\data_p2[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(6),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      I2 => \data_p2_reg[7]\(6),
      I3 => \data_p2_reg[0]\,
      I4 => \data_p2_reg[7]_0\(6),
      O => \trunc_ln116_reg_225_reg[6]_0\
    );
\data_p2[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => \data_p2_reg[7]\(7),
      I1 => \^ap_cs_fsm_reg[1]_0\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(7),
      I3 => \data_p2_reg[0]\,
      I4 => \data_p2_reg[7]_0\(7),
      O => \stream_out_32_TDATA_reg_reg[7]\
    );
\empty_reg_210_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => stream_in_24_TUSER_int_regslice,
      Q => empty_reg_210_3,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_6
     port map (
      Q(0) => \^q\(0),
      \ap_CS_fsm[3]_i_2_0\(6 downto 0) => \ap_CS_fsm[3]_i_2\(6 downto 0),
      \ap_CS_fsm_reg[3]\ => \ap_CS_fsm_reg[3]\,
      ap_clk => ap_clk,
      ap_done_cache_reg_0(0) => ap_done_cache_reg(0),
      ap_done_cache_reg_1 => ap_done_cache_reg_0,
      ap_done_reg1 => ap_done_reg1,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      \mode_read_reg_236_reg[1]\ => \mode_read_reg_236_reg[1]\,
      \state_reg[0]\ => \state_reg[0]\,
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice
    );
\stream_out_32_TUSER_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0500051105FF0511"
    )
        port map (
      I0 => stream_in_24_TUSER_int_regslice,
      I1 => empty_reg_210_3,
      I2 => empty_reg_130_3,
      I3 => \data_p2_reg[0]\,
      I4 => \^ap_cs_fsm_reg[1]_0\,
      I5 => stream_out_32_TUSER_reg,
      O => \data_p1_reg[0]\
    );
\tmp_4_reg_215_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(8),
      Q => tmp_4_reg_215(0),
      R => '0'
    );
\tmp_4_reg_215_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(9),
      Q => tmp_4_reg_215(1),
      R => '0'
    );
\tmp_4_reg_215_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(10),
      Q => tmp_4_reg_215(2),
      R => '0'
    );
\tmp_4_reg_215_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(11),
      Q => tmp_4_reg_215(3),
      R => '0'
    );
\tmp_4_reg_215_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(12),
      Q => tmp_4_reg_215(4),
      R => '0'
    );
\tmp_4_reg_215_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(13),
      Q => tmp_4_reg_215(5),
      R => '0'
    );
\tmp_4_reg_215_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(14),
      Q => tmp_4_reg_215(6),
      R => '0'
    );
\tmp_4_reg_215_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(15),
      Q => tmp_4_reg_215(7),
      R => '0'
    );
\tmp_6_reg_220_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(16),
      Q => tmp_6_reg_220(0),
      R => '0'
    );
\tmp_6_reg_220_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(17),
      Q => tmp_6_reg_220(1),
      R => '0'
    );
\tmp_6_reg_220_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(18),
      Q => tmp_6_reg_220(2),
      R => '0'
    );
\tmp_6_reg_220_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(19),
      Q => tmp_6_reg_220(3),
      R => '0'
    );
\tmp_6_reg_220_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(20),
      Q => tmp_6_reg_220(4),
      R => '0'
    );
\tmp_6_reg_220_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(21),
      Q => tmp_6_reg_220(5),
      R => '0'
    );
\tmp_6_reg_220_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(22),
      Q => tmp_6_reg_220(6),
      R => '0'
    );
\tmp_6_reg_220_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(23),
      Q => tmp_6_reg_220(7),
      R => '0'
    );
\trunc_ln116_reg_225[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_done_cache_reg(0),
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      O => ap_NS_fsm1
    );
\trunc_ln116_reg_225_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(0),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(0),
      R => '0'
    );
\trunc_ln116_reg_225_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(1),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(1),
      R => '0'
    );
\trunc_ln116_reg_225_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(2),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(2),
      R => '0'
    );
\trunc_ln116_reg_225_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(3),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(3),
      R => '0'
    );
\trunc_ln116_reg_225_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(4),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(4),
      R => '0'
    );
\trunc_ln116_reg_225_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(5),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(5),
      R => '0'
    );
\trunc_ln116_reg_225_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(6),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(6),
      R => '0'
    );
\trunc_ln116_reg_225_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \tmp_6_reg_220_reg[7]_0\(7),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_21_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_predicate_pred276_state4_reg : out STD_LOGIC;
    \out_pixel_data_2_reg_495_reg[24]_0\ : out STD_LOGIC;
    \out_pixel_data_2_reg_495_reg[25]_0\ : out STD_LOGIC;
    \out_pixel_data_2_reg_495_reg[26]_0\ : out STD_LOGIC;
    \out_pixel_data_2_reg_495_reg[27]_0\ : out STD_LOGIC;
    \out_pixel_data_2_reg_495_reg[28]_0\ : out STD_LOGIC;
    \out_pixel_data_2_reg_495_reg[29]_0\ : out STD_LOGIC;
    \out_pixel_data_2_reg_495_reg[30]_0\ : out STD_LOGIC;
    \out_pixel_data_2_reg_495_reg[31]_0\ : out STD_LOGIC;
    load_p2 : out STD_LOGIC;
    \mode_read_reg_236_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mode_read_reg_236_reg[1]_0\ : out STD_LOGIC;
    ap_NS_fsm9 : out STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg : out STD_LOGIC;
    \out_pixel_last_2_reg_505_reg[0]_0\ : out STD_LOGIC;
    \out_pixel_user_2_reg_500_reg[0]_0\ : out STD_LOGIC;
    \mode_read_reg_236_reg[2]\ : out STD_LOGIC;
    \mode_read_reg_236_reg[0]\ : out STD_LOGIC;
    \mode_read_reg_236_reg[1]_1\ : out STD_LOGIC;
    stream_in_24_TLAST_int_regslice : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    stream_in_24_TUSER_int_regslice : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \data_p2_reg[0]\ : in STD_LOGIC;
    \data_p2_reg[0]_0\ : in STD_LOGIC;
    \data_p2_reg[0]_1\ : in STD_LOGIC;
    \data_p2_reg[1]\ : in STD_LOGIC;
    \data_p2_reg[1]_0\ : in STD_LOGIC;
    \data_p2_reg[2]\ : in STD_LOGIC;
    \data_p2_reg[2]_0\ : in STD_LOGIC;
    \data_p2_reg[3]\ : in STD_LOGIC;
    \data_p2_reg[3]_0\ : in STD_LOGIC;
    \data_p2_reg[4]\ : in STD_LOGIC;
    \data_p2_reg[4]_0\ : in STD_LOGIC;
    \data_p2_reg[5]\ : in STD_LOGIC;
    \data_p2_reg[5]_0\ : in STD_LOGIC;
    \data_p2_reg[6]\ : in STD_LOGIC;
    \data_p2_reg[6]_0\ : in STD_LOGIC;
    \data_p2_reg[7]\ : in STD_LOGIC;
    \data_p2_reg[7]_0\ : in STD_LOGIC;
    \data_p2_reg[8]\ : in STD_LOGIC;
    \data_p2_reg[8]_0\ : in STD_LOGIC;
    \data_p2_reg[9]\ : in STD_LOGIC;
    \data_p2_reg[9]_0\ : in STD_LOGIC;
    \data_p2_reg[10]\ : in STD_LOGIC;
    \data_p2_reg[10]_0\ : in STD_LOGIC;
    \data_p2_reg[11]\ : in STD_LOGIC;
    \data_p2_reg[11]_0\ : in STD_LOGIC;
    \data_p2_reg[12]\ : in STD_LOGIC;
    \data_p2_reg[12]_0\ : in STD_LOGIC;
    \data_p2_reg[13]\ : in STD_LOGIC;
    \data_p2_reg[13]_0\ : in STD_LOGIC;
    \data_p2_reg[14]\ : in STD_LOGIC;
    \data_p2_reg[14]_0\ : in STD_LOGIC;
    \data_p2_reg[15]\ : in STD_LOGIC;
    \data_p2_reg[15]_0\ : in STD_LOGIC;
    \data_p2_reg[24]\ : in STD_LOGIC;
    \data_p2_reg[25]\ : in STD_LOGIC;
    \data_p2_reg[26]\ : in STD_LOGIC;
    \data_p2_reg[27]\ : in STD_LOGIC;
    \data_p2_reg[28]\ : in STD_LOGIC;
    \data_p2_reg[29]\ : in STD_LOGIC;
    \data_p2_reg[30]\ : in STD_LOGIC;
    \data_p2_reg[31]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \data_p2_reg[16]\ : in STD_LOGIC;
    \data_p2_reg[16]_0\ : in STD_LOGIC;
    \data_p2_reg[17]\ : in STD_LOGIC;
    \data_p2_reg[18]\ : in STD_LOGIC;
    \data_p2_reg[19]\ : in STD_LOGIC;
    \data_p2_reg[20]\ : in STD_LOGIC;
    \data_p2_reg[21]\ : in STD_LOGIC;
    \data_p2_reg[22]\ : in STD_LOGIC;
    \data_p2_reg[23]\ : in STD_LOGIC;
    ap_predicate_pred276_state4 : in STD_LOGIC;
    ap_predicate_pred267_state4 : in STD_LOGIC;
    \data_p2_reg[31]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]_2\ : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg : in STD_LOGIC;
    \ap_CS_fsm_reg[3]_0\ : in STD_LOGIC;
    \data_p2_reg[31]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stream_out_32_TREADY_int_regslice : in STD_LOGIC;
    ap_predicate_pred229_state4_reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \in_pixel_user_5_reg_452_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_predicate_pred229_state4_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_21_1 : entity is "pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_21_1";
end base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_21_1;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_21_1 is
  signal ack_in_t_i_11_n_0 : STD_LOGIC;
  signal ack_in_t_i_14_n_0 : STD_LOGIC;
  signal ack_in_t_i_15_n_0 : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_2__1_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_block_pp0_stage0_subdone_grp4_done_reg : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone_grp4_done_reg_i_2_n_0 : STD_LOGIC;
  signal ap_block_pp0_stage1_subdone_grp1_done_reg_i_1_n_0 : STD_LOGIC;
  signal ap_block_pp0_stage1_subdone_grp5_done_reg_i_1_n_0 : STD_LOGIC;
  signal ap_block_pp0_stage1_subdone_grp5_done_reg_reg_n_0 : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_reg_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1015_out : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal \^ap_predicate_pred276_state4_reg\ : STD_LOGIC;
  signal \data_p1[31]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_7_n_0\ : STD_LOGIC;
  signal \data_p2[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[17]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[18]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[19]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[20]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[21]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[22]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[23]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[31]_i_3_n_0\ : STD_LOGIC;
  signal \data_p2[31]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[31]_i_7_n_0\ : STD_LOGIC;
  signal \data_p2[31]_i_8_n_0\ : STD_LOGIC;
  signal \data_p2[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_p2[9]_i_2_n_0\ : STD_LOGIC;
  signal delayed_last_reg_127_pp0_iter1_reg : STD_LOGIC;
  signal \delayed_last_reg_127_reg_n_0_[0]\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_10 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_13 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_15 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_16 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_17 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_19 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_3 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_8 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_9 : STD_LOGIC;
  signal has_last_fu_257_p4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal has_user_3_fu_345_p4 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal in_pixel_data_5_reg_446 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_pixel_data_5_reg_4460 : STD_LOGIC;
  signal in_pixel_data_6_reg_463 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_pixel_data_6_reg_4630 : STD_LOGIC;
  signal in_pixel_data_reg_429 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal in_pixel_data_reg_4290 : STD_LOGIC;
  signal \in_pixel_last_4_reg_458_reg_n_0_[0]\ : STD_LOGIC;
  signal in_pixel_last_5_reg_475 : STD_LOGIC;
  signal \in_pixel_last_reg_441[0]_i_3_n_0\ : STD_LOGIC;
  signal \in_pixel_last_reg_441[0]_i_4_n_0\ : STD_LOGIC;
  signal \in_pixel_last_reg_441[0]_i_5_n_0\ : STD_LOGIC;
  signal last_2_31207_reg_206 : STD_LOGIC;
  signal \last_2_31207_reg_206[0]_i_1_n_0\ : STD_LOGIC;
  signal \last_2_31207_reg_206[0]_i_2_n_0\ : STD_LOGIC;
  signal last_8_reg_138_pp0_iter1_reg : STD_LOGIC;
  signal \last_8_reg_138_reg_n_0_[0]\ : STD_LOGIC;
  signal \^mode_read_reg_236_reg[0]\ : STD_LOGIC;
  signal \^mode_read_reg_236_reg[2]\ : STD_LOGIC;
  signal out_pixel_data_1_reg_480 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \out_pixel_data_1_reg_480[15]_i_1_n_0\ : STD_LOGIC;
  signal \out_pixel_data_1_reg_480[31]_i_1_n_0\ : STD_LOGIC;
  signal out_pixel_data_2_reg_495 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \out_pixel_data_2_reg_495[31]_i_1_n_0\ : STD_LOGIC;
  signal \^out_pixel_data_2_reg_495_reg[24]_0\ : STD_LOGIC;
  signal \^out_pixel_data_2_reg_495_reg[25]_0\ : STD_LOGIC;
  signal \^out_pixel_data_2_reg_495_reg[26]_0\ : STD_LOGIC;
  signal \^out_pixel_data_2_reg_495_reg[27]_0\ : STD_LOGIC;
  signal \^out_pixel_data_2_reg_495_reg[28]_0\ : STD_LOGIC;
  signal \^out_pixel_data_2_reg_495_reg[29]_0\ : STD_LOGIC;
  signal \^out_pixel_data_2_reg_495_reg[30]_0\ : STD_LOGIC;
  signal \^out_pixel_data_2_reg_495_reg[31]_0\ : STD_LOGIC;
  signal out_pixel_last_1_reg_490 : STD_LOGIC;
  signal out_pixel_last_2_reg_505 : STD_LOGIC;
  signal out_pixel_user_1_reg_485 : STD_LOGIC;
  signal out_pixel_user_2_reg_500 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ack_in_t_i_14 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of ack_in_t_i_15 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_2__1\ : label is "soft_lutpair24";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \last_2_31207_reg_206[0]_i_2\ : label is "soft_lutpair26";
begin
  ap_predicate_pred276_state4_reg <= \^ap_predicate_pred276_state4_reg\;
  \mode_read_reg_236_reg[0]\ <= \^mode_read_reg_236_reg[0]\;
  \mode_read_reg_236_reg[2]\ <= \^mode_read_reg_236_reg[2]\;
  \out_pixel_data_2_reg_495_reg[24]_0\ <= \^out_pixel_data_2_reg_495_reg[24]_0\;
  \out_pixel_data_2_reg_495_reg[25]_0\ <= \^out_pixel_data_2_reg_495_reg[25]_0\;
  \out_pixel_data_2_reg_495_reg[26]_0\ <= \^out_pixel_data_2_reg_495_reg[26]_0\;
  \out_pixel_data_2_reg_495_reg[27]_0\ <= \^out_pixel_data_2_reg_495_reg[27]_0\;
  \out_pixel_data_2_reg_495_reg[28]_0\ <= \^out_pixel_data_2_reg_495_reg[28]_0\;
  \out_pixel_data_2_reg_495_reg[29]_0\ <= \^out_pixel_data_2_reg_495_reg[29]_0\;
  \out_pixel_data_2_reg_495_reg[30]_0\ <= \^out_pixel_data_2_reg_495_reg[30]_0\;
  \out_pixel_data_2_reg_495_reg[31]_0\ <= \^out_pixel_data_2_reg_495_reg[31]_0\;
ack_in_t_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00800080008000"
    )
        port map (
      I0 => ack_in_t_i_14_n_0,
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => p_0_in(1),
      I3 => \in_pixel_user_5_reg_452_reg[0]_0\(0),
      I4 => ack_in_t_i_15_n_0,
      I5 => ap_CS_fsm_pp0_stage1,
      O => ack_in_t_i_11_n_0
    );
ack_in_t_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \delayed_last_reg_127_reg_n_0_[0]\,
      I1 => \last_8_reg_138_reg_n_0_[0]\,
      I2 => \in_pixel_last_4_reg_458_reg_n_0_[0]\,
      I3 => has_last_fu_257_p4(0),
      O => ack_in_t_i_14_n_0
    );
ack_in_t_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => has_last_fu_257_p4(0),
      I1 => \last_8_reg_138_reg_n_0_[0]\,
      I2 => \delayed_last_reg_127_reg_n_0_[0]\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      O => ack_in_t_i_15_n_0
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000700000000"
    )
        port map (
      I0 => stream_out_32_TREADY_int_regslice,
      I1 => \data_p2_reg[31]_1\(1),
      I2 => delayed_last_reg_127_pp0_iter1_reg,
      I3 => last_8_reg_138_pp0_iter1_reg,
      I4 => ap_block_pp0_stage1_subdone_grp5_done_reg_reg_n_0,
      I5 => ap_enable_reg_pp0_iter1,
      O => \ap_CS_fsm[1]_i_2_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF7070"
    )
        port map (
      I0 => \delayed_last_reg_127_reg_n_0_[0]\,
      I1 => p_0_in(1),
      I2 => \ap_CS_fsm[2]_i_2_n_0\,
      I3 => flow_control_loop_pipe_sequential_init_U_n_14,
      I4 => ap_CS_fsm_pp0_stage2,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEFF"
    )
        port map (
      I0 => \in_pixel_user_5_reg_452_reg[0]_0\(0),
      I1 => has_last_fu_257_p4(0),
      I2 => flow_control_loop_pipe_sequential_init_U_n_9,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => flow_control_loop_pipe_sequential_init_U_n_13,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\ap_CS_fsm[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF20AA202020AA"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => \ap_CS_fsm[3]_i_2__1_n_0\,
      I2 => \ap_CS_fsm_reg[3]_0\,
      I3 => in_pixel_last_5_reg_475,
      I4 => flow_control_loop_pipe_sequential_init_U_n_14,
      I5 => ap_CS_fsm_pp0_stage2,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \delayed_last_reg_127_reg_n_0_[0]\,
      I1 => \last_8_reg_138_reg_n_0_[0]\,
      I2 => p_0_in(1),
      O => \ap_CS_fsm[3]_i_2__1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage1,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_pp0_stage2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_pp0_stage3,
      R => ap_rst_n_inv
    );
ap_block_pp0_stage0_subdone_grp4_done_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040404FFFFFFFF"
    )
        port map (
      I0 => flow_control_loop_pipe_sequential_init_U_n_9,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => ap_block_pp0_stage0_subdone_grp4_done_reg,
      I3 => \data_p2_reg[31]_1\(1),
      I4 => stream_out_32_TREADY_int_regslice,
      I5 => \ap_CS_fsm_reg_n_0_[0]\,
      O => ap_block_pp0_stage0_subdone_grp4_done_reg_i_2_n_0
    );
ap_block_pp0_stage0_subdone_grp4_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_10,
      Q => ap_block_pp0_stage0_subdone_grp4_done_reg,
      R => '0'
    );
ap_block_pp0_stage1_subdone_grp1_done_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0E0C000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => p_0_in(0),
      I2 => ap_rst_n,
      I3 => flow_control_loop_pipe_sequential_init_U_n_8,
      I4 => flow_control_loop_pipe_sequential_init_U_n_13,
      O => ap_block_pp0_stage1_subdone_grp1_done_reg_i_1_n_0
    );
ap_block_pp0_stage1_subdone_grp1_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_block_pp0_stage1_subdone_grp1_done_reg_i_1_n_0,
      Q => p_0_in(0),
      R => '0'
    );
ap_block_pp0_stage1_subdone_grp5_done_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C0"
    )
        port map (
      I0 => ap_block_pp0_stage1_subdone_grp5_done_reg_reg_n_0,
      I1 => ap_rst_n,
      I2 => flow_control_loop_pipe_sequential_init_U_n_8,
      I3 => flow_control_loop_pipe_sequential_init_U_n_13,
      O => ap_block_pp0_stage1_subdone_grp5_done_reg_i_1_n_0
    );
ap_block_pp0_stage1_subdone_grp5_done_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_block_pp0_stage1_subdone_grp5_done_reg_i_1_n_0,
      Q => ap_block_pp0_stage1_subdone_grp5_done_reg_reg_n_0,
      R => '0'
    );
ap_enable_reg_pp0_iter0_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I3 => ap_rst_n,
      I4 => ap_done_reg1,
      O => ap_enable_reg_pp0_iter0_reg_i_1_n_0
    );
ap_enable_reg_pp0_iter0_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_reg_i_1_n_0,
      Q => p_0_in(1),
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47400000"
    )
        port map (
      I0 => \ap_CS_fsm[2]_i_2_n_0\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => flow_control_loop_pipe_sequential_init_U_n_3,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => ap_rst_n,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => p_0_in(1),
      O => ap_enable_reg_pp0_iter0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
\data_p1[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(24),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(24),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_5_reg_446(0),
      I5 => has_last_fu_257_p4(0),
      O => \^out_pixel_data_2_reg_495_reg[24]_0\
    );
\data_p1[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(25),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(25),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_5_reg_446(1),
      I5 => has_last_fu_257_p4(0),
      O => \^out_pixel_data_2_reg_495_reg[25]_0\
    );
\data_p1[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(26),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(26),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_5_reg_446(2),
      I5 => has_last_fu_257_p4(0),
      O => \^out_pixel_data_2_reg_495_reg[26]_0\
    );
\data_p1[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(27),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(27),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_5_reg_446(3),
      I5 => has_last_fu_257_p4(0),
      O => \^out_pixel_data_2_reg_495_reg[27]_0\
    );
\data_p1[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(28),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(28),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_5_reg_446(4),
      I5 => has_last_fu_257_p4(0),
      O => \^out_pixel_data_2_reg_495_reg[28]_0\
    );
\data_p1[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(29),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(29),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_5_reg_446(5),
      I5 => has_last_fu_257_p4(0),
      O => \^out_pixel_data_2_reg_495_reg[29]_0\
    );
\data_p1[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(30),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(30),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_5_reg_446(6),
      I5 => has_last_fu_257_p4(0),
      O => \^out_pixel_data_2_reg_495_reg[30]_0\
    );
\data_p1[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(31),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(31),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_5_reg_446(7),
      I5 => has_last_fu_257_p4(0),
      O => \^out_pixel_data_2_reg_495_reg[31]_0\
    );
\data_p1[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8AAA8"
    )
        port map (
      I0 => ap_predicate_pred276_state4,
      I1 => \data_p1[31]_i_7_n_0\,
      I2 => \data_p1[31]_i_6_n_0\,
      I3 => p_0_in(1),
      I4 => flow_control_loop_pipe_sequential_init_U_n_9,
      I5 => flow_control_loop_pipe_sequential_init_U_n_3,
      O => \^ap_predicate_pred276_state4_reg\
    );
\data_p1[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => \ap_CS_fsm_reg[3]_0\,
      I2 => delayed_last_reg_127_pp0_iter1_reg,
      I3 => last_8_reg_138_pp0_iter1_reg,
      I4 => ap_block_pp0_stage1_subdone_grp5_done_reg_reg_n_0,
      I5 => ap_enable_reg_pp0_iter1,
      O => \data_p1[31]_i_6_n_0\
    );
\data_p1[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => stream_out_32_TREADY_int_regslice,
      I2 => \data_p2_reg[31]_1\(1),
      I3 => ap_block_pp0_stage0_subdone_grp4_done_reg,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => flow_control_loop_pipe_sequential_init_U_n_9,
      O => \data_p1[31]_i_7_n_0\
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[0]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[0]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[0]_1\,
      O => D(0)
    );
\data_p2[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(0),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(0),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(0),
      O => \data_p2[0]_i_2_n_0\
    );
\data_p2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[10]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[10]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[10]_0\,
      O => D(10)
    );
\data_p2[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(10),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(10),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(10),
      O => \data_p2[10]_i_2_n_0\
    );
\data_p2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[11]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[11]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[11]_0\,
      O => D(11)
    );
\data_p2[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(11),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(11),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(11),
      O => \data_p2[11]_i_2_n_0\
    );
\data_p2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[12]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[12]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[12]_0\,
      O => D(12)
    );
\data_p2[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(12),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(12),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(12),
      O => \data_p2[12]_i_2_n_0\
    );
\data_p2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[13]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[13]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[13]_0\,
      O => D(13)
    );
\data_p2[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(13),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(13),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(13),
      O => \data_p2[13]_i_2_n_0\
    );
\data_p2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[14]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[14]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[14]_0\,
      O => D(14)
    );
\data_p2[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(14),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(14),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(14),
      O => \data_p2[14]_i_2_n_0\
    );
\data_p2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[15]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[15]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[15]_0\,
      O => D(15)
    );
\data_p2[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(15),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(15),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(15),
      O => \data_p2[15]_i_2_n_0\
    );
\data_p2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[16]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => Q(16),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[16]_0\,
      O => D(16)
    );
\data_p2[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(16),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(16),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(16),
      O => \data_p2[16]_i_2_n_0\
    );
\data_p2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[17]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => Q(17),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[17]\,
      O => D(17)
    );
\data_p2[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(17),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(17),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(17),
      O => \data_p2[17]_i_2_n_0\
    );
\data_p2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[18]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => Q(18),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[18]\,
      O => D(18)
    );
\data_p2[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(18),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(18),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(18),
      O => \data_p2[18]_i_2_n_0\
    );
\data_p2[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[19]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => Q(19),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[19]\,
      O => D(19)
    );
\data_p2[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(19),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(19),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(19),
      O => \data_p2[19]_i_2_n_0\
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[1]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[1]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[1]_0\,
      O => D(1)
    );
\data_p2[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(1),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(1),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(1),
      O => \data_p2[1]_i_2_n_0\
    );
\data_p2[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[20]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => Q(20),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[20]\,
      O => D(20)
    );
\data_p2[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(20),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(20),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(20),
      O => \data_p2[20]_i_2_n_0\
    );
\data_p2[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[21]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => Q(21),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[21]\,
      O => D(21)
    );
\data_p2[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(21),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(21),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(21),
      O => \data_p2[21]_i_2_n_0\
    );
\data_p2[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[22]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => Q(22),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[22]\,
      O => D(22)
    );
\data_p2[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(22),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(22),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(22),
      O => \data_p2[22]_i_2_n_0\
    );
\data_p2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[23]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => Q(23),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\,
      O => D(23)
    );
\data_p2[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(23),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(23),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(23),
      O => \data_p2[23]_i_2_n_0\
    );
\data_p2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[2]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[2]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[2]_0\,
      O => D(2)
    );
\data_p2[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(2),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(2),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(2),
      O => \data_p2[2]_i_2_n_0\
    );
\data_p2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDF0DDF0DDF0DDFF"
    )
        port map (
      I0 => \data_p2[31]_i_3_n_0\,
      I1 => \data_p2[31]_i_4_n_0\,
      I2 => \data_p2_reg[16]\,
      I3 => ap_predicate_pred276_state4,
      I4 => ap_predicate_pred267_state4,
      I5 => \data_p2_reg[31]_0\,
      O => load_p2
    );
\data_p2[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFDFFFDFFFFF"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage3,
      I1 => flow_control_loop_pipe_sequential_init_U_n_9,
      I2 => p_0_in(1),
      I3 => \ap_CS_fsm_reg[3]_0\,
      I4 => flow_control_loop_pipe_sequential_init_U_n_14,
      I5 => in_pixel_last_5_reg_475,
      O => \data_p2[31]_i_3_n_0\
    );
\data_p2[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00000044000000"
    )
        port map (
      I0 => \data_p2[31]_i_7_n_0\,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \data_p2[31]_i_8_n_0\,
      I3 => \data_p2_reg[31]_1\(1),
      I4 => stream_out_32_TREADY_int_regslice,
      I5 => ap_CS_fsm_pp0_stage1,
      O => \data_p2[31]_i_4_n_0\
    );
\data_p2[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \delayed_last_reg_127_reg_n_0_[0]\,
      I1 => \last_8_reg_138_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_block_pp0_stage0_subdone_grp4_done_reg,
      O => \data_p2[31]_i_7_n_0\
    );
\data_p2[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_block_pp0_stage1_subdone_grp5_done_reg_reg_n_0,
      I2 => last_8_reg_138_pp0_iter1_reg,
      I3 => delayed_last_reg_127_pp0_iter1_reg,
      O => \data_p2[31]_i_8_n_0\
    );
\data_p2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[3]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[3]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[3]_0\,
      O => D(3)
    );
\data_p2[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(3),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(3),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(3),
      O => \data_p2[3]_i_2_n_0\
    );
\data_p2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[4]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[4]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[4]_0\,
      O => D(4)
    );
\data_p2[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(4),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(4),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(4),
      O => \data_p2[4]_i_2_n_0\
    );
\data_p2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[5]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[5]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[5]_0\,
      O => D(5)
    );
\data_p2[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(5),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(5),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(5),
      O => \data_p2[5]_i_2_n_0\
    );
\data_p2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[6]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[6]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[6]_0\,
      O => D(6)
    );
\data_p2[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(6),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(6),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(6),
      O => \data_p2[6]_i_2_n_0\
    );
\data_p2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[7]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[7]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[7]_0\,
      O => D(7)
    );
\data_p2[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(7),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(7),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(7),
      O => \data_p2[7]_i_2_n_0\
    );
\data_p2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[8]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[8]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[8]_0\,
      O => D(8)
    );
\data_p2[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(8),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(8),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(8),
      O => \data_p2[8]_i_2_n_0\
    );
\data_p2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => \data_p2[9]_i_2_n_0\,
      I1 => \^ap_predicate_pred276_state4_reg\,
      I2 => \data_p2_reg[9]\,
      I3 => \data_p2_reg[0]_0\,
      I4 => \data_p2_reg[9]_0\,
      O => D(9)
    );
\data_p2[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_data_2_reg_495(9),
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_data_1_reg_480(9),
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => in_pixel_data_reg_429(9),
      O => \data_p2[9]_i_2_n_0\
    );
\data_p2_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_p2_reg[24]\,
      I1 => \^out_pixel_data_2_reg_495_reg[24]_0\,
      O => D(24),
      S => \^ap_predicate_pred276_state4_reg\
    );
\data_p2_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_p2_reg[25]\,
      I1 => \^out_pixel_data_2_reg_495_reg[25]_0\,
      O => D(25),
      S => \^ap_predicate_pred276_state4_reg\
    );
\data_p2_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_p2_reg[26]\,
      I1 => \^out_pixel_data_2_reg_495_reg[26]_0\,
      O => D(26),
      S => \^ap_predicate_pred276_state4_reg\
    );
\data_p2_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_p2_reg[27]\,
      I1 => \^out_pixel_data_2_reg_495_reg[27]_0\,
      O => D(27),
      S => \^ap_predicate_pred276_state4_reg\
    );
\data_p2_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_p2_reg[28]\,
      I1 => \^out_pixel_data_2_reg_495_reg[28]_0\,
      O => D(28),
      S => \^ap_predicate_pred276_state4_reg\
    );
\data_p2_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_p2_reg[29]\,
      I1 => \^out_pixel_data_2_reg_495_reg[29]_0\,
      O => D(29),
      S => \^ap_predicate_pred276_state4_reg\
    );
\data_p2_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_p2_reg[30]\,
      I1 => \^out_pixel_data_2_reg_495_reg[30]_0\,
      O => D(30),
      S => \^ap_predicate_pred276_state4_reg\
    );
\data_p2_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_p2_reg[31]\,
      I1 => \^out_pixel_data_2_reg_495_reg[31]_0\,
      O => D(31),
      S => \^ap_predicate_pred276_state4_reg\
    );
\delayed_last_reg_127_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_16,
      Q => delayed_last_reg_127_pp0_iter1_reg,
      R => '0'
    );
\delayed_last_reg_127_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_15,
      Q => \delayed_last_reg_127_reg_n_0_[0]\,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_5
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      E(0) => in_pixel_data_reg_4290,
      Q(2) => ap_CS_fsm_pp0_stage3,
      Q(1) => ap_CS_fsm_pp0_stage1,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      ack_in_t_i_3 => \last_2_31207_reg_206[0]_i_2_n_0\,
      ack_in_t_i_3_0 => \data_p2[31]_i_3_n_0\,
      ack_in_t_i_3_1 => ack_in_t_i_11_n_0,
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm[1]_i_2_n_0\,
      \ap_CS_fsm_reg[2]\(0) => \in_pixel_user_5_reg_452_reg[0]_0\(0),
      \ap_CS_fsm_reg[2]_0\ => \in_pixel_last_4_reg_458_reg_n_0_[0]\,
      \ap_CS_fsm_reg[4]\ => \ap_CS_fsm_reg[4]\,
      \ap_CS_fsm_reg[4]_0\ => \ap_CS_fsm_reg[4]_0\,
      \ap_CS_fsm_reg[4]_1\ => \ap_CS_fsm_reg[4]_1\,
      \ap_CS_fsm_reg[4]_2\ => \ap_CS_fsm_reg[4]_2\,
      ap_NS_fsm9 => ap_NS_fsm9,
      ap_block_pp0_stage0_subdone_grp4_done_reg => ap_block_pp0_stage0_subdone_grp4_done_reg,
      ap_block_pp0_stage0_subdone_grp4_done_reg_reg => flow_control_loop_pipe_sequential_init_U_n_10,
      ap_block_pp0_stage0_subdone_grp4_done_reg_reg_0 => ap_block_pp0_stage0_subdone_grp4_done_reg_i_2_n_0,
      ap_block_pp0_stage1_subdone_grp1_done_reg_reg => flow_control_loop_pipe_sequential_init_U_n_8,
      ap_block_pp0_stage1_subdone_grp1_done_reg_reg_0 => \ap_CS_fsm_reg[3]_0\,
      ap_block_pp0_stage1_subdone_grp1_done_reg_reg_1 => ap_block_pp0_stage1_subdone_grp5_done_reg_reg_n_0,
      ap_clk => ap_clk,
      ap_done_reg1 => ap_done_reg1,
      ap_enable_reg_pp0_iter0_reg_reg => flow_control_loop_pipe_sequential_init_U_n_14,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg => flow_control_loop_pipe_sequential_init_U_n_13,
      ap_enable_reg_pp0_iter1_reg_0 => flow_control_loop_pipe_sequential_init_U_n_15,
      ap_predicate_pred229_state4_reg(7 downto 0) => ap_predicate_pred229_state4_reg(7 downto 0),
      ap_predicate_pred229_state4_reg_0 => ap_predicate_pred229_state4_reg_0,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      delayed_last_reg_127_pp0_iter1_reg => delayed_last_reg_127_pp0_iter1_reg,
      \delayed_last_reg_127_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_16,
      \delayed_last_reg_127_reg[0]_0\ => \delayed_last_reg_127_reg_n_0_[0]\,
      \delayed_last_reg_127_reg[0]_1\ => \last_8_reg_138_reg_n_0_[0]\,
      grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg_0 => flow_control_loop_pipe_sequential_init_U_n_19,
      has_last_fu_257_p4(0) => has_last_fu_257_p4(0),
      in_pixel_last_5_reg_475 => in_pixel_last_5_reg_475,
      \in_pixel_last_5_reg_475_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_3,
      last_2_31207_reg_206 => last_2_31207_reg_206,
      last_8_reg_138_pp0_iter1_reg => last_8_reg_138_pp0_iter1_reg,
      \last_8_reg_138_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_9,
      \last_8_reg_138_reg[0]_0\ => flow_control_loop_pipe_sequential_init_U_n_17,
      \last_8_reg_138_reg[0]_1\ => \in_pixel_last_reg_441[0]_i_3_n_0\,
      \last_8_reg_138_reg[0]_2\ => \in_pixel_last_reg_441[0]_i_4_n_0\,
      \last_8_reg_138_reg[0]_3\ => \in_pixel_last_reg_441[0]_i_5_n_0\,
      \mode_read_reg_236_reg[0]\ => \^mode_read_reg_236_reg[0]\,
      \mode_read_reg_236_reg[1]\(0) => \mode_read_reg_236_reg[1]\(0),
      \mode_read_reg_236_reg[1]_0\ => \mode_read_reg_236_reg[1]_0\,
      \mode_read_reg_236_reg[2]\ => \^mode_read_reg_236_reg[2]\,
      p_0_in(1 downto 0) => p_0_in(1 downto 0)
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF00FF01010000"
    )
        port map (
      I0 => \^mode_read_reg_236_reg[0]\,
      I1 => ap_predicate_pred229_state4_reg(1),
      I2 => \^mode_read_reg_236_reg[2]\,
      I3 => ap_done_reg1,
      I4 => \data_p2_reg[31]_1\(0),
      I5 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      O => \mode_read_reg_236_reg[1]_1\
    );
\in_pixel_data_5_reg_446_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(0),
      Q => in_pixel_data_5_reg_446(0),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(10),
      Q => in_pixel_data_5_reg_446(10),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(11),
      Q => in_pixel_data_5_reg_446(11),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(12),
      Q => in_pixel_data_5_reg_446(12),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(13),
      Q => in_pixel_data_5_reg_446(13),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(14),
      Q => in_pixel_data_5_reg_446(14),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(15),
      Q => in_pixel_data_5_reg_446(15),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(16),
      Q => in_pixel_data_5_reg_446(16),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(17),
      Q => in_pixel_data_5_reg_446(17),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(18),
      Q => in_pixel_data_5_reg_446(18),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(19),
      Q => in_pixel_data_5_reg_446(19),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(1),
      Q => in_pixel_data_5_reg_446(1),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(20),
      Q => in_pixel_data_5_reg_446(20),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(21),
      Q => in_pixel_data_5_reg_446(21),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(22),
      Q => in_pixel_data_5_reg_446(22),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(23),
      Q => in_pixel_data_5_reg_446(23),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(2),
      Q => in_pixel_data_5_reg_446(2),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(3),
      Q => in_pixel_data_5_reg_446(3),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(4),
      Q => in_pixel_data_5_reg_446(4),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(5),
      Q => in_pixel_data_5_reg_446(5),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(6),
      Q => in_pixel_data_5_reg_446(6),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(7),
      Q => in_pixel_data_5_reg_446(7),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(8),
      Q => in_pixel_data_5_reg_446(8),
      R => '0'
    );
\in_pixel_data_5_reg_446_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => Q(9),
      Q => in_pixel_data_5_reg_446(9),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(0),
      Q => in_pixel_data_6_reg_463(0),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(10),
      Q => in_pixel_data_6_reg_463(10),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(11),
      Q => in_pixel_data_6_reg_463(11),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(12),
      Q => in_pixel_data_6_reg_463(12),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(13),
      Q => in_pixel_data_6_reg_463(13),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(14),
      Q => in_pixel_data_6_reg_463(14),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(15),
      Q => in_pixel_data_6_reg_463(15),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(16),
      Q => in_pixel_data_6_reg_463(16),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(17),
      Q => in_pixel_data_6_reg_463(17),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(18),
      Q => in_pixel_data_6_reg_463(18),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(19),
      Q => in_pixel_data_6_reg_463(19),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(1),
      Q => in_pixel_data_6_reg_463(1),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(20),
      Q => in_pixel_data_6_reg_463(20),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(21),
      Q => in_pixel_data_6_reg_463(21),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(22),
      Q => in_pixel_data_6_reg_463(22),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(23),
      Q => in_pixel_data_6_reg_463(23),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(2),
      Q => in_pixel_data_6_reg_463(2),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(3),
      Q => in_pixel_data_6_reg_463(3),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(4),
      Q => in_pixel_data_6_reg_463(4),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(5),
      Q => in_pixel_data_6_reg_463(5),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(6),
      Q => in_pixel_data_6_reg_463(6),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(7),
      Q => in_pixel_data_6_reg_463(7),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(8),
      Q => in_pixel_data_6_reg_463(8),
      R => '0'
    );
\in_pixel_data_6_reg_463_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => Q(9),
      Q => in_pixel_data_6_reg_463(9),
      R => '0'
    );
\in_pixel_data_reg_429_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(0),
      Q => in_pixel_data_reg_429(0),
      R => '0'
    );
\in_pixel_data_reg_429_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(10),
      Q => in_pixel_data_reg_429(10),
      R => '0'
    );
\in_pixel_data_reg_429_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(11),
      Q => in_pixel_data_reg_429(11),
      R => '0'
    );
\in_pixel_data_reg_429_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(12),
      Q => in_pixel_data_reg_429(12),
      R => '0'
    );
\in_pixel_data_reg_429_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(13),
      Q => in_pixel_data_reg_429(13),
      R => '0'
    );
\in_pixel_data_reg_429_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(14),
      Q => in_pixel_data_reg_429(14),
      R => '0'
    );
\in_pixel_data_reg_429_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(15),
      Q => in_pixel_data_reg_429(15),
      R => '0'
    );
\in_pixel_data_reg_429_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(16),
      Q => in_pixel_data_reg_429(16),
      R => '0'
    );
\in_pixel_data_reg_429_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(17),
      Q => in_pixel_data_reg_429(17),
      R => '0'
    );
\in_pixel_data_reg_429_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(18),
      Q => in_pixel_data_reg_429(18),
      R => '0'
    );
\in_pixel_data_reg_429_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(19),
      Q => in_pixel_data_reg_429(19),
      R => '0'
    );
\in_pixel_data_reg_429_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(1),
      Q => in_pixel_data_reg_429(1),
      R => '0'
    );
\in_pixel_data_reg_429_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(20),
      Q => in_pixel_data_reg_429(20),
      R => '0'
    );
\in_pixel_data_reg_429_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(21),
      Q => in_pixel_data_reg_429(21),
      R => '0'
    );
\in_pixel_data_reg_429_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(22),
      Q => in_pixel_data_reg_429(22),
      R => '0'
    );
\in_pixel_data_reg_429_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(23),
      Q => in_pixel_data_reg_429(23),
      R => '0'
    );
\in_pixel_data_reg_429_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(2),
      Q => in_pixel_data_reg_429(2),
      R => '0'
    );
\in_pixel_data_reg_429_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(3),
      Q => in_pixel_data_reg_429(3),
      R => '0'
    );
\in_pixel_data_reg_429_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(4),
      Q => in_pixel_data_reg_429(4),
      R => '0'
    );
\in_pixel_data_reg_429_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(5),
      Q => in_pixel_data_reg_429(5),
      R => '0'
    );
\in_pixel_data_reg_429_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(6),
      Q => in_pixel_data_reg_429(6),
      R => '0'
    );
\in_pixel_data_reg_429_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(7),
      Q => in_pixel_data_reg_429(7),
      R => '0'
    );
\in_pixel_data_reg_429_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(8),
      Q => in_pixel_data_reg_429(8),
      R => '0'
    );
\in_pixel_data_reg_429_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => Q(9),
      Q => in_pixel_data_reg_429(9),
      R => '0'
    );
\in_pixel_last_4_reg_458[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202020202000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage1,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => flow_control_loop_pipe_sequential_init_U_n_9,
      I4 => has_last_fu_257_p4(0),
      I5 => \in_pixel_user_5_reg_452_reg[0]_0\(0),
      O => in_pixel_data_5_reg_4460
    );
\in_pixel_last_4_reg_458_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => stream_in_24_TLAST_int_regslice,
      Q => \in_pixel_last_4_reg_458_reg_n_0_[0]\,
      R => '0'
    );
\in_pixel_last_5_reg_475[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => p_0_in(1),
      I1 => ap_CS_fsm_pp0_stage2,
      I2 => flow_control_loop_pipe_sequential_init_U_n_9,
      I3 => \in_pixel_last_4_reg_458_reg_n_0_[0]\,
      I4 => has_last_fu_257_p4(0),
      I5 => \in_pixel_user_5_reg_452_reg[0]_0\(0),
      O => in_pixel_data_6_reg_4630
    );
\in_pixel_last_5_reg_475_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => stream_in_24_TLAST_int_regslice,
      Q => in_pixel_last_5_reg_475,
      R => '0'
    );
\in_pixel_last_reg_441[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000700"
    )
        port map (
      I0 => stream_out_32_TREADY_int_regslice,
      I1 => \data_p2_reg[31]_1\(1),
      I2 => ap_block_pp0_stage0_subdone_grp4_done_reg,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \last_8_reg_138_reg_n_0_[0]\,
      I5 => \delayed_last_reg_127_reg_n_0_[0]\,
      O => \in_pixel_last_reg_441[0]_i_3_n_0\
    );
\in_pixel_last_reg_441[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \in_pixel_user_5_reg_452_reg[0]_0\(0),
      I1 => p_0_in(1),
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      O => \in_pixel_last_reg_441[0]_i_4_n_0\
    );
\in_pixel_last_reg_441[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000777F"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => \last_8_reg_138_reg_n_0_[0]\,
      I3 => last_2_31207_reg_206,
      I4 => \delayed_last_reg_127_reg_n_0_[0]\,
      O => \in_pixel_last_reg_441[0]_i_5_n_0\
    );
\in_pixel_last_reg_441_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => stream_in_24_TLAST_int_regslice,
      Q => has_last_fu_257_p4(0),
      R => '0'
    );
\in_pixel_user_5_reg_452_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_5_reg_4460,
      D => stream_in_24_TUSER_int_regslice,
      Q => has_user_3_fu_345_p4(1),
      R => '0'
    );
\in_pixel_user_6_reg_469_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_6_reg_4630,
      D => stream_in_24_TUSER_int_regslice,
      Q => has_user_3_fu_345_p4(2),
      R => '0'
    );
\in_pixel_user_reg_435_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in_pixel_data_reg_4290,
      D => stream_in_24_TUSER_int_regslice,
      Q => has_user_3_fu_345_p4(0),
      R => '0'
    );
\last_2_31207_reg_206[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFF0000FD00"
    )
        port map (
      I0 => \last_2_31207_reg_206[0]_i_2_n_0\,
      I1 => stream_in_24_TLAST_int_regslice,
      I2 => flow_control_loop_pipe_sequential_init_U_n_9,
      I3 => p_0_in(1),
      I4 => flow_control_loop_pipe_sequential_init_U_n_3,
      I5 => last_2_31207_reg_206,
      O => \last_2_31207_reg_206[0]_i_1_n_0\
    );
\last_2_31207_reg_206[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => in_pixel_last_5_reg_475,
      I1 => \in_pixel_last_4_reg_458_reg_n_0_[0]\,
      I2 => has_last_fu_257_p4(0),
      O => \last_2_31207_reg_206[0]_i_2_n_0\
    );
\last_2_31207_reg_206_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \last_2_31207_reg_206[0]_i_1_n_0\,
      Q => last_2_31207_reg_206,
      R => '0'
    );
\last_8_reg_138_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_17,
      Q => last_8_reg_138_pp0_iter1_reg,
      R => '0'
    );
\last_8_reg_138_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_19,
      Q => \last_8_reg_138_reg_n_0_[0]\,
      R => '0'
    );
\out_pixel_data_1_reg_480[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => has_last_fu_257_p4(0),
      I1 => flow_control_loop_pipe_sequential_init_U_n_3,
      O => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \in_pixel_last_4_reg_458_reg_n_0_[0]\,
      I1 => has_last_fu_257_p4(0),
      I2 => flow_control_loop_pipe_sequential_init_U_n_3,
      O => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => flow_control_loop_pipe_sequential_init_U_n_3,
      O => ap_enable_reg_pp0_iter1015_out
    );
\out_pixel_data_1_reg_480_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(8),
      Q => out_pixel_data_1_reg_480(0),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(18),
      Q => out_pixel_data_1_reg_480(10),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(19),
      Q => out_pixel_data_1_reg_480(11),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(20),
      Q => out_pixel_data_1_reg_480(12),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(21),
      Q => out_pixel_data_1_reg_480(13),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(22),
      Q => out_pixel_data_1_reg_480(14),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(23),
      Q => out_pixel_data_1_reg_480(15),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(0),
      Q => out_pixel_data_1_reg_480(16),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(1),
      Q => out_pixel_data_1_reg_480(17),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(2),
      Q => out_pixel_data_1_reg_480(18),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(3),
      Q => out_pixel_data_1_reg_480(19),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(9),
      Q => out_pixel_data_1_reg_480(1),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(4),
      Q => out_pixel_data_1_reg_480(20),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(5),
      Q => out_pixel_data_1_reg_480(21),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(6),
      Q => out_pixel_data_1_reg_480(22),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(7),
      Q => out_pixel_data_1_reg_480(23),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(8),
      Q => out_pixel_data_1_reg_480(24),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(9),
      Q => out_pixel_data_1_reg_480(25),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(10),
      Q => out_pixel_data_1_reg_480(26),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(11),
      Q => out_pixel_data_1_reg_480(27),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(12),
      Q => out_pixel_data_1_reg_480(28),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(13),
      Q => out_pixel_data_1_reg_480(29),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(10),
      Q => out_pixel_data_1_reg_480(2),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(14),
      Q => out_pixel_data_1_reg_480(30),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(15),
      Q => out_pixel_data_1_reg_480(31),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(11),
      Q => out_pixel_data_1_reg_480(3),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(12),
      Q => out_pixel_data_1_reg_480(4),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(13),
      Q => out_pixel_data_1_reg_480(5),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(14),
      Q => out_pixel_data_1_reg_480(6),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(15),
      Q => out_pixel_data_1_reg_480(7),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(16),
      Q => out_pixel_data_1_reg_480(8),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_1_reg_480_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_5_reg_446(17),
      Q => out_pixel_data_1_reg_480(9),
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_data_2_reg_495[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => has_last_fu_257_p4(0),
      I1 => \in_pixel_last_4_reg_458_reg_n_0_[0]\,
      I2 => in_pixel_last_5_reg_475,
      I3 => flow_control_loop_pipe_sequential_init_U_n_3,
      O => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(16),
      Q => out_pixel_data_2_reg_495(0),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(2),
      Q => out_pixel_data_2_reg_495(10),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(3),
      Q => out_pixel_data_2_reg_495(11),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(4),
      Q => out_pixel_data_2_reg_495(12),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(5),
      Q => out_pixel_data_2_reg_495(13),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(6),
      Q => out_pixel_data_2_reg_495(14),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(7),
      Q => out_pixel_data_2_reg_495(15),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(8),
      Q => out_pixel_data_2_reg_495(16),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(9),
      Q => out_pixel_data_2_reg_495(17),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(10),
      Q => out_pixel_data_2_reg_495(18),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(11),
      Q => out_pixel_data_2_reg_495(19),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(17),
      Q => out_pixel_data_2_reg_495(1),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(12),
      Q => out_pixel_data_2_reg_495(20),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(13),
      Q => out_pixel_data_2_reg_495(21),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(14),
      Q => out_pixel_data_2_reg_495(22),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(15),
      Q => out_pixel_data_2_reg_495(23),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(16),
      Q => out_pixel_data_2_reg_495(24),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(17),
      Q => out_pixel_data_2_reg_495(25),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(18),
      Q => out_pixel_data_2_reg_495(26),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(19),
      Q => out_pixel_data_2_reg_495(27),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(20),
      Q => out_pixel_data_2_reg_495(28),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(21),
      Q => out_pixel_data_2_reg_495(29),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(18),
      Q => out_pixel_data_2_reg_495(2),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(22),
      Q => out_pixel_data_2_reg_495(30),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(23),
      Q => out_pixel_data_2_reg_495(31),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(19),
      Q => out_pixel_data_2_reg_495(3),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(20),
      Q => out_pixel_data_2_reg_495(4),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(21),
      Q => out_pixel_data_2_reg_495(5),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(22),
      Q => out_pixel_data_2_reg_495(6),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_data_6_reg_463(23),
      Q => out_pixel_data_2_reg_495(7),
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(0),
      Q => out_pixel_data_2_reg_495(8),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_data_2_reg_495_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => Q(1),
      Q => out_pixel_data_2_reg_495(9),
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_last_1_reg_490_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => in_pixel_last_5_reg_475,
      Q => out_pixel_last_1_reg_490,
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\out_pixel_last_2_reg_505_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => stream_in_24_TLAST_int_regslice,
      Q => out_pixel_last_2_reg_505,
      R => \out_pixel_data_2_reg_495[31]_i_1_n_0\
    );
\out_pixel_user_1_reg_485_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => has_user_3_fu_345_p4(1),
      Q => out_pixel_user_1_reg_485,
      R => \out_pixel_data_1_reg_480[15]_i_1_n_0\
    );
\out_pixel_user_2_reg_500_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_enable_reg_pp0_iter1015_out,
      D => has_user_3_fu_345_p4(2),
      Q => out_pixel_user_2_reg_500,
      R => \out_pixel_data_1_reg_480[31]_i_1_n_0\
    );
\stream_out_32_TLAST_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => out_pixel_last_2_reg_505,
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_last_1_reg_490,
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => \in_pixel_last_4_reg_458_reg_n_0_[0]\,
      I5 => has_last_fu_257_p4(0),
      O => \out_pixel_last_2_reg_505_reg[0]_0\
    );
\stream_out_32_TUSER_reg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => out_pixel_user_2_reg_500,
      I1 => \data_p1[31]_i_6_n_0\,
      I2 => out_pixel_user_1_reg_485,
      I3 => \data_p1[31]_i_7_n_0\,
      I4 => has_user_3_fu_345_p4(0),
      O => \out_pixel_user_2_reg_500_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_47_4 is
  port (
    ap_done_cache : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_done_cache_reg : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_47_4 : entity is "pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_47_4";
end base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_47_4;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_47_4 is
begin
flow_control_loop_pipe_sequential_init_U: entity work.base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_4
     port map (
      ap_clk => ap_clk,
      ap_done_cache => ap_done_cache,
      ap_done_cache_reg_0 => ap_done_cache_reg,
      ap_rst_n_inv => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_62_5 is
  port (
    user_2_reg_306 : out STD_LOGIC;
    stream_out_32_TUSER_int_regslice : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \data_p1_reg[0]\ : out STD_LOGIC;
    \data_p1_reg[1]\ : out STD_LOGIC;
    \data_p1_reg[2]\ : out STD_LOGIC;
    \data_p1_reg[3]\ : out STD_LOGIC;
    \data_p1_reg[4]\ : out STD_LOGIC;
    \data_p1_reg[5]\ : out STD_LOGIC;
    \data_p1_reg[6]\ : out STD_LOGIC;
    \data_p1_reg[7]\ : out STD_LOGIC;
    ap_predicate_pred249_state4_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mode_read_reg_236_reg[0]\ : out STD_LOGIC;
    \data_p1_reg[0]_0\ : out STD_LOGIC;
    \in_pixel_last_2_reg_323_reg[0]_0\ : out STD_LOGIC;
    \data_p1_reg[1]_0\ : out STD_LOGIC;
    \data_p1_reg[2]_0\ : out STD_LOGIC;
    \data_p1_reg[3]_0\ : out STD_LOGIC;
    \data_p1_reg[4]_0\ : out STD_LOGIC;
    \data_p1_reg[5]_0\ : out STD_LOGIC;
    \data_p1_reg[6]_0\ : out STD_LOGIC;
    \data_p1_reg[7]_0\ : out STD_LOGIC;
    \data_p1_reg[8]\ : out STD_LOGIC;
    \data_p1_reg[9]\ : out STD_LOGIC;
    \data_p1_reg[10]\ : out STD_LOGIC;
    \data_p1_reg[11]\ : out STD_LOGIC;
    \data_p1_reg[12]\ : out STD_LOGIC;
    \data_p1_reg[13]\ : out STD_LOGIC;
    \data_p1_reg[14]\ : out STD_LOGIC;
    \data_p1_reg[15]\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    \mode_read_reg_236_reg[1]\ : out STD_LOGIC;
    \delayed_last_reg_103_reg[0]_0\ : out STD_LOGIC;
    ap_predicate_pred258_state4_reg : out STD_LOGIC;
    stream_in_24_TLAST_int_regslice : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    stream_in_24_TUSER_int_regslice : in STD_LOGIC;
    user_3_fu_237_p2 : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    \stream_out_32_TUSER_reg_reg[0]\ : in STD_LOGIC;
    \stream_out_32_TUSER_reg_reg[0]_0\ : in STD_LOGIC;
    \stream_out_32_TUSER_reg_reg[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \data_p2_reg[16]\ : in STD_LOGIC;
    \data_p2_reg[23]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_p2_reg[31]\ : in STD_LOGIC;
    \data_p2_reg[31]_0\ : in STD_LOGIC;
    \data_p2_reg[31]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[3]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[3]_2\ : in STD_LOGIC;
    \ap_CS_fsm_reg[3]_3\ : in STD_LOGIC;
    \data_p2_reg[0]\ : in STD_LOGIC;
    \in_pixel_user_4_reg_280_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_32_TREADY_int_regslice : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg : in STD_LOGIC;
    ap_predicate_pred267_state4 : in STD_LOGIC;
    \ap_CS_fsm_reg[3]_4\ : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[3]_5\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \last_4_reg_114_reg[0]_0\ : in STD_LOGIC;
    ap_predicate_pred258_state4 : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_62_5 : entity is "pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_62_5";
end base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_62_5;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_62_5 is
  signal ack_in_t_i_10_n_0 : STD_LOGIC;
  signal ack_in_t_i_13_n_0 : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126 : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[10]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[11]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[12]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[13]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[14]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[15]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[16]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[17]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[18]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[19]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[1]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[20]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[21]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[22]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[23]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[2]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[3]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[4]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[5]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[6]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[7]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[8]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[9]\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_2_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_3_n_0\ : STD_LOGIC;
  signal \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_ready_int : STD_LOGIC;
  signal data_1_fu_225_p4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data_fu_203_p4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_p2[16]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[17]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[18]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[19]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[20]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[21]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[22]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[23]_i_4_n_0\ : STD_LOGIC;
  signal \data_p2[23]_i_5_n_0\ : STD_LOGIC;
  signal \data_p2[31]_i_12_n_0\ : STD_LOGIC;
  signal \data_p2[31]_i_13_n_0\ : STD_LOGIC;
  signal \data_p2[31]_i_14_n_0\ : STD_LOGIC;
  signal delayed_last_reg_103 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_0 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_8 : STD_LOGIC;
  signal in_pixel_last_1_reg_302 : STD_LOGIC;
  signal \^in_pixel_last_2_reg_323_reg[0]_0\ : STD_LOGIC;
  signal \in_pixel_last_2_reg_323_reg_n_0_[0]\ : STD_LOGIC;
  signal in_pixel_last_reg_286 : STD_LOGIC;
  signal in_pixel_user_4_reg_280 : STD_LOGIC;
  signal last_4_reg_114 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_20_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal \^state_reg[0]\ : STD_LOGIC;
  signal \stream_out_32_TUSER_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal trunc_ln72_2_reg_333 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal user_2_fu_216_p2 : STD_LOGIC;
  signal \^user_2_reg_306\ : STD_LOGIC;
  signal user_3_reg_327 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2__0\ : label is "soft_lutpair28";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[4]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_p2[16]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_p2[17]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_p2[18]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_p2[19]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_p2[20]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_p2[21]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_p2[22]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_p2[23]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \last_4_reg_114[0]_i_2\ : label is "soft_lutpair28";
begin
  \in_pixel_last_2_reg_323_reg[0]_0\ <= \^in_pixel_last_2_reg_323_reg[0]_0\;
  \state_reg[0]\ <= \^state_reg[0]\;
  user_2_reg_306 <= \^user_2_reg_306\;
ack_in_t_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000F8"
    )
        port map (
      I0 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I1 => ap_CS_fsm_state2,
      I2 => ack_in_t_i_13_n_0,
      I3 => last_4_reg_114,
      I4 => delayed_last_reg_103,
      I5 => in_pixel_last_reg_286,
      O => ack_in_t_i_10_n_0
    );
ack_in_t_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00AA00AA00A8"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I2 => delayed_last_reg_103,
      I3 => in_pixel_last_1_reg_302,
      I4 => last_4_reg_114,
      I5 => in_pixel_last_reg_286,
      O => ack_in_t_i_13_n_0
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA8AAA8AAA8"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I2 => \ap_CS_fsm[2]_i_2__0_n_0\,
      I3 => in_pixel_last_reg_286,
      I4 => \ap_CS_fsm[2]_i_3__0_n_0\,
      I5 => ap_CS_fsm_state3,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => last_4_reg_114,
      I1 => delayed_last_reg_103,
      O => \ap_CS_fsm[2]_i_2__0_n_0\
    );
\ap_CS_fsm[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I1 => delayed_last_reg_103,
      I2 => in_pixel_last_1_reg_302,
      I3 => last_4_reg_114,
      I4 => in_pixel_last_reg_286,
      O => \ap_CS_fsm[2]_i_3__0_n_0\
    );
\ap_CS_fsm[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => ap_ready_int,
      I1 => ap_CS_fsm_state4,
      I2 => \ap_CS_fsm[3]_i_3__1_n_0\,
      O => \ap_CS_fsm[3]_i_1__1_n_0\
    );
\ap_CS_fsm[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => in_pixel_last_reg_286,
      I1 => last_4_reg_114,
      I2 => in_pixel_last_1_reg_302,
      I3 => delayed_last_reg_103,
      I4 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I5 => ap_CS_fsm_state3,
      O => \ap_CS_fsm[3]_i_3__1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[3]_i_1__1_n_0\,
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_fu_203_p4(0),
      I1 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I2 => data_1_fu_225_p4(0),
      O => p_0_in(0)
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => last_4_reg_114,
      I1 => delayed_last_reg_103,
      I2 => ap_CS_fsm_state2,
      I3 => in_pixel_last_reg_286,
      I4 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      O => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_fu_203_p4(1),
      I1 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I2 => data_1_fu_225_p4(1),
      O => p_0_in(1)
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      I1 => in_pixel_last_reg_286,
      I2 => stream_in_24_TLAST_int_regslice,
      I3 => in_pixel_last_1_reg_302,
      I4 => \ap_CS_fsm[3]_i_3__1_n_0\,
      O => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_fu_203_p4(2),
      I1 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I2 => data_1_fu_225_p4(2),
      O => p_0_in(2)
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_fu_203_p4(3),
      I1 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I2 => data_1_fu_225_p4(3),
      O => p_0_in(3)
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_fu_203_p4(4),
      I1 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I2 => data_1_fu_225_p4(4),
      O => p_0_in(4)
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_fu_203_p4(5),
      I1 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I2 => data_1_fu_225_p4(5),
      O => p_0_in(5)
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_fu_203_p4(6),
      I1 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I2 => data_1_fu_225_p4(6),
      O => p_0_in(6)
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D5"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I1 => in_pixel_last_reg_286,
      I2 => ap_CS_fsm_state2,
      I3 => delayed_last_reg_103,
      I4 => last_4_reg_114,
      O => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_fu_203_p4(7),
      I1 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\,
      I2 => data_1_fu_225_p4(7),
      O => p_0_in(7)
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFFDDCF"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => in_pixel_last_reg_286,
      I2 => stream_in_24_TLAST_int_regslice,
      I3 => in_pixel_last_1_reg_302,
      I4 => \ap_CS_fsm[3]_i_3__1_n_0\,
      O => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[7]_i_3_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => p_0_in(0),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[0]\,
      R => '0'
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => data_1_fu_225_p4(10),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[10]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => data_1_fu_225_p4(11),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[11]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => data_1_fu_225_p4(12),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[12]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => data_1_fu_225_p4(13),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[13]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => data_1_fu_225_p4(14),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[14]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => data_1_fu_225_p4(15),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[15]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => Q(0),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[16]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => Q(1),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[17]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => Q(2),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[18]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => Q(3),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[19]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => p_0_in(1),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[1]\,
      R => '0'
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => Q(4),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[20]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => Q(5),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[21]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => Q(6),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[22]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => Q(7),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[23]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[23]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => p_0_in(2),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[2]\,
      R => '0'
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => p_0_in(3),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[3]\,
      R => '0'
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => p_0_in(4),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[4]\,
      R => '0'
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => p_0_in(5),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[5]\,
      R => '0'
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => p_0_in(6),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[6]\,
      R => '0'
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => p_0_in(7),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[7]\,
      R => '0'
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => data_1_fu_225_p4(8),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[8]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => data_1_fu_225_p4(9),
      Q => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[9]\,
      R => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126[15]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FBF8C8"
    )
        port map (
      I0 => stream_in_24_TUSER_int_regslice,
      I1 => \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_2_n_0\,
      I2 => \^user_2_reg_306\,
      I3 => \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_3_n_0\,
      I4 => in_pixel_user_4_reg_280,
      O => \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_1_n_0\
    );
\ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_3__1_n_0\,
      I1 => in_pixel_last_1_reg_302,
      I2 => stream_in_24_TLAST_int_regslice,
      I3 => in_pixel_last_reg_286,
      O => \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_2_n_0\
    );
\ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => in_pixel_last_1_reg_302,
      I2 => in_pixel_last_reg_286,
      O => \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_3_n_0\
    );
\ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126,
      D => \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140[0]_i_1_n_0\,
      Q => \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140_reg_n_0_[0]\,
      R => '0'
    );
\data_p2[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(0),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[0]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_fu_203_p4(0),
      O => \data_p1_reg[0]_0\
    );
\data_p2[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(10),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[10]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_1_fu_225_p4(10),
      O => \data_p1_reg[10]\
    );
\data_p2[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(11),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[11]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_1_fu_225_p4(11),
      O => \data_p1_reg[11]\
    );
\data_p2[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(12),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[12]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_1_fu_225_p4(12),
      O => \data_p1_reg[12]\
    );
\data_p2[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(13),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[13]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_1_fu_225_p4(13),
      O => \data_p1_reg[13]\
    );
\data_p2[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(14),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[14]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_1_fu_225_p4(14),
      O => \data_p1_reg[14]\
    );
\data_p2[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555555555555"
    )
        port map (
      I0 => \data_p2[23]_i_5_n_0\,
      I1 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I2 => \ap_CS_fsm_reg[3]_0\(1),
      I3 => stream_out_32_TREADY_int_regslice,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      I5 => ap_predicate_pred267_state4,
      O => \^state_reg[0]\
    );
\data_p2[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(15),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[15]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_1_fu_225_p4(15),
      O => \data_p1_reg[15]\
    );
\data_p2[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[16]_i_4_n_0\,
      I1 => \data_p2[23]_i_5_n_0\,
      I2 => Q(0),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\(0),
      O => \data_p1_reg[0]\
    );
\data_p2[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[16]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => trunc_ln72_2_reg_333(0),
      O => \data_p2[16]_i_4_n_0\
    );
\data_p2[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[17]_i_4_n_0\,
      I1 => \data_p2[23]_i_5_n_0\,
      I2 => Q(1),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\(1),
      O => \data_p1_reg[1]\
    );
\data_p2[17]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[17]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => trunc_ln72_2_reg_333(1),
      O => \data_p2[17]_i_4_n_0\
    );
\data_p2[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[18]_i_4_n_0\,
      I1 => \data_p2[23]_i_5_n_0\,
      I2 => Q(2),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\(2),
      O => \data_p1_reg[2]\
    );
\data_p2[18]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[18]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => trunc_ln72_2_reg_333(2),
      O => \data_p2[18]_i_4_n_0\
    );
\data_p2[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[19]_i_4_n_0\,
      I1 => \data_p2[23]_i_5_n_0\,
      I2 => Q(3),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\(3),
      O => \data_p1_reg[3]\
    );
\data_p2[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[19]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => trunc_ln72_2_reg_333(3),
      O => \data_p2[19]_i_4_n_0\
    );
\data_p2[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(1),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[1]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_fu_203_p4(1),
      O => \data_p1_reg[1]_0\
    );
\data_p2[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[20]_i_4_n_0\,
      I1 => \data_p2[23]_i_5_n_0\,
      I2 => Q(4),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\(4),
      O => \data_p1_reg[4]\
    );
\data_p2[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[20]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => trunc_ln72_2_reg_333(4),
      O => \data_p2[20]_i_4_n_0\
    );
\data_p2[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[21]_i_4_n_0\,
      I1 => \data_p2[23]_i_5_n_0\,
      I2 => Q(5),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\(5),
      O => \data_p1_reg[5]\
    );
\data_p2[21]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[21]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => trunc_ln72_2_reg_333(5),
      O => \data_p2[21]_i_4_n_0\
    );
\data_p2[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[22]_i_4_n_0\,
      I1 => \data_p2[23]_i_5_n_0\,
      I2 => Q(6),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\(6),
      O => \data_p1_reg[6]\
    );
\data_p2[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[22]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => trunc_ln72_2_reg_333(6),
      O => \data_p2[22]_i_4_n_0\
    );
\data_p2[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_p2[23]_i_4_n_0\,
      I1 => \data_p2[23]_i_5_n_0\,
      I2 => Q(7),
      I3 => \data_p2_reg[16]\,
      I4 => \data_p2_reg[23]\(7),
      O => \data_p1_reg[7]\
    );
\data_p2[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[23]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => trunc_ln72_2_reg_333(7),
      O => \data_p2[23]_i_4_n_0\
    );
\data_p2[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022200000"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \last_4_reg_114_reg[0]_0\,
      I2 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I3 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I4 => ap_predicate_pred258_state4,
      I5 => \ap_CS_fsm[2]_i_2__0_n_0\,
      O => \data_p2[23]_i_5_n_0\
    );
\data_p2[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(2),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[2]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_fu_203_p4(2),
      O => \data_p1_reg[2]_0\
    );
\data_p2[31]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => delayed_last_reg_103,
      I1 => last_4_reg_114,
      I2 => ap_predicate_pred258_state4,
      O => \data_p2[31]_i_12_n_0\
    );
\data_p2[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I1 => in_pixel_last_reg_286,
      I2 => last_4_reg_114,
      I3 => in_pixel_last_1_reg_302,
      I4 => delayed_last_reg_103,
      I5 => \in_pixel_last_2_reg_323_reg_n_0_[0]\,
      O => \data_p2[31]_i_13_n_0\
    );
\data_p2[31]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555557F"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \ap_CS_fsm_reg[3]_0\(1),
      I2 => stream_out_32_TREADY_int_regslice,
      I3 => last_4_reg_114,
      I4 => delayed_last_reg_103,
      O => \data_p2[31]_i_14_n_0\
    );
\data_p2[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4F4F4F400F4F4"
    )
        port map (
      I0 => \data_p2_reg[31]\,
      I1 => \data_p2_reg[31]_0\,
      I2 => \data_p2_reg[31]_1\,
      I3 => \data_p2[31]_i_12_n_0\,
      I4 => \data_p2[31]_i_13_n_0\,
      I5 => \data_p2[31]_i_14_n_0\,
      O => ap_predicate_pred249_state4_reg
    );
\data_p2[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(3),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[3]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_fu_203_p4(3),
      O => \data_p1_reg[3]_0\
    );
\data_p2[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(4),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[4]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_fu_203_p4(4),
      O => \data_p1_reg[4]_0\
    );
\data_p2[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(5),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[5]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_fu_203_p4(5),
      O => \data_p1_reg[5]_0\
    );
\data_p2[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(6),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[6]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_fu_203_p4(6),
      O => \data_p1_reg[6]_0\
    );
\data_p2[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(7),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[7]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_fu_203_p4(7),
      O => \data_p1_reg[7]_0\
    );
\data_p2[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(8),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[8]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_1_fu_225_p4(8),
      O => \data_p1_reg[8]\
    );
\data_p2[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => Q(9),
      I1 => \data_p2_reg[0]\,
      I2 => \data_p2[23]_i_5_n_0\,
      I3 => \ap_phi_reg_pp0_iter0_data55_1_3_ph_reg_126_reg_n_0_[9]\,
      I4 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I5 => data_1_fu_225_p4(9),
      O => \data_p1_reg[9]\
    );
\data_reg_296_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => data_fu_203_p4(0),
      Q => data_1_fu_225_p4(0),
      R => '0'
    );
\data_reg_296_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => data_fu_203_p4(1),
      Q => data_1_fu_225_p4(1),
      R => '0'
    );
\data_reg_296_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => data_fu_203_p4(2),
      Q => data_1_fu_225_p4(2),
      R => '0'
    );
\data_reg_296_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => data_fu_203_p4(3),
      Q => data_1_fu_225_p4(3),
      R => '0'
    );
\data_reg_296_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => data_fu_203_p4(4),
      Q => data_1_fu_225_p4(4),
      R => '0'
    );
\data_reg_296_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => data_fu_203_p4(5),
      Q => data_1_fu_225_p4(5),
      R => '0'
    );
\data_reg_296_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => data_fu_203_p4(6),
      Q => data_1_fu_225_p4(6),
      R => '0'
    );
\data_reg_296_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => data_fu_203_p4(7),
      Q => data_1_fu_225_p4(7),
      R => '0'
    );
\delayed_last_reg_103_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_0,
      Q => delayed_last_reg_103,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init_3
     port map (
      D(0) => D(0),
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      ack_in_t_i_3 => ack_in_t_i_10_n_0,
      \ap_CS_fsm_reg[3]\(1 downto 0) => \ap_CS_fsm_reg[3]_0\(1 downto 0),
      \ap_CS_fsm_reg[3]_0\ => \ap_CS_fsm_reg[3]_1\,
      \ap_CS_fsm_reg[3]_1\ => \ap_CS_fsm_reg[3]_2\,
      \ap_CS_fsm_reg[3]_2\ => \ap_CS_fsm_reg[3]_3\,
      \ap_CS_fsm_reg[3]_3\ => \ap_CS_fsm_reg[3]_4\,
      \ap_CS_fsm_reg[3]_4\ => \ap_CS_fsm_reg[3]_5\,
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_predicate_pred258_state4 => ap_predicate_pred258_state4,
      ap_predicate_pred258_state4_reg => ap_predicate_pred258_state4_reg,
      ap_ready_int => ap_ready_int,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_8,
      delayed_last_reg_103 => delayed_last_reg_103,
      \delayed_last_reg_103_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_0,
      \delayed_last_reg_103_reg[0]_0\ => \delayed_last_reg_103_reg[0]_0\,
      grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_0(1 downto 0) => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_0(1 downto 0),
      grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_1 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_1,
      in_pixel_last_reg_286 => in_pixel_last_reg_286,
      \in_pixel_user_4_reg_280_reg[0]\(0) => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      last_4_reg_114 => last_4_reg_114,
      \last_4_reg_114_reg[0]\ => \^in_pixel_last_2_reg_323_reg[0]_0\,
      \last_4_reg_114_reg[0]_0\ => \last_4_reg_114_reg[0]_0\,
      \mode_read_reg_236_reg[0]\ => \mode_read_reg_236_reg[0]\,
      \mode_read_reg_236_reg[1]\ => \mode_read_reg_236_reg[1]\,
      \state_reg[0]\(1 downto 0) => ap_NS_fsm(1 downto 0),
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice
    );
\in_pixel_last_1_reg_302[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I2 => last_4_reg_114,
      I3 => delayed_last_reg_103,
      I4 => in_pixel_last_reg_286,
      O => p_20_in
    );
\in_pixel_last_1_reg_302_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => stream_in_24_TLAST_int_regslice,
      Q => in_pixel_last_1_reg_302,
      R => '0'
    );
\in_pixel_last_2_reg_323[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I2 => delayed_last_reg_103,
      I3 => in_pixel_last_1_reg_302,
      I4 => last_4_reg_114,
      I5 => in_pixel_last_reg_286,
      O => p_22_in
    );
\in_pixel_last_2_reg_323_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => stream_in_24_TLAST_int_regslice,
      Q => \in_pixel_last_2_reg_323_reg_n_0_[0]\,
      R => '0'
    );
\in_pixel_last_reg_286_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => stream_in_24_TLAST_int_regslice,
      Q => in_pixel_last_reg_286,
      R => '0'
    );
\in_pixel_user_4_reg_280_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => stream_in_24_TUSER_int_regslice,
      Q => in_pixel_user_4_reg_280,
      R => '0'
    );
\last_4_reg_114[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \in_pixel_last_2_reg_323_reg_n_0_[0]\,
      I1 => delayed_last_reg_103,
      I2 => in_pixel_last_1_reg_302,
      I3 => last_4_reg_114,
      I4 => in_pixel_last_reg_286,
      O => \^in_pixel_last_2_reg_323_reg[0]_0\
    );
\last_4_reg_114_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_8,
      Q => last_4_reg_114,
      R => '0'
    );
\stream_out_32_TLAST_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I1 => \in_pixel_user_4_reg_280_reg[0]_0\(0),
      I2 => \ap_CS_fsm_reg[3]_0\(1),
      I3 => stream_out_32_TREADY_int_regslice,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      I5 => ap_predicate_pred267_state4,
      O => \state_reg[0]_0\
    );
\stream_out_32_TUSER_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF740074"
    )
        port map (
      I0 => \stream_out_32_TUSER_reg_reg[0]\,
      I1 => \^state_reg[0]\,
      I2 => \stream_out_32_TUSER_reg[0]_i_3_n_0\,
      I3 => \stream_out_32_TUSER_reg_reg[0]_0\,
      I4 => \stream_out_32_TUSER_reg_reg[0]_1\,
      O => stream_out_32_TUSER_int_regslice
    );
\stream_out_32_TUSER_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BFB08"
    )
        port map (
      I0 => \ap_phi_reg_pp0_iter0_user54_1_3_ph_reg_140_reg_n_0_[0]\,
      I1 => \^in_pixel_last_2_reg_323_reg[0]_0\,
      I2 => \data_p2_reg[0]\,
      I3 => stream_in_24_TUSER_int_regslice,
      I4 => user_3_reg_327,
      O => \stream_out_32_TUSER_reg[0]_i_3_n_0\
    );
\trunc_ln72_1_reg_312_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => Q(0),
      Q => data_1_fu_225_p4(8),
      R => '0'
    );
\trunc_ln72_1_reg_312_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => Q(1),
      Q => data_1_fu_225_p4(9),
      R => '0'
    );
\trunc_ln72_1_reg_312_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => Q(2),
      Q => data_1_fu_225_p4(10),
      R => '0'
    );
\trunc_ln72_1_reg_312_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => Q(3),
      Q => data_1_fu_225_p4(11),
      R => '0'
    );
\trunc_ln72_1_reg_312_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => Q(4),
      Q => data_1_fu_225_p4(12),
      R => '0'
    );
\trunc_ln72_1_reg_312_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => Q(5),
      Q => data_1_fu_225_p4(13),
      R => '0'
    );
\trunc_ln72_1_reg_312_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => Q(6),
      Q => data_1_fu_225_p4(14),
      R => '0'
    );
\trunc_ln72_1_reg_312_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => Q(7),
      Q => data_1_fu_225_p4(15),
      R => '0'
    );
\trunc_ln72_2_reg_333_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => Q(0),
      Q => trunc_ln72_2_reg_333(0),
      R => '0'
    );
\trunc_ln72_2_reg_333_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => Q(1),
      Q => trunc_ln72_2_reg_333(1),
      R => '0'
    );
\trunc_ln72_2_reg_333_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => Q(2),
      Q => trunc_ln72_2_reg_333(2),
      R => '0'
    );
\trunc_ln72_2_reg_333_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => Q(3),
      Q => trunc_ln72_2_reg_333(3),
      R => '0'
    );
\trunc_ln72_2_reg_333_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => Q(4),
      Q => trunc_ln72_2_reg_333(4),
      R => '0'
    );
\trunc_ln72_2_reg_333_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => Q(5),
      Q => trunc_ln72_2_reg_333(5),
      R => '0'
    );
\trunc_ln72_2_reg_333_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => Q(6),
      Q => trunc_ln72_2_reg_333(6),
      R => '0'
    );
\trunc_ln72_2_reg_333_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => Q(7),
      Q => trunc_ln72_2_reg_333(7),
      R => '0'
    );
\trunc_ln72_reg_290_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => Q(0),
      Q => data_fu_203_p4(0),
      R => '0'
    );
\trunc_ln72_reg_290_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => Q(1),
      Q => data_fu_203_p4(1),
      R => '0'
    );
\trunc_ln72_reg_290_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => Q(2),
      Q => data_fu_203_p4(2),
      R => '0'
    );
\trunc_ln72_reg_290_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => Q(3),
      Q => data_fu_203_p4(3),
      R => '0'
    );
\trunc_ln72_reg_290_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => Q(4),
      Q => data_fu_203_p4(4),
      R => '0'
    );
\trunc_ln72_reg_290_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => Q(5),
      Q => data_fu_203_p4(5),
      R => '0'
    );
\trunc_ln72_reg_290_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => Q(6),
      Q => data_fu_203_p4(6),
      R => '0'
    );
\trunc_ln72_reg_290_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => Q(7),
      Q => data_fu_203_p4(7),
      R => '0'
    );
\user_2_reg_306[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => in_pixel_user_4_reg_280,
      I1 => stream_in_24_TUSER_int_regslice,
      O => user_2_fu_216_p2
    );
\user_2_reg_306_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_20_in,
      D => user_2_fu_216_p2,
      Q => \^user_2_reg_306\,
      R => '0'
    );
\user_3_reg_327_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_22_in,
      D => user_3_fu_237_p2,
      Q => user_3_reg_327,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_84_7 is
  port (
    empty_reg_130_3 : out STD_LOGIC;
    ap_done_cache : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[8]\ : out STD_LOGIC;
    ap_predicate_pred249_state4_reg : out STD_LOGIC;
    \trunc_ln92_reg_135_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \stream_out_32_TDATA_reg_reg[9]\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[10]\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[11]\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[12]\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[13]\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[14]\ : out STD_LOGIC;
    \stream_out_32_TDATA_reg_reg[15]\ : out STD_LOGIC;
    ap_predicate_pred276_state4_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TUSER_int_regslice : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_p2_reg[8]\ : in STD_LOGIC;
    grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_predicate_pred276_state4 : in STD_LOGIC;
    ap_predicate_pred267_state4 : in STD_LOGIC;
    ack_in_t_i_3 : in STD_LOGIC;
    ap_predicate_pred258_state4 : in STD_LOGIC;
    stream_out_32_TREADY_int_regslice : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_cache_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg : in STD_LOGIC;
    ap_predicate_pred249_state4 : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC;
    stream_in_24_TLAST_int_regslice : in STD_LOGIC;
    \trunc_ln92_reg_135_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_84_7 : entity is "pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_84_7";
end base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_84_7;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_84_7 is
  signal ack_in_t_i_7_n_0 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \^ap_predicate_pred249_state4_reg\ : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA : STD_LOGIC_VECTOR ( 15 downto 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ack_in_t_i_7 : label is "soft_lutpair38";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \data_p2[31]_i_9\ : label is "soft_lutpair38";
begin
  \ap_CS_fsm_reg[1]_0\(0) <= \^ap_cs_fsm_reg[1]_0\(0);
  ap_predicate_pred249_state4_reg <= \^ap_predicate_pred249_state4_reg\;
ack_in_t_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFFEEEF"
    )
        port map (
      I0 => ap_predicate_pred276_state4,
      I1 => ap_predicate_pred267_state4,
      I2 => ack_in_t_i_7_n_0,
      I3 => ap_NS_fsm1,
      I4 => ack_in_t_i_3,
      I5 => ap_predicate_pred258_state4,
      O => ap_predicate_pred276_state4_reg
    );
ack_in_t_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5555555"
    )
        port map (
      I0 => ap_predicate_pred249_state4,
      I1 => \^ap_cs_fsm_reg[1]_0\(0),
      I2 => stream_out_32_TREADY_int_regslice,
      I3 => \ap_CS_fsm_reg[1]_1\(0),
      I4 => ap_done_cache_reg(0),
      O => ack_in_t_i_7_n_0
    );
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C4C4C4C4C4C4C4C"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_done_cache_reg(0),
      I3 => \ap_CS_fsm_reg[1]_1\(0),
      I4 => stream_out_32_TREADY_int_regslice,
      I5 => \^ap_cs_fsm_reg[1]_0\(0),
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF007FFF00007FFF"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\(0),
      I1 => stream_out_32_TREADY_int_regslice,
      I2 => \ap_CS_fsm_reg[1]_1\(0),
      I3 => ap_done_cache_reg(0),
      I4 => \ap_CS_fsm_reg_n_0_[0]\,
      I5 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^ap_cs_fsm_reg[1]_0\(0),
      R => ap_rst_n_inv
    );
\data_p2[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(2),
      I1 => \data_p2_reg[8]\,
      I2 => Q(2),
      I3 => \^ap_predicate_pred249_state4_reg\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(10),
      O => \stream_out_32_TDATA_reg_reg[10]\
    );
\data_p2[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => Q(3),
      I1 => \data_p2_reg[8]\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(3),
      I3 => \^ap_predicate_pred249_state4_reg\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(11),
      O => \stream_out_32_TDATA_reg_reg[11]\
    );
\data_p2[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(4),
      I1 => \data_p2_reg[8]\,
      I2 => Q(4),
      I3 => \^ap_predicate_pred249_state4_reg\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(12),
      O => \stream_out_32_TDATA_reg_reg[12]\
    );
\data_p2[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => Q(5),
      I1 => \data_p2_reg[8]\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(5),
      I3 => \^ap_predicate_pred249_state4_reg\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(13),
      O => \stream_out_32_TDATA_reg_reg[13]\
    );
\data_p2[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF1D"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(6),
      I1 => \data_p2_reg[8]\,
      I2 => Q(6),
      I3 => \^ap_predicate_pred249_state4_reg\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(14),
      O => \stream_out_32_TDATA_reg_reg[14]\
    );
\data_p2[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => Q(7),
      I1 => \data_p2_reg[8]\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(7),
      I3 => \^ap_predicate_pred249_state4_reg\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(15),
      O => \stream_out_32_TDATA_reg_reg[15]\
    );
\data_p2[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ap_predicate_pred249_state4,
      I1 => \^ap_cs_fsm_reg[1]_0\(0),
      I2 => stream_out_32_TREADY_int_regslice,
      I3 => \ap_CS_fsm_reg[1]_1\(0),
      I4 => ap_done_cache_reg(0),
      O => \^ap_predicate_pred249_state4_reg\
    );
\data_p2[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => Q(0),
      I1 => \data_p2_reg[8]\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(0),
      I3 => \^ap_predicate_pred249_state4_reg\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(8),
      O => \stream_out_32_TDATA_reg_reg[8]\
    );
\data_p2[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0047FF47"
    )
        port map (
      I0 => Q(1),
      I1 => \data_p2_reg[8]\,
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(1),
      I3 => \^ap_predicate_pred249_state4_reg\,
      I4 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(9),
      O => \stream_out_32_TDATA_reg_reg[9]\
    );
\empty_reg_130_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => stream_in_24_TUSER_int_regslice,
      Q => empty_reg_130_3,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.base_pixel_pack_0_pixel_pack_flow_control_loop_pipe_sequential_init
     port map (
      Q(0) => \^ap_cs_fsm_reg[1]_0\(0),
      ap_clk => ap_clk,
      ap_done_cache => ap_done_cache,
      ap_done_cache_reg_0(0) => ap_done_cache_reg(0),
      ap_done_cache_reg_1 => ap_done_cache_reg_0,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice
    );
\trunc_ln92_reg_135[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      I2 => ap_done_cache_reg(0),
      O => ap_NS_fsm1
    );
\trunc_ln92_reg_135_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(0),
      Q => \trunc_ln92_reg_135_reg[7]_0\(0),
      R => '0'
    );
\trunc_ln92_reg_135_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(10),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(10),
      R => '0'
    );
\trunc_ln92_reg_135_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(11),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(11),
      R => '0'
    );
\trunc_ln92_reg_135_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(12),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(12),
      R => '0'
    );
\trunc_ln92_reg_135_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(13),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(13),
      R => '0'
    );
\trunc_ln92_reg_135_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(14),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(14),
      R => '0'
    );
\trunc_ln92_reg_135_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(15),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(15),
      R => '0'
    );
\trunc_ln92_reg_135_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(1),
      Q => \trunc_ln92_reg_135_reg[7]_0\(1),
      R => '0'
    );
\trunc_ln92_reg_135_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(2),
      Q => \trunc_ln92_reg_135_reg[7]_0\(2),
      R => '0'
    );
\trunc_ln92_reg_135_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(3),
      Q => \trunc_ln92_reg_135_reg[7]_0\(3),
      R => '0'
    );
\trunc_ln92_reg_135_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(4),
      Q => \trunc_ln92_reg_135_reg[7]_0\(4),
      R => '0'
    );
\trunc_ln92_reg_135_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(5),
      Q => \trunc_ln92_reg_135_reg[7]_0\(5),
      R => '0'
    );
\trunc_ln92_reg_135_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(6),
      Q => \trunc_ln92_reg_135_reg[7]_0\(6),
      R => '0'
    );
\trunc_ln92_reg_135_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(7),
      Q => \trunc_ln92_reg_135_reg[7]_0\(7),
      R => '0'
    );
\trunc_ln92_reg_135_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(8),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(8),
      R => '0'
    );
\trunc_ln92_reg_135_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => \trunc_ln92_reg_135_reg[15]_0\(9),
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0_pixel_pack is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_24_TVALID : in STD_LOGIC;
    stream_in_24_TREADY : out STD_LOGIC;
    stream_in_24_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    stream_in_24_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    stream_in_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_32_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_out_32_TVALID : out STD_LOGIC;
    stream_out_32_TREADY : in STD_LOGIC;
    stream_out_32_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_32_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_32_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_32_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of base_pixel_pack_0_pixel_pack : entity is 5;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of base_pixel_pack_0_pixel_pack : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of base_pixel_pack_0_pixel_pack : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of base_pixel_pack_0_pixel_pack : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of base_pixel_pack_0_pixel_pack : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of base_pixel_pack_0_pixel_pack : entity is "pixel_pack";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of base_pixel_pack_0_pixel_pack : entity is "5'b00001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of base_pixel_pack_0_pixel_pack : entity is "5'b00010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of base_pixel_pack_0_pixel_pack : entity is "5'b00100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of base_pixel_pack_0_pixel_pack : entity is "5'b01000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of base_pixel_pack_0_pixel_pack : entity is "5'b10000";
  attribute hls_module : string;
  attribute hls_module of base_pixel_pack_0_pixel_pack : entity is "yes";
end base_pixel_pack_0_pixel_pack;

architecture STRUCTURE of base_pixel_pack_0_pixel_pack is
  signal \<const0>\ : STD_LOGIC;
  signal alpha : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal alpha_0_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ap_CS_fsm[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state2_0 : STD_LOGIC;
  signal ap_CS_fsm_state2_1 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ap_NS_fsm6 : STD_LOGIC;
  signal ap_NS_fsm7 : STD_LOGIC;
  signal ap_NS_fsm8 : STD_LOGIC;
  signal ap_NS_fsm9 : STD_LOGIC;
  signal ap_NS_fsm90_in : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_predicate_pred229_state4 : STD_LOGIC;
  signal ap_predicate_pred249_state4 : STD_LOGIC;
  signal ap_predicate_pred258_state4 : STD_LOGIC;
  signal ap_predicate_pred267_state4 : STD_LOGIC;
  signal ap_predicate_pred276_state4 : STD_LOGIC;
  signal ap_predicate_pred325_state4 : STD_LOGIC;
  signal ap_predicate_pred325_state40 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal empty_reg_130_3 : STD_LOGIC;
  signal \flow_control_loop_pipe_sequential_init_U/ap_done_cache\ : STD_LOGIC;
  signal \flow_control_loop_pipe_sequential_init_U/ap_done_cache_2\ : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_1 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_10 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_11 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_12 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_13 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_14 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_15 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_16 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_17 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_18 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_19 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_2 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_20 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_21 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_22 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_23 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_24 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_25 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_26 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_27 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_28 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_29 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_3 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_4 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_5 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_6 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_7 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_8 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_9 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_32 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_33 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_34 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_35 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_36 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_37 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_38 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_39 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_40 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_43 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_45 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_46 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_47 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_48 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_49 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_50 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_10 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_11 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_13 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_14 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_15 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_16 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_17 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_18 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_19 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_2 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_20 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_21 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_22 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_23 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_24 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_25 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_26 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_27 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_28 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_29 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_3 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_30 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_31 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_32 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_33 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_34 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_4 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_5 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_6 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_7 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_8 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_9 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_12 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_13 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_14 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_15 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_16 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_17 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_18 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_19 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_2 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_3 : STD_LOGIC;
  signal grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal load_p2 : STD_LOGIC;
  signal mode : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mode_0_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mode_read_reg_236 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regslice_both_stream_in_24_V_data_V_U_n_33 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_34 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_35 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_36 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_37 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_38 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_39 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_40 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_42 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_43 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_45 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_46 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_48 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_data_V_U_n_49 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_last_V_U_n_3 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_last_V_U_n_4 : STD_LOGIC;
  signal regslice_both_stream_in_24_V_last_V_U_n_5 : STD_LOGIC;
  signal regslice_both_stream_out_32_V_data_V_U_n_1 : STD_LOGIC;
  signal regslice_both_stream_out_32_V_data_V_U_n_2 : STD_LOGIC;
  signal regslice_both_stream_out_32_V_data_V_U_n_4 : STD_LOGIC;
  signal regslice_both_stream_out_32_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_stream_out_32_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_stream_out_32_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_stream_out_32_V_data_V_U_n_9 : STD_LOGIC;
  signal stream_in_24_TDATA_int_regslice : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_in_24_TLAST_int_regslice : STD_LOGIC;
  signal stream_in_24_TUSER_int_regslice : STD_LOGIC;
  signal stream_in_24_TVALID_int_regslice : STD_LOGIC;
  signal stream_out_32_TDATA_int_regslice : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stream_out_32_TDATA_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stream_out_32_TLAST_int_regslice : STD_LOGIC;
  signal stream_out_32_TLAST_reg : STD_LOGIC;
  signal stream_out_32_TREADY_int_regslice : STD_LOGIC;
  signal stream_out_32_TUSER_int_regslice : STD_LOGIC;
  signal stream_out_32_TUSER_reg : STD_LOGIC;
  signal user_2_reg_306 : STD_LOGIC;
  signal user_3_fu_237_p2 : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_predicate_pred276_state4_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of ap_predicate_pred325_state4_i_1 : label is "soft_lutpair51";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
  stream_out_32_TKEEP(3) <= \<const0>\;
  stream_out_32_TKEEP(2) <= \<const0>\;
  stream_out_32_TKEEP(1) <= \<const0>\;
  stream_out_32_TKEEP(0) <= \<const0>\;
  stream_out_32_TSTRB(3) <= \<const0>\;
  stream_out_32_TSTRB(2) <= \<const0>\;
  stream_out_32_TSTRB(1) <= \<const0>\;
  stream_out_32_TSTRB(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\alpha_0_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => alpha(0),
      Q => alpha_0_data_reg(0),
      R => '0'
    );
\alpha_0_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => alpha(1),
      Q => alpha_0_data_reg(1),
      R => '0'
    );
\alpha_0_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => alpha(2),
      Q => alpha_0_data_reg(2),
      R => '0'
    );
\alpha_0_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => alpha(3),
      Q => alpha_0_data_reg(3),
      R => '0'
    );
\alpha_0_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => alpha(4),
      Q => alpha_0_data_reg(4),
      R => '0'
    );
\alpha_0_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => alpha(5),
      Q => alpha_0_data_reg(5),
      R => '0'
    );
\alpha_0_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => alpha(6),
      Q => alpha_0_data_reg(6),
      R => '0'
    );
\alpha_0_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => alpha(7),
      Q => alpha_0_data_reg(7),
      R => '0'
    );
\alpha_read_reg_231_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => alpha_0_data_reg(0),
      Q => data0(24),
      R => '0'
    );
\alpha_read_reg_231_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => alpha_0_data_reg(1),
      Q => data0(25),
      R => '0'
    );
\alpha_read_reg_231_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => alpha_0_data_reg(2),
      Q => data0(26),
      R => '0'
    );
\alpha_read_reg_231_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => alpha_0_data_reg(3),
      Q => data0(27),
      R => '0'
    );
\alpha_read_reg_231_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => alpha_0_data_reg(4),
      Q => data0(28),
      R => '0'
    );
\alpha_read_reg_231_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => alpha_0_data_reg(5),
      Q => data0(29),
      R => '0'
    );
\alpha_read_reg_231_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => alpha_0_data_reg(6),
      Q => data0(30),
      R => '0'
    );
\alpha_read_reg_231_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => alpha_0_data_reg(7),
      Q => data0(31),
      R => '0'
    );
\ap_CS_fsm[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \ap_CS_fsm[2]_i_2__1_n_0\,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001115"
    )
        port map (
      I0 => \ap_CS_fsm[2]_i_3_n_0\,
      I1 => mode_0_data_reg(2),
      I2 => mode_0_data_reg(1),
      I3 => mode_0_data_reg(0),
      I4 => regslice_both_stream_out_32_V_data_V_U_n_7,
      I5 => regslice_both_stream_out_32_V_data_V_U_n_8,
      O => \ap_CS_fsm[2]_i_2__1_n_0\
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mode_0_data_reg(10),
      I1 => mode_0_data_reg(18),
      I2 => mode_0_data_reg(30),
      I3 => regslice_both_stream_out_32_V_data_V_U_n_9,
      O => \ap_CS_fsm[2]_i_3_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm_reg_n_0_[0]\,
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
ap_predicate_pred229_state4_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => ap_NS_fsm9,
      Q => ap_predicate_pred229_state4,
      R => '0'
    );
ap_predicate_pred249_state4_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => ap_NS_fsm6,
      Q => ap_predicate_pred249_state4,
      R => '0'
    );
ap_predicate_pred258_state4_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_32,
      O => ap_NS_fsm7
    );
ap_predicate_pred258_state4_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => ap_NS_fsm7,
      Q => ap_predicate_pred258_state4,
      R => '0'
    );
ap_predicate_pred267_state4_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => ap_NS_fsm8,
      Q => ap_predicate_pred267_state4,
      R => '0'
    );
ap_predicate_pred276_state4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_49,
      I1 => mode_read_reg_236(1),
      I2 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_48,
      O => ap_NS_fsm90_in
    );
ap_predicate_pred276_state4_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => ap_NS_fsm90_in,
      Q => ap_predicate_pred276_state4,
      R => '0'
    );
ap_predicate_pred325_state4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_48,
      I1 => regslice_both_stream_in_24_V_data_V_U_n_45,
      I2 => ap_NS_fsm9,
      O => ap_predicate_pred325_state40
    );
ap_predicate_pred325_state4_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => ap_predicate_pred325_state40,
      Q => ap_predicate_pred325_state4,
      R => '0'
    );
control_s_axi_U: entity work.base_pixel_pack_0_pixel_pack_control_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      Q(7 downto 0) => alpha(7 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \int_mode_reg[31]_0\(31 downto 0) => mode(31 downto 0),
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(2 downto 0) => s_axi_control_AWADDR(4 downto 2),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96: entity work.base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_101_9
     port map (
      Q(0) => ap_CS_fsm_state2_0,
      S(3) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_14,
      S(2) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_15,
      S(1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_16,
      S(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_17,
      \ap_CS_fsm[3]_i_2\(6 downto 0) => mode_read_reg_236(7 downto 1),
      \ap_CS_fsm_reg[1]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_2,
      \ap_CS_fsm_reg[1]_1\(0) => ap_CS_fsm_state4,
      \ap_CS_fsm_reg[3]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_49,
      ap_clk => ap_clk,
      ap_done_cache_reg(0) => stream_in_24_TVALID_int_regslice,
      ap_done_cache_reg_0 => regslice_both_stream_out_32_V_data_V_U_n_4,
      ap_done_reg1 => ap_done_reg1,
      ap_predicate_pred229_state4 => ap_predicate_pred229_state4,
      ap_predicate_pred229_state4_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_10,
      ap_predicate_pred249_state4 => ap_predicate_pred249_state4,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_11,
      \data_p1_reg[15]\(3) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_18,
      \data_p1_reg[15]\(2) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_19,
      \data_p1_reg[15]\(1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_20,
      \data_p1_reg[15]\(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_21,
      \data_p1_reg[19]\(3) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_22,
      \data_p1_reg[19]\(2) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_23,
      \data_p1_reg[19]\(1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_24,
      \data_p1_reg[19]\(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_25,
      \data_p1_reg[23]\(3) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_26,
      \data_p1_reg[23]\(2) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_27,
      \data_p1_reg[23]\(1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_28,
      \data_p1_reg[23]\(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_29,
      \data_p2_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_3,
      \data_p2_reg[7]\(7 downto 0) => stream_out_32_TDATA_reg(7 downto 0),
      \data_p2_reg[7]_0\(7 downto 0) => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(7 downto 0),
      empty_reg_130_3 => empty_reg_130_3,
      grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      \mode_read_reg_236_reg[1]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_12,
      \state_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_13,
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice,
      stream_in_24_TUSER_int_regslice => stream_in_24_TUSER_int_regslice,
      \stream_out_32_TDATA_reg_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_1,
      \stream_out_32_TDATA_reg_reg[2]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_4,
      \stream_out_32_TDATA_reg_reg[3]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_5,
      \stream_out_32_TDATA_reg_reg[7]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_9,
      stream_out_32_TREADY_int_regslice => stream_out_32_TREADY_int_regslice,
      stream_out_32_TUSER_reg => stream_out_32_TUSER_reg,
      \tmp_6_reg_220_reg[7]_0\(23 downto 0) => stream_in_24_TDATA_int_regslice(23 downto 0),
      \trunc_ln116_reg_225_reg[1]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_3,
      \trunc_ln116_reg_225_reg[4]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_6,
      \trunc_ln116_reg_225_reg[5]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_7,
      \trunc_ln116_reg_225_reg[6]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_8
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_stream_in_24_V_last_V_U_n_5,
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193: entity work.base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_21_1
     port map (
      D(31 downto 0) => stream_out_32_TDATA_int_regslice(31 downto 0),
      Q(23 downto 0) => stream_in_24_TDATA_int_regslice(23 downto 0),
      \ap_CS_fsm_reg[3]_0\ => regslice_both_stream_out_32_V_data_V_U_n_4,
      \ap_CS_fsm_reg[4]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_13,
      \ap_CS_fsm_reg[4]_0\ => regslice_both_stream_in_24_V_last_V_U_n_3,
      \ap_CS_fsm_reg[4]_1\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_13,
      \ap_CS_fsm_reg[4]_2\ => regslice_both_stream_out_32_V_data_V_U_n_6,
      ap_NS_fsm9 => ap_NS_fsm9,
      ap_clk => ap_clk,
      ap_predicate_pred229_state4_reg(7 downto 0) => mode_read_reg_236(7 downto 0),
      ap_predicate_pred229_state4_reg_0 => regslice_both_stream_in_24_V_data_V_U_n_45,
      ap_predicate_pred267_state4 => ap_predicate_pred267_state4,
      ap_predicate_pred276_state4 => ap_predicate_pred276_state4,
      ap_predicate_pred276_state4_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_32,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p2_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_1,
      \data_p2_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_2,
      \data_p2_reg[0]_1\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_14,
      \data_p2_reg[10]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_13,
      \data_p2_reg[10]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_25,
      \data_p2_reg[11]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_14,
      \data_p2_reg[11]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_26,
      \data_p2_reg[12]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_15,
      \data_p2_reg[12]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_27,
      \data_p2_reg[13]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_16,
      \data_p2_reg[13]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_28,
      \data_p2_reg[14]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_17,
      \data_p2_reg[14]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_29,
      \data_p2_reg[15]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_18,
      \data_p2_reg[15]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_30,
      \data_p2_reg[16]\ => regslice_both_stream_out_32_V_data_V_U_n_2,
      \data_p2_reg[16]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_3,
      \data_p2_reg[17]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_4,
      \data_p2_reg[18]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_5,
      \data_p2_reg[19]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_6,
      \data_p2_reg[1]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_3,
      \data_p2_reg[1]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_16,
      \data_p2_reg[20]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_7,
      \data_p2_reg[21]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_8,
      \data_p2_reg[22]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_9,
      \data_p2_reg[23]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_10,
      \data_p2_reg[24]\ => regslice_both_stream_in_24_V_data_V_U_n_33,
      \data_p2_reg[25]\ => regslice_both_stream_in_24_V_data_V_U_n_34,
      \data_p2_reg[26]\ => regslice_both_stream_in_24_V_data_V_U_n_35,
      \data_p2_reg[27]\ => regslice_both_stream_in_24_V_data_V_U_n_36,
      \data_p2_reg[28]\ => regslice_both_stream_in_24_V_data_V_U_n_37,
      \data_p2_reg[29]\ => regslice_both_stream_in_24_V_data_V_U_n_38,
      \data_p2_reg[2]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_4,
      \data_p2_reg[2]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_17,
      \data_p2_reg[30]\ => regslice_both_stream_in_24_V_data_V_U_n_39,
      \data_p2_reg[31]\ => regslice_both_stream_in_24_V_data_V_U_n_40,
      \data_p2_reg[31]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_11,
      \data_p2_reg[31]_1\(1) => ap_CS_fsm_state4,
      \data_p2_reg[31]_1\(0) => ap_CS_fsm_state3,
      \data_p2_reg[3]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_5,
      \data_p2_reg[3]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_18,
      \data_p2_reg[4]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_6,
      \data_p2_reg[4]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_19,
      \data_p2_reg[5]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_7,
      \data_p2_reg[5]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_20,
      \data_p2_reg[6]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_8,
      \data_p2_reg[6]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_21,
      \data_p2_reg[7]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_9,
      \data_p2_reg[7]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_22,
      \data_p2_reg[8]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_2,
      \data_p2_reg[8]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_23,
      \data_p2_reg[9]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_12,
      \data_p2_reg[9]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_24,
      grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_45,
      \in_pixel_user_5_reg_452_reg[0]_0\(0) => stream_in_24_TVALID_int_regslice,
      load_p2 => load_p2,
      \mode_read_reg_236_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_49,
      \mode_read_reg_236_reg[1]\(0) => ap_NS_fsm(4),
      \mode_read_reg_236_reg[1]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_43,
      \mode_read_reg_236_reg[1]_1\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_50,
      \mode_read_reg_236_reg[2]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_48,
      \out_pixel_data_2_reg_495_reg[24]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_33,
      \out_pixel_data_2_reg_495_reg[25]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_34,
      \out_pixel_data_2_reg_495_reg[26]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_35,
      \out_pixel_data_2_reg_495_reg[27]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_36,
      \out_pixel_data_2_reg_495_reg[28]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_37,
      \out_pixel_data_2_reg_495_reg[29]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_38,
      \out_pixel_data_2_reg_495_reg[30]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_39,
      \out_pixel_data_2_reg_495_reg[31]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_40,
      \out_pixel_last_2_reg_505_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_46,
      \out_pixel_user_2_reg_500_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_47,
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice,
      stream_in_24_TUSER_int_regslice => stream_in_24_TUSER_int_regslice,
      stream_out_32_TREADY_int_regslice => stream_out_32_TREADY_int_regslice
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_50,
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168: entity work.base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_47_4
     port map (
      ap_clk => ap_clk,
      ap_done_cache => \flow_control_loop_pipe_sequential_init_U/ap_done_cache\,
      ap_done_cache_reg => regslice_both_stream_in_24_V_last_V_U_n_4,
      ap_rst_n_inv => ap_rst_n_inv
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_stream_in_24_V_data_V_U_n_46,
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144: entity work.base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_62_5
     port map (
      D(0) => ap_NS_fsm(3),
      Q(15 downto 0) => stream_in_24_TDATA_int_regslice(15 downto 0),
      \ap_CS_fsm_reg[3]_0\(1) => ap_CS_fsm_state4,
      \ap_CS_fsm_reg[3]_0\(0) => ap_CS_fsm_state3,
      \ap_CS_fsm_reg[3]_1\ => regslice_both_stream_in_24_V_last_V_U_n_3,
      \ap_CS_fsm_reg[3]_2\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_12,
      \ap_CS_fsm_reg[3]_3\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_43,
      \ap_CS_fsm_reg[3]_4\ => regslice_both_stream_in_24_V_data_V_U_n_45,
      \ap_CS_fsm_reg[3]_5\ => regslice_both_stream_in_24_V_data_V_U_n_43,
      ap_clk => ap_clk,
      ap_predicate_pred249_state4_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_11,
      ap_predicate_pred258_state4 => ap_predicate_pred258_state4,
      ap_predicate_pred258_state4_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_34,
      ap_predicate_pred267_state4 => ap_predicate_pred267_state4,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_3,
      \data_p1_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_14,
      \data_p1_reg[10]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_25,
      \data_p1_reg[11]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_26,
      \data_p1_reg[12]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_27,
      \data_p1_reg[13]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_28,
      \data_p1_reg[14]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_29,
      \data_p1_reg[15]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_30,
      \data_p1_reg[1]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_4,
      \data_p1_reg[1]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_16,
      \data_p1_reg[2]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_5,
      \data_p1_reg[2]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_17,
      \data_p1_reg[3]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_6,
      \data_p1_reg[3]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_18,
      \data_p1_reg[4]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_7,
      \data_p1_reg[4]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_19,
      \data_p1_reg[5]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_8,
      \data_p1_reg[5]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_20,
      \data_p1_reg[6]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_9,
      \data_p1_reg[6]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_21,
      \data_p1_reg[7]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_10,
      \data_p1_reg[7]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_22,
      \data_p1_reg[8]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_23,
      \data_p1_reg[9]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_24,
      \data_p2_reg[0]\ => regslice_both_stream_out_32_V_data_V_U_n_2,
      \data_p2_reg[16]\ => regslice_both_stream_in_24_V_data_V_U_n_42,
      \data_p2_reg[23]\(7 downto 0) => stream_out_32_TDATA_reg(23 downto 16),
      \data_p2_reg[31]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_3,
      \data_p2_reg[31]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_2,
      \data_p2_reg[31]_1\ => regslice_both_stream_in_24_V_data_V_U_n_49,
      \delayed_last_reg_103_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_33,
      grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_48,
      grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_0(1 downto 0) => mode_read_reg_236(1 downto 0),
      grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg_1 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_49,
      \in_pixel_last_2_reg_323_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_15,
      \in_pixel_user_4_reg_280_reg[0]_0\(0) => stream_in_24_TVALID_int_regslice,
      \last_4_reg_114_reg[0]_0\ => regslice_both_stream_out_32_V_data_V_U_n_4,
      \mode_read_reg_236_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_13,
      \mode_read_reg_236_reg[1]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_32,
      \state_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_2,
      \state_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_31,
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice,
      stream_in_24_TUSER_int_regslice => stream_in_24_TUSER_int_regslice,
      stream_out_32_TREADY_int_regslice => stream_out_32_TREADY_int_regslice,
      stream_out_32_TUSER_int_regslice => stream_out_32_TUSER_int_regslice,
      \stream_out_32_TUSER_reg_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_11,
      \stream_out_32_TUSER_reg_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_32,
      \stream_out_32_TUSER_reg_reg[0]_1\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_47,
      user_2_reg_306 => user_2_reg_306,
      user_3_fu_237_p2 => user_3_fu_237_p2
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_33,
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120: entity work.base_pixel_pack_0_pixel_pack_pixel_pack_Pipeline_VITIS_LOOP_84_7
     port map (
      Q(7 downto 0) => stream_out_32_TDATA_reg(15 downto 8),
      ack_in_t_i_3 => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_10,
      \ap_CS_fsm_reg[1]_0\(0) => ap_CS_fsm_state2_1,
      \ap_CS_fsm_reg[1]_1\(0) => ap_CS_fsm_state4,
      ap_clk => ap_clk,
      ap_done_cache => \flow_control_loop_pipe_sequential_init_U/ap_done_cache_2\,
      ap_done_cache_reg(0) => stream_in_24_TVALID_int_regslice,
      ap_done_cache_reg_0 => regslice_both_stream_out_32_V_data_V_U_n_4,
      ap_predicate_pred249_state4 => ap_predicate_pred249_state4,
      ap_predicate_pred249_state4_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_3,
      ap_predicate_pred258_state4 => ap_predicate_pred258_state4,
      ap_predicate_pred267_state4 => ap_predicate_pred267_state4,
      ap_predicate_pred276_state4 => ap_predicate_pred276_state4,
      ap_predicate_pred276_state4_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_19,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p2_reg[8]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_2,
      empty_reg_130_3 => empty_reg_130_3,
      grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(7 downto 0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(15 downto 8),
      grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice,
      stream_in_24_TUSER_int_regslice => stream_in_24_TUSER_int_regslice,
      \stream_out_32_TDATA_reg_reg[10]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_13,
      \stream_out_32_TDATA_reg_reg[11]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_14,
      \stream_out_32_TDATA_reg_reg[12]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_15,
      \stream_out_32_TDATA_reg_reg[13]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_16,
      \stream_out_32_TDATA_reg_reg[14]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_17,
      \stream_out_32_TDATA_reg_reg[15]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_18,
      \stream_out_32_TDATA_reg_reg[8]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_2,
      \stream_out_32_TDATA_reg_reg[9]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_12,
      stream_out_32_TREADY_int_regslice => stream_out_32_TREADY_int_regslice,
      \trunc_ln92_reg_135_reg[15]_0\(15 downto 0) => stream_in_24_TDATA_int_regslice(15 downto 0),
      \trunc_ln92_reg_135_reg[7]_0\(7 downto 0) => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_stream_out_32_TDATA(7 downto 0)
    );
grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_stream_in_24_V_data_V_U_n_48,
      Q => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      R => ap_rst_n_inv
    );
\mode_0_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(0),
      Q => mode_0_data_reg(0),
      R => '0'
    );
\mode_0_data_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(10),
      Q => mode_0_data_reg(10),
      R => '0'
    );
\mode_0_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(11),
      Q => mode_0_data_reg(11),
      R => '0'
    );
\mode_0_data_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(12),
      Q => mode_0_data_reg(12),
      R => '0'
    );
\mode_0_data_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(13),
      Q => mode_0_data_reg(13),
      R => '0'
    );
\mode_0_data_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(14),
      Q => mode_0_data_reg(14),
      R => '0'
    );
\mode_0_data_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(15),
      Q => mode_0_data_reg(15),
      R => '0'
    );
\mode_0_data_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(16),
      Q => mode_0_data_reg(16),
      R => '0'
    );
\mode_0_data_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(17),
      Q => mode_0_data_reg(17),
      R => '0'
    );
\mode_0_data_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(18),
      Q => mode_0_data_reg(18),
      R => '0'
    );
\mode_0_data_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(19),
      Q => mode_0_data_reg(19),
      R => '0'
    );
\mode_0_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(1),
      Q => mode_0_data_reg(1),
      R => '0'
    );
\mode_0_data_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(20),
      Q => mode_0_data_reg(20),
      R => '0'
    );
\mode_0_data_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(21),
      Q => mode_0_data_reg(21),
      R => '0'
    );
\mode_0_data_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(22),
      Q => mode_0_data_reg(22),
      R => '0'
    );
\mode_0_data_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(23),
      Q => mode_0_data_reg(23),
      R => '0'
    );
\mode_0_data_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(24),
      Q => mode_0_data_reg(24),
      R => '0'
    );
\mode_0_data_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(25),
      Q => mode_0_data_reg(25),
      R => '0'
    );
\mode_0_data_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(26),
      Q => mode_0_data_reg(26),
      R => '0'
    );
\mode_0_data_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(27),
      Q => mode_0_data_reg(27),
      R => '0'
    );
\mode_0_data_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(28),
      Q => mode_0_data_reg(28),
      R => '0'
    );
\mode_0_data_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(29),
      Q => mode_0_data_reg(29),
      R => '0'
    );
\mode_0_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(2),
      Q => mode_0_data_reg(2),
      R => '0'
    );
\mode_0_data_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(30),
      Q => mode_0_data_reg(30),
      R => '0'
    );
\mode_0_data_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(31),
      Q => mode_0_data_reg(31),
      R => '0'
    );
\mode_0_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(3),
      Q => mode_0_data_reg(3),
      R => '0'
    );
\mode_0_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(4),
      Q => mode_0_data_reg(4),
      R => '0'
    );
\mode_0_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(5),
      Q => mode_0_data_reg(5),
      R => '0'
    );
\mode_0_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(6),
      Q => mode_0_data_reg(6),
      R => '0'
    );
\mode_0_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(7),
      Q => mode_0_data_reg(7),
      R => '0'
    );
\mode_0_data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(8),
      Q => mode_0_data_reg(8),
      R => '0'
    );
\mode_0_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => mode(9),
      Q => mode_0_data_reg(9),
      R => '0'
    );
\mode_read_reg_236_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(0),
      Q => mode_read_reg_236(0),
      R => '0'
    );
\mode_read_reg_236_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(10),
      Q => mode_read_reg_236(10),
      R => '0'
    );
\mode_read_reg_236_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(11),
      Q => mode_read_reg_236(11),
      R => '0'
    );
\mode_read_reg_236_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(12),
      Q => mode_read_reg_236(12),
      R => '0'
    );
\mode_read_reg_236_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(13),
      Q => mode_read_reg_236(13),
      R => '0'
    );
\mode_read_reg_236_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(14),
      Q => mode_read_reg_236(14),
      R => '0'
    );
\mode_read_reg_236_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(15),
      Q => mode_read_reg_236(15),
      R => '0'
    );
\mode_read_reg_236_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(16),
      Q => mode_read_reg_236(16),
      R => '0'
    );
\mode_read_reg_236_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(17),
      Q => mode_read_reg_236(17),
      R => '0'
    );
\mode_read_reg_236_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(18),
      Q => mode_read_reg_236(18),
      R => '0'
    );
\mode_read_reg_236_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(19),
      Q => mode_read_reg_236(19),
      R => '0'
    );
\mode_read_reg_236_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(1),
      Q => mode_read_reg_236(1),
      R => '0'
    );
\mode_read_reg_236_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(20),
      Q => mode_read_reg_236(20),
      R => '0'
    );
\mode_read_reg_236_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(21),
      Q => mode_read_reg_236(21),
      R => '0'
    );
\mode_read_reg_236_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(22),
      Q => mode_read_reg_236(22),
      R => '0'
    );
\mode_read_reg_236_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(23),
      Q => mode_read_reg_236(23),
      R => '0'
    );
\mode_read_reg_236_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(24),
      Q => mode_read_reg_236(24),
      R => '0'
    );
\mode_read_reg_236_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(25),
      Q => mode_read_reg_236(25),
      R => '0'
    );
\mode_read_reg_236_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(26),
      Q => mode_read_reg_236(26),
      R => '0'
    );
\mode_read_reg_236_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(27),
      Q => mode_read_reg_236(27),
      R => '0'
    );
\mode_read_reg_236_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(28),
      Q => mode_read_reg_236(28),
      R => '0'
    );
\mode_read_reg_236_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(29),
      Q => mode_read_reg_236(29),
      R => '0'
    );
\mode_read_reg_236_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(2),
      Q => mode_read_reg_236(2),
      R => '0'
    );
\mode_read_reg_236_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(30),
      Q => mode_read_reg_236(30),
      R => '0'
    );
\mode_read_reg_236_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(31),
      Q => mode_read_reg_236(31),
      R => '0'
    );
\mode_read_reg_236_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(3),
      Q => mode_read_reg_236(3),
      R => '0'
    );
\mode_read_reg_236_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(4),
      Q => mode_read_reg_236(4),
      R => '0'
    );
\mode_read_reg_236_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(5),
      Q => mode_read_reg_236(5),
      R => '0'
    );
\mode_read_reg_236_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(6),
      Q => mode_read_reg_236(6),
      R => '0'
    );
\mode_read_reg_236_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(7),
      Q => mode_read_reg_236(7),
      R => '0'
    );
\mode_read_reg_236_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(8),
      Q => mode_read_reg_236(8),
      R => '0'
    );
\mode_read_reg_236_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => mode_0_data_reg(9),
      Q => mode_read_reg_236(9),
      R => '0'
    );
regslice_both_stream_in_24_V_data_V_U: entity work.base_pixel_pack_0_pixel_pack_regslice_both
     port map (
      Q(23 downto 0) => stream_in_24_TDATA_int_regslice(23 downto 0),
      S(3) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_14,
      S(2) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_15,
      S(1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_16,
      S(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_17,
      ack_in_t_reg_0 => stream_in_24_TREADY,
      ack_in_t_reg_1 => regslice_both_stream_out_32_V_data_V_U_n_1,
      \alpha_read_reg_231_reg[0]\ => regslice_both_stream_in_24_V_data_V_U_n_33,
      \alpha_read_reg_231_reg[1]\ => regslice_both_stream_in_24_V_data_V_U_n_34,
      \alpha_read_reg_231_reg[2]\ => regslice_both_stream_in_24_V_data_V_U_n_35,
      \alpha_read_reg_231_reg[3]\ => regslice_both_stream_in_24_V_data_V_U_n_36,
      \alpha_read_reg_231_reg[4]\ => regslice_both_stream_in_24_V_data_V_U_n_37,
      \alpha_read_reg_231_reg[5]\ => regslice_both_stream_in_24_V_data_V_U_n_38,
      \alpha_read_reg_231_reg[6]\ => regslice_both_stream_in_24_V_data_V_U_n_39,
      \alpha_read_reg_231_reg[7]\ => regslice_both_stream_in_24_V_data_V_U_n_40,
      \ap_CS_fsm[4]_i_5\(1) => ap_CS_fsm_state4,
      \ap_CS_fsm[4]_i_5\(0) => ap_CS_fsm_state3,
      ap_NS_fsm6 => ap_NS_fsm6,
      ap_NS_fsm8 => ap_NS_fsm8,
      ap_clk => ap_clk,
      ap_done_cache => \flow_control_loop_pipe_sequential_init_U/ap_done_cache\,
      ap_predicate_pred249_state4 => ap_predicate_pred249_state4,
      ap_predicate_pred249_state4_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_48,
      ap_predicate_pred258_state4 => ap_predicate_pred258_state4,
      ap_predicate_pred258_state4_reg => regslice_both_stream_in_24_V_data_V_U_n_49,
      ap_predicate_pred325_state4_i_3_0(25 downto 2) => mode_read_reg_236(31 downto 8),
      ap_predicate_pred325_state4_i_3_0(1 downto 0) => mode_read_reg_236(1 downto 0),
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1[24]_i_4_0\(3) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_22,
      \data_p1[24]_i_4_0\(2) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_23,
      \data_p1[24]_i_4_0\(1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_24,
      \data_p1[24]_i_4_0\(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_25,
      \data_p1[27]_i_4_0\(3) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_26,
      \data_p1[27]_i_4_0\(2) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_27,
      \data_p1[27]_i_4_0\(1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_28,
      \data_p1[27]_i_4_0\(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_29,
      \data_p1[31]_i_5_0\(7 downto 0) => stream_out_32_TDATA_reg(31 downto 24),
      \data_p1[31]_i_5_1\ => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_3,
      \data_p1_reg[15]_0\(7 downto 0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_stream_out_32_TDATA(15 downto 8),
      \data_p1_reg[24]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_2,
      \data_p1_reg[24]_0\ => regslice_both_stream_out_32_V_data_V_U_n_2,
      \data_p1_reg[24]_1\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_15,
      \data_p1_reg[31]\(7 downto 0) => data0(31 downto 24),
      \data_p2[11]_i_3\(3) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_18,
      \data_p2[11]_i_3\(2) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_19,
      \data_p2[11]_i_3\(1) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_20,
      \data_p2[11]_i_3\(0) => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_21,
      \data_p2[23]_i_3\ => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_n_2,
      grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg_reg => regslice_both_stream_out_32_V_data_V_U_n_4,
      grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg(0) => ap_CS_fsm_state2_1,
      \mode_read_reg_236_reg[25]\ => regslice_both_stream_in_24_V_data_V_U_n_45,
      \state_reg[0]_0\(0) => stream_in_24_TVALID_int_regslice,
      \state_reg[0]_1\ => regslice_both_stream_in_24_V_data_V_U_n_42,
      \state_reg[0]_2\ => regslice_both_stream_in_24_V_data_V_U_n_43,
      \state_reg[0]_3\ => regslice_both_stream_in_24_V_data_V_U_n_46,
      \state_reg[0]_4\ => regslice_both_stream_in_24_V_data_V_U_n_48,
      stream_in_24_TDATA(23 downto 0) => stream_in_24_TDATA(23 downto 0),
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice,
      stream_in_24_TVALID => stream_in_24_TVALID,
      stream_out_32_TREADY_int_regslice => stream_out_32_TREADY_int_regslice
    );
regslice_both_stream_in_24_V_last_V_U: entity work.\base_pixel_pack_0_pixel_pack_regslice_both__parameterized1\
     port map (
      Q(0) => ap_CS_fsm_state2_0,
      ack_in_t_reg_0 => regslice_both_stream_out_32_V_data_V_U_n_1,
      \ap_CS_fsm[4]_i_4_0\(0) => ap_CS_fsm_state2_1,
      \ap_CS_fsm_reg[2]\ => regslice_both_stream_in_24_V_last_V_U_n_5,
      ap_NS_fsm6 => ap_NS_fsm6,
      ap_NS_fsm9 => ap_NS_fsm9,
      ap_clk => ap_clk,
      ap_done_cache => \flow_control_loop_pipe_sequential_init_U/ap_done_cache_2\,
      ap_done_cache_0 => \flow_control_loop_pipe_sequential_init_U/ap_done_cache\,
      ap_done_cache_reg(1) => ap_CS_fsm_state4,
      ap_done_cache_reg(0) => ap_CS_fsm_state3,
      ap_done_cache_reg_0(0) => stream_in_24_TVALID_int_regslice,
      ap_done_reg1 => ap_done_reg1,
      ap_predicate_pred325_state4 => ap_predicate_pred325_state4,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[0]_0\ => regslice_both_stream_in_24_V_last_V_U_n_4,
      grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_101_9_fu_96_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg,
      grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_ap_start_reg_reg => regslice_both_stream_in_24_V_last_V_U_n_3,
      stream_in_24_TLAST(0) => stream_in_24_TLAST(0),
      stream_in_24_TLAST_int_regslice => stream_in_24_TLAST_int_regslice,
      stream_in_24_TVALID => stream_in_24_TVALID,
      stream_out_32_TLAST_int_regslice => stream_out_32_TLAST_int_regslice,
      stream_out_32_TLAST_reg => stream_out_32_TLAST_reg,
      \stream_out_32_TLAST_reg_reg[0]\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_2,
      \stream_out_32_TLAST_reg_reg[0]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_31,
      \stream_out_32_TLAST_reg_reg[0]_1\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_32,
      \stream_out_32_TLAST_reg_reg[0]_2\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_46,
      \stream_out_32_TLAST_reg_reg[0]_3\ => regslice_both_stream_in_24_V_data_V_U_n_42,
      stream_out_32_TREADY_int_regslice => stream_out_32_TREADY_int_regslice
    );
regslice_both_stream_in_24_V_user_V_U: entity work.\base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_0\
     port map (
      ack_in_t_reg_0 => regslice_both_stream_out_32_V_data_V_U_n_1,
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      stream_in_24_TUSER(0) => stream_in_24_TUSER(0),
      stream_in_24_TUSER_int_regslice => stream_in_24_TUSER_int_regslice,
      stream_in_24_TVALID => stream_in_24_TVALID,
      user_2_reg_306 => user_2_reg_306,
      user_3_fu_237_p2 => user_3_fu_237_p2
    );
regslice_both_stream_out_32_V_data_V_U: entity work.\base_pixel_pack_0_pixel_pack_regslice_both__parameterized2\
     port map (
      D(31 downto 0) => stream_out_32_TDATA_int_regslice(31 downto 0),
      Q(2) => ap_CS_fsm_state5,
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state2,
      ack_in_t_reg_0 => grp_pixel_pack_Pipeline_VITIS_LOOP_84_7_fu_120_n_19,
      ack_in_t_reg_1 => grp_pixel_pack_Pipeline_VITIS_LOOP_62_5_fu_144_n_34,
      ack_in_t_reg_2 => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_45,
      \ap_CS_fsm[4]_i_17_0\(31 downto 0) => mode_0_data_reg(31 downto 0),
      \ap_CS_fsm_reg[1]\ => regslice_both_stream_out_32_V_data_V_U_n_6,
      \ap_CS_fsm_reg[3]\ => regslice_both_stream_out_32_V_data_V_U_n_1,
      \ap_CS_fsm_reg[3]_0\ => regslice_both_stream_out_32_V_data_V_U_n_4,
      \ap_CS_fsm_reg[4]\(0) => ap_NS_fsm(0),
      ap_clk => ap_clk,
      ap_predicate_pred267_state4 => ap_predicate_pred267_state4,
      ap_predicate_pred267_state4_reg => regslice_both_stream_out_32_V_data_V_U_n_2,
      ap_predicate_pred276_state4 => ap_predicate_pred276_state4,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[24]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_33,
      \data_p1_reg[24]_1\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_32,
      \data_p1_reg[24]_2\ => regslice_both_stream_in_24_V_data_V_U_n_33,
      \data_p1_reg[25]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_34,
      \data_p1_reg[25]_1\ => regslice_both_stream_in_24_V_data_V_U_n_34,
      \data_p1_reg[26]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_35,
      \data_p1_reg[26]_1\ => regslice_both_stream_in_24_V_data_V_U_n_35,
      \data_p1_reg[27]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_36,
      \data_p1_reg[27]_1\ => regslice_both_stream_in_24_V_data_V_U_n_36,
      \data_p1_reg[28]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_37,
      \data_p1_reg[28]_1\ => regslice_both_stream_in_24_V_data_V_U_n_37,
      \data_p1_reg[29]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_38,
      \data_p1_reg[29]_1\ => regslice_both_stream_in_24_V_data_V_U_n_38,
      \data_p1_reg[30]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_39,
      \data_p1_reg[30]_1\ => regslice_both_stream_in_24_V_data_V_U_n_39,
      \data_p1_reg[31]_0\ => grp_pixel_pack_Pipeline_VITIS_LOOP_21_1_fu_193_n_40,
      \data_p1_reg[31]_1\ => regslice_both_stream_in_24_V_data_V_U_n_40,
      \data_p2_reg[16]_0\(0) => stream_in_24_TVALID_int_regslice,
      grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg => grp_pixel_pack_Pipeline_VITIS_LOOP_47_4_fu_168_ap_start_reg,
      load_p2 => load_p2,
      \mode_0_data_reg_reg[22]\ => regslice_both_stream_out_32_V_data_V_U_n_9,
      \mode_0_data_reg_reg[4]\ => regslice_both_stream_out_32_V_data_V_U_n_7,
      \mode_0_data_reg_reg[9]\ => regslice_both_stream_out_32_V_data_V_U_n_8,
      stream_out_32_TDATA(31 downto 0) => stream_out_32_TDATA(31 downto 0),
      stream_out_32_TREADY => stream_out_32_TREADY,
      stream_out_32_TREADY_int_regslice => stream_out_32_TREADY_int_regslice,
      stream_out_32_TVALID => stream_out_32_TVALID
    );
regslice_both_stream_out_32_V_last_V_U: entity work.\base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_1\
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      load_p2 => load_p2,
      stream_out_32_TLAST(0) => stream_out_32_TLAST(0),
      stream_out_32_TLAST_int_regslice => stream_out_32_TLAST_int_regslice,
      stream_out_32_TREADY => stream_out_32_TREADY
    );
regslice_both_stream_out_32_V_user_V_U: entity work.\base_pixel_pack_0_pixel_pack_regslice_both__parameterized1_2\
     port map (
      ap_clk => ap_clk,
      ap_rst_n_inv => ap_rst_n_inv,
      load_p2 => load_p2,
      stream_out_32_TREADY => stream_out_32_TREADY,
      stream_out_32_TUSER(0) => stream_out_32_TUSER(0),
      stream_out_32_TUSER_int_regslice => stream_out_32_TUSER_int_regslice
    );
\stream_out_32_TDATA_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(0),
      Q => stream_out_32_TDATA_reg(0),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(10),
      Q => stream_out_32_TDATA_reg(10),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(11),
      Q => stream_out_32_TDATA_reg(11),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(12),
      Q => stream_out_32_TDATA_reg(12),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(13),
      Q => stream_out_32_TDATA_reg(13),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(14),
      Q => stream_out_32_TDATA_reg(14),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(15),
      Q => stream_out_32_TDATA_reg(15),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(16),
      Q => stream_out_32_TDATA_reg(16),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(17),
      Q => stream_out_32_TDATA_reg(17),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(18),
      Q => stream_out_32_TDATA_reg(18),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(19),
      Q => stream_out_32_TDATA_reg(19),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(1),
      Q => stream_out_32_TDATA_reg(1),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(20),
      Q => stream_out_32_TDATA_reg(20),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(21),
      Q => stream_out_32_TDATA_reg(21),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(22),
      Q => stream_out_32_TDATA_reg(22),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(23),
      Q => stream_out_32_TDATA_reg(23),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(24),
      Q => stream_out_32_TDATA_reg(24),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(25),
      Q => stream_out_32_TDATA_reg(25),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(26),
      Q => stream_out_32_TDATA_reg(26),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(27),
      Q => stream_out_32_TDATA_reg(27),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(28),
      Q => stream_out_32_TDATA_reg(28),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(29),
      Q => stream_out_32_TDATA_reg(29),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(2),
      Q => stream_out_32_TDATA_reg(2),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(30),
      Q => stream_out_32_TDATA_reg(30),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(31),
      Q => stream_out_32_TDATA_reg(31),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(3),
      Q => stream_out_32_TDATA_reg(3),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(4),
      Q => stream_out_32_TDATA_reg(4),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(5),
      Q => stream_out_32_TDATA_reg(5),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(6),
      Q => stream_out_32_TDATA_reg(6),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(7),
      Q => stream_out_32_TDATA_reg(7),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(8),
      Q => stream_out_32_TDATA_reg(8),
      R => '0'
    );
\stream_out_32_TDATA_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TDATA_int_regslice(9),
      Q => stream_out_32_TDATA_reg(9),
      R => '0'
    );
\stream_out_32_TLAST_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TLAST_int_regslice,
      Q => stream_out_32_TLAST_reg,
      R => '0'
    );
\stream_out_32_TUSER_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_32_TUSER_int_regslice,
      Q => stream_out_32_TUSER_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity base_pixel_pack_0 is
  port (
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_24_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    stream_in_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TREADY : out STD_LOGIC;
    stream_in_24_TSTRB : in STD_LOGIC_VECTOR ( 2 downto 0 );
    stream_in_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_24_TVALID : in STD_LOGIC;
    stream_out_32_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_out_32_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_32_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_32_TREADY : in STD_LOGIC;
    stream_out_32_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_32_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_32_TVALID : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of base_pixel_pack_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of base_pixel_pack_0 : entity is "base_pixel_pack_0,pixel_pack,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of base_pixel_pack_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of base_pixel_pack_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of base_pixel_pack_0 : entity is "pixel_pack,Vivado 2025.1";
  attribute hls_module : string;
  attribute hls_module of base_pixel_pack_0 : entity is "yes";
end base_pixel_pack_0;

architecture STRUCTURE of base_pixel_pack_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_stream_out_32_TKEEP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_stream_out_32_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "5'b00001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "5'b00010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "5'b00100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "5'b01000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "5'b10000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:stream_in_24:stream_out_32, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 142857132, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_INFO of stream_in_24_TREADY : signal is "xilinx.com:interface:axis:1.0 stream_in_24 TREADY";
  attribute X_INTERFACE_INFO of stream_in_24_TVALID : signal is "xilinx.com:interface:axis:1.0 stream_in_24 TVALID";
  attribute X_INTERFACE_INFO of stream_out_32_TREADY : signal is "xilinx.com:interface:axis:1.0 stream_out_32 TREADY";
  attribute X_INTERFACE_INFO of stream_out_32_TVALID : signal is "xilinx.com:interface:axis:1.0 stream_out_32 TVALID";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_MODE of s_axi_control_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_control_ARADDR : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 142857132, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
  attribute X_INTERFACE_INFO of stream_in_24_TDATA : signal is "xilinx.com:interface:axis:1.0 stream_in_24 TDATA";
  attribute X_INTERFACE_MODE of stream_in_24_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of stream_in_24_TDATA : signal is "XIL_INTERFACENAME stream_in_24, TUSER_WIDTH 1, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.0, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of stream_in_24_TKEEP : signal is "xilinx.com:interface:axis:1.0 stream_in_24 TKEEP";
  attribute X_INTERFACE_INFO of stream_in_24_TLAST : signal is "xilinx.com:interface:axis:1.0 stream_in_24 TLAST";
  attribute X_INTERFACE_INFO of stream_in_24_TSTRB : signal is "xilinx.com:interface:axis:1.0 stream_in_24 TSTRB";
  attribute X_INTERFACE_INFO of stream_in_24_TUSER : signal is "xilinx.com:interface:axis:1.0 stream_in_24 TUSER";
  attribute X_INTERFACE_INFO of stream_out_32_TDATA : signal is "xilinx.com:interface:axis:1.0 stream_out_32 TDATA";
  attribute X_INTERFACE_MODE of stream_out_32_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of stream_out_32_TDATA : signal is "XIL_INTERFACENAME stream_out_32, TUSER_WIDTH 1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.0, CLK_DOMAIN base_ps7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of stream_out_32_TKEEP : signal is "xilinx.com:interface:axis:1.0 stream_out_32 TKEEP";
  attribute X_INTERFACE_INFO of stream_out_32_TLAST : signal is "xilinx.com:interface:axis:1.0 stream_out_32 TLAST";
  attribute X_INTERFACE_INFO of stream_out_32_TSTRB : signal is "xilinx.com:interface:axis:1.0 stream_out_32 TSTRB";
  attribute X_INTERFACE_INFO of stream_out_32_TUSER : signal is "xilinx.com:interface:axis:1.0 stream_out_32 TUSER";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
  stream_out_32_TKEEP(3) <= \<const0>\;
  stream_out_32_TKEEP(2) <= \<const0>\;
  stream_out_32_TKEEP(1) <= \<const0>\;
  stream_out_32_TKEEP(0) <= \<const0>\;
  stream_out_32_TSTRB(3) <= \<const0>\;
  stream_out_32_TSTRB(2) <= \<const0>\;
  stream_out_32_TSTRB(1) <= \<const0>\;
  stream_out_32_TSTRB(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.base_pixel_pack_0_pixel_pack
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(4 downto 2) => s_axi_control_AWADDR(4 downto 2),
      s_axi_control_AWADDR(1 downto 0) => B"00",
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      stream_in_24_TDATA(23 downto 0) => stream_in_24_TDATA(23 downto 0),
      stream_in_24_TKEEP(2 downto 0) => B"000",
      stream_in_24_TLAST(0) => stream_in_24_TLAST(0),
      stream_in_24_TREADY => stream_in_24_TREADY,
      stream_in_24_TSTRB(2 downto 0) => B"000",
      stream_in_24_TUSER(0) => stream_in_24_TUSER(0),
      stream_in_24_TVALID => stream_in_24_TVALID,
      stream_out_32_TDATA(31 downto 0) => stream_out_32_TDATA(31 downto 0),
      stream_out_32_TKEEP(3 downto 0) => NLW_inst_stream_out_32_TKEEP_UNCONNECTED(3 downto 0),
      stream_out_32_TLAST(0) => stream_out_32_TLAST(0),
      stream_out_32_TREADY => stream_out_32_TREADY,
      stream_out_32_TSTRB(3 downto 0) => NLW_inst_stream_out_32_TSTRB_UNCONNECTED(3 downto 0),
      stream_out_32_TUSER(0) => stream_out_32_TUSER(0),
      stream_out_32_TVALID => stream_out_32_TVALID
    );
end STRUCTURE;
