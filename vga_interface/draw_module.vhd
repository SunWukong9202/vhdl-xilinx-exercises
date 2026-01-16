----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:08:30 11/21/2022 
-- Design Name: 
-- Module Name:    draw_module - Behavioral 
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

entity draw_module is
	generic(
		D_WIDTH: integer := 800;
		D_HEIGHT: integer := 600;
		P_HEIGHT: integer := 100;
		P_WIDTH: integer := 10;
		B_RADIUS: integer := 8; --16 PER SIDE
		w_paddle1_x: integer; --change to constant
		w_paddle2_x: integer
	);
	port(
	i_clk: in std_logic;
	count_x: in integer;
	count_y: in integer;
	w_ball_x: in integer;
	w_ball_Y: in integer;
	w_paddle1_y: in integer;
	w_paddle2_y: in integer;
	o_draw_paddle1: out std_logic;
	o_draw_paddle2: out std_logic;
	o_draw_ball: out std_logic;
	io_drawB_oneTime: inout std_logic := '0'; --draw ball only one time per frame
	io_drawP1_oneTime: inout std_logic := '0';
	io_drawP2_oneTime: inout std_logic := '0'
	);
end draw_module;

architecture Behavioral of draw_module is
	signal w_inBall: std_logic;	
	signal w_inPaddle1: std_logic;
	signal w_inPaddle2: std_logic;
begin

	w_inBall <= '1' when count_x >= w_ball_x - B_RADIUS and count_x <= w_ball_x + B_RADIUS  -- left and right side, respectively
			  and count_y >= w_ball_y - B_RADIUS and count_y <= w_ball_y + B_RADIUS -- top and bottom side , //
			  else '0'; 

	draw_ball: process(i_clk) 
	begin
		if rising_edge(i_clk) then
			if w_inBall = '1' and io_drawB_oneTime = '0' then
				o_draw_ball <= '1';
			else
				io_drawB_oneTime <= '1';
				o_draw_ball <= '0';
			end if;
		end if;
	end process;
	
--	w_inPaddle1 <= '1' when count_x >= w_paddle1_x and count_x <= w_paddle1_x + P_WIDTH  --left and right side
--					and count_y >= w_paddle1_y and count_y <= w_paddle1_y + P_HEIGHT--top and bottom
--				  else '0'
				  
	w_inPaddle1 <= '1' when count_x >= w_paddle1_x and count_x <= w_paddle1_x + P_WIDTH and count_y >= w_paddle1_y and count_y <= w_paddle1_y + P_HEIGHT else '0';
				  
	w_inPaddle2 <= '1' when count_x >= w_paddle2_x and count_x <= w_paddle2_x + P_WIDTH and count_y >= w_paddle2_y and count_y <= w_paddle2_y + P_HEIGHT else '0';
	
	draw_paddles: process(i_clk)
	begin
		if rising_edge(i_clk) then
			if w_inPaddle1 = '1' and io_drawP1_oneTime = '0' then
				o_draw_paddle1 <= '1';
			else
				io_drawP1_oneTime <= '1';
				o_draw_paddle1 <= '0';
			end if;
			
			if w_inPaddle2 = '1' and io_drawP2_oneTime = '0' then
				o_draw_paddle2 <= '1';
			else
				io_drawP2_oneTime <= '1';
				o_draw_paddle2 <= '0';
			end if;
		end if;
	end process;

end Behavioral;

