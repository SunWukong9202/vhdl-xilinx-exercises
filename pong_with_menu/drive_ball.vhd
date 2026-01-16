----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:58 11/21/2022 
-- Design Name: 
-- Module Name:    drive_ball - Behavioral 
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

entity drive_ball is
  generic(
		D_WIDTH: integer := 800;
		D_HEIGHT: integer := 600;
		P_HEIGHT: integer := 100;
		P_WIDTH: integer := 10;
		B_RADIUS: integer := 8; --16 PER SIDE
		w_paddle1_x: integer := 5 --change to constant		
	);
	port(
		i_clk: in std_logic;
		count_x: in integer;
		count_y: in integer;
		i_paddle1_y: in integer;
		i_paddle2_y: in integer;
		o_draw_ball: out std_logic;
		o_ball_y: out integer
	);
end drive_ball;

architecture Behavioral of drive_ball is
	constant w_paddle2_x: integer := D_WIDTH - P_WIDTH - w_paddle1_x;
	--for draw
	signal w_inBall: std_logic;
	--for movement
	signal w_ball_x: integer range 0 to D_WIDTH := D_WIDTH/2;
	signal w_ball_Y: integer range 0 to D_HEIGHT := D_HEIGHT/2;
	signal w_collision_y: std_logic;
	signal w_collision_paddle_occur: std_logic;
	signal w_collide_in_middle: std_logic;
	signal w_point_of_collide: std_logic;
	signal w_paddle_x: integer;	
	signal w_paddle_y: integer;
	signal r_ball_vel_x:	integer := 3;		
	signal r_ball_vel_y:	integer := 3;
	signal w_one_frame: std_logic := '0';
begin
	
  o_ball_y <= w_ball_y;
	
  w_inBall <= '1' when count_x >= w_ball_x - B_RADIUS and count_x <= w_ball_x + B_RADIUS  -- left and right side, respectively
  and count_y >= w_ball_y - B_RADIUS and count_y <= w_ball_y + B_RADIUS -- top and bottom side , //
  else '0'; 

  draw_ball: process(i_clk) 
  begin
  if rising_edge(i_clk) then
		if count_y < D_HEIGHT then
			 if w_inBall = '1' and w_one_frame = '0' then
				o_draw_ball <= '1';
			 else
				w_one_frame <= '1';
				o_draw_ball <= '0';
			 end if;
		else
			w_one_frame <= '0';
		end if;
  end if;
  end process;
  
--  --for ball collsion
--	w_collision_y <= '1' when (w_ball_y - B_RADIUS < 0) or (w_ball_y + B_RADIUS > D_HEIGHT) else '0';
--	
----	w_collision_paddle_occur <= '1' when (w_ball_x - B_RADIUS < (w_paddle_x + P_WIDTH)) or  --ball.left < paddle.right
----										 (w_ball_x + B_RADIUS > w_paddle_x) or				  				--ball.right > paddle.left
----										 (w_ball_y + B_RADIUS > w_paddle_y) or				  				--ball.bottom > paddle.top
----										 (w_ball_y - B_RADIUS < (w_paddle_y + P_HEIGHT)) else '0'; 				--ball.top < paddle.bottom 
--
--	
--	w_collision_paddle_occur <= '1' when (w_ball_x - B_RADIUS < (w_paddle_x + P_WIDTH)) or  --ball.left < paddle.right
--										 (w_ball_x + B_RADIUS > w_paddle_x) or				  				--ball.right > paddle.left
--										 (w_ball_y + B_RADIUS > w_paddle_y) or				  				--ball.bottom > paddle.top
--										 (w_ball_y - B_RADIUS < (w_paddle_y + P_HEIGHT)) else '0'; 				--ball.top < paddle.bottom 
--
--	--with who could collide the ball
--	w_paddle_x <= w_paddle1_x when w_ball_x + b_radius < (d_width / 2) else w_paddle2_x;--if true can collide with paddle1
--	w_paddle_y <= i_paddle1_y when w_ball_x + b_radius < (d_width / 2) else i_paddle2_y;
--
--	
--	w_point_of_collide <= '1' when (w_ball_y > w_paddle_y + P_HEIGHT/2 and w_ball_y < w_paddle_y + P_HEIGHT) else '0'; --paddle from middle to bottom
--									  
--							 --or (w_paddle_y <= w_ball_y and w_paddle_y + P_HEIGHT/2 < w_ball_y); --paddle from middle to top
--	w_collide_in_middle <= '1' when (w_paddle_y + P_HEIGHT/2) = w_ball_y else '0'; 
--	
--	update_ball: process(i_clk)
--	begin
--		if rising_edge(i_clk) then
--		
--			w_ball_x <= w_ball_x + r_ball_vel_x;
--			w_ball_y <= w_ball_y + r_ball_vel_y;
--			
--			if w_collision_y = '1' then
--				r_ball_vel_y <= -r_ball_vel_y; 
--			end if;
--			
--			if w_ball_x - B_RADIUS < 0 then --collide in border of ps1 then point for ps2
--				w_ball_x <= D_WIDTH/2;
--				w_ball_y <= D_HEIGHT/2;
--			elsif w_ball_x + B_RADIUS > D_WIDTH then 
--				w_ball_x <= D_WIDTH/2;
--				w_ball_y <= D_HEIGHT/2;
--				--score fot ps1
--			end if;
--			
--			if w_collision_paddle_occur = '1' then
--				
--				if w_collide_in_middle = '1' then
--					r_ball_vel_x <= -r_ball_vel_x;
--					r_ball_vel_y <= 0;
--				elsif w_point_of_collide = '1' then --bottom
--					r_ball_vel_x <= -r_ball_vel_x;
--					if r_ball_vel_y < 0 then
--						r_ball_vel_y <= -r_ball_vel_y;
--					else
--						r_ball_vel_y <= r_ball_vel_y;
--					end if;
--				else --top
--					r_ball_vel_x <= -r_ball_vel_x;
--					if r_ball_vel_y  < 0 then
--						r_ball_vel_y <= r_ball_vel_y;
--					else
--						r_ball_vel_y <= -r_ball_vel_y;
--					end if;
--				end if;
--			end if;
--		end if;
--	end process;

end Behavioral;

