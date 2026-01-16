--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: pong_TOP_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 21 23:02:22 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm pong_TOP -w -dir netgen/synthesis -ofmt vhdl -sim pong_TOP.ngc pong_TOP_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: pong_TOP.ngc
-- Output file	: C:\Users\Santiago\pong_game - copia\netgen\synthesis\pong_TOP_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: pong_TOP
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity pong_TOP is
  port (
    o_VS : out STD_LOGIC; 
    o_B0 : out STD_LOGIC; 
    o_B1 : out STD_LOGIC; 
    o_G0 : out STD_LOGIC; 
    o_G1 : out STD_LOGIC; 
    o_G2 : out STD_LOGIC; 
    o_HS : out STD_LOGIC; 
    o_R0 : out STD_LOGIC; 
    o_R1 : out STD_LOGIC; 
    o_R2 : out STD_LOGIC; 
    i_clk : in STD_LOGIC := 'X' 
  );
end pong_TOP;

architecture Structure of pong_TOP is
  signal Maddsub_w_ball_x_addsub0000_cy_2_rt_22 : STD_LOGIC; 
  signal Maddsub_w_ball_x_addsub0000_cy_3_rt_24 : STD_LOGIC; 
  signal Maddsub_w_ball_x_addsub0000_cy_4_rt_26 : STD_LOGIC; 
  signal Maddsub_w_ball_x_addsub0000_cy_5_rt_28 : STD_LOGIC; 
  signal Maddsub_w_ball_x_addsub0000_cy_6_rt_30 : STD_LOGIC; 
  signal Maddsub_w_ball_x_addsub0000_cy_7_rt_32 : STD_LOGIC; 
  signal Maddsub_w_ball_x_addsub0000_cy_8_rt_34 : STD_LOGIC; 
  signal Maddsub_w_ball_x_addsub0000_xor_9_rt_37 : STD_LOGIC; 
  signal Mcompar_w_vel_dir_y_cmp_ge0000_lut_0_Q_230 : STD_LOGIC; 
  signal Mcompar_w_vel_dir_y_cmp_ge0000_lut_1_Q_231 : STD_LOGIC; 
  signal Mcompar_w_vel_dir_y_cmp_ge0000_lut_3_Q_232 : STD_LOGIC; 
  signal Mcompar_w_vel_dir_y_cmp_ge0000_lut_5_Q_233 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N151_bdd0 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal \Q_sub0001_6)\ : STD_LOGIC; 
  signal \Q_sub0001_9)\ : STD_LOGIC; 
  signal i_clk_BUFGP_287 : STD_LOGIC; 
  signal o_HS_OBUF_294 : STD_LOGIC; 
  signal o_R2_OBUF_298 : STD_LOGIC; 
  signal o_VS_OBUF_300 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_1_rt_326 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_2_rt_328 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_3_rt_330 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_4_rt_332 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_5_rt_334 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_6_rt_336 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_7_rt_338 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_8_rt_340 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_cy_9_rt_342 : STD_LOGIC; 
  signal vga_controller_Mcount_w_HS_count_xor_10_rt_344 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_cy_1_rt_347 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_cy_2_rt_349 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_cy_3_rt_351 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_cy_4_rt_353 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_cy_5_rt_355 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_cy_6_rt_357 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_cy_7_rt_359 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_cy_8_rt_361 : STD_LOGIC; 
  signal vga_controller_Mcount_w_VS_count_xor_9_rt_363 : STD_LOGIC; 
  signal vga_controller_Result_0_1 : STD_LOGIC; 
  signal vga_controller_Result_1_1 : STD_LOGIC; 
  signal vga_controller_Result_2_1 : STD_LOGIC; 
  signal vga_controller_Result_3_1 : STD_LOGIC; 
  signal vga_controller_Result_4_1 : STD_LOGIC; 
  signal vga_controller_Result_5_1 : STD_LOGIC; 
  signal vga_controller_Result_6_1 : STD_LOGIC; 
  signal vga_controller_Result_7_1 : STD_LOGIC; 
  signal vga_controller_Result_8_1 : STD_LOGIC; 
  signal vga_controller_Result_9_1 : STD_LOGIC; 
  signal vga_controller_o_HS_or000036_385 : STD_LOGIC; 
  signal vga_controller_o_HS_or00005_386 : STD_LOGIC; 
  signal vga_controller_o_VS_or000021_387 : STD_LOGIC; 
  signal vga_controller_o_VS_or000067_388 : STD_LOGIC; 
  signal vga_controller_o_VS_or000072_389 : STD_LOGIC; 
  signal vga_controller_w_VS_count_and0000 : STD_LOGIC; 
  signal vga_controller_w_VS_count_and000010_412 : STD_LOGIC; 
  signal vga_controller_w_VS_count_and000013_413 : STD_LOGIC; 
  signal vga_controller_w_VS_count_and000024_414 : STD_LOGIC; 
  signal vga_controller_w_VS_count_cmp_lt0000 : STD_LOGIC; 
  signal vga_controller_w_VS_count_not0001 : STD_LOGIC; 
  signal w_HD_active : STD_LOGIC; 
  signal w_VD_active : STD_LOGIC; 
  signal w_ball_Y_cmp_gt0000 : STD_LOGIC; 
  signal w_ball_Y_cmp_gt0000218_440 : STD_LOGIC; 
  signal w_ball_Y_cmp_gt0000226_441 : STD_LOGIC; 
  signal w_ball_Y_not0001 : STD_LOGIC; 
  signal w_ball_Y_not00011_453 : STD_LOGIC; 
  signal w_inBall_cmp_ge0000 : STD_LOGIC; 
  signal w_inBall_cmp_ge0001 : STD_LOGIC; 
  signal w_inBall_cmp_le0000 : STD_LOGIC; 
  signal w_inBall_cmp_le0001 : STD_LOGIC; 
  signal w_one_per_frame_488 : STD_LOGIC; 
  signal w_one_per_frame_inv : STD_LOGIC; 
  signal w_vel_dir_y_490 : STD_LOGIC; 
  signal w_vel_dir_y_cmp_ge0000 : STD_LOGIC; 
  signal w_vel_dir_y_not0002 : STD_LOGIC; 
  signal w_vel_dir_y_not0002118_493 : STD_LOGIC; 
  signal w_vel_dir_y_not0002124_494 : STD_LOGIC; 
  signal w_vel_dir_y_not0003 : STD_LOGIC; 
  signal Maddsub_w_ball_Y_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Maddsub_w_ball_Y_addsub0000_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Maddsub_w_ball_x_addsub0000_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Maddsub_w_ball_x_addsub0000_lut : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Mcompar_w_inBall_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcompar_w_inBall_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcompar_w_inBall_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcompar_w_inBall_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcompar_w_inBall_cmp_le0000_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_w_inBall_cmp_le0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcompar_w_inBall_cmp_le0001_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mcompar_w_inBall_cmp_le0001_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Mcompar_w_vel_dir_y_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal Q_add0001 : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal add0000_add0000 : STD_LOGIC_VECTOR ( 9 downto 3 ); 
  signal r_count_x : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal r_count_y : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal sub0000_sub0000 : STD_LOGIC_VECTOR ( 10 downto 8 ); 
  signal vga_controller_Mcount_w_HS_count_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal vga_controller_Mcount_w_HS_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_controller_Mcount_w_VS_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal vga_controller_Mcount_w_VS_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal vga_controller_Result : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal vga_controller_w_HS_count : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal vga_controller_w_VS_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal w_ball_Y : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal w_ball_Y_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal w_ball_Y_mux0003 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal w_ball_x : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal w_ball_x_addsub0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal w_ball_x_mux0003 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => Mcompar_w_inBall_cmp_le0000_lut(10)
    );
  w_ball_Y_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(9),
      Q => w_ball_Y(0)
    );
  w_ball_Y_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(8),
      Q => w_ball_Y(1)
    );
  w_ball_Y_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(7),
      Q => w_ball_Y(2)
    );
  w_ball_Y_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(6),
      Q => w_ball_Y(3)
    );
  w_ball_Y_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(5),
      Q => w_ball_Y(4)
    );
  w_ball_Y_5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(4),
      Q => w_ball_Y(5)
    );
  w_ball_Y_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(3),
      Q => w_ball_Y(6)
    );
  w_ball_Y_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(2),
      Q => w_ball_Y(7)
    );
  w_ball_Y_8 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(1),
      Q => w_ball_Y(8)
    );
  w_ball_Y_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not00011_453,
      D => w_ball_Y_mux0003(0),
      Q => w_ball_Y(9)
    );
  w_vel_dir_y : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_vel_dir_y_not0002,
      D => w_vel_dir_y_not0003,
      Q => w_vel_dir_y_490
    );
  w_one_per_frame : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_one_per_frame_inv,
      D => Mcompar_w_inBall_cmp_le0000_lut(10),
      R => w_vel_dir_y_cmp_ge0000,
      Q => w_one_per_frame_488
    );
  w_ball_x_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(9),
      Q => w_ball_x(0)
    );
  w_ball_x_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(8),
      Q => w_ball_x(1)
    );
  w_ball_x_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(7),
      Q => w_ball_x(2)
    );
  w_ball_x_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(6),
      Q => w_ball_x(3)
    );
  w_ball_x_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(5),
      Q => w_ball_x(4)
    );
  w_ball_x_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(4),
      Q => w_ball_x(5)
    );
  w_ball_x_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(3),
      Q => w_ball_x(6)
    );
  w_ball_x_7 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(2),
      Q => w_ball_x(7)
    );
  w_ball_x_8 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(1),
      Q => w_ball_x(8)
    );
  w_ball_x_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => w_ball_Y_not0001,
      D => w_ball_x_mux0003(0),
      Q => w_ball_x(9)
    );
  Maddsub_w_ball_Y_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => w_ball_Y(0),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(0)
    );
  Maddsub_w_ball_Y_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => w_vel_dir_y_490,
      DI => w_ball_Y(0),
      S => Maddsub_w_ball_Y_addsub0000_lut(0),
      O => Maddsub_w_ball_Y_addsub0000_cy(0)
    );
  Maddsub_w_ball_Y_addsub0000_xor_0_Q : XORCY
    port map (
      CI => w_vel_dir_y_490,
      LI => Maddsub_w_ball_Y_addsub0000_lut(0),
      O => w_ball_Y_addsub0000(0)
    );
  Maddsub_w_ball_Y_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => w_ball_Y(1),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(1)
    );
  Maddsub_w_ball_Y_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(0),
      DI => w_ball_Y(1),
      S => Maddsub_w_ball_Y_addsub0000_lut(1),
      O => Maddsub_w_ball_Y_addsub0000_cy(1)
    );
  Maddsub_w_ball_Y_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(0),
      LI => Maddsub_w_ball_Y_addsub0000_lut(1),
      O => w_ball_Y_addsub0000(1)
    );
  Maddsub_w_ball_Y_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(2),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(2)
    );
  Maddsub_w_ball_Y_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(1),
      DI => w_ball_Y(2),
      S => Maddsub_w_ball_Y_addsub0000_lut(2),
      O => Maddsub_w_ball_Y_addsub0000_cy(2)
    );
  Maddsub_w_ball_Y_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(1),
      LI => Maddsub_w_ball_Y_addsub0000_lut(2),
      O => w_ball_Y_addsub0000(2)
    );
  Maddsub_w_ball_Y_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(3),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(3)
    );
  Maddsub_w_ball_Y_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(2),
      DI => w_ball_Y(3),
      S => Maddsub_w_ball_Y_addsub0000_lut(3),
      O => Maddsub_w_ball_Y_addsub0000_cy(3)
    );
  Maddsub_w_ball_Y_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(2),
      LI => Maddsub_w_ball_Y_addsub0000_lut(3),
      O => w_ball_Y_addsub0000(3)
    );
  Maddsub_w_ball_Y_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(4),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(4)
    );
  Maddsub_w_ball_Y_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(3),
      DI => w_ball_Y(4),
      S => Maddsub_w_ball_Y_addsub0000_lut(4),
      O => Maddsub_w_ball_Y_addsub0000_cy(4)
    );
  Maddsub_w_ball_Y_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(3),
      LI => Maddsub_w_ball_Y_addsub0000_lut(4),
      O => w_ball_Y_addsub0000(4)
    );
  Maddsub_w_ball_Y_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(5),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(5)
    );
  Maddsub_w_ball_Y_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(4),
      DI => w_ball_Y(5),
      S => Maddsub_w_ball_Y_addsub0000_lut(5),
      O => Maddsub_w_ball_Y_addsub0000_cy(5)
    );
  Maddsub_w_ball_Y_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(4),
      LI => Maddsub_w_ball_Y_addsub0000_lut(5),
      O => w_ball_Y_addsub0000(5)
    );
  Maddsub_w_ball_Y_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(6),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(6)
    );
  Maddsub_w_ball_Y_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(5),
      DI => w_ball_Y(6),
      S => Maddsub_w_ball_Y_addsub0000_lut(6),
      O => Maddsub_w_ball_Y_addsub0000_cy(6)
    );
  Maddsub_w_ball_Y_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(5),
      LI => Maddsub_w_ball_Y_addsub0000_lut(6),
      O => w_ball_Y_addsub0000(6)
    );
  Maddsub_w_ball_Y_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(7),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(7)
    );
  Maddsub_w_ball_Y_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(6),
      DI => w_ball_Y(7),
      S => Maddsub_w_ball_Y_addsub0000_lut(7),
      O => Maddsub_w_ball_Y_addsub0000_cy(7)
    );
  Maddsub_w_ball_Y_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(6),
      LI => Maddsub_w_ball_Y_addsub0000_lut(7),
      O => w_ball_Y_addsub0000(7)
    );
  Maddsub_w_ball_Y_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(8)
    );
  Maddsub_w_ball_Y_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(7),
      DI => w_ball_Y(8),
      S => Maddsub_w_ball_Y_addsub0000_lut(8),
      O => Maddsub_w_ball_Y_addsub0000_cy(8)
    );
  Maddsub_w_ball_Y_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(7),
      LI => Maddsub_w_ball_Y_addsub0000_lut(8),
      O => w_ball_Y_addsub0000(8)
    );
  Maddsub_w_ball_Y_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(9),
      I1 => w_vel_dir_y_490,
      O => Maddsub_w_ball_Y_addsub0000_lut(9)
    );
  Maddsub_w_ball_Y_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Maddsub_w_ball_Y_addsub0000_cy(8),
      LI => Maddsub_w_ball_Y_addsub0000_lut(9),
      O => w_ball_Y_addsub0000(9)
    );
  Maddsub_w_ball_x_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Mcompar_w_inBall_cmp_le0000_lut(10),
      S => Maddsub_w_ball_x_addsub0000_lut(0),
      O => Maddsub_w_ball_x_addsub0000_cy(0)
    );
  Maddsub_w_ball_x_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Maddsub_w_ball_x_addsub0000_lut(0),
      O => w_ball_x_addsub0000(0)
    );
  Maddsub_w_ball_x_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(0),
      DI => Mcompar_w_inBall_cmp_le0000_lut(10),
      S => Maddsub_w_ball_x_addsub0000_lut(1),
      O => Maddsub_w_ball_x_addsub0000_cy(1)
    );
  Maddsub_w_ball_x_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(0),
      LI => Maddsub_w_ball_x_addsub0000_lut(1),
      O => w_ball_x_addsub0000(1)
    );
  Maddsub_w_ball_x_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(1),
      DI => N0,
      S => Maddsub_w_ball_x_addsub0000_cy_2_rt_22,
      O => Maddsub_w_ball_x_addsub0000_cy(2)
    );
  Maddsub_w_ball_x_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(1),
      LI => Maddsub_w_ball_x_addsub0000_cy_2_rt_22,
      O => w_ball_x_addsub0000(2)
    );
  Maddsub_w_ball_x_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(2),
      DI => N0,
      S => Maddsub_w_ball_x_addsub0000_cy_3_rt_24,
      O => Maddsub_w_ball_x_addsub0000_cy(3)
    );
  Maddsub_w_ball_x_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(2),
      LI => Maddsub_w_ball_x_addsub0000_cy_3_rt_24,
      O => w_ball_x_addsub0000(3)
    );
  Maddsub_w_ball_x_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(3),
      DI => N0,
      S => Maddsub_w_ball_x_addsub0000_cy_4_rt_26,
      O => Maddsub_w_ball_x_addsub0000_cy(4)
    );
  Maddsub_w_ball_x_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(3),
      LI => Maddsub_w_ball_x_addsub0000_cy_4_rt_26,
      O => w_ball_x_addsub0000(4)
    );
  Maddsub_w_ball_x_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(4),
      DI => N0,
      S => Maddsub_w_ball_x_addsub0000_cy_5_rt_28,
      O => Maddsub_w_ball_x_addsub0000_cy(5)
    );
  Maddsub_w_ball_x_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(4),
      LI => Maddsub_w_ball_x_addsub0000_cy_5_rt_28,
      O => w_ball_x_addsub0000(5)
    );
  Maddsub_w_ball_x_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(5),
      DI => N0,
      S => Maddsub_w_ball_x_addsub0000_cy_6_rt_30,
      O => Maddsub_w_ball_x_addsub0000_cy(6)
    );
  Maddsub_w_ball_x_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(5),
      LI => Maddsub_w_ball_x_addsub0000_cy_6_rt_30,
      O => w_ball_x_addsub0000(6)
    );
  Maddsub_w_ball_x_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(6),
      DI => N0,
      S => Maddsub_w_ball_x_addsub0000_cy_7_rt_32,
      O => Maddsub_w_ball_x_addsub0000_cy(7)
    );
  Maddsub_w_ball_x_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(6),
      LI => Maddsub_w_ball_x_addsub0000_cy_7_rt_32,
      O => w_ball_x_addsub0000(7)
    );
  Maddsub_w_ball_x_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(7),
      DI => N0,
      S => Maddsub_w_ball_x_addsub0000_cy_8_rt_34,
      O => Maddsub_w_ball_x_addsub0000_cy(8)
    );
  Maddsub_w_ball_x_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(7),
      LI => Maddsub_w_ball_x_addsub0000_cy_8_rt_34,
      O => w_ball_x_addsub0000(8)
    );
  Maddsub_w_ball_x_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Maddsub_w_ball_x_addsub0000_cy(8),
      LI => Maddsub_w_ball_x_addsub0000_xor_9_rt_37,
      O => w_ball_x_addsub0000(9)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_x(0),
      I1 => w_ball_x(0),
      O => Mcompar_w_inBall_cmp_ge0000_lut(0)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_lut(10),
      DI => r_count_x(0),
      S => Mcompar_w_inBall_cmp_ge0000_lut(0),
      O => Mcompar_w_inBall_cmp_ge0000_cy(0)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_x(1),
      I1 => w_ball_x(1),
      O => Mcompar_w_inBall_cmp_ge0000_lut(1)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(0),
      DI => r_count_x(1),
      S => Mcompar_w_inBall_cmp_ge0000_lut(1),
      O => Mcompar_w_inBall_cmp_ge0000_cy(1)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_x(2),
      I1 => w_ball_x(2),
      O => Mcompar_w_inBall_cmp_ge0000_lut(2)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(1),
      DI => r_count_x(2),
      S => Mcompar_w_inBall_cmp_ge0000_lut(2),
      O => Mcompar_w_inBall_cmp_ge0000_cy(2)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(2),
      DI => r_count_x(3),
      S => Mcompar_w_inBall_cmp_ge0000_lut(3),
      O => Mcompar_w_inBall_cmp_ge0000_cy(3)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(3),
      DI => r_count_x(4),
      S => Mcompar_w_inBall_cmp_ge0000_lut(4),
      O => Mcompar_w_inBall_cmp_ge0000_cy(4)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(4),
      DI => r_count_x(5),
      S => Mcompar_w_inBall_cmp_ge0000_lut(5),
      O => Mcompar_w_inBall_cmp_ge0000_cy(5)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(5),
      DI => r_count_x(6),
      S => Mcompar_w_inBall_cmp_ge0000_lut(6),
      O => Mcompar_w_inBall_cmp_ge0000_cy(6)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(6),
      DI => r_count_x(7),
      S => Mcompar_w_inBall_cmp_ge0000_lut(7),
      O => Mcompar_w_inBall_cmp_ge0000_cy(7)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_x(8),
      I1 => sub0000_sub0000(8),
      O => Mcompar_w_inBall_cmp_ge0000_lut(8)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(7),
      DI => r_count_x(8),
      S => Mcompar_w_inBall_cmp_ge0000_lut(8),
      O => Mcompar_w_inBall_cmp_ge0000_cy(8)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_x(9),
      I1 => sub0000_sub0000(9),
      O => Mcompar_w_inBall_cmp_ge0000_lut(9)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(8),
      DI => r_count_x(9),
      S => Mcompar_w_inBall_cmp_ge0000_lut(9),
      O => Mcompar_w_inBall_cmp_ge0000_cy(9)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(9),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(10),
      O => Mcompar_w_inBall_cmp_ge0000_cy(10)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(10),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(11),
      O => Mcompar_w_inBall_cmp_ge0000_cy(11)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(11),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(12),
      O => Mcompar_w_inBall_cmp_ge0000_cy(12)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(12),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(13),
      O => Mcompar_w_inBall_cmp_ge0000_cy(13)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(13),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(14),
      O => Mcompar_w_inBall_cmp_ge0000_cy(14)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(14),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(15),
      O => Mcompar_w_inBall_cmp_ge0000_cy(15)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(15),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(16),
      O => Mcompar_w_inBall_cmp_ge0000_cy(16)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_17_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(16),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(17),
      O => Mcompar_w_inBall_cmp_ge0000_cy(17)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_18_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(17),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(18),
      O => Mcompar_w_inBall_cmp_ge0000_cy(18)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_19_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(18),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(19),
      O => Mcompar_w_inBall_cmp_ge0000_cy(19)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_20_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(19),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(20),
      O => Mcompar_w_inBall_cmp_ge0000_cy(20)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_21_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(20),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(21),
      O => Mcompar_w_inBall_cmp_ge0000_cy(21)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_22_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(21),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(22),
      O => Mcompar_w_inBall_cmp_ge0000_cy(22)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_23_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(22),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(23),
      O => Mcompar_w_inBall_cmp_ge0000_cy(23)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_24_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(23),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(24),
      O => Mcompar_w_inBall_cmp_ge0000_cy(24)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_25_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(24),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(25),
      O => Mcompar_w_inBall_cmp_ge0000_cy(25)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_26_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(25),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(26),
      O => Mcompar_w_inBall_cmp_ge0000_cy(26)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_27_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(26),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(27),
      O => Mcompar_w_inBall_cmp_ge0000_cy(27)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_28_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(27),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(28),
      O => Mcompar_w_inBall_cmp_ge0000_cy(28)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_29_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(28),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(29),
      O => Mcompar_w_inBall_cmp_ge0000_cy(29)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_30_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(29),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0000_lut(30),
      O => Mcompar_w_inBall_cmp_ge0000_cy(30)
    );
  Mcompar_w_inBall_cmp_ge0000_cy_31_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0000_cy(30),
      DI => sub0000_sub0000(10),
      S => Mcompar_w_inBall_cmp_ge0000_lut(31),
      O => w_inBall_cmp_ge0000
    );
  Mcompar_w_inBall_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => w_ball_x(0),
      I1 => r_count_x(0),
      O => Mcompar_w_inBall_cmp_le0000_lut(0)
    );
  Mcompar_w_inBall_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_lut(10),
      DI => w_ball_x(0),
      S => Mcompar_w_inBall_cmp_le0000_lut(0),
      O => Mcompar_w_inBall_cmp_le0000_cy(0)
    );
  Mcompar_w_inBall_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => w_ball_x(1),
      I1 => r_count_x(1),
      O => Mcompar_w_inBall_cmp_le0000_lut(1)
    );
  Mcompar_w_inBall_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(0),
      DI => w_ball_x(1),
      S => Mcompar_w_inBall_cmp_le0000_lut(1),
      O => Mcompar_w_inBall_cmp_le0000_cy(1)
    );
  Mcompar_w_inBall_cmp_le0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => w_ball_x(2),
      I1 => r_count_x(2),
      O => Mcompar_w_inBall_cmp_le0000_lut(2)
    );
  Mcompar_w_inBall_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(1),
      DI => w_ball_x(2),
      S => Mcompar_w_inBall_cmp_le0000_lut(2),
      O => Mcompar_w_inBall_cmp_le0000_cy(2)
    );
  Mcompar_w_inBall_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(2),
      DI => add0000_add0000(3),
      S => Mcompar_w_inBall_cmp_le0000_lut(3),
      O => Mcompar_w_inBall_cmp_le0000_cy(3)
    );
  Mcompar_w_inBall_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(3),
      DI => add0000_add0000(4),
      S => Mcompar_w_inBall_cmp_le0000_lut(4),
      O => Mcompar_w_inBall_cmp_le0000_cy(4)
    );
  Mcompar_w_inBall_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(4),
      DI => add0000_add0000(5),
      S => Mcompar_w_inBall_cmp_le0000_lut(5),
      O => Mcompar_w_inBall_cmp_le0000_cy(5)
    );
  Mcompar_w_inBall_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(5),
      DI => add0000_add0000(6),
      S => Mcompar_w_inBall_cmp_le0000_lut(6),
      O => Mcompar_w_inBall_cmp_le0000_cy(6)
    );
  Mcompar_w_inBall_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(6),
      DI => add0000_add0000(7),
      S => Mcompar_w_inBall_cmp_le0000_lut(7),
      O => Mcompar_w_inBall_cmp_le0000_cy(7)
    );
  Mcompar_w_inBall_cmp_le0000_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => add0000_add0000(8),
      I1 => r_count_x(8),
      O => Mcompar_w_inBall_cmp_le0000_lut(8)
    );
  Mcompar_w_inBall_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(7),
      DI => add0000_add0000(8),
      S => Mcompar_w_inBall_cmp_le0000_lut(8),
      O => Mcompar_w_inBall_cmp_le0000_cy(8)
    );
  Mcompar_w_inBall_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => add0000_add0000(9),
      I1 => r_count_x(9),
      O => Mcompar_w_inBall_cmp_le0000_lut(9)
    );
  Mcompar_w_inBall_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(8),
      DI => add0000_add0000(9),
      S => Mcompar_w_inBall_cmp_le0000_lut(9),
      O => Mcompar_w_inBall_cmp_le0000_cy(9)
    );
  Mcompar_w_inBall_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(9),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0000_cy(10)
    );
  Mcompar_w_inBall_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(10),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0000_cy(11)
    );
  Mcompar_w_inBall_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(11),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0000_cy(12)
    );
  Mcompar_w_inBall_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(12),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0000_cy(13)
    );
  Mcompar_w_inBall_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(13),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0000_cy(14)
    );
  Mcompar_w_inBall_cmp_le0000_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(14),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0000_cy(15)
    );
  Mcompar_w_inBall_cmp_le0000_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_cy(15),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => w_inBall_cmp_le0000
    );
  Mcompar_w_inBall_cmp_ge0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_y(0),
      I1 => w_ball_Y(0),
      O => Mcompar_w_inBall_cmp_ge0001_lut(0)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_lut(10),
      DI => r_count_y(0),
      S => Mcompar_w_inBall_cmp_ge0001_lut(0),
      O => Mcompar_w_inBall_cmp_ge0001_cy(0)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_y(1),
      I1 => w_ball_Y(1),
      O => Mcompar_w_inBall_cmp_ge0001_lut(1)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(0),
      DI => r_count_y(1),
      S => Mcompar_w_inBall_cmp_ge0001_lut(1),
      O => Mcompar_w_inBall_cmp_ge0001_cy(1)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_y(2),
      I1 => w_ball_Y(2),
      O => Mcompar_w_inBall_cmp_ge0001_lut(2)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(1),
      DI => r_count_y(2),
      S => Mcompar_w_inBall_cmp_ge0001_lut(2),
      O => Mcompar_w_inBall_cmp_ge0001_cy(2)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(2),
      DI => r_count_y(3),
      S => Mcompar_w_inBall_cmp_ge0001_lut(3),
      O => Mcompar_w_inBall_cmp_ge0001_cy(3)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(3),
      DI => r_count_y(4),
      S => Mcompar_w_inBall_cmp_ge0001_lut(4),
      O => Mcompar_w_inBall_cmp_ge0001_cy(4)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(4),
      DI => r_count_y(5),
      S => Mcompar_w_inBall_cmp_ge0001_lut(5),
      O => Mcompar_w_inBall_cmp_ge0001_cy(5)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_y(6),
      I1 => \Q_sub0001_6)\,
      O => Mcompar_w_inBall_cmp_ge0001_lut(6)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(5),
      DI => r_count_y(6),
      S => Mcompar_w_inBall_cmp_ge0001_lut(6),
      O => Mcompar_w_inBall_cmp_ge0001_cy(6)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(6),
      DI => r_count_y(7),
      S => Mcompar_w_inBall_cmp_ge0001_lut(7),
      O => Mcompar_w_inBall_cmp_ge0001_cy(7)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(7),
      DI => r_count_y(8),
      S => Mcompar_w_inBall_cmp_ge0001_lut(8),
      O => Mcompar_w_inBall_cmp_ge0001_cy(8)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => r_count_y(9),
      I1 => \Q_sub0001_9)\,
      O => Mcompar_w_inBall_cmp_ge0001_lut(9)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(8),
      DI => r_count_y(9),
      S => Mcompar_w_inBall_cmp_ge0001_lut(9),
      O => Mcompar_w_inBall_cmp_ge0001_cy(9)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(9),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(10),
      O => Mcompar_w_inBall_cmp_ge0001_cy(10)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(10),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(11),
      O => Mcompar_w_inBall_cmp_ge0001_cy(11)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(11),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(12),
      O => Mcompar_w_inBall_cmp_ge0001_cy(12)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(12),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(13),
      O => Mcompar_w_inBall_cmp_ge0001_cy(13)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(13),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(14),
      O => Mcompar_w_inBall_cmp_ge0001_cy(14)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(14),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(15),
      O => Mcompar_w_inBall_cmp_ge0001_cy(15)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(15),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(16),
      O => Mcompar_w_inBall_cmp_ge0001_cy(16)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_17_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(16),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(17),
      O => Mcompar_w_inBall_cmp_ge0001_cy(17)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_18_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(17),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(18),
      O => Mcompar_w_inBall_cmp_ge0001_cy(18)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_19_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(18),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(19),
      O => Mcompar_w_inBall_cmp_ge0001_cy(19)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_20_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(19),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(20),
      O => Mcompar_w_inBall_cmp_ge0001_cy(20)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_21_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(20),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(21),
      O => Mcompar_w_inBall_cmp_ge0001_cy(21)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_22_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(21),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(22),
      O => Mcompar_w_inBall_cmp_ge0001_cy(22)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_23_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(22),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(23),
      O => Mcompar_w_inBall_cmp_ge0001_cy(23)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_24_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(23),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(24),
      O => Mcompar_w_inBall_cmp_ge0001_cy(24)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_25_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(24),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(25),
      O => Mcompar_w_inBall_cmp_ge0001_cy(25)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_26_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(25),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(26),
      O => Mcompar_w_inBall_cmp_ge0001_cy(26)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_27_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(26),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(27),
      O => Mcompar_w_inBall_cmp_ge0001_cy(27)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_28_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(27),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(28),
      O => Mcompar_w_inBall_cmp_ge0001_cy(28)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_29_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(28),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(29),
      O => Mcompar_w_inBall_cmp_ge0001_cy(29)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_30_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(29),
      DI => N0,
      S => Mcompar_w_inBall_cmp_ge0001_lut(30),
      O => Mcompar_w_inBall_cmp_ge0001_cy(30)
    );
  Mcompar_w_inBall_cmp_ge0001_cy_31_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_ge0001_cy(30),
      DI => N151,
      S => Mcompar_w_inBall_cmp_ge0001_lut(31),
      O => w_inBall_cmp_ge0001
    );
  Mcompar_w_inBall_cmp_le0001_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => w_ball_Y(0),
      I1 => r_count_y(0),
      O => Mcompar_w_inBall_cmp_le0001_lut(0)
    );
  Mcompar_w_inBall_cmp_le0001_cy_0_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_lut(10),
      DI => w_ball_Y(0),
      S => Mcompar_w_inBall_cmp_le0001_lut(0),
      O => Mcompar_w_inBall_cmp_le0001_cy(0)
    );
  Mcompar_w_inBall_cmp_le0001_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => w_ball_Y(1),
      I1 => r_count_y(1),
      O => Mcompar_w_inBall_cmp_le0001_lut(1)
    );
  Mcompar_w_inBall_cmp_le0001_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(0),
      DI => w_ball_Y(1),
      S => Mcompar_w_inBall_cmp_le0001_lut(1),
      O => Mcompar_w_inBall_cmp_le0001_cy(1)
    );
  Mcompar_w_inBall_cmp_le0001_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => w_ball_Y(2),
      I1 => r_count_y(2),
      O => Mcompar_w_inBall_cmp_le0001_lut(2)
    );
  Mcompar_w_inBall_cmp_le0001_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(1),
      DI => w_ball_Y(2),
      S => Mcompar_w_inBall_cmp_le0001_lut(2),
      O => Mcompar_w_inBall_cmp_le0001_cy(2)
    );
  Mcompar_w_inBall_cmp_le0001_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(2),
      DI => Q_add0001(3),
      S => Mcompar_w_inBall_cmp_le0001_lut(3),
      O => Mcompar_w_inBall_cmp_le0001_cy(3)
    );
  Mcompar_w_inBall_cmp_le0001_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(3),
      DI => Q_add0001(4),
      S => Mcompar_w_inBall_cmp_le0001_lut(4),
      O => Mcompar_w_inBall_cmp_le0001_cy(4)
    );
  Mcompar_w_inBall_cmp_le0001_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(4),
      DI => Q_add0001(5),
      S => Mcompar_w_inBall_cmp_le0001_lut(5),
      O => Mcompar_w_inBall_cmp_le0001_cy(5)
    );
  Mcompar_w_inBall_cmp_le0001_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(5),
      DI => Q_add0001(6),
      S => Mcompar_w_inBall_cmp_le0001_lut(6),
      O => Mcompar_w_inBall_cmp_le0001_cy(6)
    );
  Mcompar_w_inBall_cmp_le0001_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(6),
      DI => Q_add0001(7),
      S => Mcompar_w_inBall_cmp_le0001_lut(7),
      O => Mcompar_w_inBall_cmp_le0001_cy(7)
    );
  Mcompar_w_inBall_cmp_le0001_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(7),
      DI => Q_add0001(8),
      S => Mcompar_w_inBall_cmp_le0001_lut(8),
      O => Mcompar_w_inBall_cmp_le0001_cy(8)
    );
  Mcompar_w_inBall_cmp_le0001_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(8),
      DI => Q_add0001(9),
      S => Mcompar_w_inBall_cmp_le0001_lut(9),
      O => Mcompar_w_inBall_cmp_le0001_cy(9)
    );
  Mcompar_w_inBall_cmp_le0001_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(9),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0001_cy(10)
    );
  Mcompar_w_inBall_cmp_le0001_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(10),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0001_cy(11)
    );
  Mcompar_w_inBall_cmp_le0001_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(11),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0001_cy(12)
    );
  Mcompar_w_inBall_cmp_le0001_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(12),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0001_cy(13)
    );
  Mcompar_w_inBall_cmp_le0001_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(13),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0001_cy(14)
    );
  Mcompar_w_inBall_cmp_le0001_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(14),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_inBall_cmp_le0001_cy(15)
    );
  Mcompar_w_inBall_cmp_le0001_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0001_cy(15),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => w_inBall_cmp_le0001
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => Mcompar_w_inBall_cmp_le0000_lut(10),
      DI => N0,
      S => Mcompar_w_vel_dir_y_cmp_ge0000_lut_0_Q_230,
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(0)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(0),
      DI => Mcompar_w_inBall_cmp_le0000_lut(10),
      S => Mcompar_w_vel_dir_y_cmp_ge0000_lut_1_Q_231,
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(1)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(1),
      DI => N0,
      S => r_count_y(4),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(2)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(2),
      DI => Mcompar_w_inBall_cmp_le0000_lut(10),
      S => Mcompar_w_vel_dir_y_cmp_ge0000_lut_3_Q_232,
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(3)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(3),
      DI => N0,
      S => r_count_y(6),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(4)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(4),
      DI => Mcompar_w_inBall_cmp_le0000_lut(10),
      S => Mcompar_w_vel_dir_y_cmp_ge0000_lut_5_Q_233,
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(5)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(5),
      DI => N0,
      S => r_count_y(9),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(6)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(6),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(7)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(7),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(8)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(8),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(9)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(9),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(10)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(10),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(11)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(11),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_cy(12)
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_w_vel_dir_y_cmp_ge0000_cy(12),
      DI => N0,
      S => Mcompar_w_inBall_cmp_le0000_lut(10),
      O => w_vel_dir_y_cmp_ge0000
    );
  vga_controller_Mcount_w_HS_count_xor_10_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(9),
      LI => vga_controller_Mcount_w_HS_count_xor_10_rt_344,
      O => vga_controller_Result(10)
    );
  vga_controller_Mcount_w_HS_count_xor_9_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(8),
      LI => vga_controller_Mcount_w_HS_count_cy_9_rt_342,
      O => vga_controller_Result_9_1
    );
  vga_controller_Mcount_w_HS_count_cy_9_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(8),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_9_rt_342,
      O => vga_controller_Mcount_w_HS_count_cy(9)
    );
  vga_controller_Mcount_w_HS_count_xor_8_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(7),
      LI => vga_controller_Mcount_w_HS_count_cy_8_rt_340,
      O => vga_controller_Result_8_1
    );
  vga_controller_Mcount_w_HS_count_cy_8_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(7),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_8_rt_340,
      O => vga_controller_Mcount_w_HS_count_cy(8)
    );
  vga_controller_Mcount_w_HS_count_xor_7_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(6),
      LI => vga_controller_Mcount_w_HS_count_cy_7_rt_338,
      O => vga_controller_Result_7_1
    );
  vga_controller_Mcount_w_HS_count_cy_7_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(6),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_7_rt_338,
      O => vga_controller_Mcount_w_HS_count_cy(7)
    );
  vga_controller_Mcount_w_HS_count_xor_6_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(5),
      LI => vga_controller_Mcount_w_HS_count_cy_6_rt_336,
      O => vga_controller_Result_6_1
    );
  vga_controller_Mcount_w_HS_count_cy_6_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(5),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_6_rt_336,
      O => vga_controller_Mcount_w_HS_count_cy(6)
    );
  vga_controller_Mcount_w_HS_count_xor_5_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(4),
      LI => vga_controller_Mcount_w_HS_count_cy_5_rt_334,
      O => vga_controller_Result_5_1
    );
  vga_controller_Mcount_w_HS_count_cy_5_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(4),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_5_rt_334,
      O => vga_controller_Mcount_w_HS_count_cy(5)
    );
  vga_controller_Mcount_w_HS_count_xor_4_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(3),
      LI => vga_controller_Mcount_w_HS_count_cy_4_rt_332,
      O => vga_controller_Result_4_1
    );
  vga_controller_Mcount_w_HS_count_cy_4_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(3),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_4_rt_332,
      O => vga_controller_Mcount_w_HS_count_cy(4)
    );
  vga_controller_Mcount_w_HS_count_xor_3_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(2),
      LI => vga_controller_Mcount_w_HS_count_cy_3_rt_330,
      O => vga_controller_Result_3_1
    );
  vga_controller_Mcount_w_HS_count_cy_3_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(2),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_3_rt_330,
      O => vga_controller_Mcount_w_HS_count_cy(3)
    );
  vga_controller_Mcount_w_HS_count_xor_2_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(1),
      LI => vga_controller_Mcount_w_HS_count_cy_2_rt_328,
      O => vga_controller_Result_2_1
    );
  vga_controller_Mcount_w_HS_count_cy_2_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(1),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_2_rt_328,
      O => vga_controller_Mcount_w_HS_count_cy(2)
    );
  vga_controller_Mcount_w_HS_count_xor_1_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(0),
      LI => vga_controller_Mcount_w_HS_count_cy_1_rt_326,
      O => vga_controller_Result_1_1
    );
  vga_controller_Mcount_w_HS_count_cy_1_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_HS_count_cy(0),
      DI => N0,
      S => vga_controller_Mcount_w_HS_count_cy_1_rt_326,
      O => vga_controller_Mcount_w_HS_count_cy(1)
    );
  vga_controller_Mcount_w_HS_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => vga_controller_Mcount_w_HS_count_lut(0),
      O => vga_controller_Result_0_1
    );
  vga_controller_Mcount_w_HS_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Mcompar_w_inBall_cmp_le0000_lut(10),
      S => vga_controller_Mcount_w_HS_count_lut(0),
      O => vga_controller_Mcount_w_HS_count_cy(0)
    );
  vga_controller_Mcount_w_VS_count_xor_9_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(8),
      LI => vga_controller_Mcount_w_VS_count_xor_9_rt_363,
      O => vga_controller_Result(9)
    );
  vga_controller_Mcount_w_VS_count_xor_8_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(7),
      LI => vga_controller_Mcount_w_VS_count_cy_8_rt_361,
      O => vga_controller_Result(8)
    );
  vga_controller_Mcount_w_VS_count_cy_8_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(7),
      DI => N0,
      S => vga_controller_Mcount_w_VS_count_cy_8_rt_361,
      O => vga_controller_Mcount_w_VS_count_cy(8)
    );
  vga_controller_Mcount_w_VS_count_xor_7_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(6),
      LI => vga_controller_Mcount_w_VS_count_cy_7_rt_359,
      O => vga_controller_Result(7)
    );
  vga_controller_Mcount_w_VS_count_cy_7_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(6),
      DI => N0,
      S => vga_controller_Mcount_w_VS_count_cy_7_rt_359,
      O => vga_controller_Mcount_w_VS_count_cy(7)
    );
  vga_controller_Mcount_w_VS_count_xor_6_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(5),
      LI => vga_controller_Mcount_w_VS_count_cy_6_rt_357,
      O => vga_controller_Result(6)
    );
  vga_controller_Mcount_w_VS_count_cy_6_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(5),
      DI => N0,
      S => vga_controller_Mcount_w_VS_count_cy_6_rt_357,
      O => vga_controller_Mcount_w_VS_count_cy(6)
    );
  vga_controller_Mcount_w_VS_count_xor_5_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(4),
      LI => vga_controller_Mcount_w_VS_count_cy_5_rt_355,
      O => vga_controller_Result(5)
    );
  vga_controller_Mcount_w_VS_count_cy_5_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(4),
      DI => N0,
      S => vga_controller_Mcount_w_VS_count_cy_5_rt_355,
      O => vga_controller_Mcount_w_VS_count_cy(5)
    );
  vga_controller_Mcount_w_VS_count_xor_4_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(3),
      LI => vga_controller_Mcount_w_VS_count_cy_4_rt_353,
      O => vga_controller_Result(4)
    );
  vga_controller_Mcount_w_VS_count_cy_4_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(3),
      DI => N0,
      S => vga_controller_Mcount_w_VS_count_cy_4_rt_353,
      O => vga_controller_Mcount_w_VS_count_cy(4)
    );
  vga_controller_Mcount_w_VS_count_xor_3_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(2),
      LI => vga_controller_Mcount_w_VS_count_cy_3_rt_351,
      O => vga_controller_Result(3)
    );
  vga_controller_Mcount_w_VS_count_cy_3_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(2),
      DI => N0,
      S => vga_controller_Mcount_w_VS_count_cy_3_rt_351,
      O => vga_controller_Mcount_w_VS_count_cy(3)
    );
  vga_controller_Mcount_w_VS_count_xor_2_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(1),
      LI => vga_controller_Mcount_w_VS_count_cy_2_rt_349,
      O => vga_controller_Result(2)
    );
  vga_controller_Mcount_w_VS_count_cy_2_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(1),
      DI => N0,
      S => vga_controller_Mcount_w_VS_count_cy_2_rt_349,
      O => vga_controller_Mcount_w_VS_count_cy(2)
    );
  vga_controller_Mcount_w_VS_count_xor_1_Q : XORCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(0),
      LI => vga_controller_Mcount_w_VS_count_cy_1_rt_347,
      O => vga_controller_Result(1)
    );
  vga_controller_Mcount_w_VS_count_cy_1_Q : MUXCY
    port map (
      CI => vga_controller_Mcount_w_VS_count_cy(0),
      DI => N0,
      S => vga_controller_Mcount_w_VS_count_cy_1_rt_347,
      O => vga_controller_Mcount_w_VS_count_cy(1)
    );
  vga_controller_Mcount_w_VS_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => vga_controller_Mcount_w_VS_count_lut(0),
      O => vga_controller_Result(0)
    );
  vga_controller_Mcount_w_VS_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Mcompar_w_inBall_cmp_le0000_lut(10),
      S => vga_controller_Mcount_w_VS_count_lut(0),
      O => vga_controller_Mcount_w_VS_count_cy(0)
    );
  vga_controller_w_HS_count_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result(10),
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(10)
    );
  vga_controller_w_HS_count_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_9_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(9)
    );
  vga_controller_w_HS_count_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_8_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(8)
    );
  vga_controller_w_HS_count_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_7_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(7)
    );
  vga_controller_w_HS_count_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_6_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(6)
    );
  vga_controller_w_HS_count_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_5_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(5)
    );
  vga_controller_w_HS_count_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_4_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(4)
    );
  vga_controller_w_HS_count_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_3_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(3)
    );
  vga_controller_w_HS_count_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_2_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(2)
    );
  vga_controller_w_HS_count_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_1_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(1)
    );
  vga_controller_w_HS_count_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      D => vga_controller_Result_0_1,
      R => vga_controller_w_VS_count_not0001,
      Q => vga_controller_w_HS_count(0)
    );
  vga_controller_w_VS_count_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(9),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(9)
    );
  vga_controller_w_VS_count_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(8),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(8)
    );
  vga_controller_w_VS_count_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(7),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(7)
    );
  vga_controller_w_VS_count_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(6),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(6)
    );
  vga_controller_w_VS_count_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(5),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(5)
    );
  vga_controller_w_VS_count_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(4),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(4)
    );
  vga_controller_w_VS_count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(3),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(3)
    );
  vga_controller_w_VS_count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(2),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(2)
    );
  vga_controller_w_VS_count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(1),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(1)
    );
  vga_controller_w_VS_count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => i_clk_BUFGP_287,
      CE => vga_controller_w_VS_count_not0001,
      D => vga_controller_Result(0),
      R => vga_controller_w_VS_count_and0000,
      Q => vga_controller_w_VS_count(0)
    );
  vga_controller_o_HS_or00005 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => vga_controller_w_HS_count(4),
      I1 => vga_controller_w_HS_count(9),
      I2 => vga_controller_w_HS_count(8),
      I3 => vga_controller_w_HS_count(5),
      O => vga_controller_o_HS_or00005_386
    );
  vga_controller_o_HS_or000036 : LUT4
    generic map(
      INIT => X"1F3F"
    )
    port map (
      I0 => vga_controller_w_HS_count(3),
      I1 => vga_controller_w_HS_count(5),
      I2 => vga_controller_w_HS_count(6),
      I3 => vga_controller_w_HS_count(4),
      O => vga_controller_o_HS_or000036_385
    );
  vga_controller_o_VS_or000021 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => vga_controller_w_VS_count(2),
      I1 => vga_controller_w_VS_count(0),
      I2 => vga_controller_w_VS_count(1),
      O => vga_controller_o_VS_or000021_387
    );
  vga_controller_o_VS_or000067 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => vga_controller_w_VS_count(2),
      I1 => vga_controller_w_VS_count(1),
      I2 => vga_controller_w_VS_count(0),
      O => vga_controller_o_VS_or000067_388
    );
  vga_controller_o_VS_or000072 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => vga_controller_w_VS_count(3),
      I1 => vga_controller_w_VS_count(6),
      I2 => vga_controller_w_VS_count(5),
      I3 => vga_controller_w_VS_count(4),
      O => vga_controller_o_VS_or000072_389
    );
  vga_controller_w_VS_count_and000010 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => vga_controller_w_VS_count(6),
      I1 => vga_controller_w_VS_count(5),
      I2 => vga_controller_w_VS_count(4),
      I3 => vga_controller_w_VS_count(7),
      O => vga_controller_w_VS_count_and000010_412
    );
  vga_controller_w_VS_count_and000013 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(9),
      I1 => vga_controller_w_VS_count(8),
      O => vga_controller_w_VS_count_and000013_413
    );
  vga_controller_w_VS_count_and000024 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => vga_controller_w_VS_count(2),
      I1 => vga_controller_w_VS_count(0),
      I2 => vga_controller_w_VS_count(1),
      I3 => vga_controller_w_VS_count(3),
      O => vga_controller_w_VS_count_and000024_414
    );
  vga_controller_w_VS_count_and000051 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => vga_controller_w_VS_count_and000024_414,
      I1 => vga_controller_w_VS_count_and000010_412,
      I2 => vga_controller_w_VS_count_and000013_413,
      I3 => vga_controller_w_VS_count_cmp_lt0000,
      O => vga_controller_w_VS_count_and0000
    );
  w_ball_x_mux0003_5_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_ball_x_addsub0000(4),
      I1 => sub0000_sub0000(10),
      I2 => N60,
      O => w_ball_x_mux0003(5)
    );
  w_ball_x_mux0003_2_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_ball_x_addsub0000(7),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(2)
    );
  w_ball_x_mux0003_1_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_ball_x_addsub0000(8),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(1)
    );
  w_ball_Y_mux0003_7_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_ball_Y_addsub0000(2),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(7)
    );
  w_ball_Y_mux0003_6_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_ball_Y_addsub0000(3),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(6)
    );
  w_ball_Y_mux0003_4_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_ball_Y_addsub0000(5),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(4)
    );
  w_ball_Y_mux0003_1_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_ball_Y_addsub0000(8),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(1)
    );
  Msub_sub0001_xor_6_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => w_ball_Y(6),
      I1 => w_ball_Y(4),
      I2 => w_ball_Y(3),
      I3 => w_ball_Y(5),
      O => \Q_sub0001_6)\
    );
  Madd_add0001_xor_5_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => w_ball_Y(5),
      I1 => w_ball_Y(4),
      I2 => w_ball_Y(3),
      O => Q_add0001(5)
    );
  Q_add0001_4_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_Y(3),
      I1 => w_ball_Y(4),
      O => Q_add0001(4)
    );
  Madd_add0000_add0000_xor_5_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => w_ball_x(5),
      I1 => w_ball_x(4),
      I2 => w_ball_x(3),
      O => add0000_add0000(5)
    );
  N1512 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => N151
    );
  add0000_add0000_4_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => w_ball_x(3),
      I1 => w_ball_x(4),
      O => add0000_add0000(4)
    );
  w_ball_Y_cmp_gt0000218 : LUT4
    generic map(
      INIT => X"FE4E"
    )
    port map (
      I0 => w_ball_x(6),
      I1 => w_ball_x(5),
      I2 => w_ball_x(7),
      I3 => N59,
      O => w_ball_Y_cmp_gt0000218_440
    );
  Q_sub0001_9_1 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => w_ball_Y(9),
      I1 => w_ball_Y(7),
      I2 => w_ball_Y(8),
      I3 => N151_bdd0,
      O => \Q_sub0001_9)\
    );
  Madd_add0001_xor_7_11 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => w_ball_Y(7),
      I1 => w_ball_Y(6),
      I2 => N7,
      O => Q_add0001(7)
    );
  Madd_add0000_add0000_xor_8_11 : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => N10,
      I2 => w_ball_x(7),
      I3 => w_ball_x(6),
      O => add0000_add0000(8)
    );
  Madd_add0000_add0000_xor_7_11 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => w_ball_x(7),
      I1 => w_ball_x(6),
      I2 => N10,
      O => add0000_add0000(7)
    );
  sub0000_sub0000_10_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => sub0000_sub0000(10)
    );
  Msub_sub0000_sub0000_xor_6_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(6),
      I1 => w_ball_x(5),
      I2 => w_ball_x(4),
      I3 => w_ball_x(3),
      O => N17
    );
  Msub_sub0000_sub0000_xor_8_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_ball_x(4),
      I1 => w_ball_x(3),
      I2 => w_ball_x(6),
      O => N4
    );
  Msub_sub0000_sub0000_xor_8_1 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(7),
      I2 => w_ball_x(5),
      I3 => N4,
      O => sub0000_sub0000(8)
    );
  Madd_add0001_xor_9_11 : LUT3
    generic map(
      INIT => X"A6"
    )
    port map (
      I0 => w_ball_Y(9),
      I1 => w_ball_Y(8),
      I2 => N22,
      O => Q_add0001(9)
    );
  Madd_add0000_add0000_xor_9_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => w_ball_x(9),
      I1 => w_ball_x(8),
      I2 => w_ball_x(7),
      I3 => N6,
      O => add0000_add0000(9)
    );
  Madd_add0001_xor_8_111 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => w_ball_Y(6),
      I1 => w_ball_Y(7),
      I2 => N7,
      O => N22
    );
  Madd_add0001_xor_6_111 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => w_ball_Y(3),
      I1 => w_ball_Y(4),
      I2 => w_ball_Y(5),
      O => N7
    );
  vga_controller_o_row_count_8_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(8),
      I1 => vga_controller_w_VS_count(9),
      O => r_count_y(8)
    );
  vga_controller_o_col_count_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_HD_active,
      I1 => vga_controller_w_HS_count(7),
      O => r_count_x(7)
    );
  vga_controller_o_row_count_7_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(7),
      I1 => vga_controller_w_VS_count(9),
      O => r_count_y(7)
    );
  vga_controller_o_col_count_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_HD_active,
      I1 => vga_controller_w_HS_count(6),
      O => r_count_x(6)
    );
  vga_controller_o_col_count_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_HD_active,
      I1 => vga_controller_w_HS_count(5),
      O => r_count_x(5)
    );
  vga_controller_o_col_count_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_HD_active,
      I1 => vga_controller_w_HS_count(4),
      O => r_count_x(4)
    );
  vga_controller_o_col_count_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_HD_active,
      I1 => vga_controller_w_HS_count(3),
      O => r_count_x(3)
    );
  vga_controller_o_col_count_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_HD_active,
      I1 => vga_controller_w_HS_count(2),
      O => r_count_x(2)
    );
  w_ball_Y_not00011 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => w_one_per_frame_488,
      I1 => w_vel_dir_y_cmp_ge0000,
      O => w_ball_Y_not0001
    );
  vga_controller_o_col_count_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_HD_active,
      I1 => vga_controller_w_HS_count(1),
      O => r_count_x(1)
    );
  vga_controller_o_col_count_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_HD_active,
      I1 => vga_controller_w_HS_count(0),
      O => r_count_x(0)
    );
  vga_controller_o_HD_active1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => vga_controller_w_HS_count(7),
      I1 => vga_controller_w_HS_count(6),
      I2 => vga_controller_w_HS_count(5),
      O => N8
    );
  vga_controller_o_HD_active1 : LUT4
    generic map(
      INIT => X"1333"
    )
    port map (
      I0 => vga_controller_w_HS_count(8),
      I1 => vga_controller_w_HS_count(10),
      I2 => vga_controller_w_HS_count(9),
      I3 => N8,
      O => w_HD_active
    );
  o_B0_and0000_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => w_inBall_cmp_le0000,
      I1 => w_VD_active,
      I2 => w_HD_active,
      O => N101
    );
  o_B0_and0000 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => w_inBall_cmp_ge0001,
      I1 => w_inBall_cmp_ge0000,
      I2 => w_inBall_cmp_le0001,
      I3 => N101,
      O => o_R2_OBUF_298
    );
  vga_controller_o_row_count_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_VD_active,
      I1 => vga_controller_w_VS_count(5),
      O => r_count_y(5)
    );
  vga_controller_o_row_count_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_VD_active,
      I1 => vga_controller_w_VS_count(2),
      O => r_count_y(2)
    );
  vga_controller_o_row_count_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_VD_active,
      I1 => vga_controller_w_VS_count(1),
      O => r_count_y(1)
    );
  vga_controller_o_row_count_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_VD_active,
      I1 => vga_controller_w_VS_count(3),
      O => r_count_y(3)
    );
  vga_controller_o_row_count_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => w_VD_active,
      I1 => vga_controller_w_VS_count(0),
      O => r_count_y(0)
    );
  vga_controller_o_VD_active1_SW0 : LUT4
    generic map(
      INIT => X"C8C0"
    )
    port map (
      I0 => vga_controller_w_VS_count(4),
      I1 => vga_controller_w_VS_count(6),
      I2 => vga_controller_w_VS_count(5),
      I3 => vga_controller_w_VS_count(3),
      O => N12
    );
  vga_controller_o_VD_active1 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => N12,
      I1 => vga_controller_w_VS_count(8),
      I2 => vga_controller_w_VS_count(7),
      I3 => vga_controller_w_VS_count(9),
      O => w_VD_active
    );
  w_vel_dir_y_not0002124 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => w_ball_Y(5),
      I1 => w_ball_Y(4),
      I2 => w_vel_dir_y_not0002118_493,
      O => w_vel_dir_y_not0002124_494
    );
  o_VS_OBUF : OBUF
    port map (
      I => o_VS_OBUF_300,
      O => o_VS
    );
  o_B0_OBUF : OBUF
    port map (
      I => o_R2_OBUF_298,
      O => o_B0
    );
  o_B1_OBUF : OBUF
    port map (
      I => o_R2_OBUF_298,
      O => o_B1
    );
  o_G0_OBUF : OBUF
    port map (
      I => o_R2_OBUF_298,
      O => o_G0
    );
  o_G1_OBUF : OBUF
    port map (
      I => o_R2_OBUF_298,
      O => o_G1
    );
  o_G2_OBUF : OBUF
    port map (
      I => o_R2_OBUF_298,
      O => o_G2
    );
  o_HS_OBUF : OBUF
    port map (
      I => o_HS_OBUF_294,
      O => o_HS
    );
  o_R0_OBUF : OBUF
    port map (
      I => o_R2_OBUF_298,
      O => o_R0
    );
  o_R1_OBUF : OBUF
    port map (
      I => o_R2_OBUF_298,
      O => o_R1
    );
  o_R2_OBUF : OBUF
    port map (
      I => o_R2_OBUF_298,
      O => o_R2
    );
  Maddsub_w_ball_x_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => w_ball_x(2),
      O => Maddsub_w_ball_x_addsub0000_cy_2_rt_22
    );
  Maddsub_w_ball_x_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => w_ball_x(3),
      O => Maddsub_w_ball_x_addsub0000_cy_3_rt_24
    );
  Maddsub_w_ball_x_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => w_ball_x(4),
      O => Maddsub_w_ball_x_addsub0000_cy_4_rt_26
    );
  Maddsub_w_ball_x_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => w_ball_x(5),
      O => Maddsub_w_ball_x_addsub0000_cy_5_rt_28
    );
  Maddsub_w_ball_x_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => w_ball_x(6),
      O => Maddsub_w_ball_x_addsub0000_cy_6_rt_30
    );
  Maddsub_w_ball_x_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => w_ball_x(7),
      O => Maddsub_w_ball_x_addsub0000_cy_7_rt_32
    );
  Maddsub_w_ball_x_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => w_ball_x(8),
      O => Maddsub_w_ball_x_addsub0000_cy_8_rt_34
    );
  vga_controller_Mcount_w_HS_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(9),
      O => vga_controller_Mcount_w_HS_count_cy_9_rt_342
    );
  vga_controller_Mcount_w_HS_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(8),
      O => vga_controller_Mcount_w_HS_count_cy_8_rt_340
    );
  vga_controller_Mcount_w_HS_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(7),
      O => vga_controller_Mcount_w_HS_count_cy_7_rt_338
    );
  vga_controller_Mcount_w_HS_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(6),
      O => vga_controller_Mcount_w_HS_count_cy_6_rt_336
    );
  vga_controller_Mcount_w_HS_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(5),
      O => vga_controller_Mcount_w_HS_count_cy_5_rt_334
    );
  vga_controller_Mcount_w_HS_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(4),
      O => vga_controller_Mcount_w_HS_count_cy_4_rt_332
    );
  vga_controller_Mcount_w_HS_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(3),
      O => vga_controller_Mcount_w_HS_count_cy_3_rt_330
    );
  vga_controller_Mcount_w_HS_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(2),
      O => vga_controller_Mcount_w_HS_count_cy_2_rt_328
    );
  vga_controller_Mcount_w_HS_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(1),
      O => vga_controller_Mcount_w_HS_count_cy_1_rt_326
    );
  vga_controller_Mcount_w_VS_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(8),
      O => vga_controller_Mcount_w_VS_count_cy_8_rt_361
    );
  vga_controller_Mcount_w_VS_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(7),
      O => vga_controller_Mcount_w_VS_count_cy_7_rt_359
    );
  vga_controller_Mcount_w_VS_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(6),
      O => vga_controller_Mcount_w_VS_count_cy_6_rt_357
    );
  vga_controller_Mcount_w_VS_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(5),
      O => vga_controller_Mcount_w_VS_count_cy_5_rt_355
    );
  vga_controller_Mcount_w_VS_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(4),
      O => vga_controller_Mcount_w_VS_count_cy_4_rt_353
    );
  vga_controller_Mcount_w_VS_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(3),
      O => vga_controller_Mcount_w_VS_count_cy_3_rt_351
    );
  vga_controller_Mcount_w_VS_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(2),
      O => vga_controller_Mcount_w_VS_count_cy_2_rt_349
    );
  vga_controller_Mcount_w_VS_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(1),
      O => vga_controller_Mcount_w_VS_count_cy_1_rt_347
    );
  Maddsub_w_ball_x_addsub0000_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => w_ball_x(9),
      O => Maddsub_w_ball_x_addsub0000_xor_9_rt_37
    );
  vga_controller_Mcount_w_HS_count_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_HS_count(10),
      O => vga_controller_Mcount_w_HS_count_xor_10_rt_344
    );
  vga_controller_Mcount_w_VS_count_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vga_controller_w_VS_count(9),
      O => vga_controller_Mcount_w_VS_count_xor_9_rt_363
    );
  vga_controller_o_row_count_9_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => vga_controller_w_VS_count(7),
      I1 => vga_controller_w_VS_count(8),
      I2 => vga_controller_w_VS_count(9),
      I3 => N12,
      O => r_count_y(9)
    );
  vga_controller_o_VD_active1_SW3 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => vga_controller_w_VS_count(8),
      I1 => vga_controller_w_VS_count(7),
      O => N181
    );
  vga_controller_o_VD_active1_SW5 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => vga_controller_w_VS_count(2),
      I1 => vga_controller_w_VS_count(1),
      I2 => vga_controller_w_VS_count(0),
      O => N25
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_lut_0_Q : LUT4
    generic map(
      INIT => X"111B"
    )
    port map (
      I0 => vga_controller_w_VS_count(9),
      I1 => N25,
      I2 => N12,
      I3 => N26,
      O => Mcompar_w_vel_dir_y_cmp_ge0000_lut_0_Q_230
    );
  w_vel_dir_y_not00021101_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => w_one_per_frame_488,
      I1 => w_ball_Y(8),
      I2 => N58,
      O => N28
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_lut_5_Q : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => vga_controller_w_VS_count(7),
      I1 => vga_controller_w_VS_count(8),
      I2 => vga_controller_w_VS_count(9),
      O => Mcompar_w_vel_dir_y_cmp_ge0000_lut_5_Q_233
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => vga_controller_w_VS_count(9),
      I1 => vga_controller_w_VS_count(6),
      I2 => vga_controller_w_VS_count(5),
      I3 => N181,
      O => Mcompar_w_vel_dir_y_cmp_ge0000_lut_3_Q_232
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_lut_1_SW0 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => vga_controller_w_VS_count(4),
      I1 => vga_controller_w_VS_count(6),
      I2 => vga_controller_w_VS_count(5),
      I3 => vga_controller_w_VS_count(8),
      O => N31
    );
  Mcompar_w_vel_dir_y_cmp_ge0000_lut_1_Q : LUT4
    generic map(
      INIT => X"AF8F"
    )
    port map (
      I0 => vga_controller_w_VS_count(9),
      I1 => vga_controller_w_VS_count(7),
      I2 => vga_controller_w_VS_count(3),
      I3 => N31,
      O => Mcompar_w_vel_dir_y_cmp_ge0000_lut_1_Q_231
    );
  vga_controller_o_row_count_4_1_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => vga_controller_w_VS_count(6),
      I1 => vga_controller_w_VS_count(5),
      I2 => vga_controller_w_VS_count(3),
      I3 => vga_controller_w_VS_count(8),
      O => N33
    );
  vga_controller_o_row_count_4_1 : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => vga_controller_w_VS_count(4),
      I1 => vga_controller_w_VS_count(7),
      I2 => vga_controller_w_VS_count(9),
      I3 => N33,
      O => r_count_y(4)
    );
  vga_controller_o_row_count_6_1_SW0 : LUT4
    generic map(
      INIT => X"FFEC"
    )
    port map (
      I0 => vga_controller_w_VS_count(4),
      I1 => vga_controller_w_VS_count(5),
      I2 => vga_controller_w_VS_count(3),
      I3 => vga_controller_w_VS_count(8),
      O => N35
    );
  vga_controller_o_row_count_6_1 : LUT4
    generic map(
      INIT => X"0A2A"
    )
    port map (
      I0 => vga_controller_w_VS_count(6),
      I1 => vga_controller_w_VS_count(7),
      I2 => vga_controller_w_VS_count(9),
      I3 => N35,
      O => r_count_y(6)
    );
  w_ball_x_mux0003_0_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_x_addsub0000(9),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(0)
    );
  w_ball_Y_mux0003_0_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_Y_addsub0000(9),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(0)
    );
  w_ball_Y_mux0003_2_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_Y_addsub0000(7),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(2)
    );
  w_ball_x_mux0003_3_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_x_addsub0000(6),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(3)
    );
  w_ball_Y_mux0003_3_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_Y_addsub0000(6),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(3)
    );
  w_ball_x_mux0003_4_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_x_addsub0000(5),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(4)
    );
  w_ball_Y_mux0003_5_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_Y_addsub0000(4),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(5)
    );
  w_ball_x_mux0003_6_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_x_addsub0000(3),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(6)
    );
  w_ball_x_mux0003_7_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_x_addsub0000(2),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(7)
    );
  w_ball_x_mux0003_8_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_x_addsub0000(1),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(8)
    );
  w_ball_Y_mux0003_8_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_Y_addsub0000(1),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(8)
    );
  w_ball_x_mux0003_9_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_x_addsub0000(0),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_x_mux0003(9)
    );
  w_ball_Y_mux0003_9_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => w_ball_Y_addsub0000(0),
      I1 => sub0000_sub0000(10),
      I2 => w_ball_Y_cmp_gt0000,
      O => w_ball_Y_mux0003(9)
    );
  vga_controller_o_VD_active1_SW6 : MUXF5
    port map (
      I0 => Mcompar_w_inBall_cmp_le0000_lut(10),
      I1 => N38,
      S => vga_controller_w_VS_count(2),
      O => N26
    );
  vga_controller_o_VD_active1_SW6_G : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => vga_controller_w_VS_count(0),
      I1 => vga_controller_w_VS_count(1),
      I2 => vga_controller_w_VS_count(7),
      I3 => vga_controller_w_VS_count(8),
      O => N38
    );
  w_vel_dir_y_not00021214 : MUXF5
    port map (
      I0 => N39,
      I1 => N40,
      S => w_ball_Y(7),
      O => w_vel_dir_y_not0002
    );
  w_vel_dir_y_not00021214_F : LUT4
    generic map(
      INIT => X"001B"
    )
    port map (
      I0 => w_ball_Y(9),
      I1 => N28,
      I2 => N29,
      I3 => w_vel_dir_y_cmp_ge0000,
      O => N39
    );
  w_vel_dir_y_not00021101_SW1 : LUT4
    generic map(
      INIT => X"ABAF"
    )
    port map (
      I0 => w_one_per_frame_488,
      I1 => w_ball_Y(6),
      I2 => w_ball_Y(8),
      I3 => w_vel_dir_y_not0002124_494,
      O => N29
    );
  w_ball_Y_cmp_gt0000249_SW0 : LUT4
    generic map(
      INIT => X"FE00"
    )
    port map (
      I0 => w_ball_x(2),
      I1 => w_ball_x(1),
      I2 => w_ball_x(0),
      I3 => w_ball_Y_cmp_gt0000226_441,
      O => N45
    );
  Msub_sub0000_sub0000_xor_9_1 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => w_ball_x(9),
      I1 => N17,
      I2 => w_ball_x(7),
      I3 => w_ball_x(8),
      O => sub0000_sub0000(9)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => w_ball_x(3),
      I1 => w_ball_x(4),
      I2 => vga_controller_w_HS_count(4),
      I3 => w_HD_active,
      O => Mcompar_w_inBall_cmp_ge0000_lut(4)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => r_count_x(5),
      I1 => w_ball_x(5),
      I2 => w_ball_x(4),
      I3 => w_ball_x(3),
      O => Mcompar_w_inBall_cmp_ge0000_lut(5)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => N17,
      I1 => w_ball_x(7),
      I2 => vga_controller_w_HS_count(7),
      I3 => w_HD_active,
      O => Mcompar_w_inBall_cmp_ge0000_lut(7)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => r_count_y(4),
      I1 => w_ball_Y(3),
      I2 => w_ball_Y(4),
      O => Mcompar_w_inBall_cmp_ge0001_lut(4)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_5_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => r_count_y(5),
      I1 => w_ball_Y(5),
      I2 => w_ball_Y(4),
      I3 => w_ball_Y(3),
      O => Mcompar_w_inBall_cmp_ge0001_lut(5)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_7_Q : LUT4
    generic map(
      INIT => X"6696"
    )
    port map (
      I0 => N151_bdd0,
      I1 => w_ball_Y(7),
      I2 => vga_controller_w_VS_count(7),
      I3 => vga_controller_w_VS_count(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(7)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_8_Q : LUT4
    generic map(
      INIT => X"9996"
    )
    port map (
      I0 => r_count_y(8),
      I1 => w_ball_Y(8),
      I2 => w_ball_Y(7),
      I3 => N151_bdd0,
      O => Mcompar_w_inBall_cmp_ge0001_lut(8)
    );
  vga_controller_o_VS_or000037_SW0 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => vga_controller_w_VS_count(3),
      I1 => vga_controller_w_VS_count(4),
      I2 => vga_controller_w_VS_count(5),
      I3 => vga_controller_w_VS_count(6),
      O => N47
    );
  vga_controller_w_VS_count_not00011 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => vga_controller_w_HS_count(10),
      I1 => N57,
      I2 => vga_controller_w_HS_count(6),
      I3 => vga_controller_w_HS_count(5),
      O => vga_controller_w_VS_count_not0001
    );
  vga_controller_o_col_count_9_1 : LUT4
    generic map(
      INIT => X"0444"
    )
    port map (
      I0 => vga_controller_w_HS_count(10),
      I1 => vga_controller_w_HS_count(9),
      I2 => vga_controller_w_HS_count(8),
      I3 => N8,
      O => r_count_x(9)
    );
  vga_controller_o_col_count_8_1 : LUT4
    generic map(
      INIT => X"0444"
    )
    port map (
      I0 => vga_controller_w_HS_count(10),
      I1 => vga_controller_w_HS_count(8),
      I2 => vga_controller_w_HS_count(9),
      I3 => N8,
      O => r_count_x(8)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_3_Q : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => w_ball_x(3),
      I1 => vga_controller_w_HS_count(3),
      I2 => w_HD_active,
      O => Mcompar_w_inBall_cmp_ge0000_lut(3)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_6_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => w_ball_x(3),
      I1 => w_ball_x(4),
      I2 => w_ball_x(5),
      O => N49
    );
  Mcompar_w_inBall_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => N49,
      I1 => w_ball_x(6),
      I2 => w_HD_active,
      I3 => vga_controller_w_HS_count(6),
      O => Mcompar_w_inBall_cmp_ge0000_lut(6)
    );
  Mcompar_w_inBall_cmp_le0000_lut_3_Q : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => w_ball_x(3),
      I1 => vga_controller_w_HS_count(3),
      I2 => w_HD_active,
      O => Mcompar_w_inBall_cmp_le0000_lut(3)
    );
  Mcompar_w_inBall_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => w_ball_x(3),
      I1 => w_ball_x(4),
      I2 => vga_controller_w_HS_count(4),
      I3 => w_HD_active,
      O => Mcompar_w_inBall_cmp_le0000_lut(4)
    );
  Mcompar_w_inBall_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => r_count_x(5),
      I1 => w_ball_x(5),
      I2 => w_ball_x(3),
      I3 => w_ball_x(4),
      O => Mcompar_w_inBall_cmp_le0000_lut(5)
    );
  Mcompar_w_inBall_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"9666"
    )
    port map (
      I0 => N10,
      I1 => w_ball_x(6),
      I2 => vga_controller_w_HS_count(6),
      I3 => w_HD_active,
      O => Mcompar_w_inBall_cmp_le0000_lut(6)
    );
  Mcompar_w_inBall_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"A659"
    )
    port map (
      I0 => w_ball_x(7),
      I1 => w_ball_x(6),
      I2 => N10,
      I3 => r_count_x(7),
      O => Mcompar_w_inBall_cmp_le0000_lut(7)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_3_Q : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => w_ball_Y(3),
      I1 => vga_controller_w_VS_count(3),
      I2 => w_VD_active,
      O => Mcompar_w_inBall_cmp_ge0001_lut(3)
    );
  Mcompar_w_inBall_cmp_le0001_lut_3_Q : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => w_ball_Y(3),
      I1 => vga_controller_w_VS_count(3),
      I2 => w_VD_active,
      O => Mcompar_w_inBall_cmp_le0001_lut(3)
    );
  Mcompar_w_inBall_cmp_le0001_lut_4_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => w_ball_Y(3),
      I1 => w_ball_Y(4),
      I2 => r_count_y(4),
      O => Mcompar_w_inBall_cmp_le0001_lut(4)
    );
  Mcompar_w_inBall_cmp_le0001_lut_5_Q : LUT4
    generic map(
      INIT => X"6999"
    )
    port map (
      I0 => r_count_y(5),
      I1 => w_ball_Y(5),
      I2 => w_ball_Y(3),
      I3 => w_ball_Y(4),
      O => Mcompar_w_inBall_cmp_le0001_lut(5)
    );
  Mcompar_w_inBall_cmp_le0001_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => w_ball_Y(6),
      I1 => N7,
      I2 => r_count_y(6),
      O => Mcompar_w_inBall_cmp_le0001_lut(6)
    );
  Mcompar_w_inBall_cmp_le0001_lut_7_Q : LUT4
    generic map(
      INIT => X"A659"
    )
    port map (
      I0 => w_ball_Y(7),
      I1 => w_ball_Y(6),
      I2 => N7,
      I3 => r_count_y(7),
      O => Mcompar_w_inBall_cmp_le0001_lut(7)
    );
  Mcompar_w_inBall_cmp_le0001_lut_8_Q : LUT4
    generic map(
      INIT => X"6696"
    )
    port map (
      I0 => N22,
      I1 => w_ball_Y(8),
      I2 => vga_controller_w_VS_count(8),
      I3 => vga_controller_w_VS_count(9),
      O => Mcompar_w_inBall_cmp_le0001_lut(8)
    );
  Mcompar_w_inBall_cmp_le0001_lut_9_Q : LUT4
    generic map(
      INIT => X"A659"
    )
    port map (
      I0 => w_ball_Y(9),
      I1 => w_ball_Y(8),
      I2 => N22,
      I3 => r_count_y(9),
      O => Mcompar_w_inBall_cmp_le0001_lut(9)
    );
  Madd_add0000_add0000_xor_9_1_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => w_ball_x(6),
      I1 => w_ball_x(5),
      I2 => w_ball_x(3),
      I3 => w_ball_x(4),
      O => N6
    );
  Mcompar_w_inBall_cmp_ge0000_lut_10_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(10)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_11_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(11)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_12_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(12)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_13_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(13)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_14_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(14)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_15_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(15)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_16_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(16)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_17_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(17)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_18_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(18)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_19_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(19)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_20_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(20)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_21_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(21)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_22_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(22)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_23_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(23)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_24_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(24)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_25_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(25)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_26_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(26)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_27_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(27)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_28_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(28)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_29_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(29)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_30_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(30)
    );
  Mcompar_w_inBall_cmp_ge0000_lut_31_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_x(8),
      I1 => w_ball_x(9),
      I2 => w_ball_x(7),
      I3 => N17,
      O => Mcompar_w_inBall_cmp_ge0000_lut(31)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_10_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(10)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_11_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(11)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_12_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(12)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_13_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(13)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_14_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(14)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_15_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(15)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_16_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(16)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_17_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(17)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_18_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(18)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_19_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(19)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_20_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(20)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_21_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(21)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_22_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(22)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_23_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(23)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_24_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(24)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_25_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(25)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_26_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(26)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_27_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(27)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_28_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(28)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_29_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(29)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_30_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(30)
    );
  Mcompar_w_inBall_cmp_ge0001_lut_31_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => w_ball_Y(7),
      I2 => N151_bdd0,
      I3 => w_ball_Y(9),
      O => Mcompar_w_inBall_cmp_ge0001_lut(31)
    );
  w_vel_dir_y_not00021214_G_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => N41,
      I2 => w_ball_Y(3),
      O => N51
    );
  w_vel_dir_y_not00021214_G : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => w_one_per_frame_488,
      I1 => w_ball_Y(9),
      I2 => N51,
      I3 => w_vel_dir_y_cmp_ge0000,
      O => N40
    );
  vga_controller_o_HS_or000075_SW1 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => vga_controller_w_HS_count(7),
      I1 => vga_controller_o_HS_or000036_385,
      I2 => vga_controller_o_HS_or00005_386,
      I3 => vga_controller_w_HS_count(6),
      O => N53
    );
  vga_controller_o_HS_or000075 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => vga_controller_w_HS_count(8),
      I1 => N53,
      I2 => vga_controller_w_HS_count(10),
      I3 => vga_controller_w_HS_count(9),
      O => o_HS_OBUF_294
    );
  Madd_add0001_xor_6_12 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => w_ball_Y(6),
      I1 => w_ball_Y(3),
      I2 => w_ball_Y(4),
      I3 => w_ball_Y(5),
      O => Q_add0001(6)
    );
  Madd_add0000_add0000_xor_6_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => w_ball_x(6),
      I1 => w_ball_x(5),
      I2 => w_ball_x(3),
      I3 => w_ball_x(4),
      O => add0000_add0000(6)
    );
  Madd_add0001_xor_8_12 : LUT4
    generic map(
      INIT => X"9AAA"
    )
    port map (
      I0 => w_ball_Y(8),
      I1 => N7,
      I2 => w_ball_Y(7),
      I3 => w_ball_Y(6),
      O => Q_add0001(8)
    );
  w_ball_Y_not00011_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => w_one_per_frame_488,
      I1 => w_vel_dir_y_cmp_ge0000,
      O => w_ball_Y_not00011_453
    );
  i_clk_BUFGP : BUFGP
    port map (
      I => i_clk,
      O => i_clk_BUFGP_287
    );
  Maddsub_w_ball_x_addsub0000_lut_0_INV_0 : INV
    port map (
      I => w_ball_x(0),
      O => Maddsub_w_ball_x_addsub0000_lut(0)
    );
  Maddsub_w_ball_x_addsub0000_lut_1_INV_0 : INV
    port map (
      I => w_ball_x(1),
      O => Maddsub_w_ball_x_addsub0000_lut(1)
    );
  vga_controller_Mcount_w_HS_count_lut_0_INV_0 : INV
    port map (
      I => vga_controller_w_HS_count(0),
      O => vga_controller_Mcount_w_HS_count_lut(0)
    );
  vga_controller_Mcount_w_VS_count_lut_0_INV_0 : INV
    port map (
      I => vga_controller_w_VS_count(0),
      O => vga_controller_Mcount_w_VS_count_lut(0)
    );
  w_vel_dir_y_not00031_INV_0 : INV
    port map (
      I => w_vel_dir_y_490,
      O => w_vel_dir_y_not0003
    );
  w_one_per_frame_inv1_INV_0 : INV
    port map (
      I => w_one_per_frame_488,
      O => w_one_per_frame_inv
    );
  Q_add0001_3_1_INV_0 : INV
    port map (
      I => w_ball_Y(3),
      O => Q_add0001(3)
    );
  add0000_add0000_3_1_INV_0 : INV
    port map (
      I => w_ball_x(3),
      O => add0000_add0000(3)
    );
  vga_controller_o_VS_or0000106 : MUXF5
    port map (
      I0 => N55,
      I1 => N56,
      S => vga_controller_w_VS_count(7),
      O => o_VS_OBUF_300
    );
  vga_controller_o_VS_or0000106_F : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => N47,
      I1 => vga_controller_o_VS_or000021_387,
      I2 => vga_controller_w_VS_count(9),
      I3 => vga_controller_w_VS_count(8),
      O => N55
    );
  vga_controller_o_VS_or0000106_G : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => vga_controller_w_VS_count(8),
      I1 => vga_controller_o_VS_or000067_388,
      I2 => vga_controller_w_VS_count(9),
      I3 => vga_controller_o_VS_or000072_389,
      O => N56
    );
  vga_controller_w_VS_count_cmp_lt00001_SW0 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => vga_controller_w_HS_count(7),
      I1 => vga_controller_w_HS_count(4),
      I2 => vga_controller_w_HS_count(8),
      I3 => vga_controller_w_HS_count(9),
      LO => N57,
      O => N01
    );
  vga_controller_w_VS_count_cmp_lt00001 : LUT4_L
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => vga_controller_w_HS_count(10),
      I1 => vga_controller_w_HS_count(5),
      I2 => vga_controller_w_HS_count(6),
      I3 => N01,
      LO => vga_controller_w_VS_count_cmp_lt0000
    );
  w_ball_Y_cmp_gt0000226 : LUT3_L
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => w_ball_x(5),
      I1 => w_ball_x(3),
      I2 => w_ball_x(4),
      LO => w_ball_Y_cmp_gt0000226_441
    );
  N15111 : LUT4_D
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(5),
      I1 => w_ball_Y(6),
      I2 => w_ball_Y(4),
      I3 => w_ball_Y(3),
      LO => N58,
      O => N151_bdd0
    );
  w_ball_Y_cmp_gt00002121 : LUT3_D
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => w_ball_x(5),
      I1 => w_ball_x(3),
      I2 => w_ball_x(4),
      LO => N59,
      O => N10
    );
  w_vel_dir_y_not0002118 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => w_ball_Y(2),
      I1 => w_ball_Y(1),
      I2 => w_ball_Y(0),
      I3 => w_ball_Y(3),
      LO => w_vel_dir_y_not0002118_493
    );
  w_vel_dir_y_not00021182_SW1_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => w_ball_Y(4),
      I1 => w_ball_Y(5),
      I2 => w_ball_Y(6),
      LO => N41
    );
  w_ball_Y_cmp_gt0000249 : LUT4_D
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => w_ball_x(9),
      I1 => w_ball_x(8),
      I2 => N45,
      I3 => w_ball_Y_cmp_gt0000218_440,
      LO => N60,
      O => w_ball_Y_cmp_gt0000
    );

end Structure;

