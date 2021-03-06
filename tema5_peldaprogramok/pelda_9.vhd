----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2017 10:02:48 PM
-- Design Name: 
-- Module Name: pelda_9 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pelda_9 is
GENERIC (BIT_SZAM : natural :=8);
Port (  src_clk : in std_logic;
        reset : in std_logic;
         x1 : in std_logic_vector(BIT_SZAM-1 downto 0);
         x2 : in std_logic_vector(BIT_SZAM-1 downto 0);
         q : out std_logic_vector(BIT_SZAM-1 downto 0));
end pelda_9;

architecture Behavioral of pelda_9 is

begin

process (src_clk,reset )
begin
if reset='1' then
    q<=(others=>'0');
    elsif src_clk'event and src_clk='1' then
FOR i IN X1'RANGE LOOP
	q(i)<=x1(i) AND x2(i);
END LOOP;
end if;
end process;
end Behavioral;
