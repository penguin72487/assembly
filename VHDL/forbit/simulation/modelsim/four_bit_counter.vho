-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "04/16/2024 10:06:16"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	four_bit_counter IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	\out\ : OUT std_logic_vector(3 DOWNTO 0)
	);
END four_bit_counter;

-- Design Ports Information
-- out[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF four_bit_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \ww_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \tff0|Q~0_combout\ : std_logic;
SIGNAL \tff0|Q~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \tff0|Q~q\ : std_logic;
SIGNAL \tff1|Q~0_combout\ : std_logic;
SIGNAL \tff1|Q~feeder_combout\ : std_logic;
SIGNAL \tff1|Q~q\ : std_logic;
SIGNAL \tff2|Q~0_combout\ : std_logic;
SIGNAL \tff2|Q~feeder_combout\ : std_logic;
SIGNAL \tff2|Q~q\ : std_logic;
SIGNAL \tff3|Q~0_combout\ : std_logic;
SIGNAL \tff3|Q~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \tff2|ALT_INV_Q~q\ : std_logic;
SIGNAL \tff1|ALT_INV_Q~q\ : std_logic;
SIGNAL \tff0|ALT_INV_Q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\tff2|ALT_INV_Q~q\ <= NOT \tff2|Q~q\;
\tff1|ALT_INV_Q~q\ <= NOT \tff1|Q~q\;
\tff0|ALT_INV_Q~q\ <= NOT \tff0|Q~q\;

-- Location: IOOBUF_X0_Y18_N23
\out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tff0|Q~q\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tff1|Q~q\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tff2|Q~q\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tff3|Q~q\,
	devoe => ww_devoe,
	o => \out[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X1_Y17_N18
\tff0|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tff0|Q~0_combout\ = !\tff0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tff0|Q~q\,
	combout => \tff0|Q~0_combout\);

-- Location: LCCOMB_X1_Y17_N24
\tff0|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tff0|Q~feeder_combout\ = \tff0|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tff0|Q~0_combout\,
	combout => \tff0|Q~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y17_N25
\tff0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tff0|Q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff0|Q~q\);

-- Location: LCCOMB_X1_Y17_N28
\tff1|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tff1|Q~0_combout\ = \tff1|Q~q\ $ (\tff0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tff1|Q~q\,
	datac => \tff0|Q~q\,
	combout => \tff1|Q~0_combout\);

-- Location: LCCOMB_X1_Y17_N6
\tff1|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tff1|Q~feeder_combout\ = \tff1|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tff1|Q~0_combout\,
	combout => \tff1|Q~feeder_combout\);

-- Location: FF_X1_Y17_N7
\tff1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tff0|ALT_INV_Q~q\,
	d => \tff1|Q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff1|Q~q\);

-- Location: LCCOMB_X2_Y17_N18
\tff2|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tff2|Q~0_combout\ = \tff2|Q~q\ $ (\tff1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tff2|Q~q\,
	datac => \tff1|Q~q\,
	combout => \tff2|Q~0_combout\);

-- Location: LCCOMB_X2_Y17_N28
\tff2|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tff2|Q~feeder_combout\ = \tff2|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tff2|Q~0_combout\,
	combout => \tff2|Q~feeder_combout\);

-- Location: FF_X2_Y17_N29
\tff2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tff1|ALT_INV_Q~q\,
	d => \tff2|Q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff2|Q~q\);

-- Location: LCCOMB_X2_Y17_N4
\tff3|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tff3|Q~0_combout\ = \tff2|Q~q\ $ (\tff3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tff2|Q~q\,
	datad => \tff3|Q~q\,
	combout => \tff3|Q~0_combout\);

-- Location: FF_X2_Y17_N11
\tff3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tff2|ALT_INV_Q~q\,
	asdata => \tff3|Q~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff3|Q~q\);

\ww_out\(0) <= \out[0]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;
END structure;


