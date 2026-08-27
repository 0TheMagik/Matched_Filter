-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Aug 27 13:34:31 2026
-- Host        : OCPCBench running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/VsCode_Files/Matched_Filter/Design/design_2/ip/design_2_mem_interface_0_0/design_2_mem_interface_0_0_sim_netlist.vhdl
-- Design      : design_2_mem_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_mem_interface_0_0_mem_interface is
  port (
    addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_mem_interface_0_0_mem_interface : entity is "mem_interface";
end design_2_mem_interface_0_0_mem_interface;

architecture STRUCTURE of design_2_mem_interface_0_0_mem_interface is
  signal \^addr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \read_addr[10]_i_3_n_0\ : STD_LOGIC;
  signal \read_addr[10]_i_4_n_0\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_addr[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_addr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_addr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_addr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_addr[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_addr[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_addr[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_addr[9]_i_1\ : label is "soft_lutpair0";
begin
  addr(10 downto 0) <= \^addr\(10 downto 0);
\read_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr\(0),
      O => plusOp(0)
    );
\read_addr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^addr\(4),
      I1 => \^addr\(5),
      I2 => \read_addr[10]_i_3_n_0\,
      O => sel
    );
\read_addr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^addr\(8),
      I1 => \^addr\(6),
      I2 => \read_addr[10]_i_4_n_0\,
      I3 => \^addr\(7),
      I4 => \^addr\(9),
      I5 => \^addr\(10),
      O => plusOp(10)
    );
\read_addr[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^addr\(6),
      I1 => \^addr\(9),
      I2 => \^addr\(10),
      I3 => \^addr\(7),
      I4 => \^addr\(8),
      O => \read_addr[10]_i_3_n_0\
    );
\read_addr[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^addr\(5),
      I1 => \^addr\(3),
      I2 => \^addr\(1),
      I3 => \^addr\(0),
      I4 => \^addr\(2),
      I5 => \^addr\(4),
      O => \read_addr[10]_i_4_n_0\
    );
\read_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \^addr\(1),
      O => plusOp(1)
    );
\read_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^addr\(0),
      I1 => \^addr\(1),
      I2 => \^addr\(2),
      O => plusOp(2)
    );
\read_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addr\(1),
      I1 => \^addr\(0),
      I2 => \^addr\(2),
      I3 => \^addr\(3),
      O => plusOp(3)
    );
\read_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^addr\(2),
      I1 => \^addr\(0),
      I2 => \^addr\(1),
      I3 => \^addr\(3),
      I4 => \^addr\(4),
      O => plusOp(4)
    );
\read_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^addr\(3),
      I1 => \^addr\(1),
      I2 => \^addr\(0),
      I3 => \^addr\(2),
      I4 => \^addr\(4),
      I5 => \^addr\(5),
      O => plusOp(5)
    );
\read_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_addr[10]_i_4_n_0\,
      I1 => \^addr\(6),
      O => plusOp(6)
    );
\read_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_addr[10]_i_4_n_0\,
      I1 => \^addr\(6),
      I2 => \^addr\(7),
      O => plusOp(7)
    );
\read_addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addr\(6),
      I1 => \read_addr[10]_i_4_n_0\,
      I2 => \^addr\(7),
      I3 => \^addr\(8),
      O => plusOp(8)
    );
\read_addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^addr\(7),
      I1 => \read_addr[10]_i_4_n_0\,
      I2 => \^addr\(6),
      I3 => \^addr\(8),
      I4 => \^addr\(9),
      O => plusOp(9)
    );
\read_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(0),
      Q => \^addr\(0),
      R => '0'
    );
\read_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(10),
      Q => \^addr\(10),
      R => '0'
    );
\read_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(1),
      Q => \^addr\(1),
      R => '0'
    );
\read_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(2),
      Q => \^addr\(2),
      R => '0'
    );
\read_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(3),
      Q => \^addr\(3),
      R => '0'
    );
\read_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(4),
      Q => \^addr\(4),
      R => '0'
    );
\read_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(5),
      Q => \^addr\(5),
      R => '0'
    );
\read_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(6),
      Q => \^addr\(6),
      R => '0'
    );
\read_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(7),
      Q => \^addr\(7),
      R => '0'
    );
\read_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(8),
      Q => \^addr\(8),
      R => '0'
    );
\read_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => plusOp(9),
      Q => \^addr\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_mem_interface_0_0 is
  port (
    clk : in STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_mem_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_mem_interface_0_0 : entity is "design_2_mem_interface_0_0,mem_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_2_mem_interface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_2_mem_interface_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_2_mem_interface_0_0 : entity is "mem_interface,Vivado 2025.2";
end design_2_mem_interface_0_0;

architecture STRUCTURE of design_2_mem_interface_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_100MHz, INSERT_VIP 0";
begin
inst: entity work.design_2_mem_interface_0_0_mem_interface
     port map (
      addr(10 downto 0) => addr(10 downto 0),
      clk => clk
    );
end STRUCTURE;
