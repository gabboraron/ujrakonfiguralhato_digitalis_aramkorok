--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
--Date        : Tue Apr 23 18:46:42 2019
--Host        : BST-PC running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    ap_ctrl_start : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    x_ap_vld : in STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    N : in STD_LOGIC_VECTOR ( 11 downto 0 );
    z : out STD_LOGIC_VECTOR ( 23 downto 0 );
    z_ap_vld : out STD_LOGIC;
    x_ap_ack : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      N(11 downto 0) => N(11 downto 0),
      ap_clk => ap_clk,
      ap_ctrl_done => ap_ctrl_done,
      ap_ctrl_idle => ap_ctrl_idle,
      ap_ctrl_ready => ap_ctrl_ready,
      ap_ctrl_start => ap_ctrl_start,
      ap_rst => ap_rst,
      x(11 downto 0) => x(11 downto 0),
      x_ap_ack => x_ap_ack,
      x_ap_vld => x_ap_vld,
      z(23 downto 0) => z(23 downto 0),
      z_ap_vld => z_ap_vld
    );
end STRUCTURE;
