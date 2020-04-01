----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2017 11:36:37 AM
-- Design Name: 
-- Module Name: pelda_4 - Behavioral
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

entity pelda_5 is
    Generic (BIT_SZAM :natural := 8);
    Port (src_clk: in std_logic;
          reset : in std_logic;
          CE : in std_logic;
          d : in std_logic_vector(BIT_SZAM-1 downto 0);
          q : out std_logic_vector(BIT_SZAM-1 downto 0));
end pelda_5;

architecture Behavioral of pelda_5 is

begin
process (src_clk, reset)
begin
   
   if src_clk'event and src_clk='1' then
   if reset='1' then
      q <= (others=>'0');
    elsif CE='1' then
     q<=d;      
   end if;
   end if;
end process;
end Behavioral;
