----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:18 11/21/2022 
-- Design Name: 
-- Module Name:    update_module - Behavioral 
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

entity update_module is
	generic(
		D_WIDTH: integer := 800;
		D_HEIGHT: integer := 600;
		P_HEIGHT: integer := 100;
		P_WIDTH: integer := 10;
		B_RADIUS: integer := 8
	);
	port(
		i_clk:				in	 std_logic;
		i_joystick_p1:		in  integer;
		i_update_paddle1:	in std_logic;
		i_update_paddle2:	in std_logic;
		i_update_ball:		in std_logic;
		io_paddle1_y :		inout integer;
		i_paddle1_x:		in 	integer;
		io_paddle2_y: 		inout integer;
		i_paddle2_x:		in 	integer;
		io_ball_x: 			inout integer;
		io_ball_y:			inout integer;
		i_allow_com:		in		std_logic;
		io_updateB_oneTime:  inout		std_logic;		
		io_updateP1_oneTime: inout		std_logic;
		io_updateP2_oneTime: inout		std_logic
		
--		o_scorep1			out integer;
--		o_scoreP2			out integer;
	);
end update_module;

architecture Behavioral of update_module is
	signal w_js1_UP: std_logic;	
	signal w_js1_DOWN: std_logic;
	signal w_in_range: std_logic;
	signal w_collision_y: std_logic;
	signal w_paddle_x: integer;	
	signal w_paddle_y: integer;
	signal w_collision_paddle_occur: std_logic;
	signal w_collide_in_middle: std_logic;
	signal w_point_of_collide: std_logic;
	signal r_ball_vel_x:	integer := 3;		
	signal r_ball_vel_y:	integer := 3;
begin
	--for joystick of paddle1
	w_js1_UP <= '1' when i_joystick_p1 > 33 else '0';	
	w_js1_DOWN <= '1' when i_joystick_p1 < 29 else '0';
	w_in_range <= '1' when io_paddle1_y > 0 and io_paddle1_y < D_HEIGHT - P_HEIGHT else '0';
	
	update_paddle1: process(i_clk)
	begin
		if rising_edge(i_clk) then
			if w_in_range = '1' then
			
				if i_update_paddle1 = '1' and io_updateP1_oneTime = '0' then
					if w_js1_UP = '1' then
						io_paddle1_y <= io_paddle1_y - 3;
					elsif w_js1_DOWN = '1' then
						io_paddle1_y <= io_paddle1_y + 3;
					end if;
				else
					io_updateP1_oneTime <= '1';
				end if;
				-------paddle2
				if i_update_paddle2 = '1' and io_updateP2_oneTime = '0' then
					--control for the IA
					if i_allow_com = '1' then
						io_paddle2_y <= (io_paddle2_y + (io_ball_y - (io_paddle2_y + P_HEIGHT / 2))) / 8; 
					end if;
				else
					io_updateP2_oneTime <= '1';
				end if;
				
			end if;--range
		end if;--end rising edge
	end process;
	--for ball collsion
	w_collision_y <= '1' when (io_ball_y - B_RADIUS < 0) or (io_ball_y + B_RADIUS > D_HEIGHT) else '0';
	
	w_collision_paddle_occur <= '1' when (io_ball_x - B_RADIUS < w_paddle_x + P_WIDTH) or  --ball.left < paddle.right
										 (io_ball_x + B_RADIUS > w_paddle_x) or				  				--ball.right > paddle.left
										 (io_ball_y + B_RADIUS > w_paddle_y) or				  				--ball.bottom > paddle.top
										 (io_ball_y - B_RADIUS < w_paddle_y + P_HEIGHT) else '0'; 				--ball.top < paddle.bottom 
	
	--with who could collide the ball
	w_paddle_x <= i_paddle1_x when io_ball_x + B_RADIUS < D_WIDTH / 2 else i_paddle2_x;--if true can collide with paddle1
	w_paddle_y <= io_paddle1_y when io_ball_x + B_RADIUS < D_WIDTH / 2 else io_paddle2_y;
	
	w_point_of_collide <= '1' when (io_ball_y > w_paddle_y + P_HEIGHT/2 and io_ball_y < w_paddle_y + P_HEIGHT) else '0'; --paddle from middle to bottom
									  
							 --or (w_paddle_y <= io_ball_y and w_paddle_y + P_HEIGHT/2 < io_ball_y); --paddle from middle to top
	w_collide_in_middle <= '1' when (w_paddle_y + P_HEIGHT/2) = io_ball_y else '0'; 
	
	update_ball: process(i_clk)
	begin
		if rising_edge(i_clk) then
			if i_update_ball = '1' and io_updateB_oneTime = '0' then
				io_ball_x <= io_ball_x + r_ball_vel_x;
				io_ball_y <= io_ball_y + r_ball_vel_y;
				
				if w_collision_y = '1' then
					r_ball_vel_y <= -r_ball_vel_y; 
				end if;
				
				if io_ball_x - B_RADIUS < 0 then --collide in border of ps1 then point for ps2
					io_ball_x <= D_WIDTH/2;
					io_ball_y <= D_HEIGHT/2;
--					if o_scorep1 < 10 then
--						o_scorep1 = o_scorep1 + 1;
--					end if;
				else 
					io_ball_x <= D_WIDTH/2;
					io_ball_y <= D_HEIGHT/2;
					--score fot ps1
				end if;
				
				if w_collision_paddle_occur = '1' then
					
					if w_collide_in_middle = '1' then
						r_ball_vel_x <= -r_ball_vel_x;
						r_ball_vel_y <= 0;
					elsif w_point_of_collide = '1' then --bottom
						r_ball_vel_x <= -r_ball_vel_x;
						if r_ball_vel_y < 0 then
							r_ball_vel_y <= -r_ball_vel_y;
						else
							r_ball_vel_y <= r_ball_vel_y;
						end if;
					else --top
						r_ball_vel_x <= -r_ball_vel_x;
						if r_ball_vel_y  < 0 then
							r_ball_vel_y <= r_ball_vel_y;
						else
							r_ball_vel_y <= -r_ball_vel_y;
						end if;
					end if;
				end if;
				
			else
				io_updateB_oneTime <= '1';
			end if;
		end if;
	end process;

end Behavioral;

