----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:06:28 11/03/2022 
-- Design Name: 
-- Module Name:    UART_RX_To_7_Seg_Top - Behavioral 
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

entity UART_RX_To_7_Seg_Top is
port (
    -- Main Clock (50 MHz)
    i_Clk         : in std_logic;
 
    -- UART RX Data
    i_UART_RX : in std_logic;
     
    o_Segment_A: out std_logic;    
	 o_Segment_B: out std_logic;
	 o_Segment_C: out std_logic;
	 o_Segment_D: out std_logic;
	 o_Segment_E: out std_logic;
	 o_Segment_F: out std_logic;
	 o_Segment_G: out std_logic;
	 o_Segment_P: out std_logic;
	 o_bit_rx: out std_logic;
	 o_displaySelected: out std_logic_vector(3 downto 0) 
    );
end UART_RX_To_7_Seg_Top;

architecture Behavioral of UART_RX_To_7_Seg_Top is

  signal w_RX_DV   : std_logic;
  signal w_RX_Byte : std_logic_vector(7 downto 0);
begin
	o_bit_rx <= w_RX_DV;

	UART_RX_Inst : entity work.UART_RX
    generic map (
      g_CLKS_PER_BIT => 434)            -- 50,000,000 / 115,200
    port map (
      i_Clk       => i_Clk,
      i_RX_Serial => i_UART_RX,
      o_RX_DV     => w_RX_DV,
      o_RX_Byte   => w_RX_Byte);
		
  -- Binary to 7-Segment Converter for Upper Digit
  SevenSeg1_Inst : entity work.BinaryTo7Seg
    port map (
      i_Clk       => i_Clk,
		o_Segment_A	=> o_Segment_A,	
		o_Segment_B	=>	o_Segment_B,
		o_Segment_C	=>	o_Segment_C,
		o_Segment_D	=>	o_Segment_D,
		o_Segment_E	=>	o_Segment_E,
		o_Segment_F	=>	o_Segment_F,
		o_Segment_G	=>	o_Segment_G,
		o_Segment_P	=>	o_Segment_P,
      i_display1 	=> w_RX_Byte(3 downto 0),
		i_display2 	=> w_RX_Byte(7 downto 4),
		i_display3 	=> "0000",
		i_display4 	=> "0000",
		o_showDisplay => o_displaySelected
      );

end Behavioral;

