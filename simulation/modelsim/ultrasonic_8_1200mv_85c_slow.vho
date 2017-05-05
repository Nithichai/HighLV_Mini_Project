-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/30/2017 21:42:55"

-- 
-- Device: Altera EP3C10E144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	echo IS
    PORT (
	clk_i : IN std_logic;
	rst_i : IN std_logic;
	echo_in : IN std_logic;
	data_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END echo;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_i	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_i	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo_in	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF echo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_i : std_logic;
SIGNAL ww_rst_i : std_logic;
SIGNAL ww_echo_in : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \clk_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter_pulse[0]~9_combout\ : std_logic;
SIGNAL \echo_in~input_o\ : std_logic;
SIGNAL \rst_i~input_o\ : std_logic;
SIGNAL \counter_number[12]~13_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \counter_number[0]~14_combout\ : std_logic;
SIGNAL \counter_number[12]~36_combout\ : std_logic;
SIGNAL \counter_number[0]~15\ : std_logic;
SIGNAL \counter_number[1]~16_combout\ : std_logic;
SIGNAL \counter_number[1]~17\ : std_logic;
SIGNAL \counter_number[2]~18_combout\ : std_logic;
SIGNAL \counter_number[2]~19\ : std_logic;
SIGNAL \counter_number[3]~20_combout\ : std_logic;
SIGNAL \counter_number[3]~21\ : std_logic;
SIGNAL \counter_number[4]~22_combout\ : std_logic;
SIGNAL \counter_number[4]~23\ : std_logic;
SIGNAL \counter_number[5]~24_combout\ : std_logic;
SIGNAL \counter_number[5]~25\ : std_logic;
SIGNAL \counter_number[6]~26_combout\ : std_logic;
SIGNAL \counter_number[6]~27\ : std_logic;
SIGNAL \counter_number[7]~28_combout\ : std_logic;
SIGNAL \counter_number[7]~29\ : std_logic;
SIGNAL \counter_number[8]~30_combout\ : std_logic;
SIGNAL \counter_number[8]~31\ : std_logic;
SIGNAL \counter_number[9]~32_combout\ : std_logic;
SIGNAL \counter_number[9]~33\ : std_logic;
SIGNAL \counter_number[10]~34_combout\ : std_logic;
SIGNAL \counter_number[10]~35\ : std_logic;
SIGNAL \counter_number[11]~37_combout\ : std_logic;
SIGNAL \counter_number[11]~38\ : std_logic;
SIGNAL \counter_number[12]~39_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \counter_pulse[0]~11_combout\ : std_logic;
SIGNAL \counter_pulse[0]~10\ : std_logic;
SIGNAL \counter_pulse[1]~12_combout\ : std_logic;
SIGNAL \counter_pulse[1]~13\ : std_logic;
SIGNAL \counter_pulse[2]~14_combout\ : std_logic;
SIGNAL \counter_pulse[2]~15\ : std_logic;
SIGNAL \counter_pulse[3]~16_combout\ : std_logic;
SIGNAL \counter_pulse[3]~17\ : std_logic;
SIGNAL \counter_pulse[4]~18_combout\ : std_logic;
SIGNAL \counter_pulse[4]~19\ : std_logic;
SIGNAL \counter_pulse[5]~20_combout\ : std_logic;
SIGNAL \counter_pulse[5]~21\ : std_logic;
SIGNAL \counter_pulse[6]~22_combout\ : std_logic;
SIGNAL \counter_pulse[6]~23\ : std_logic;
SIGNAL \counter_pulse[7]~24_combout\ : std_logic;
SIGNAL \counter_pulse[7]~25\ : std_logic;
SIGNAL \counter_pulse[8]~26_combout\ : std_logic;
SIGNAL \data_out[0]~1_combout\ : std_logic;
SIGNAL \data_out[0]~0_combout\ : std_logic;
SIGNAL \data_out[0]~2_combout\ : std_logic;
SIGNAL \data_out~3_combout\ : std_logic;
SIGNAL \data_out[0]~4_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \data_out~5_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \data_out~6_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \data_out~7_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \data_out~8_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \data_out~9_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \data_out~10_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \data_out~11_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL counter_pulse : std_logic_vector(8 DOWNTO 0);
SIGNAL counter_number : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_state~q\ : std_logic;

BEGIN

ww_clk_i <= clk_i;
ww_rst_i <= rst_i;
ww_echo_in <= echo_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_i~input_o\);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_state~q\ <= NOT \state~q\;

-- Location: IOOBUF_X0_Y23_N16
\data_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\data_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\data_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\data_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\data_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\data_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\data_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\data_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOIBUF_X34_Y12_N15
\clk_i~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_i,
	o => \clk_i~input_o\);

-- Location: CLKCTRL_G9
\clk_i~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_i~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y21_N4
\counter_pulse[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[0]~9_combout\ = counter_pulse(0) $ (VCC)
-- \counter_pulse[0]~10\ = CARRY(counter_pulse(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_pulse(0),
	datad => VCC,
	combout => \counter_pulse[0]~9_combout\,
	cout => \counter_pulse[0]~10\);

-- Location: IOIBUF_X34_Y9_N22
\echo_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo_in,
	o => \echo_in~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\rst_i~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_i,
	o => \rst_i~input_o\);

-- Location: LCCOMB_X3_Y21_N6
\counter_number[12]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[12]~13_combout\ = (\echo_in~input_o\ & \rst_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \echo_in~input_o\,
	datad => \rst_i~input_o\,
	combout => \counter_number[12]~13_combout\);

-- Location: FF_X3_Y21_N7
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LCCOMB_X5_Y21_N4
\counter_number[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[0]~14_combout\ = counter_number(0) $ (VCC)
-- \counter_number[0]~15\ = CARRY(counter_number(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_number(0),
	datad => VCC,
	combout => \counter_number[0]~14_combout\,
	cout => \counter_number[0]~15\);

-- Location: LCCOMB_X3_Y21_N26
\counter_number[12]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[12]~36_combout\ = (\rst_i~input_o\ & (\echo_in~input_o\ & \state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_i~input_o\,
	datac => \echo_in~input_o\,
	datad => \state~q\,
	combout => \counter_number[12]~36_combout\);

-- Location: FF_X5_Y21_N5
\counter_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[0]~14_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(0));

-- Location: LCCOMB_X5_Y21_N6
\counter_number[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[1]~16_combout\ = (counter_number(1) & (!\counter_number[0]~15\)) # (!counter_number(1) & ((\counter_number[0]~15\) # (GND)))
-- \counter_number[1]~17\ = CARRY((!\counter_number[0]~15\) # (!counter_number(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_number(1),
	datad => VCC,
	cin => \counter_number[0]~15\,
	combout => \counter_number[1]~16_combout\,
	cout => \counter_number[1]~17\);

-- Location: FF_X5_Y21_N7
\counter_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[1]~16_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(1));

-- Location: LCCOMB_X5_Y21_N8
\counter_number[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[2]~18_combout\ = (counter_number(2) & (\counter_number[1]~17\ $ (GND))) # (!counter_number(2) & (!\counter_number[1]~17\ & VCC))
-- \counter_number[2]~19\ = CARRY((counter_number(2) & !\counter_number[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_number(2),
	datad => VCC,
	cin => \counter_number[1]~17\,
	combout => \counter_number[2]~18_combout\,
	cout => \counter_number[2]~19\);

-- Location: FF_X5_Y21_N9
\counter_number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[2]~18_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(2));

-- Location: LCCOMB_X5_Y21_N10
\counter_number[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[3]~20_combout\ = (counter_number(3) & (!\counter_number[2]~19\)) # (!counter_number(3) & ((\counter_number[2]~19\) # (GND)))
-- \counter_number[3]~21\ = CARRY((!\counter_number[2]~19\) # (!counter_number(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_number(3),
	datad => VCC,
	cin => \counter_number[2]~19\,
	combout => \counter_number[3]~20_combout\,
	cout => \counter_number[3]~21\);

-- Location: FF_X5_Y21_N11
\counter_number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[3]~20_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(3));

-- Location: LCCOMB_X5_Y21_N12
\counter_number[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[4]~22_combout\ = (counter_number(4) & (\counter_number[3]~21\ $ (GND))) # (!counter_number(4) & (!\counter_number[3]~21\ & VCC))
-- \counter_number[4]~23\ = CARRY((counter_number(4) & !\counter_number[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_number(4),
	datad => VCC,
	cin => \counter_number[3]~21\,
	combout => \counter_number[4]~22_combout\,
	cout => \counter_number[4]~23\);

-- Location: FF_X5_Y21_N13
\counter_number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[4]~22_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(4));

-- Location: LCCOMB_X5_Y21_N14
\counter_number[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[5]~24_combout\ = (counter_number(5) & (!\counter_number[4]~23\)) # (!counter_number(5) & ((\counter_number[4]~23\) # (GND)))
-- \counter_number[5]~25\ = CARRY((!\counter_number[4]~23\) # (!counter_number(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_number(5),
	datad => VCC,
	cin => \counter_number[4]~23\,
	combout => \counter_number[5]~24_combout\,
	cout => \counter_number[5]~25\);

-- Location: FF_X5_Y21_N15
\counter_number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[5]~24_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(5));

-- Location: LCCOMB_X5_Y21_N16
\counter_number[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[6]~26_combout\ = (counter_number(6) & (\counter_number[5]~25\ $ (GND))) # (!counter_number(6) & (!\counter_number[5]~25\ & VCC))
-- \counter_number[6]~27\ = CARRY((counter_number(6) & !\counter_number[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_number(6),
	datad => VCC,
	cin => \counter_number[5]~25\,
	combout => \counter_number[6]~26_combout\,
	cout => \counter_number[6]~27\);

-- Location: FF_X5_Y21_N17
\counter_number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[6]~26_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(6));

-- Location: LCCOMB_X5_Y21_N18
\counter_number[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[7]~28_combout\ = (counter_number(7) & (!\counter_number[6]~27\)) # (!counter_number(7) & ((\counter_number[6]~27\) # (GND)))
-- \counter_number[7]~29\ = CARRY((!\counter_number[6]~27\) # (!counter_number(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_number(7),
	datad => VCC,
	cin => \counter_number[6]~27\,
	combout => \counter_number[7]~28_combout\,
	cout => \counter_number[7]~29\);

-- Location: FF_X5_Y21_N19
\counter_number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[7]~28_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(7));

-- Location: LCCOMB_X5_Y21_N20
\counter_number[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[8]~30_combout\ = (counter_number(8) & (\counter_number[7]~29\ $ (GND))) # (!counter_number(8) & (!\counter_number[7]~29\ & VCC))
-- \counter_number[8]~31\ = CARRY((counter_number(8) & !\counter_number[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_number(8),
	datad => VCC,
	cin => \counter_number[7]~29\,
	combout => \counter_number[8]~30_combout\,
	cout => \counter_number[8]~31\);

-- Location: FF_X5_Y21_N21
\counter_number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[8]~30_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(8));

-- Location: LCCOMB_X5_Y21_N22
\counter_number[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[9]~32_combout\ = (counter_number(9) & (!\counter_number[8]~31\)) # (!counter_number(9) & ((\counter_number[8]~31\) # (GND)))
-- \counter_number[9]~33\ = CARRY((!\counter_number[8]~31\) # (!counter_number(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_number(9),
	datad => VCC,
	cin => \counter_number[8]~31\,
	combout => \counter_number[9]~32_combout\,
	cout => \counter_number[9]~33\);

-- Location: FF_X5_Y21_N23
\counter_number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[9]~32_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(9));

-- Location: LCCOMB_X5_Y21_N24
\counter_number[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[10]~34_combout\ = (counter_number(10) & (\counter_number[9]~33\ $ (GND))) # (!counter_number(10) & (!\counter_number[9]~33\ & VCC))
-- \counter_number[10]~35\ = CARRY((counter_number(10) & !\counter_number[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_number(10),
	datad => VCC,
	cin => \counter_number[9]~33\,
	combout => \counter_number[10]~34_combout\,
	cout => \counter_number[10]~35\);

-- Location: FF_X5_Y21_N25
\counter_number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[10]~34_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(10));

-- Location: LCCOMB_X5_Y21_N26
\counter_number[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[11]~37_combout\ = (counter_number(11) & (!\counter_number[10]~35\)) # (!counter_number(11) & ((\counter_number[10]~35\) # (GND)))
-- \counter_number[11]~38\ = CARRY((!\counter_number[10]~35\) # (!counter_number(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_number(11),
	datad => VCC,
	cin => \counter_number[10]~35\,
	combout => \counter_number[11]~37_combout\,
	cout => \counter_number[11]~38\);

-- Location: FF_X5_Y21_N27
\counter_number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[11]~37_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(11));

-- Location: LCCOMB_X5_Y21_N28
\counter_number[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_number[12]~39_combout\ = \counter_number[11]~38\ $ (!counter_number(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_number(12),
	cin => \counter_number[11]~38\,
	combout => \counter_number[12]~39_combout\);

-- Location: FF_X5_Y21_N29
\counter_number[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_number[12]~39_combout\,
	sclr => \ALT_INV_LessThan0~2_combout\,
	ena => \counter_number[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_number(12));

-- Location: LCCOMB_X5_Y21_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter_number(3) & (!counter_number(6) & (!counter_number(5) & !counter_number(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_number(3),
	datab => counter_number(6),
	datac => counter_number(5),
	datad => counter_number(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y21_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter_number(9) & (counter_number(7) & (counter_number(8) & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_number(9),
	datab => counter_number(7),
	datac => counter_number(8),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y21_N30
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!counter_number(10) & (!counter_number(11) & !\LessThan0~1_combout\))) # (!counter_number(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_number(12),
	datab => counter_number(10),
	datac => counter_number(11),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y21_N22
\counter_pulse[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[0]~11_combout\ = (\rst_i~input_o\ & (\echo_in~input_o\ & ((!\state~q\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \echo_in~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \state~q\,
	combout => \counter_pulse[0]~11_combout\);

-- Location: FF_X4_Y21_N5
\counter_pulse[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[0]~9_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(0));

-- Location: LCCOMB_X4_Y21_N6
\counter_pulse[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[1]~12_combout\ = (counter_pulse(1) & (!\counter_pulse[0]~10\)) # (!counter_pulse(1) & ((\counter_pulse[0]~10\) # (GND)))
-- \counter_pulse[1]~13\ = CARRY((!\counter_pulse[0]~10\) # (!counter_pulse(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_pulse(1),
	datad => VCC,
	cin => \counter_pulse[0]~10\,
	combout => \counter_pulse[1]~12_combout\,
	cout => \counter_pulse[1]~13\);

-- Location: FF_X4_Y21_N7
\counter_pulse[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[1]~12_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(1));

-- Location: LCCOMB_X4_Y21_N8
\counter_pulse[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[2]~14_combout\ = (counter_pulse(2) & (\counter_pulse[1]~13\ $ (GND))) # (!counter_pulse(2) & (!\counter_pulse[1]~13\ & VCC))
-- \counter_pulse[2]~15\ = CARRY((counter_pulse(2) & !\counter_pulse[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_pulse(2),
	datad => VCC,
	cin => \counter_pulse[1]~13\,
	combout => \counter_pulse[2]~14_combout\,
	cout => \counter_pulse[2]~15\);

-- Location: FF_X4_Y21_N9
\counter_pulse[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[2]~14_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(2));

-- Location: LCCOMB_X4_Y21_N10
\counter_pulse[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[3]~16_combout\ = (counter_pulse(3) & (!\counter_pulse[2]~15\)) # (!counter_pulse(3) & ((\counter_pulse[2]~15\) # (GND)))
-- \counter_pulse[3]~17\ = CARRY((!\counter_pulse[2]~15\) # (!counter_pulse(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_pulse(3),
	datad => VCC,
	cin => \counter_pulse[2]~15\,
	combout => \counter_pulse[3]~16_combout\,
	cout => \counter_pulse[3]~17\);

-- Location: FF_X4_Y21_N11
\counter_pulse[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[3]~16_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(3));

-- Location: LCCOMB_X4_Y21_N12
\counter_pulse[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[4]~18_combout\ = (counter_pulse(4) & (\counter_pulse[3]~17\ $ (GND))) # (!counter_pulse(4) & (!\counter_pulse[3]~17\ & VCC))
-- \counter_pulse[4]~19\ = CARRY((counter_pulse(4) & !\counter_pulse[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_pulse(4),
	datad => VCC,
	cin => \counter_pulse[3]~17\,
	combout => \counter_pulse[4]~18_combout\,
	cout => \counter_pulse[4]~19\);

-- Location: FF_X4_Y21_N13
\counter_pulse[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[4]~18_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(4));

-- Location: LCCOMB_X4_Y21_N14
\counter_pulse[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[5]~20_combout\ = (counter_pulse(5) & (!\counter_pulse[4]~19\)) # (!counter_pulse(5) & ((\counter_pulse[4]~19\) # (GND)))
-- \counter_pulse[5]~21\ = CARRY((!\counter_pulse[4]~19\) # (!counter_pulse(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_pulse(5),
	datad => VCC,
	cin => \counter_pulse[4]~19\,
	combout => \counter_pulse[5]~20_combout\,
	cout => \counter_pulse[5]~21\);

-- Location: FF_X4_Y21_N15
\counter_pulse[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[5]~20_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(5));

-- Location: LCCOMB_X4_Y21_N16
\counter_pulse[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[6]~22_combout\ = (counter_pulse(6) & (\counter_pulse[5]~21\ $ (GND))) # (!counter_pulse(6) & (!\counter_pulse[5]~21\ & VCC))
-- \counter_pulse[6]~23\ = CARRY((counter_pulse(6) & !\counter_pulse[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_pulse(6),
	datad => VCC,
	cin => \counter_pulse[5]~21\,
	combout => \counter_pulse[6]~22_combout\,
	cout => \counter_pulse[6]~23\);

-- Location: FF_X4_Y21_N17
\counter_pulse[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[6]~22_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(6));

-- Location: LCCOMB_X4_Y21_N18
\counter_pulse[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[7]~24_combout\ = (counter_pulse(7) & (!\counter_pulse[6]~23\)) # (!counter_pulse(7) & ((\counter_pulse[6]~23\) # (GND)))
-- \counter_pulse[7]~25\ = CARRY((!\counter_pulse[6]~23\) # (!counter_pulse(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_pulse(7),
	datad => VCC,
	cin => \counter_pulse[6]~23\,
	combout => \counter_pulse[7]~24_combout\,
	cout => \counter_pulse[7]~25\);

-- Location: FF_X4_Y21_N19
\counter_pulse[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[7]~24_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(7));

-- Location: LCCOMB_X4_Y21_N20
\counter_pulse[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_pulse[8]~26_combout\ = \counter_pulse[7]~25\ $ (!counter_pulse(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_pulse(8),
	cin => \counter_pulse[7]~25\,
	combout => \counter_pulse[8]~26_combout\);

-- Location: FF_X4_Y21_N21
\counter_pulse[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \counter_pulse[8]~26_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter_pulse[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_pulse(8));

-- Location: LCCOMB_X4_Y21_N26
\data_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out[0]~1_combout\ = (!counter_pulse(4) & (!counter_pulse(6) & (!counter_pulse(5) & !counter_pulse(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_pulse(4),
	datab => counter_pulse(6),
	datac => counter_pulse(5),
	datad => counter_pulse(7),
	combout => \data_out[0]~1_combout\);

-- Location: LCCOMB_X4_Y21_N28
\data_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out[0]~0_combout\ = (!counter_pulse(3) & (!counter_pulse(2) & (!counter_pulse(0) & !counter_pulse(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_pulse(3),
	datab => counter_pulse(2),
	datac => counter_pulse(0),
	datad => counter_pulse(1),
	combout => \data_out[0]~0_combout\);

-- Location: LCCOMB_X4_Y21_N24
\data_out[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out[0]~2_combout\ = (\rst_i~input_o\ & (((\data_out[0]~1_combout\ & \data_out[0]~0_combout\)) # (!counter_pulse(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => counter_pulse(8),
	datac => \data_out[0]~1_combout\,
	datad => \data_out[0]~0_combout\,
	combout => \data_out[0]~2_combout\);

-- Location: LCCOMB_X4_Y21_N0
\data_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~3_combout\ = (counter_pulse(0) & \data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_pulse(0),
	datad => \data_out[0]~2_combout\,
	combout => \data_out~3_combout\);

-- Location: LCCOMB_X3_Y21_N16
\data_out[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out[0]~4_combout\ = ((!\echo_in~input_o\ & \state~q\)) # (!\rst_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_i~input_o\,
	datac => \echo_in~input_o\,
	datad => \state~q\,
	combout => \data_out[0]~4_combout\);

-- Location: FF_X4_Y21_N1
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \data_out~3_combout\,
	ena => \data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: LCCOMB_X3_Y21_N0
\data_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~5_combout\ = (counter_pulse(1) & \data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_pulse(1),
	datad => \data_out[0]~2_combout\,
	combout => \data_out~5_combout\);

-- Location: FF_X3_Y21_N1
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \data_out~5_combout\,
	ena => \data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: LCCOMB_X4_Y21_N30
\data_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~6_combout\ = (counter_pulse(2) & \data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_pulse(2),
	datad => \data_out[0]~2_combout\,
	combout => \data_out~6_combout\);

-- Location: FF_X4_Y21_N31
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \data_out~6_combout\,
	ena => \data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: LCCOMB_X4_Y21_N2
\data_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~7_combout\ = (counter_pulse(3) & \data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_pulse(3),
	datad => \data_out[0]~2_combout\,
	combout => \data_out~7_combout\);

-- Location: FF_X4_Y21_N3
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \data_out~7_combout\,
	ena => \data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: LCCOMB_X3_Y21_N22
\data_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~8_combout\ = (counter_pulse(4) & \data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_pulse(4),
	datad => \data_out[0]~2_combout\,
	combout => \data_out~8_combout\);

-- Location: FF_X3_Y21_N23
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \data_out~8_combout\,
	ena => \data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: LCCOMB_X3_Y21_N20
\data_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~9_combout\ = (counter_pulse(5) & \data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_pulse(5),
	datad => \data_out[0]~2_combout\,
	combout => \data_out~9_combout\);

-- Location: FF_X3_Y21_N21
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \data_out~9_combout\,
	ena => \data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: LCCOMB_X3_Y21_N14
\data_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~10_combout\ = (counter_pulse(6) & \data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_pulse(6),
	datad => \data_out[0]~2_combout\,
	combout => \data_out~10_combout\);

-- Location: FF_X3_Y21_N15
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \data_out~10_combout\,
	ena => \data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: LCCOMB_X3_Y21_N12
\data_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_out~11_combout\ = (counter_pulse(7) & \data_out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_pulse(7),
	datad => \data_out[0]~2_combout\,
	combout => \data_out~11_combout\);

-- Location: FF_X3_Y21_N13
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \data_out~11_combout\,
	ena => \data_out[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


