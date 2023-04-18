-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "02/28/2023 11:33:40"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bit4_sumador IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	CIN : IN std_logic;
	SUM : BUFFER std_logic_vector(3 DOWNTO 0);
	COUT : BUFFER std_logic
	);
END bit4_sumador;

-- Design Ports Information
-- SUM[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bit4_sumador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CIN : std_logic;
SIGNAL ww_SUM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_COUT : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \BIT0|MS2|sum~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \BIT1|MS2|sum~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \BIT1|cout~combout\ : std_logic;
SIGNAL \BIT2|MS2|sum~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \BIT3|MS2|sum~combout\ : std_logic;
SIGNAL \BIT3|cout~combout\ : std_logic;
SIGNAL \BIT1|ALT_INV_cout~combout\ : std_logic;
SIGNAL \ALT_INV_CIN~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_CIN <= CIN;
SUM <= ww_SUM;
COUT <= ww_COUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\BIT1|ALT_INV_cout~combout\ <= NOT \BIT1|cout~combout\;
\ALT_INV_CIN~input_o\ <= NOT \CIN~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;

-- Location: IOOBUF_X84_Y0_N2
\SUM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BIT0|MS2|sum~combout\,
	devoe => ww_devoe,
	o => ww_SUM(0));

-- Location: IOOBUF_X89_Y6_N5
\SUM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BIT1|MS2|sum~combout\,
	devoe => ww_devoe,
	o => ww_SUM(1));

-- Location: IOOBUF_X89_Y8_N5
\SUM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BIT2|MS2|sum~combout\,
	devoe => ww_devoe,
	o => ww_SUM(2));

-- Location: IOOBUF_X89_Y6_N22
\SUM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BIT3|MS2|sum~combout\,
	devoe => ww_devoe,
	o => ww_SUM(3));

-- Location: IOOBUF_X52_Y0_N2
\COUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BIT3|cout~combout\,
	devoe => ww_devoe,
	o => ww_COUT);

-- Location: IOIBUF_X4_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\CIN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: LABCELL_X7_Y2_N30
\BIT0|MS2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \BIT0|MS2|sum~combout\ = ( \B[0]~input_o\ & ( \CIN~input_o\ & ( \A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \CIN~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( \B[0]~input_o\ & ( !\CIN~input_o\ & ( !\A[0]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\CIN~input_o\ & ( 
-- \A[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_CIN~input_o\,
	combout => \BIT0|MS2|sum~combout\);

-- Location: IOIBUF_X4_Y0_N52
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X7_Y2_N39
\BIT1|MS2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \BIT1|MS2|sum~combout\ = ( \A[1]~input_o\ & ( \CIN~input_o\ & ( !\B[1]~input_o\ $ (((\B[0]~input_o\) # (\A[0]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( \CIN~input_o\ & ( !\B[1]~input_o\ $ (((!\A[0]~input_o\ & !\B[0]~input_o\))) ) ) ) # ( \A[1]~input_o\ & 
-- ( !\CIN~input_o\ & ( !\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( !\CIN~input_o\ & ( !\B[1]~input_o\ $ (((!\A[0]~input_o\) # (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010101010101010010101011010101010101010010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_CIN~input_o\,
	combout => \BIT1|MS2|sum~combout\);

-- Location: IOIBUF_X2_Y0_N41
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X7_Y2_N42
\BIT1|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \BIT1|cout~combout\ = ( \A[1]~input_o\ & ( \CIN~input_o\ & ( ((\B[1]~input_o\) # (\A[0]~input_o\)) # (\B[0]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( \CIN~input_o\ & ( (\B[1]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) ) ) ) # ( \A[1]~input_o\ & ( 
-- !\CIN~input_o\ & ( ((\B[0]~input_o\ & \A[0]~input_o\)) # (\B[1]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( !\CIN~input_o\ & ( (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000111110001111100000111000001110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_CIN~input_o\,
	combout => \BIT1|cout~combout\);

-- Location: LABCELL_X7_Y2_N51
\BIT2|MS2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \BIT2|MS2|sum~combout\ = ( \A[2]~input_o\ & ( \BIT1|cout~combout\ & ( \B[2]~input_o\ ) ) ) # ( !\A[2]~input_o\ & ( \BIT1|cout~combout\ & ( !\B[2]~input_o\ ) ) ) # ( \A[2]~input_o\ & ( !\BIT1|cout~combout\ & ( !\B[2]~input_o\ ) ) ) # ( !\A[2]~input_o\ & ( 
-- !\BIT1|cout~combout\ & ( \B[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \BIT1|ALT_INV_cout~combout\,
	combout => \BIT2|MS2|sum~combout\);

-- Location: IOIBUF_X16_Y0_N18
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X7_Y2_N57
\BIT3|MS2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \BIT3|MS2|sum~combout\ = ( \A[3]~input_o\ & ( \BIT1|cout~combout\ & ( !\B[3]~input_o\ $ (((\B[2]~input_o\) # (\A[2]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( \BIT1|cout~combout\ & ( !\B[3]~input_o\ $ (((!\A[2]~input_o\ & !\B[2]~input_o\))) ) ) ) # ( 
-- \A[3]~input_o\ & ( !\BIT1|cout~combout\ & ( !\B[3]~input_o\ $ (((\A[2]~input_o\ & \B[2]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( !\BIT1|cout~combout\ & ( !\B[3]~input_o\ $ (((!\A[2]~input_o\) # (!\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110101010011010100101101010011010101001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \BIT1|ALT_INV_cout~combout\,
	combout => \BIT3|MS2|sum~combout\);

-- Location: LABCELL_X7_Y2_N0
\BIT3|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \BIT3|cout~combout\ = ( \A[3]~input_o\ & ( \BIT1|cout~combout\ & ( ((\A[2]~input_o\) # (\B[3]~input_o\)) # (\B[2]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( \BIT1|cout~combout\ & ( (\B[3]~input_o\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) ) ) ) # ( 
-- \A[3]~input_o\ & ( !\BIT1|cout~combout\ & ( ((\B[2]~input_o\ & \A[2]~input_o\)) # (\B[3]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( !\BIT1|cout~combout\ & ( (\B[2]~input_o\ & (\B[3]~input_o\ & \A[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110011111100000011000011110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \BIT1|ALT_INV_cout~combout\,
	combout => \BIT3|cout~combout\);

-- Location: LABCELL_X12_Y7_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


