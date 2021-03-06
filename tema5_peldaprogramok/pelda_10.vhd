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

entity pelda_10 is
GENERIC (BIT_SZAM : natural :=2);
Port (  src_clk : in std_logic;
        reset : in std_logic;
         adat : in std_logic_vector(BIT_SZAM-1 downto 0);
         q : out std_logic_vector(BIT_SZAM-1 downto 0));
end pelda_10;

architecture Behavioral of pelda_10 is

begin

process (src_clk,reset )
variable sz: std_logic_vector(BIT_SZAM-1 downto 0);
begin
if reset='1' then
    q<=(others=>'0');
 elsif src_clk'event and src_clk='1' then
    FOR I IN adat'RANGE LOOP
        CASE adat(i) IS
            WHEN '0' => sz:=sz+1;
            WHEN OTHERS =>EXIT;
    END CASE;
    END LOOP;

end if;
q<=sz;
end process;
end Behavioral;
