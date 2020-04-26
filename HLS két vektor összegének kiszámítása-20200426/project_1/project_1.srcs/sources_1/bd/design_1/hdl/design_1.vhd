--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
--Date        : Tue Apr 23 18:46:42 2019
--Host        : BST-PC running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    N : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    x_ap_ack : out STD_LOGIC;
    x_ap_vld : in STD_LOGIC;
    z : out STD_LOGIC_VECTOR ( 23 downto 0 );
    z_ap_vld : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_atlagszamitas_0_0 is
  port (
    x_ap_vld : in STD_LOGIC;
    x_ap_ack : out STD_LOGIC;
    z_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    N : in STD_LOGIC_VECTOR ( 11 downto 0 );
    z : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component design_1_atlagszamitas_0_0;
  signal N_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ap_clk_1 : STD_LOGIC;
  signal ap_ctrl_1_done : STD_LOGIC;
  signal ap_ctrl_1_idle : STD_LOGIC;
  signal ap_ctrl_1_ready : STD_LOGIC;
  signal ap_ctrl_1_start : STD_LOGIC;
  signal ap_rst_1 : STD_LOGIC;
  signal atlagszamitas_0_x_ap_ack : STD_LOGIC;
  signal atlagszamitas_0_z : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal atlagszamitas_0_z_ap_vld : STD_LOGIC;
  signal x_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal x_ap_vld_1 : STD_LOGIC;
begin
  N_1(11 downto 0) <= N(11 downto 0);
  ap_clk_1 <= ap_clk;
  ap_ctrl_1_start <= ap_ctrl_start;
  ap_ctrl_done <= ap_ctrl_1_done;
  ap_ctrl_idle <= ap_ctrl_1_idle;
  ap_ctrl_ready <= ap_ctrl_1_ready;
  ap_rst_1 <= ap_rst;
  x_1(11 downto 0) <= x(11 downto 0);
  x_ap_ack <= atlagszamitas_0_x_ap_ack;
  x_ap_vld_1 <= x_ap_vld;
  z(23 downto 0) <= atlagszamitas_0_z(23 downto 0);
  z_ap_vld <= atlagszamitas_0_z_ap_vld;
atlagszamitas_0: component design_1_atlagszamitas_0_0
     port map (
      N(11 downto 0) => N_1(11 downto 0),
      ap_clk => ap_clk_1,
      ap_done => ap_ctrl_1_done,
      ap_idle => ap_ctrl_1_idle,
      ap_ready => ap_ctrl_1_ready,
      ap_rst => ap_rst_1,
      ap_start => ap_ctrl_1_start,
      x(11 downto 0) => x_1(11 downto 0),
      x_ap_ack => atlagszamitas_0_x_ap_ack,
      x_ap_vld => x_ap_vld_1,
      z(23 downto 0) => atlagszamitas_0_z(23 downto 0),
      z_ap_vld => atlagszamitas_0_z_ap_vld
    );
end STRUCTURE;
