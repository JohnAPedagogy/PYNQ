-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Sep 21 16:49:25 2025
-- Host        : GI240817-JohnAlamina running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/work/dev/PYNQ/boards/Pynq-Z2/base/base/base.gen/sources_1/bd/base/ip/base_pmoda_rpi_o_sel_0/base_pmoda_rpi_o_sel_0_stub.vhdl
-- Design      : base_pmoda_rpi_o_sel_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity base_pmoda_rpi_o_sel_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of base_pmoda_rpi_o_sel_0 : entity is "base_pmoda_rpi_o_sel_0,mux_vector,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of base_pmoda_rpi_o_sel_0 : entity is "base_pmoda_rpi_o_sel_0,mux_vector,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=mux_vector,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_SIZE=8,DELAY=0,C_NUM_CHANNELS=2}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of base_pmoda_rpi_o_sel_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of base_pmoda_rpi_o_sel_0 : entity is "package_project";
end base_pmoda_rpi_o_sel_0;

architecture stub of base_pmoda_rpi_o_sel_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "a[7:0],b[7:0],sel[0:0],y[7:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "mux_vector,Vivado 2025.1";
begin
end;
