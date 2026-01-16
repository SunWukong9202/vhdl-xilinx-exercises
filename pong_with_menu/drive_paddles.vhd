----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:39 11/21/2022 
-- Design Name: 
-- Module Name:    drive_paddles - Behavioral 
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


entity drive_paddles is
  generic(
		D_WIDTH: integer := 800;
		D_HEIGHT: integer := 600;
		P_HEIGHT: integer := 100;
		P_WIDTH: integer := 10;
		w_paddle1_x: integer := 5 --change to constant	
	);
	port(
		i_clk:				in	std_logic;
		i_joystick_p1:		in  integer;
		count_x:				in  integer;		
		count_y:				in  integer;
		o_paddle2_y: 		out integer;
		o_paddle1_y: 		out integer;
		i_ball_y:			in  integer;
		i_allow_com:		in	std_logic;
		o_draw_paddle1:  	out  std_logic;
		o_draw_paddle2:  	out  std_logic
--		o_scorep1			out integer;
--		o_scoreP2			out integer;
	);
end drive_paddles;

architecture Behavioral of drive_paddles is
	constant w_paddle2_x: integer := D_WIDTH - P_WIDTH - w_paddle1_x;
	signal w_paddle1_y: integer := D_HEIGHT/2 - P_HEIGHT/2;
	signal w_paddle2_y: integer := D_HEIGHT/2 - P_HEIGHT/2;
	signal w_inPaddle1: std_logic;
	signal w_inPaddle2: std_logic;
	signal w_js1_UP: std_logic;	
	signal w_js1_DOWN: std_logic;
	signal w_in_range: std_logic;
	signal w_in_range_p2: std_logic;
	signal w_one_frame: std_logic := '0';	
	signal w_one_frame_p2: std_logic := '0';
begin

  o_paddle1_y <= w_paddle1_y;
  o_paddle2_y <= w_paddle2_y;

  w_inPaddle1 <= '1' when count_x >= w_paddle1_x and count_x <= w_paddle1_x + P_WIDTH and count_y >= w_paddle1_y and count_y <= w_paddle1_y + P_HEIGHT else '0';
					
	w_inPaddle2 <= '1' when count_x >= w_paddle2_x and count_x <= w_paddle2_x + P_WIDTH and count_y >= w_paddle2_y and count_y <= w_paddle2_y + P_HEIGHT else '0';
	
	draw_paddles: process(i_clk)
	begin
		if rising_edge(i_clk) then
			if count_y < D_HEIGHT then
				if w_inPaddle1 = '1' and w_one_frame = '0' then
					o_draw_paddle1 <= '1';
				else
					w_one_frame <= '1';
					o_draw_paddle1 <= '0';
				end if;
				
				if w_inPaddle2 = '1' and w_one_frame_p2 = '0' then
					o_draw_paddle2 <= '1';
				else
					w_one_frame_p2 <= '1';
					o_draw_paddle2 <= '0';
				end if;
			else
				w_one_frame <= '0';
				w_one_frame_p2 <= '0';
			end if;
		end if;
	end process;

  --for joystick of paddle1
--	w_js1_UP <= '1' when i_joystick_p1 > 33 else '0';	
--	w_js1_DOWN <= '1' when i_joystick_p1 < 29 else '0';
--	w_in_range <= '1' when w_paddle1_y > 0 and w_paddle1_y < D_HEIGHT - P_HEIGHT else '0';
--   w_in_range_p2 <= '1' when w_paddle2_y > 0 and w_paddle2_y < D_HEIGHT - P_HEIGHT else '0';
--	
--	update_paddle1: process(i_clk)
--	begin
--		if rising_edge(i_clk) then
--			if w_in_range = '1' then
--			  if w_js1_UP = '1' then
--				 w_paddle1_y <= w_paddle1_y - 3;
--			  elsif w_js1_DOWN = '1' then
--				 w_paddle1_y <= w_paddle1_y + 3;
--			  end if;
--			elsif w_in_range_p2 = '1' then
--			  --control for the IA
--			  if i_allow_com = '1' then
--				 w_paddle2_y <= (w_paddle2_y + (i_ball_y - (w_paddle2_y + P_HEIGHT / 2))) / 8; 
--			  end if;
--			end if;--range
--		end if;--end rising edge
--	end process;

end Behavioral;
