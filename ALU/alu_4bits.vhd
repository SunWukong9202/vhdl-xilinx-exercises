----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:08:43 10/27/2022 
-- Design Name: 
-- Module Name:    alu_4bits - Behavioral 
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

entity alu_4bits is
	port(
		i_switch_1: in std_logic;
		i_clk: in std_logic;
		o_led: out std_logic
	);
end alu_4bits;

architecture Behavioral of alu_4bits is

	signal r_switch_1: std_logic := '0';
	signal r_led: std_logic := '0';
	signal w_switch_aux: std_logic;
begin

	debounce: entity work.debounce_switch
		port map(
			i_clk => i_clk,
			i_switch => i_switch_1,
			o_switch => w_switch_aux
		);

	p_toggle: process(i_clk) is
	begin
		if rising_edge(i_clk) then 
			r_switch_1 <= w_switch_aux;
			
			if r_switch_1 = '1' and w_switch_aux = '0' then
				r_led <= not r_led;

			end if;
		end if;
	end process p_toggle;
	
	o_led <= r_led;
	
end Behavioral;

