----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:27:42 11/17/2022 
-- Design Name: 
-- Module Name:    vga_controller - Behavioral 
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

entity vga_controller is
	generic(
		--FREQLIMIT: integer;
		H_ACTIVE_AREA: integer;
		H_END_FP: integer;		
		H_END_SPULSE: integer;
		H_END_BP: integer;
		
		V_ACTIVE_AREA: integer;
		V_END_FP: integer;
		V_END_SPULSE: integer;
		V_END_BP: integer
	);
	port(
		i_clk: in std_logic;
		o_HS: out std_logic;
		o_VS: out std_logic;
		o_HD_active: out std_logic; -- HD - Horizonal Display actived time		
		o_VD_active: out std_logic; -- VD - V-------- D------ ------- ----
		o_col_count: out integer;
		o_row_count: out integer
	);
end vga_controller;

architecture Behavioral of vga_controller is
	
	signal w_HS_count: integer range 0 to H_END_BP := 0;	
	signal w_VS_count: integer range 0 to V_END_BP := 0;
	--signal freq_count: integer range 0 to FREQLIMIT := 0;
begin

	process(i_clk)
	begin
		if rising_edge(i_clk) then
				
				if w_HS_count < H_END_BP then
					w_HS_count <= w_HS_count + 1;
				elsif w_VS_count = V_END_BP then
					w_VS_count <= 0;
					w_HS_count <= 0;
				else
					w_HS_count <= 0;
					w_VS_count <= w_VS_count + 1;
				end if;
			
		end if;
	end process;	
	
	o_HS <= '1' when (w_HS_count < H_END_FP or w_HS_count > H_END_SPULSE - 1) else '0';
	o_VS <= '1' when (w_VS_count < V_END_FP or w_VS_count > V_END_SPULSE - 1) else '0';
	
	o_HD_active <= '1' when w_HS_count < H_ACTIVE_AREA else '0';
	o_VD_active <= '1' when w_VS_count < V_ACTIVE_AREA else '0';
	
	o_col_count <= w_HS_count when w_HS_count < H_ACTIVE_AREA else 0;
	o_row_count <= w_HS_count when w_VS_count < V_ACTIVE_AREA else 0;
	
end Behavioral;

