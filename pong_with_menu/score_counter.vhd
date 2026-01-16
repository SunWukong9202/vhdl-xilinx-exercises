----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:09:08 11/26/2022 
-- Design Name: 
-- Module Name:    score_counter - Behavioral 
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

entity score_counter is
	generic(
		SCORE_X: integer;
		SCORE_Y: integer;
		TILE	: integer;
		GAP: integer;
		SCORE_WIDTH: integer;
		SCORE_HEIGHT: integer
	);
	port(
		i_clk: in std_logic;
		r_count_x: in integer;
		r_count_y: in integer;
		i_score: in integer;
		i_active_render: in std_logic;
		o_segment: out std_logic
	);
end score_counter;

architecture Behavioral of score_counter is	

	signal w_A: std_logic := '0';	
	signal w_B: std_logic := '0';
	signal w_C: std_logic := '0';
	signal w_D: std_logic := '0';
	signal w_E: std_logic := '0';
	signal w_F: std_logic := '0';
	signal w_G: std_logic := '0';
	
	signal w_0: std_logic := '0';
	signal w_1: std_logic := '0';
	signal w_2: std_logic := '0';
	signal w_3: std_logic := '0';	
	signal w_4: std_logic := '0';
	signal w_5: std_logic := '0';
	signal w_6: std_logic := '0';
	signal w_7: std_logic := '0';
	signal w_8: std_logic := '0';
	signal w_9: std_logic := '0';
	
	signal w_segment: std_logic := '0';
begin
	o_segment <= w_segment;
	
	w_A <= '1' when r_count_x > SCORE_X + TILE + GAP and r_count_x <= SCORE_X + TILE + GAP + TILE*2 AND
						 r_count_y > SCORE_Y - SCORE_HEIGHT and r_count_y <= SCORE_Y - SCORE_HEIGHT + TILE else '0'; 
						 
	w_B <= '1' when r_count_x > SCORE_X + TILE + 2*GAP + TILE*2 and r_count_x <= SCORE_X + TILE + 2*GAP + TILE*2 + TILE and
						 r_count_y > SCORE_Y - SCORE_HEIGHT + TILE/2 and r_count_y <= SCORE_Y - SCORE_HEIGHT + TILE/2 + TILE*3 else '0';
			
	w_C <= '1' when r_count_x > SCORE_X + TILE + 2*GAP + TILE*2 and r_count_x <= SCORE_X + TILE + 2*GAP + TILE*2 + TILE and
						 r_count_y > SCORE_Y - SCORE_HEIGHT + TILE/2 + TILE*3 + GAP and 
						 r_count_y <= SCORE_Y - SCORE_HEIGHT + TILE/2 + TILE*3 + GAP + TILE*3 else '0';
						 
	w_D <= '1' when r_count_x > SCORE_X + TILE + GAP and r_count_x <= SCORE_X + TILE + GAP + TILE*2 and
						 r_count_y > SCORE_Y - SCORE_HEIGHT + TILE*6 and r_count_y <= SCORE_Y - SCORE_HEIGHT + TILE*7 else '0'; 
	
	w_E <= '1' when r_count_x > SCORE_X and r_count_x <= SCORE_X + TILE and
						 r_count_y > SCORE_Y - SCORE_HEIGHT + TILE/2 + TILE*3 + GAP AND
						 r_count_y <= SCORE_Y - SCORE_HEIGHT + TILE/2 + TILE*3 + GAP + 3*TILE else '0';
						 
	w_F <= '1' when r_count_x > SCORE_X and r_count_x <= SCORE_X + TILE and
						 r_count_y > SCORE_Y - SCORE_HEIGHT + TILE/2 and r_count_y <= SCORE_Y - SCORE_HEIGHT + TILE/2 + TILE*3 else '0';
						 
	w_G <= '1' when r_count_x > SCORE_X + TILE + GAP and r_count_x <= SCORE_X + TILE + GAP + TILE*2 AND
						 r_count_y > SCORE_Y - SCORE_HEIGHT + 3*TILE and r_count_y <= SCORE_Y - SCORE_HEIGHT + TILE*4 else '0';
						 
	w_0 <= '1' when (w_A = '1') or (w_B = '1') or (w_C = '1') or (w_D = '1') or (w_E = '1') or
								 (w_F = '1') else '0';
								 
	w_1 <= '1' when (w_B = '1') or (w_C = '1') else '0';
	w_2 <= '1' when (w_A = '1') or (w_B = '1') or (w_G = '1') or (w_D = '1') or (w_E = '1') else '0';
	w_3 <= '1' when (w_A = '1') or (w_B = '1') or (w_C = '1') or (w_D = '1') or (w_G = '1') else '0';
	w_4 <= '1' when (w_B = '1') or (w_C = '1') or (w_G = '1') or (w_F = '1') else '0';
	w_5 <= '1' when (w_A = '1') or (w_C = '1') or (w_G = '1') or (w_D = '1') or (w_F = '1') else '0';
	w_6 <= '1' when (w_A = '1') or (w_C = '1') or (w_G = '1') or (w_D = '1') or (w_F = '1') or (w_E = '1') else '0';
	w_7 <= '1' when (w_B = '1') or (w_A = '1') or (w_C = '1') or (w_G = '1')  else '0';
	w_8 <= '1' when (w_A = '1') or (w_B = '1') or (w_C = '1') or (w_D = '1') or (w_E = '1') or
						 (w_G = '1') or (w_F = '1') else '0';
	w_9 <= '1' when (w_A = '1') or (w_B = '1') or (w_C = '1') or (w_G = '1') or (w_F = '1') or (w_C = '1') else '0';
	
	process(i_clk)
	begin
		if rising_edge(i_clk) then
			if i_active_render = '1' then
				case i_score is
					when 0 =>
						if w_0 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
					
					when 1 =>
						if w_1 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
					
					when 2 =>
						if w_2 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
					when 3 =>
						if w_3 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
						
					when 4 =>
						if w_4 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
						
					when 5 =>
						if w_5 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
					
					when 6 =>
						if w_6 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
						
					when 7 =>
						if w_7 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
					
					when 8 =>
						if w_8 = '1' then
							w_segment <= '1';
						else 
							w_segment <= '0';
						end if;
				when 9 =>
					if w_9 = '1' then
						w_segment <= '1';
					else 
						w_segment <= '0';
					end if;
				when others => 
					if w_0 = '1' then
						w_segment <= '1';
					else 
						w_segment <= '0';
					end if;
				end case;
			else
				w_segment <= '0';
			end if;
		end if;
	end process;end Behavioral;

