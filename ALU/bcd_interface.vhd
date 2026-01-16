----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:09:19 10/27/2022 
-- Design Name: 
-- Module Name:    bcd_interface - Behavioral 
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
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_interface is
	Port (  clk_50mhz: in STD_LOGIC;
			  segments : out  STD_LOGIC_VECTOR (7 downto 0);
			  ones : in  STD_LOGIC_VECTOR (3 downto 0);				  
			  tens : in  STD_LOGIC_VECTOR (3 downto 0);				  
			  sign : in  STD_LOGIC;
			  display : out  STD_LOGIC_VECTOR (3 downto 0);
			  led: out std_logic
			  );
end bcd_interface;

architecture Behavioral of bcd_interface is

signal counter: integer range 0 to 100000;
signal selDisplay: std_logic_vector(1 downto 0) := "00";
signal auxDisplay: std_logic_vector(3 downto 0) :="0000";
signal aux : STD_LOGIC_VECTOR (7 downto 0);
signal aux2 : STD_LOGIC_VECTOR (7 downto 0);
signal aux3 : STD_LOGIC_VECTOR (7 downto 0);
signal clk250hz: std_logic;

begin

	f_divider: process(clk_50mhz) begin
		if rising_edge(clk_50mhz) then
			if counter < 100000 then--250hz
				counter <= counter + 1;
			else
				clk250hz <= not clk250hz;
				counter <= 0;
				selDisplay <= selDisplay + 1;
			end if;
		end if;
	end process f_divider;
	
	led <= clk250hz;
	
	show: process(selDisplay) 
	begin
	
		case selDisplay is
			--display ones
			when "00" => 
				auxDisplay <= "0111";
				
			--display tens
			when "01" => 
				auxDisplay <= "1011";
				
			-- display for sign
			when "10" => 
				auxDisplay <= "1101";
				
			when others => auxDisplay <= "1111";
		end case;
		
		case auxDisplay is
			--display ones
			when "0111" => 
				segments <= aux;
				
			--display tens
			when "1011" => 
				segments <= aux2;
				
			-- display for sign
			when "1101" => 
				segments <= aux3;
				
			when others => segments <= "11111111";
		end case;
		
			case ones is
			when "0000" => aux <= "11000000";
			when "0001" => aux <= "11111001";
			when "0010" => aux <= "10100100";
			when "0011" => aux <= "10110000";
			when "0100" => aux <= "10011001";
			when "0101" => aux <= "10010010";
			when "0110" => aux <= "10000010";
			when "0111" => aux <= "10111000";
			when "1000" => aux <= "10000000";
			when "1001" => aux <= "10010000";
			when others => aux <= "11111111";
		end case;
			
		case tens is
			when "0000" => aux2 <= "11000000";
			when "0001" => aux2 <= "11111001";
			when "0010" => aux2 <= "10100100";
			when "0011" => aux2 <= "10110000";
			when "0100" => aux2 <= "10011001";
			when "0101" => aux2 <= "10010010";
			when "0110" => aux2 <= "10000010";
			when "0111" => aux2 <= "10111000";
			when "1000" => aux2 <= "10000000";
			when "1001" => aux2 <= "10010000";
			when others => aux2 <= "11111111";
		end case;
			
		case sign is
			when '1' => aux3 <= "10111111"; --negative
			when others => aux3 <= "11111111";
		end case;
		
	end process;
	
	display <= auxDisplay;

end Behavioral;
