----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2017 11:04:28 AM
-- Design Name: 
-- Module Name: pelda_1 - Behavioral
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

entity pelda_1 is
    Port (src_clk: in std_logic;
          reset : in std_logic;
          d : in std_logic;
          q : out std_logic);
end pelda_1;

architecture Behavioral of pelda_1 is

begin
process (src_clk, reset)
begin
    if reset='1' then
   elsif src_clk'event and src_clk='0' then
      q <= d;
   end if;
end process;
end Behavioral;
