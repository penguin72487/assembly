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

-- DATE "03/26/2024 11:08:23"

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

ENTITY 	cplmReg IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	parallel_data : IN std_logic_vector(3 DOWNTO 0);
	S1 : IN std_logic;
	S0 : IN std_logic;
	reg_out : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END cplmReg;

-- Design Ports Information
-- reg_out[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_data[0]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_data[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_data[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parallel_data[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cplmReg IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_parallel_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_reg_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg_out[0]~output_o\ : std_logic;
SIGNAL \reg_out[1]~output_o\ : std_logic;
SIGNAL \reg_out[2]~output_o\ : std_logic;
SIGNAL \reg_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \parallel_data[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \reg_out[0]~0_combout\ : std_logic;
SIGNAL \reg_out[0]~reg0_q\ : std_logic;
SIGNAL \parallel_data[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \reg_out[1]~reg0_q\ : std_logic;
SIGNAL \parallel_data[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \reg_out[2]~reg0_q\ : std_logic;
SIGNAL \parallel_data[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \reg_out[3]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_parallel_data <= parallel_data;
ww_S1 <= S1;
ww_S0 <= S0;
reg_out <= ww_reg_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X1_Y0_N23
\reg_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\reg_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\reg_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\reg_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \reg_out[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N15
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\parallel_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_data(0),
	o => \parallel_data[0]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\S1~input_o\ & (!\S0~input_o\ & ((\parallel_data[0]~input_o\)))) # (!\S1~input_o\ & (((!\reg_out[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \reg_out[0]~reg0_q\,
	datad => \parallel_data[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G4
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y7_N16
\reg_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[0]~0_combout\ = (\S0~input_o\) # (\S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~input_o\,
	datac => \S1~input_o\,
	combout => \reg_out[0]~0_combout\);

-- Location: FF_X1_Y7_N1
\reg_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \reg_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[0]~reg0_q\);

-- Location: IOIBUF_X0_Y9_N8
\parallel_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_data(1),
	o => \parallel_data[1]~input_o\);

-- Location: LCCOMB_X1_Y7_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\S1~input_o\ & (!\S0~input_o\ & ((\parallel_data[1]~input_o\)))) # (!\S1~input_o\ & (((!\reg_out[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \reg_out[1]~reg0_q\,
	datad => \parallel_data[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X1_Y7_N27
\reg_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \reg_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[1]~reg0_q\);

-- Location: IOIBUF_X0_Y8_N15
\parallel_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_data(2),
	o => \parallel_data[2]~input_o\);

-- Location: LCCOMB_X1_Y7_N12
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\S1~input_o\ & (!\S0~input_o\ & ((\parallel_data[2]~input_o\)))) # (!\S1~input_o\ & (((!\reg_out[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \reg_out[2]~reg0_q\,
	datad => \parallel_data[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X1_Y7_N13
\reg_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \reg_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[2]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N15
\parallel_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_parallel_data(3),
	o => \parallel_data[3]~input_o\);

-- Location: LCCOMB_X1_Y7_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\S1~input_o\ & (!\S0~input_o\ & ((\parallel_data[3]~input_o\)))) # (!\S1~input_o\ & (((!\reg_out[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \reg_out[3]~reg0_q\,
	datad => \parallel_data[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X1_Y7_N31
\reg_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \reg_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_out[3]~reg0_q\);

ww_reg_out(0) <= \reg_out[0]~output_o\;

ww_reg_out(1) <= \reg_out[1]~output_o\;

ww_reg_out(2) <= \reg_out[2]~output_o\;

ww_reg_out(3) <= \reg_out[3]~output_o\;
END structure;


