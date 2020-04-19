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

entity pelda_4_generate is
    generic (RSZ : natural :=4);
    Port (src_clk: in std_logic;
          reset : in std_logic;
          CE : in std_logic;
          d : in std_logic;
          q : out std_logic_vector(RSZ-1 downto 0));
end pelda_4_generate;

architecture Behavioral of pelda_4_generate is
signal s: std_logic_vector(RSZ-1 downto 0);
begin

ciklus : for i in 0 to RSZ-1 generate
if_1: if i = 0 generate
        reg_0 : process(src_clk, reset)
        begin
            if src_clk'event and src_clk='1' then
           if reset='1' then
             s(i)<= '0';
            elsif CE='1' then
             s(i)<=d;      
           end if;
           end if;
        end process;
end Generate;

if_i : if i>0 generate
    reg_i:process (src_clk, reset)
    begin
        if src_clk'event and src_clk='1' then
       if reset='1' then
           s(i)<= '0';
        elsif CE='1' then
         s(i)<=s(i-1);      
       end if;
       end if;
    end process;
end generate;
q(i)<=s(i);
end generate;
end Behavioral;
