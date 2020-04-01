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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pelda_7b is
    Generic (BIT_SZAM :natural := 8);
    Port (sel: in std_logic_vector(2 downto 0);
          a : in std_logic;
          b : in std_logic;
          c : in std_logic;
          d : in std_logic;
          e : in std_logic;
          f : in std_logic;
          g : in std_logic;
          h : in std_logic;
          q : out std_logic);
end pelda_7b;

architecture Behavioral of pelda_7b is

begin
process (sel)
begin
   case (sel) is
   when "000" =>
      q<=a;
   when "001" =>
         q<=b;
   when "010" =>
        q<=c;

   when "011" =>
         q<=d;

   when "100" =>
         q<=e;

   when "101" =>
         q<=f;
   
   when others =>
         q<='X';

end case;
end process;

end Behavioral;
