----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:21 11/03/2022 
-- Design Name: 
-- Module Name:    BinaryTo7Seg - Behavioral 
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

entity BinaryTo7Seg is
	Port (  i_clk: in STD_LOGIC;
			  o_Segment_A  : out std_logic;
			  o_Segment_B  : out std_logic;
			  o_Segment_C  : out std_logic;
			  o_Segment_D  : out std_logic;
			  o_Segment_E  : out std_logic;
			  o_Segment_F  : out std_logic;
			  o_Segment_G  : out std_logic;			  
			  o_Segment_P  : out std_logic;
			  i_display1 : in  STD_LOGIC_VECTOR (3 downto 0);				  
			  i_display2 : in  STD_LOGIC_VECTOR (3 downto 0);			  
			  i_display3 : in  STD_LOGIC_VECTOR (3 downto 0);				  
			  i_display4 : in  STD_LOGIC_VECTOR (3 downto 0);				    
			  o_showDisplay : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end BinaryTo7Seg;

architecture Behavioral of BinaryTo7Seg is
signal selDisplay: std_logic_vector(1 downto 0) := "00";
signal auxDisplay: std_logic_vector(3 downto 0) :="0000";
signal w_toDisplay1 : STD_LOGIC_VECTOR (7 downto 0);
signal w_toDisplay2 : STD_LOGIC_VECTOR (7 downto 0);
signal w_toDisplay3 : STD_LOGIC_VECTOR (7 downto 0);
signal w_toDisplay4 : STD_LOGIC_VECTOR (7 downto 0);
signal w_segments: std_logic_vector(7 downto 0);
signal count: integer range 0 to 4 := 0;
begin
	f_divider: process(i_clk) begin
		if rising_edge(i_clk) then
			selDisplay <= std_logic_vector(to_unsigned(count, selDisplay'length));
			if count < 4 then
				count <= count + 1; --00 01 10 11
			else 
				count <= 0;
			end if;
		end if;
	end process f_divider;
	
	show: process(selDisplay, i_display1, i_display2, i_display3, i_display4, w_toDisplay1, w_toDisplay2,w_toDisplay3,w_toDisplay4) 
	begin
	
		case selDisplay is
			when "00" => auxDisplay <= "0111";			
			when "01" => auxDisplay <= "1011";	
			when "10" => auxDisplay <= "1101";
			when "11" => auxDisplay <= "1110";
			when others => auxDisplay <= "1111";
		end case;
		
		case auxDisplay is
			--display ones
			when "0111" => w_segments <= w_toDisplay1;
			--display tens
			when "1011" => w_segments <= w_toDisplay2;			
			
			when "1101" => w_segments <= w_toDisplay3;				
			
			when "1110" => w_segments <= w_toDisplay4;				
				
			when others => w_segments <= "11111111";
		end case;
		
		case i_display1 is
			when "0000" => w_toDisplay1 <= X"C0"; --"11000000";0
			when "0001" => w_toDisplay1 <= X"F9"; --"11111001";1
			when "0010" => w_toDisplay1 <= X"A4"; --"10100100";2
			when "0011" => w_toDisplay1 <= X"B0"; --"10110000";3
			when "0100" => w_toDisplay1 <= X"99"; --"10011001";4
			when "0101" => w_toDisplay1 <= X"92"; --"10010010";5
			when "0110" => w_toDisplay1 <= X"82"; --"10000010";6
			when "0111" => w_toDisplay1 <= X"B8"; --"10111000";7
			when "1000" => w_toDisplay1 <= X"80"; --"10000000";8
			when "1001" => w_toDisplay1 <= X"90"; --"10010000";9
			when "1010" => w_toDisplay1 <= X"88"; --"10001000";A
			when "1011" => w_toDisplay1 <= X"83"; --"10000011";B
			when "1100" => w_toDisplay1 <= X"C6"; --"11000110";C
			when "1101" => w_toDisplay1 <= X"A1"; --"10100001";D
			when "1110" => w_toDisplay1 <= X"86"; --"10000110";E
			when "1111" => w_toDisplay1 <= X"8E"; --"10001110";F
			when others => w_toDisplay1 <= X"8E"; 
		end case;

		case i_display2 is
			when "0000" => w_toDisplay2 <= X"C0"; --"11000000";0
			when "0001" => w_toDisplay2 <= X"F9"; --"11111001";1
			when "0010" => w_toDisplay2 <= X"A4"; --"10100100";2
			when "0011" => w_toDisplay2 <= X"B0"; --"10110000";3
			when "0100" => w_toDisplay2 <= X"99"; --"10011001";4
			when "0101" => w_toDisplay2 <= X"92"; --"10010010";5
			when "0110" => w_toDisplay2 <= X"82"; --"10000010";6
			when "0111" => w_toDisplay2 <= X"B8"; --"10111000";7
			when "1000" => w_toDisplay2 <= X"80"; --"10000000";8
			when "1001" => w_toDisplay2 <= X"90"; --"10010000";9
			when "1010" => w_toDisplay2 <= X"88"; --"10001000";A
			when "1011" => w_toDisplay2 <= X"83"; --"10000011";B
			when "1100" => w_toDisplay2 <= X"C6"; --"11000110";C
			when "1101" => w_toDisplay2 <= X"A1"; --"10100001";D
			when "1110" => w_toDisplay2 <= X"86"; --"10000110";E
			when "1111" => w_toDisplay2 <= X"8E"; --"10001110";F
			when others => w_toDisplay2 <= X"8E"; 
		end case;	
		
		case i_display3 is
			when "0000" => w_toDisplay3 <= X"C0"; --"11000000";0
			when "0001" => w_toDisplay3 <= X"F9"; --"11111001";1
			when "0010" => w_toDisplay3 <= X"A4"; --"10100100";2
			when "0011" => w_toDisplay3 <= X"B0"; --"10110000";3
			when "0100" => w_toDisplay3 <= X"99"; --"10011001";4
			when "0101" => w_toDisplay3 <= X"92"; --"10010010";5
			when "0110" => w_toDisplay3 <= X"82"; --"10000010";6
			when "0111" => w_toDisplay3 <= X"B8"; --"10111000";7
			when "1000" => w_toDisplay3 <= X"80"; --"10000000";8
			when "1001" => w_toDisplay3 <= X"90"; --"10010000";9
			when "1010" => w_toDisplay3 <= X"88"; --"10001000";A
			when "1011" => w_toDisplay3 <= X"83"; --"10000011";B
			when "1100" => w_toDisplay3 <= X"C6"; --"11000110";C
			when "1101" => w_toDisplay3 <= X"A1"; --"10100001";D
			when "1110" => w_toDisplay3 <= X"86"; --"10000110";E
			when "1111" => w_toDisplay3 <= X"8E"; --"10001110";F
			when others => w_toDisplay3 <= X"8E"; 
		end case;		
		
		case i_display4 is
			when "0000" => w_toDisplay4 <= X"C0"; --"11000000";0
			when "0001" => w_toDisplay4 <= X"F9"; --"11111001";1
			when "0010" => w_toDisplay4 <= X"A4"; --"10100100";2
			when "0011" => w_toDisplay4 <= X"B0"; --"10110000";3
			when "0100" => w_toDisplay4 <= X"99"; --"10011001";4
			when "0101" => w_toDisplay4 <= X"92"; --"10010010";5
			when "0110" => w_toDisplay4 <= X"82"; --"10000010";6
			when "0111" => w_toDisplay4 <= X"B8"; --"10111000";7
			when "1000" => w_toDisplay4 <= X"80"; --"10000000";8
			when "1001" => w_toDisplay4 <= X"90"; --"10010000";9
			when "1010" => w_toDisplay4 <= X"88"; --"10001000";A
			when "1011" => w_toDisplay4 <= X"83"; --"10000011";B
			when "1100" => w_toDisplay4 <= X"C6"; --"11000110";C
			when "1101" => w_toDisplay4 <= X"A1"; --"10100001";D
			when "1110" => w_toDisplay4 <= X"86"; --"10000110";E
			when "1111" => w_toDisplay4 <= X"8E"; --"10001110";F
			when others => w_toDisplay4 <= X"8E"; 
		end case;
		
	end process;
	
	o_Segment_A <= w_segments(0);
	o_Segment_B <= w_segments(1);
	o_Segment_C <= w_segments(2);
	o_Segment_D <= w_segments(3);
	o_Segment_E <= w_segments(4);
	o_Segment_F <= w_segments(5);
	o_Segment_G <= w_segments(6);	
	o_Segment_p <= w_segments(7);
	
	o_showDisplay <= auxDisplay;

end Behavioral;

