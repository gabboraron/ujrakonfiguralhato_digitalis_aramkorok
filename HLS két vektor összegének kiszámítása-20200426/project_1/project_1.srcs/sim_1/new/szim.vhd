----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.04.2019 18:28:39
-- Design Name: 
-- Module Name: szim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity szim is
--  Port ( );
end szim;


architecture Behavioral of szim is
component design_1_wrapper is
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
end component;
  
signal N : STD_LOGIC_VECTOR ( 11 downto 0 );
signal ap_clk : STD_LOGIC;
signal  ap_ctrl_done : STD_LOGIC;
signal ap_ctrl_idle :  STD_LOGIC;
signal ap_ctrl_ready : STD_LOGIC;
signal ap_ctrl_start :  STD_LOGIC;
signal  ap_rst :  STD_LOGIC;
signal x :  STD_LOGIC_VECTOR ( 11 downto 0 );
signal  x_ap_ack :  STD_LOGIC;
signal x_ap_vld :  STD_LOGIC;
signal z :  STD_LOGIC_VECTOR ( 23 downto 0 );
signal z_ap_vld : STD_LOGIC;  
  
  --type integer12 is range 0 to 4095;
  type T_DATA is array (0 to 15) of  integer;
constant DATA : T_DATA :=(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);

begin

orajel_gen: process
begin
ap_clk<='1';
wait for 5ns;
ap_clk<='0';
wait for 5ns;
end process;

tesztelendo_modul: design_1_wrapper
port map
(
N => N,
ap_clk =>ap_clk,
ap_ctrl_done => ap_ctrl_done,
ap_ctrl_idle => ap_ctrl_idle,
ap_ctrl_ready =>ap_ctrl_ready, 
ap_ctrl_start => ap_ctrl_start,
ap_rst => ap_rst,
x => x,
x_ap_ack => x_ap_ack, 
x_ap_vld => x_ap_vld, 
z => z,
z_ap_vld =>z_ap_vld
);

bemeneti_jelek : process
begin
ap_rst<='1';
wait for 100 ns;
ap_rst<='0';
ap_ctrl_start <='0';
x_ap_vld <='0';
wait for 10 ns;
N <= conv_std_logic_vector(6, 12);
ap_ctrl_start  <='1';
wait  for 10 ns;
x_ap_vld <='1';
for i in  0 to 10 loop
x<=conv_std_logic_vector(DATA(i),12);
wait for 10 ns;
end loop;
x_ap_vld<='1';
wait for 10 ns;

wait;
end process;

end Behavioral;
