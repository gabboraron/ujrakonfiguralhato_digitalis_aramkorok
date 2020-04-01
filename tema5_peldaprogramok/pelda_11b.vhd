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
use IEEE.STD_LOGIC_SIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pelda_11b is
GENERIC (BIT_SZAM : natural :=8);
Port (  src_clk : in std_logic;
        reset : in std_logic;
     --    adat : in std_logic_vector(BIT_SZAM-1 downto 0);
         q : out std_logic_vector(BIT_SZAM-1 downto 0));
end pelda_11b;

architecture Behavioral of pelda_11b is

begin

process (src_clk,reset )
variable sz: std_logic_vector(BIT_SZAM-1 downto 0);
begin
if src_clk'event and src_clk='1' then
            CASE reset IS
            WHEN '1' =>sz:=(others=>'0'); 
            WHEN Others => sz:=sz+1; 
            END CASE;
end if;
q<=sz;
end process;
end Behavioral;
