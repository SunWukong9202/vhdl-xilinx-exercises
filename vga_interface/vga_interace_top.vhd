----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:42:06 11/16/2022 
-- Design Name: 
-- Module Name:    vga_interace_top - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_interace_top is
	port(
		i_clk: in std_logic;
		o_R0,o_R1,o_R2: out std_logic;	--RED COLOR	
		o_G0,o_G1,o_G2: out std_logic;	--GREEN COLOR	
		o_B0,o_B1: out std_logic;		--BLUE COLOR
		o_HS: out std_logic;
		o_VS: out std_logic;
		i_joystick_p1: in std_logic_vector(5 downto 0)
	);
end vga_interace_top;
	
architecture Behavioral of vga_interace_top is
	--constant FREQLIMIT: integer := 50000000; --44.9 MHZ for 1024x768 to 43HZ
	--constants to produce the proper drive signal in horizontal way
	constant H_ACTIVE_AREA: integer := 800;	
	constant H_END_FP: integer := 856;--FP - FRONT PORCH	
	constant H_END_SPULSE: integer := 976;--SYNC PULSE
	constant H_END_BP: integer := 1040;-- BACK PORCH
	
	--same as above, but for vertical area
	constant V_ACTIVE_AREA: integer := 600;	
	constant V_END_FP: integer := 637;--FP - FRONT PORCH	
	constant V_END_SPULSE: integer := 643;
	constant V_END_BP: integer := 666;
	
	--constants for paddle and ball size
	constant P_HEIGHT: integer := 100;
	constant P_WIDTH: integer := 10;
	constant B_RADIUS: integer := 8; --16 PER SIDE
	
	--counts to keep track of position of the actual pixel being rended
	signal r_count_x: integer range 0 to 800 := 0;	--hs 
	signal r_count_y: integer range 0 to 600 := 0;	--vs
	
	--pulses for HS and VS drive signals to proper show image
	signal w_HS: std_logic;	
	signal w_VS: std_logic;
	
	--to keep track of position of paddles and ball
	constant w_paddle1_x: integer := 5; --change to constant
	--signal w_paddle1_y: integer range 0 to D_HEIGHT - P_HEIGHT:= D_WIDTH/2 - P_HEIGHT/2;	
	signal w_paddle1_y: integer:= V_ACTIVE_AREA/2 - P_HEIGHT/2;
	constant w_paddle2_x: integer := 5; --change to constant 
	--signal w_paddle2_y: integer := D_WIDTH/2 - P_HEIGHT/2;	
	signal w_paddle2_y: integer := H_ACTIVE_AREA/2 - P_HEIGHT/2;

	signal w_ball_x: integer:= H_ACTIVE_AREA/2;
	signal w_ball_Y: integer := V_ACTIVE_AREA/2;
	
	--hints for active pixels on the display
	signal w_HD_active: std_logic;	
	signal w_VD_active: std_logic;
	--for control draw
	signal w_draw_paddle1: std_logic := '0';	
	signal w_draw_paddle2: std_logic := '0';	
	signal w_draw_ball: std_logic := '0';
	--for control update
	signal w_update_paddle1: std_logic := '0';	
	signal w_update_paddle2: std_logic := '0';	
	signal w_update_ball: std_logic := '0';
		signal w_drawB_oneTime: std_logic := '0'; --draw ball only one time per frame
	signal w_drawP1_oneTime: std_logic := '0';
	signal w_drawP2_oneTime: std_logic := '0';
	
	signal w_updateB_oneTime: std_logic := '0'; --draw ball only one time per frame
	signal w_updateP1_oneTime: std_logic := '0';
	signal w_updateP2_oneTime: std_logic := '0';
	signal w_joystick_p1: integer range 0 to 64 := 31;--middle
	signal w_render: std_logic;
	signal w_inDisplay: std_logic;
begin
	
	process(i_clk) 
	begin
		if rising_edge(i_clk) then
			if r_count_y < V_ACTIVE_AREA then
				--begin drawing, then not allow update
				if w_draw_ball = '1' then 
					w_update_ball <= '0';
				--if already was drawn, we can update movement
				else
					w_update_ball <= '1';
				end if;
				--same as above for paddles
				if w_draw_paddle1 = '1' then
					w_update_paddle1 <= '0';
				else
					w_update_paddle1 <= '1';
 				end if;
				
				if w_draw_paddle2 = '1' then
					w_update_paddle2 <= '0';
				else
					w_update_paddle2 <= '1';
 				end if;
			else
				--allow the nextFrame to draw and update
--				w_drawB_oneTime <= '0';
--				w_drawP1_oneTime <= '0';				
--				w_drawP2_oneTime <= '0';
				w_updateB_oneTime <= '0';
				w_updateP1_oneTime <= '0';				
				w_updateP2_oneTime <= '0';
			end if;
		end if;
	end process;
	
	render: entity work.draw_module
	generic map(
		D_WIDTH			=> H_ACTIVE_AREA,
		D_HEIGHT			=> V_ACTIVE_AREA,
		P_HEIGHT			=> P_HEIGHT,
		P_WIDTH			=> P_WIDTH,
		B_RADIUS			=> B_RADIUS,
		w_paddle1_x 	=> w_paddle1_x,
		w_paddle2_x		=> w_paddle2_x
	)
	port map(
		i_clk						=> i_clk,
		count_x					=> r_count_x,
		count_y					=> r_count_y,
		w_ball_x					=> w_ball_x,
		w_ball_Y					=> w_ball_Y,
		w_paddle1_y 			=> w_paddle1_y,
		w_paddle2_y				=> w_paddle2_y,
		o_draw_paddle1			=> w_draw_paddle1,
		o_draw_paddle2			=> w_draw_paddle2,
		o_draw_ball				=> w_draw_ball,
		io_drawB_oneTime		=> w_drawB_oneTime,
		io_drawP1_oneTime		=> w_drawP1_oneTime,
		io_drawP2_oneTime		=>	w_drawP2_oneTime
	);
	
	w_joystick_p1 <= to_integer(unsigned(i_joystick_p1));
	
	update: entity work.update_module
	generic map(
		D_WIDTH			=> H_ACTIVE_AREA,
		D_HEIGHT			=> V_ACTIVE_AREA,
		P_HEIGHT			=> P_HEIGHT,
		P_WIDTH			=> P_WIDTH,
		B_RADIUS			=> B_RADIUS
	)
	port map(
		i_clk						=> i_clk, 
		i_joystick_p1			=> w_joystick_p1,
		i_update_paddle1		=> w_update_paddle1,
		i_update_paddle2		=> w_update_paddle2,
		i_update_ball			=> w_update_ball,
		io_paddle1_y			=> w_paddle1_y,
		i_paddle1_x				=> w_paddle1_x,
		io_paddle2_y			=> w_paddle2_y,
		i_paddle2_x				=> w_paddle2_x,--
		io_ball_x				=> w_ball_x,
		io_ball_y				=> w_ball_y,
		i_allow_com				=> '1', --i_allow_com,
		io_updateB_oneTime	=> w_updateB_oneTime,
		io_updateP1_oneTime	=> w_updateP1_oneTime,
		io_updateP2_oneTime	=> w_updateP2_oneTime
		--o_scorep1 
		--o_scoreP2 
	);
	
	w_render <= '1' when ((w_draw_paddle1 = '1') or (w_draw_paddle2 = '1') or (w_draw_ball = '1')) else '0';
	
	w_inDisplay <= '1' when w_HD_active = '1' and w_VD_active = '1' else '0';
	--drive colors
	o_R0 <= '1' when w_inDisplay = '1' and w_render = '1' else '0';
	o_R1 <= '1' when w_inDisplay = '1' and w_render = '1' else '0';
	o_R2 <= '1' when w_inDisplay = '1' and w_render = '1' else '0';
	o_G0 <= '1' when w_inDisplay = '1' and w_render = '1' else '0';
	o_G1 <= '1' when w_inDisplay = '1' and w_render = '1' else '0';
	o_G2 <= '1' when w_inDisplay = '1' and w_render = '1' else '0';
	o_B0 <= '1' when w_inDisplay = '1' and w_render = '1' else '0';
	o_B1 <= '1' when w_inDisplay = '1' and w_render = '1' else '0';
	
	o_HS <= w_HS;	
	o_VS <= w_VS;
	
	vga_controller: entity work.vga_controller
	generic map(
		--FREQLIMIT: integer;
		H_ACTIVE_AREA => H_ACTIVE_AREA,
		H_END_FP			=> H_END_FP,
		H_END_SPULSE	=> H_END_SPULSE,
		H_END_BP			=> H_END_BP,
		V_ACTIVE_AREA	=> V_ACTIVE_AREA,
		V_END_FP			=> V_END_FP,
		V_END_SPULSE	=> V_END_SPULSE,
		V_END_BP			=> V_END_BP
	)
	port map(
		i_clk       => i_clk, 
		o_HS  		=> w_HS,
		o_VS			=> W_VS,
		o_HD_active	=> w_HD_active,
		o_VD_active => w_VD_active,
		o_col_count => r_count_x,
		o_row_count => r_count_y
	);
					 
end Behavioral;

