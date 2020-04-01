----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2017 09:28:04 PM
-- Design Name: 
-- Module Name: pelda_8 - Behavioral
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

entity pelda_8 is
GENERIC (BIT_SZAM : natural :=8);
  Port ( src_clk : in std_logic;
        reset : in std_logic;
         d : in std_logic_vector(BIT_SZAM-1 downto 0);
         q : out std_logic_vector(BIT_SZAM-1 downto 0)
  );
end pelda_8;

architecture Behavioral of pelda_8 is

begin
PROCESS
BEGIN
		WAIT ON src_clk, reset;
		IF (reset='1') THEN
			q <="00000000";
		ELSIF (src_clk'EVENT AND src_clk='1') THEN
			q <=d;
		END IF;
END PROCESS;


end Behavioral;
