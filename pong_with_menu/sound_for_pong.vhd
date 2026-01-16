----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:59 11/24/2022 
-- Design Name: 
-- Module Name:    sound_for_pong - Behavioral 
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

entity sound_for_pong is
	port(
		i_clk: in std_logic;
		paddle_sound_collide: out std_logic;
		do_wall_sound: in std_logic;		
		do_paddle_sound: in std_logic;		
		do_point_sound: in std_logic;
		do_select_sound: in std_logic
	);
end sound_for_pong;

architecture Behavioral of sound_for_pong is
	type t_sound_player is (s_pause, s_play_wall_sound, s_play_paddle_sound, s_play_point_sound, s_play_select_sound);
	
	signal r_sound_player: t_sound_player := s_pause; 
	
	constant PADDLE_LIMIT: integer := 4800000;	
	constant WALL_LIMIT: integer := 800000;
	constant POINT_LIMIT: integer := 12850000;
	constant SELECT_LIMIT: integer :=10000000;

	constant A4: integer := 54466; --A#4 note frequency(459hz)
	signal paddle_sound: std_logic := '0';
	signal paddle_freq: integer := 0;
	signal paddle_duration: integer range 0 to PADDLE_LIMIT := 0;
	
	constant NOTE_WALL: integer := 110619; --226hz 
	signal wall_sound: std_logic := '0';
	signal wall_freq: integer := 0;
	signal wall_duration: integer range 0 to WALL_LIMIT:= 0;
	
	constant NOTE_POINT: integer := 51020; --490hz
	signal point_sound: std_logic := '0';
	signal point_freq: integer := 0;
	signal point_duration: integer range 0 to POINT_LIMIT:= 0;
	
	constant NOTE_SELECT: integer := 91575; --273hz
	signal select_sound: std_logic := '0';
	signal select_freq: integer := 0;
	signal select_duration: integer range 0 to SELECT_LIMIT:= 0;
	
	signal w_do_wall_sound: std_logic := '0';
	signal w_do_paddle_sound: std_logic := '0';
	signal w_do_point_sound: std_logic := '0';
begin
	
	w_do_wall_sound <= do_wall_sound;
	w_do_paddle_sound <= do_paddle_sound;
	w_do_point_sound <= do_point_sound;
	
	paddle_sound_collide <= point_sound 	when w_do_point_sound 	= '1' else 
									paddle_sound 	when w_do_paddle_sound = '1' else
									wall_sound		when w_do_wall_sound 	= '1'	else
									select_sound 	when do_select_sound = '1' else									
									'0';
									
	process(i_clk)
	begin
		if rising_edge(i_clk) then
			case r_sound_player is
				when s_pause =>
					if w_do_point_sound = '1' then
						r_sound_player <= s_play_point_sound;
					elsif w_do_wall_sound = '1' then
						r_sound_player <= s_play_wall_sound;
					elsif w_do_paddle_sound = '1' then
						r_sound_player <= s_play_paddle_sound;
					elsif do_select_sound = '1' then
						r_sound_player <= s_play_select_sound;
					end if;
					
				when s_play_paddle_sound =>
					if paddle_duration < PADDLE_LIMIT then--p6ms
						paddle_duration <= paddle_duration + 1;
						if paddle_freq < A4 then
							paddle_freq <= paddle_freq + 1;
						else
							paddle_freq <= 0;
							paddle_sound <= not paddle_sound;
						end if;
					else
						r_sound_player <= s_pause;
						paddle_duration <= 0;
					end if;
					
				when s_play_wall_sound =>
					if wall_duration < WALL_LIMIT then --16ms
						wall_duration <= wall_duration + 1;
						if wall_freq < NOTE_WALL then
							wall_freq <= wall_freq + 1;
						else
							wall_freq <= 0;
							wall_sound <= not wall_sound;
						end if;
					else
						r_sound_player <= s_pause;
						wall_duration <= 0;
					end if;
					
				when s_play_point_sound =>
					if point_duration < POINT_LIMIT then --16ms
						point_duration  <= point_duration  + 1;
						if point_freq < NOTE_POINT then
							point_freq <= point_freq + 1;
						else
							point_freq <= 0;
							point_sound <= not point_sound;
						end if;
					else
						r_sound_player <= s_pause;
						point_duration <= 0;
					end if;
				
				when s_play_select_sound =>
					if select_duration < SELECT_LIMIT then --16ms
						select_duration  <= select_duration  + 1;
						if select_freq < NOTE_SELECT then
							select_freq <= select_freq + 1;
						else
							select_freq <= 0;
							select_sound <= not select_sound;
						end if;
					else
						r_sound_player <= s_pause;
						select_duration <= 0;
					end if;
					
				when others => r_sound_player <= s_pause;
			end case;
		end if;
	end process;

end Behavioral;


