-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
-- Date        : Mon Nov  2 19:04:39 2026
-- Host        : IbnuFikriA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_lite_gpio_v1_0_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_lite_gpio_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_gpio_v1_0 is
  port (
    gpio_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_awready_reg_0 : out STD_LOGIC;
    axi_bvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_gpio_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_gpio_v1_0 is
  signal axi_arready0 : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_bvalid_reg_0\ : STD_LOGIC;
  signal axi_rdata : STD_LOGIC_VECTOR ( 31 to 31 );
  signal axi_rdata0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal \^gpio_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \regs[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \regs[0][23]_i_1_n_0\ : STD_LOGIC;
  signal \regs[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \regs[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \regs[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \regs[2][23]_i_1_n_0\ : STD_LOGIC;
  signal \regs[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \regs[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \regs_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \regs_reg[2]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \regs_reg[3]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sw_s1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sw_s2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \regs[0][15]_i_2\ : label is "soft_lutpair1";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  gpio_out(15 downto 0) <= \^gpio_out\(15 downto 0);
axi_arready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => \^axi_rvalid_reg_0\,
      I3 => S_AXI_ARESETN,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_bvalid_reg_0\,
      I4 => S_AXI_ARESETN,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => '0'
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004000FF004000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_ARESETN,
      I4 => \^axi_bvalid_reg_0\,
      I5 => S_AXI_BREADY,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid_reg_0\,
      R => '0'
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(0),
      I1 => sw_s2(0),
      I2 => \regs_reg[2]\(0),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(0),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(10),
      I1 => sw_s2(10),
      I2 => \regs_reg[2]\(10),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(10),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(11),
      I1 => sw_s2(11),
      I2 => \regs_reg[2]\(11),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(11),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(12),
      I1 => sw_s2(12),
      I2 => \regs_reg[2]\(12),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(12),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(13),
      I1 => sw_s2(13),
      I2 => \regs_reg[2]\(13),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(13),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(14),
      I1 => sw_s2(14),
      I2 => \regs_reg[2]\(14),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(14),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(15),
      I1 => sw_s2(15),
      I2 => \regs_reg[2]\(15),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(15),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(16),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(16),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(16),
      O => axi_rdata0_in(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(17),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(17),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(17),
      O => axi_rdata0_in(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(18),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(18),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(18),
      O => axi_rdata0_in(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(19),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(19),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(19),
      O => axi_rdata0_in(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(1),
      I1 => sw_s2(1),
      I2 => \regs_reg[2]\(1),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(1),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(20),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(20),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(20),
      O => axi_rdata0_in(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(21),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(21),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(21),
      O => axi_rdata0_in(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(22),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(22),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(22),
      O => axi_rdata0_in(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(23),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(23),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(23),
      O => axi_rdata0_in(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(24),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(24),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(24),
      O => axi_rdata0_in(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(25),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(25),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(25),
      O => axi_rdata0_in(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(26),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(26),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(26),
      O => axi_rdata0_in(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(27),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(27),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(27),
      O => axi_rdata0_in(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(28),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(28),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(28),
      O => axi_rdata0_in(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(29),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(29),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(29),
      O => axi_rdata0_in(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(2),
      I1 => sw_s2(2),
      I2 => \regs_reg[2]\(2),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(2),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(30),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(30),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(30),
      O => axi_rdata0_in(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555755555"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => S_AXI_ARADDR(1),
      I2 => S_AXI_ARADDR(0),
      I3 => \^axi_arready_reg_0\,
      I4 => S_AXI_ARVALID,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rdata(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \regs_reg[3]\(31),
      I1 => S_AXI_ARADDR(0),
      I2 => \regs_reg[2]\(31),
      I3 => S_AXI_ARADDR(1),
      I4 => \regs_reg[0]\(31),
      O => axi_rdata0_in(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(3),
      I1 => sw_s2(3),
      I2 => \regs_reg[2]\(3),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(3),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(4),
      I1 => sw_s2(4),
      I2 => \regs_reg[2]\(4),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(4),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(5),
      I1 => sw_s2(5),
      I2 => \regs_reg[2]\(5),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(5),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(6),
      I1 => sw_s2(6),
      I2 => \regs_reg[2]\(6),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(6),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(7),
      I1 => sw_s2(7),
      I2 => \regs_reg[2]\(7),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(7),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(8),
      I1 => sw_s2(8),
      I2 => \regs_reg[2]\(8),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(8),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \regs_reg[3]\(9),
      I1 => sw_s2(9),
      I2 => \regs_reg[2]\(9),
      I3 => S_AXI_ARADDR(1),
      I4 => \^gpio_out\(9),
      I5 => S_AXI_ARADDR(0),
      O => axi_rdata0_in(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(0),
      Q => S_AXI_RDATA(0),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(10),
      Q => S_AXI_RDATA(10),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(11),
      Q => S_AXI_RDATA(11),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(12),
      Q => S_AXI_RDATA(12),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(13),
      Q => S_AXI_RDATA(13),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(14),
      Q => S_AXI_RDATA(14),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(15),
      Q => S_AXI_RDATA(15),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(16),
      Q => S_AXI_RDATA(16),
      R => axi_rdata(31)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(17),
      Q => S_AXI_RDATA(17),
      R => axi_rdata(31)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(18),
      Q => S_AXI_RDATA(18),
      R => axi_rdata(31)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(19),
      Q => S_AXI_RDATA(19),
      R => axi_rdata(31)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(1),
      Q => S_AXI_RDATA(1),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(20),
      Q => S_AXI_RDATA(20),
      R => axi_rdata(31)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(21),
      Q => S_AXI_RDATA(21),
      R => axi_rdata(31)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(22),
      Q => S_AXI_RDATA(22),
      R => axi_rdata(31)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(23),
      Q => S_AXI_RDATA(23),
      R => axi_rdata(31)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(24),
      Q => S_AXI_RDATA(24),
      R => axi_rdata(31)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(25),
      Q => S_AXI_RDATA(25),
      R => axi_rdata(31)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(26),
      Q => S_AXI_RDATA(26),
      R => axi_rdata(31)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(27),
      Q => S_AXI_RDATA(27),
      R => axi_rdata(31)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(28),
      Q => S_AXI_RDATA(28),
      R => axi_rdata(31)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(29),
      Q => S_AXI_RDATA(29),
      R => axi_rdata(31)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(2),
      Q => S_AXI_RDATA(2),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(30),
      Q => S_AXI_RDATA(30),
      R => axi_rdata(31)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(31),
      Q => S_AXI_RDATA(31),
      R => axi_rdata(31)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(3),
      Q => S_AXI_RDATA(3),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(4),
      Q => S_AXI_RDATA(4),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(5),
      Q => S_AXI_RDATA(5),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(6),
      Q => S_AXI_RDATA(6),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(7),
      Q => S_AXI_RDATA(7),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(8),
      Q => S_AXI_RDATA(8),
      R => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => axi_arready0,
      D => axi_rdata0_in(9),
      Q => S_AXI_RDATA(9),
      R => \axi_rdata[15]_i_1_n_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020F020"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^axi_arready_reg_0\,
      I2 => S_AXI_ARESETN,
      I3 => \^axi_rvalid_reg_0\,
      I4 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => '0'
    );
\regs[0][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(1),
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => \regs[0][15]_i_1_n_0\
    );
\regs[0][15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^axi_bvalid_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      O => axi_awready0
    );
\regs[0][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(2),
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => \regs[0][23]_i_1_n_0\
    );
\regs[0][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(3),
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => \regs[0][31]_i_1_n_0\
    );
\regs[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(0),
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => \regs[0][7]_i_1_n_0\
    );
\regs[2][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(1),
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_AWADDR(1),
      O => \regs[2][15]_i_1_n_0\
    );
\regs[2][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(2),
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_AWADDR(1),
      O => \regs[2][23]_i_1_n_0\
    );
\regs[2][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(3),
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_AWADDR(1),
      O => \regs[2][31]_i_1_n_0\
    );
\regs[2][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(0),
      I2 => S_AXI_AWADDR(0),
      I3 => S_AXI_AWADDR(1),
      O => \regs[2][7]_i_1_n_0\
    );
\regs[3][15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(1),
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => p_1_in(15)
    );
\regs[3][23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(2),
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => p_1_in(23)
    );
\regs[3][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(3),
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => p_1_in(31)
    );
\regs[3][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axi_awready0,
      I1 => S_AXI_WSTRB(0),
      I2 => S_AXI_AWADDR(1),
      I3 => S_AXI_AWADDR(0),
      O => p_1_in(7)
    );
\regs_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \^gpio_out\(0),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \^gpio_out\(10),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \^gpio_out\(11),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \^gpio_out\(12),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \^gpio_out\(13),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \^gpio_out\(14),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \^gpio_out\(15),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \regs_reg[0]\(16),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \regs_reg[0]\(17),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \regs_reg[0]\(18),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \regs_reg[0]\(19),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \^gpio_out\(1),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \regs_reg[0]\(20),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \regs_reg[0]\(21),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \regs_reg[0]\(22),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \regs_reg[0]\(23),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \regs_reg[0]\(24),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \regs_reg[0]\(25),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \regs_reg[0]\(26),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \regs_reg[0]\(27),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \regs_reg[0]\(28),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \regs_reg[0]\(29),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \^gpio_out\(2),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \regs_reg[0]\(30),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \regs_reg[0]\(31),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \^gpio_out\(3),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \^gpio_out\(4),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \^gpio_out\(5),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \^gpio_out\(6),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \^gpio_out\(7),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \^gpio_out\(8),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[0][15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \^gpio_out\(9),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => \regs_reg[2]\(0),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => \regs_reg[2]\(10),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => \regs_reg[2]\(11),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => \regs_reg[2]\(12),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => \regs_reg[2]\(13),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => \regs_reg[2]\(14),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => \regs_reg[2]\(15),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => \regs_reg[2]\(16),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => \regs_reg[2]\(17),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => \regs_reg[2]\(18),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => \regs_reg[2]\(19),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => \regs_reg[2]\(1),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => \regs_reg[2]\(20),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => \regs_reg[2]\(21),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => \regs_reg[2]\(22),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => \regs_reg[2]\(23),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => \regs_reg[2]\(24),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => \regs_reg[2]\(25),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => \regs_reg[2]\(26),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => \regs_reg[2]\(27),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => \regs_reg[2]\(28),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => \regs_reg[2]\(29),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => \regs_reg[2]\(2),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => \regs_reg[2]\(30),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => \regs_reg[2]\(31),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => \regs_reg[2]\(3),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => \regs_reg[2]\(4),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => \regs_reg[2]\(5),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => \regs_reg[2]\(6),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => \regs_reg[2]\(7),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => \regs_reg[2]\(8),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => \regs[2][15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => \regs_reg[2]\(9),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(0),
      Q => \regs_reg[3]\(0),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(10),
      Q => \regs_reg[3]\(10),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(11),
      Q => \regs_reg[3]\(11),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(12),
      Q => \regs_reg[3]\(12),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(13),
      Q => \regs_reg[3]\(13),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(14),
      Q => \regs_reg[3]\(14),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(15),
      Q => \regs_reg[3]\(15),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(16),
      Q => \regs_reg[3]\(16),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(17),
      Q => \regs_reg[3]\(17),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(18),
      Q => \regs_reg[3]\(18),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(19),
      Q => \regs_reg[3]\(19),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(1),
      Q => \regs_reg[3]\(1),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(20),
      Q => \regs_reg[3]\(20),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(21),
      Q => \regs_reg[3]\(21),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(22),
      Q => \regs_reg[3]\(22),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(23),
      D => S_AXI_WDATA(23),
      Q => \regs_reg[3]\(23),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(24),
      Q => \regs_reg[3]\(24),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(25),
      Q => \regs_reg[3]\(25),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(26),
      Q => \regs_reg[3]\(26),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(27),
      Q => \regs_reg[3]\(27),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(28),
      Q => \regs_reg[3]\(28),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(29),
      Q => \regs_reg[3]\(29),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(2),
      Q => \regs_reg[3]\(2),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(30),
      Q => \regs_reg[3]\(30),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(31),
      D => S_AXI_WDATA(31),
      Q => \regs_reg[3]\(31),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(3),
      Q => \regs_reg[3]\(3),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(4),
      Q => \regs_reg[3]\(4),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(5),
      Q => \regs_reg[3]\(5),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(6),
      Q => \regs_reg[3]\(6),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(7),
      D => S_AXI_WDATA(7),
      Q => \regs_reg[3]\(7),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(8),
      Q => \regs_reg[3]\(8),
      R => \axi_rdata[15]_i_1_n_0\
    );
\regs_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => p_1_in(15),
      D => S_AXI_WDATA(9),
      Q => \regs_reg[3]\(9),
      R => \axi_rdata[15]_i_1_n_0\
    );
\sw_s1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(0),
      Q => sw_s1(0),
      R => '0'
    );
\sw_s1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(10),
      Q => sw_s1(10),
      R => '0'
    );
\sw_s1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(11),
      Q => sw_s1(11),
      R => '0'
    );
\sw_s1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(12),
      Q => sw_s1(12),
      R => '0'
    );
\sw_s1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(13),
      Q => sw_s1(13),
      R => '0'
    );
\sw_s1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(14),
      Q => sw_s1(14),
      R => '0'
    );
\sw_s1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(15),
      Q => sw_s1(15),
      R => '0'
    );
\sw_s1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(1),
      Q => sw_s1(1),
      R => '0'
    );
\sw_s1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(2),
      Q => sw_s1(2),
      R => '0'
    );
\sw_s1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(3),
      Q => sw_s1(3),
      R => '0'
    );
\sw_s1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(4),
      Q => sw_s1(4),
      R => '0'
    );
\sw_s1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(5),
      Q => sw_s1(5),
      R => '0'
    );
\sw_s1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(6),
      Q => sw_s1(6),
      R => '0'
    );
\sw_s1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(7),
      Q => sw_s1(7),
      R => '0'
    );
\sw_s1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(8),
      Q => sw_s1(8),
      R => '0'
    );
\sw_s1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw(9),
      Q => sw_s1(9),
      R => '0'
    );
\sw_s2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(0),
      Q => sw_s2(0),
      R => '0'
    );
\sw_s2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(10),
      Q => sw_s2(10),
      R => '0'
    );
\sw_s2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(11),
      Q => sw_s2(11),
      R => '0'
    );
\sw_s2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(12),
      Q => sw_s2(12),
      R => '0'
    );
\sw_s2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(13),
      Q => sw_s2(13),
      R => '0'
    );
\sw_s2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(14),
      Q => sw_s2(14),
      R => '0'
    );
\sw_s2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(15),
      Q => sw_s2(15),
      R => '0'
    );
\sw_s2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(1),
      Q => sw_s2(1),
      R => '0'
    );
\sw_s2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(2),
      Q => sw_s2(2),
      R => '0'
    );
\sw_s2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(3),
      Q => sw_s2(3),
      R => '0'
    );
\sw_s2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(4),
      Q => sw_s2(4),
      R => '0'
    );
\sw_s2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(5),
      Q => sw_s2(5),
      R => '0'
    );
\sw_s2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(6),
      Q => sw_s2(6),
      R => '0'
    );
\sw_s2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(7),
      Q => sw_s2(7),
      R => '0'
    );
\sw_s2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(8),
      Q => sw_s2(8),
      R => '0'
    );
\sw_s2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => sw_s1(9),
      Q => sw_s2(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    gpio_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_lite_gpio_v1_0_0_0,axi_lite_gpio_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_lite_gpio_v1_0,Vivado 2026.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of S_AXI_ACLK : signal is "slave S_AXI_ACLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_Clk, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_mode of S_AXI_ARESETN : signal is "slave S_AXI_ARESETN";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_mode of S_AXI_AWADDR : signal is "slave S_AXI";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_WREADY <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_gpio_v1_0
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(1 downto 0) => S_AXI_AWADDR(3 downto 2),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_arready_reg_0 => S_AXI_ARREADY,
      axi_awready_reg_0 => \^s_axi_awready\,
      axi_bvalid_reg_0 => S_AXI_BVALID,
      axi_rvalid_reg_0 => S_AXI_RVALID,
      gpio_out(15 downto 0) => gpio_out(15 downto 0),
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
