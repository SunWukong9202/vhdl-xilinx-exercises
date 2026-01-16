----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:08:42 10/12/2022 
-- Design Name: 
-- Module Name:    adder_subtractor_4bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_subtractor_4bit is
	port(
		a: in STD_LOGIC_VECTOR (3 downto 0);
		b: in STD_LOGIC_VECTOR (3 downto 0);
		ctr: in STD_LOGIC;
		c: out STD_LOGIC_VECTOR (4 downto 0);
	)
end adder_subtractor_4bit;

architecture Behavioral of adder_subtractor_4bit is
	component bcd_7_seg is
		port( S : out  STD_LOGIC_VECTOR (7 downto 0);
			  SS : out  STD_LOGIC_VECTOR (3 downto 0);
			  A : in  STD_LOGIC_VECTOR (1 downto 0);
			  B : in  STD_LOGIC_VECTOR (3 downto 0)
	  )
	end component;
begin

end Behavioral;

