-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Sep 21 16:50:38 2025
-- Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_collector_pmoda_rpi_0_stub.vhdl
-- Design      : base_collector_pmoda_rpi_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    wire_i_i : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wire_i_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wire_i_t : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_o_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_o_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_o_t : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "base_collector_pmoda_rpi_0,wire_distributor,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "base_collector_pmoda_rpi_0,wire_distributor,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=wire_distributor,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,TYPE=1,WIDTH=8}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "wire_i_i[7:0],wire_i_o[7:0],wire_i_t[7:0],gpio_o_i[7:0],gpio_o_o[7:0],gpio_o_t[7:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of gpio_o_i : signal is "xilinx.com:interface:gpio:1.0 gpio_output TRI_I";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of gpio_o_i : signal is "master";
  attribute X_INTERFACE_INFO of gpio_o_o : signal is "xilinx.com:interface:gpio:1.0 gpio_output TRI_O";
  attribute X_INTERFACE_INFO of gpio_o_t : signal is "xilinx.com:interface:gpio:1.0 gpio_output TRI_T";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "wire_distributor,Vivado 2025.1";
begin
end;
