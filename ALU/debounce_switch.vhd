----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:05 11/02/2022 
-- Design Name: 
-- Module Name:    debounce_switch - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debounce_switch is
	port(
		i_clk: in std_logic;
		i_switch: in std_logic;
		o_switch: out std_logic
	);
end debounce_switch;

architecture Behavioral of debounce_switch is
	--set for 10ms in a clk(100 mhz)
	constant c_DEBOUNCE_LIMIT: integer := 500000;
	signal r_count: integer range 0 to c_DEBOUNCE_LIMIT := 0;
	signal r_state: std_logic := '0';
begin

	p_debounce: process(i_clk) is
	begin 
		if rising_edge(i_clk) then
			if (i_switch /= r_state and r_count < c_DEBOUNCE_LIMIT) then
				r_count <= r_count + 1;
			elsif r_count = c_DEBOUNCE_LIMIT then 
				r_state <= i_switch;
				r_count <= 0;
			else
				r_count <= 0;				
			end if;
		end if;
	end process p_debounce;
	
	o_switch <= r_state;
		
end Behavioral;

