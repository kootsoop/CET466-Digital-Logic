-- Copyright (C) 1991-2014 Altera Corporation
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
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Web Edition"

-- DATE "12/11/2018 10:50:54"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	Baseball_Counter IS
    PORT (
	Strike : IN std_logic;
	Ball : IN std_logic;
	Clear : IN std_logic;
	Strike_Count : OUT std_logic_vector(1 DOWNTO 0);
	Ball_Count : OUT std_logic_vector(2 DOWNTO 0)
	);
END Baseball_Counter;

-- Design Ports Information
-- Strike_Count[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Strike_Count[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ball_Count[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ball_Count[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ball_Count[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Strike	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ball	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Baseball_Counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Strike : std_logic;
SIGNAL ww_Ball : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Strike_Count : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Ball_Count : std_logic_vector(2 DOWNTO 0);
SIGNAL \Strike_Count[0]~output_o\ : std_logic;
SIGNAL \Strike_Count[1]~output_o\ : std_logic;
SIGNAL \Ball_Count[0]~output_o\ : std_logic;
SIGNAL \Ball_Count[1]~output_o\ : std_logic;
SIGNAL \Ball_Count[2]~output_o\ : std_logic;
SIGNAL \Strike~input_o\ : std_logic;
SIGNAL \num_strikes[0]~93_combout\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Ball~input_o\ : std_logic;
SIGNAL \num_balls[0]~93_combout\ : std_logic;
SIGNAL \num_balls[1]~31_combout\ : std_logic;
SIGNAL \num_balls[1]~32\ : std_logic;
SIGNAL \num_balls[2]~33_combout\ : std_logic;
SIGNAL \num_balls[2]~34\ : std_logic;
SIGNAL \num_balls[3]~35_combout\ : std_logic;
SIGNAL \num_balls[3]~36\ : std_logic;
SIGNAL \num_balls[4]~37_combout\ : std_logic;
SIGNAL \num_balls[4]~38\ : std_logic;
SIGNAL \num_balls[5]~39_combout\ : std_logic;
SIGNAL \num_balls[5]~40\ : std_logic;
SIGNAL \num_balls[6]~41_combout\ : std_logic;
SIGNAL \num_balls[6]~42\ : std_logic;
SIGNAL \num_balls[7]~43_combout\ : std_logic;
SIGNAL \num_balls[7]~44\ : std_logic;
SIGNAL \num_balls[8]~45_combout\ : std_logic;
SIGNAL \num_balls[8]~46\ : std_logic;
SIGNAL \num_balls[9]~47_combout\ : std_logic;
SIGNAL \num_balls[9]~48\ : std_logic;
SIGNAL \num_balls[10]~49_combout\ : std_logic;
SIGNAL \num_balls[10]~50\ : std_logic;
SIGNAL \num_balls[11]~51_combout\ : std_logic;
SIGNAL \num_balls[11]~52\ : std_logic;
SIGNAL \num_balls[12]~53_combout\ : std_logic;
SIGNAL \num_balls[12]~54\ : std_logic;
SIGNAL \num_balls[13]~55_combout\ : std_logic;
SIGNAL \num_balls[13]~56\ : std_logic;
SIGNAL \num_balls[14]~57_combout\ : std_logic;
SIGNAL \num_balls[14]~58\ : std_logic;
SIGNAL \num_balls[15]~59_combout\ : std_logic;
SIGNAL \num_balls[15]~60\ : std_logic;
SIGNAL \num_balls[16]~61_combout\ : std_logic;
SIGNAL \num_balls[16]~62\ : std_logic;
SIGNAL \num_balls[17]~63_combout\ : std_logic;
SIGNAL \num_balls[17]~64\ : std_logic;
SIGNAL \num_balls[18]~65_combout\ : std_logic;
SIGNAL \num_balls[18]~66\ : std_logic;
SIGNAL \num_balls[19]~67_combout\ : std_logic;
SIGNAL \num_balls[19]~68\ : std_logic;
SIGNAL \num_balls[20]~69_combout\ : std_logic;
SIGNAL \num_balls[20]~70\ : std_logic;
SIGNAL \num_balls[21]~71_combout\ : std_logic;
SIGNAL \num_balls[21]~72\ : std_logic;
SIGNAL \num_balls[22]~73_combout\ : std_logic;
SIGNAL \num_balls[22]~74\ : std_logic;
SIGNAL \num_balls[23]~75_combout\ : std_logic;
SIGNAL \num_balls[23]~76\ : std_logic;
SIGNAL \num_balls[24]~77_combout\ : std_logic;
SIGNAL \num_balls[24]~78\ : std_logic;
SIGNAL \num_balls[25]~79_combout\ : std_logic;
SIGNAL \num_balls[25]~80\ : std_logic;
SIGNAL \num_balls[26]~81_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \num_balls[26]~82\ : std_logic;
SIGNAL \num_balls[27]~83_combout\ : std_logic;
SIGNAL \num_balls[27]~84\ : std_logic;
SIGNAL \num_balls[28]~85_combout\ : std_logic;
SIGNAL \num_balls[28]~86\ : std_logic;
SIGNAL \num_balls[29]~87_combout\ : std_logic;
SIGNAL \num_balls[29]~88\ : std_logic;
SIGNAL \num_balls[30]~89_combout\ : std_logic;
SIGNAL \num_balls[30]~90\ : std_logic;
SIGNAL \num_balls[31]~91_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \num_strikes[1]~31_combout\ : std_logic;
SIGNAL \num_strikes[22]~74\ : std_logic;
SIGNAL \num_strikes[23]~75_combout\ : std_logic;
SIGNAL \num_strikes[23]~76\ : std_logic;
SIGNAL \num_strikes[24]~77_combout\ : std_logic;
SIGNAL \num_strikes[24]~78\ : std_logic;
SIGNAL \num_strikes[25]~79_combout\ : std_logic;
SIGNAL \num_strikes[25]~80\ : std_logic;
SIGNAL \num_strikes[26]~81_combout\ : std_logic;
SIGNAL \num_strikes[26]~82\ : std_logic;
SIGNAL \num_strikes[27]~83_combout\ : std_logic;
SIGNAL \num_strikes[27]~84\ : std_logic;
SIGNAL \num_strikes[28]~85_combout\ : std_logic;
SIGNAL \num_strikes[28]~86\ : std_logic;
SIGNAL \num_strikes[29]~87_combout\ : std_logic;
SIGNAL \num_strikes[29]~88\ : std_logic;
SIGNAL \num_strikes[30]~89_combout\ : std_logic;
SIGNAL \num_strikes[30]~90\ : std_logic;
SIGNAL \num_strikes[31]~91_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \num_strikes[1]~32\ : std_logic;
SIGNAL \num_strikes[2]~33_combout\ : std_logic;
SIGNAL \num_strikes[2]~34\ : std_logic;
SIGNAL \num_strikes[3]~35_combout\ : std_logic;
SIGNAL \num_strikes[3]~36\ : std_logic;
SIGNAL \num_strikes[4]~37_combout\ : std_logic;
SIGNAL \num_strikes[4]~38\ : std_logic;
SIGNAL \num_strikes[5]~39_combout\ : std_logic;
SIGNAL \num_strikes[5]~40\ : std_logic;
SIGNAL \num_strikes[6]~41_combout\ : std_logic;
SIGNAL \num_strikes[6]~42\ : std_logic;
SIGNAL \num_strikes[7]~43_combout\ : std_logic;
SIGNAL \num_strikes[7]~44\ : std_logic;
SIGNAL \num_strikes[8]~45_combout\ : std_logic;
SIGNAL \num_strikes[8]~46\ : std_logic;
SIGNAL \num_strikes[9]~47_combout\ : std_logic;
SIGNAL \num_strikes[9]~48\ : std_logic;
SIGNAL \num_strikes[10]~49_combout\ : std_logic;
SIGNAL \num_strikes[10]~50\ : std_logic;
SIGNAL \num_strikes[11]~51_combout\ : std_logic;
SIGNAL \num_strikes[11]~52\ : std_logic;
SIGNAL \num_strikes[12]~53_combout\ : std_logic;
SIGNAL \num_strikes[12]~54\ : std_logic;
SIGNAL \num_strikes[13]~55_combout\ : std_logic;
SIGNAL \num_strikes[13]~56\ : std_logic;
SIGNAL \num_strikes[14]~57_combout\ : std_logic;
SIGNAL \num_strikes[14]~58\ : std_logic;
SIGNAL \num_strikes[15]~59_combout\ : std_logic;
SIGNAL \num_strikes[15]~60\ : std_logic;
SIGNAL \num_strikes[16]~61_combout\ : std_logic;
SIGNAL \num_strikes[16]~62\ : std_logic;
SIGNAL \num_strikes[17]~63_combout\ : std_logic;
SIGNAL \num_strikes[17]~64\ : std_logic;
SIGNAL \num_strikes[18]~65_combout\ : std_logic;
SIGNAL \num_strikes[18]~66\ : std_logic;
SIGNAL \num_strikes[19]~67_combout\ : std_logic;
SIGNAL \num_strikes[19]~68\ : std_logic;
SIGNAL \num_strikes[20]~69_combout\ : std_logic;
SIGNAL \num_strikes[20]~70\ : std_logic;
SIGNAL \num_strikes[21]~71_combout\ : std_logic;
SIGNAL \num_strikes[21]~72\ : std_logic;
SIGNAL \num_strikes[22]~73_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Strike_Count~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Ball_Count~0_combout\ : std_logic;
SIGNAL \Ball_Count~1_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL num_strikes : std_logic_vector(31 DOWNTO 0);
SIGNAL num_balls : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Ball~input_o\ : std_logic;
SIGNAL \ALT_INV_Strike~input_o\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_Strike <= Strike;
ww_Ball <= Ball;
ww_Clear <= Clear;
Strike_Count <= ww_Strike_Count;
Ball_Count <= ww_Ball_Count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Ball~input_o\ <= NOT \Ball~input_o\;
\ALT_INV_Strike~input_o\ <= NOT \Strike~input_o\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;

-- Location: IOOBUF_X0_Y24_N23
\Strike_Count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Strike_Count~0_combout\,
	devoe => ww_devoe,
	o => \Strike_Count[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Strike_Count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => \Strike_Count[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\Ball_Count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ball_Count~0_combout\,
	devoe => ww_devoe,
	o => \Ball_Count[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\Ball_Count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ball_Count~1_combout\,
	devoe => ww_devoe,
	o => \Ball_Count[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Ball_Count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal4~1_combout\,
	devoe => ww_devoe,
	o => \Ball_Count[2]~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\Strike~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Strike,
	o => \Strike~input_o\);

-- Location: LCCOMB_X15_Y26_N16
\num_strikes[0]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[0]~93_combout\ = !num_strikes(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num_strikes(0),
	combout => \num_strikes[0]~93_combout\);

-- Location: IOIBUF_X0_Y21_N8
\Clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\Ball~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ball,
	o => \Ball~input_o\);

-- Location: LCCOMB_X15_Y24_N20
\num_balls[0]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[0]~93_combout\ = !num_balls(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num_balls(0),
	combout => \num_balls[0]~93_combout\);

-- Location: FF_X15_Y24_N21
\num_balls[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[0]~93_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(0));

-- Location: LCCOMB_X14_Y24_N2
\num_balls[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[1]~31_combout\ = (num_balls(0) & (num_balls(1) $ (VCC))) # (!num_balls(0) & (num_balls(1) & VCC))
-- \num_balls[1]~32\ = CARRY((num_balls(0) & num_balls(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(0),
	datab => num_balls(1),
	datad => VCC,
	combout => \num_balls[1]~31_combout\,
	cout => \num_balls[1]~32\);

-- Location: FF_X14_Y24_N3
\num_balls[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[1]~31_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(1));

-- Location: LCCOMB_X14_Y24_N4
\num_balls[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[2]~33_combout\ = (num_balls(2) & (!\num_balls[1]~32\)) # (!num_balls(2) & ((\num_balls[1]~32\) # (GND)))
-- \num_balls[2]~34\ = CARRY((!\num_balls[1]~32\) # (!num_balls(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(2),
	datad => VCC,
	cin => \num_balls[1]~32\,
	combout => \num_balls[2]~33_combout\,
	cout => \num_balls[2]~34\);

-- Location: FF_X14_Y24_N5
\num_balls[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[2]~33_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(2));

-- Location: LCCOMB_X14_Y24_N6
\num_balls[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[3]~35_combout\ = (num_balls(3) & (\num_balls[2]~34\ $ (GND))) # (!num_balls(3) & (!\num_balls[2]~34\ & VCC))
-- \num_balls[3]~36\ = CARRY((num_balls(3) & !\num_balls[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(3),
	datad => VCC,
	cin => \num_balls[2]~34\,
	combout => \num_balls[3]~35_combout\,
	cout => \num_balls[3]~36\);

-- Location: FF_X14_Y24_N7
\num_balls[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[3]~35_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(3));

-- Location: LCCOMB_X14_Y24_N8
\num_balls[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[4]~37_combout\ = (num_balls(4) & (!\num_balls[3]~36\)) # (!num_balls(4) & ((\num_balls[3]~36\) # (GND)))
-- \num_balls[4]~38\ = CARRY((!\num_balls[3]~36\) # (!num_balls(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(4),
	datad => VCC,
	cin => \num_balls[3]~36\,
	combout => \num_balls[4]~37_combout\,
	cout => \num_balls[4]~38\);

-- Location: FF_X14_Y24_N9
\num_balls[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[4]~37_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(4));

-- Location: LCCOMB_X14_Y24_N10
\num_balls[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[5]~39_combout\ = (num_balls(5) & (\num_balls[4]~38\ $ (GND))) # (!num_balls(5) & (!\num_balls[4]~38\ & VCC))
-- \num_balls[5]~40\ = CARRY((num_balls(5) & !\num_balls[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(5),
	datad => VCC,
	cin => \num_balls[4]~38\,
	combout => \num_balls[5]~39_combout\,
	cout => \num_balls[5]~40\);

-- Location: FF_X14_Y24_N11
\num_balls[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[5]~39_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(5));

-- Location: LCCOMB_X14_Y24_N12
\num_balls[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[6]~41_combout\ = (num_balls(6) & (!\num_balls[5]~40\)) # (!num_balls(6) & ((\num_balls[5]~40\) # (GND)))
-- \num_balls[6]~42\ = CARRY((!\num_balls[5]~40\) # (!num_balls(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(6),
	datad => VCC,
	cin => \num_balls[5]~40\,
	combout => \num_balls[6]~41_combout\,
	cout => \num_balls[6]~42\);

-- Location: FF_X14_Y24_N13
\num_balls[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[6]~41_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(6));

-- Location: LCCOMB_X14_Y24_N14
\num_balls[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[7]~43_combout\ = (num_balls(7) & (\num_balls[6]~42\ $ (GND))) # (!num_balls(7) & (!\num_balls[6]~42\ & VCC))
-- \num_balls[7]~44\ = CARRY((num_balls(7) & !\num_balls[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(7),
	datad => VCC,
	cin => \num_balls[6]~42\,
	combout => \num_balls[7]~43_combout\,
	cout => \num_balls[7]~44\);

-- Location: FF_X14_Y24_N15
\num_balls[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[7]~43_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(7));

-- Location: LCCOMB_X14_Y24_N16
\num_balls[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[8]~45_combout\ = (num_balls(8) & (!\num_balls[7]~44\)) # (!num_balls(8) & ((\num_balls[7]~44\) # (GND)))
-- \num_balls[8]~46\ = CARRY((!\num_balls[7]~44\) # (!num_balls(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(8),
	datad => VCC,
	cin => \num_balls[7]~44\,
	combout => \num_balls[8]~45_combout\,
	cout => \num_balls[8]~46\);

-- Location: FF_X14_Y24_N17
\num_balls[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[8]~45_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(8));

-- Location: LCCOMB_X14_Y24_N18
\num_balls[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[9]~47_combout\ = (num_balls(9) & (\num_balls[8]~46\ $ (GND))) # (!num_balls(9) & (!\num_balls[8]~46\ & VCC))
-- \num_balls[9]~48\ = CARRY((num_balls(9) & !\num_balls[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(9),
	datad => VCC,
	cin => \num_balls[8]~46\,
	combout => \num_balls[9]~47_combout\,
	cout => \num_balls[9]~48\);

-- Location: FF_X14_Y24_N19
\num_balls[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[9]~47_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(9));

-- Location: LCCOMB_X14_Y24_N20
\num_balls[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[10]~49_combout\ = (num_balls(10) & (!\num_balls[9]~48\)) # (!num_balls(10) & ((\num_balls[9]~48\) # (GND)))
-- \num_balls[10]~50\ = CARRY((!\num_balls[9]~48\) # (!num_balls(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(10),
	datad => VCC,
	cin => \num_balls[9]~48\,
	combout => \num_balls[10]~49_combout\,
	cout => \num_balls[10]~50\);

-- Location: FF_X14_Y24_N21
\num_balls[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[10]~49_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(10));

-- Location: LCCOMB_X14_Y24_N22
\num_balls[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[11]~51_combout\ = (num_balls(11) & (\num_balls[10]~50\ $ (GND))) # (!num_balls(11) & (!\num_balls[10]~50\ & VCC))
-- \num_balls[11]~52\ = CARRY((num_balls(11) & !\num_balls[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(11),
	datad => VCC,
	cin => \num_balls[10]~50\,
	combout => \num_balls[11]~51_combout\,
	cout => \num_balls[11]~52\);

-- Location: FF_X14_Y24_N23
\num_balls[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[11]~51_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(11));

-- Location: LCCOMB_X14_Y24_N24
\num_balls[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[12]~53_combout\ = (num_balls(12) & (!\num_balls[11]~52\)) # (!num_balls(12) & ((\num_balls[11]~52\) # (GND)))
-- \num_balls[12]~54\ = CARRY((!\num_balls[11]~52\) # (!num_balls(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(12),
	datad => VCC,
	cin => \num_balls[11]~52\,
	combout => \num_balls[12]~53_combout\,
	cout => \num_balls[12]~54\);

-- Location: FF_X14_Y24_N25
\num_balls[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[12]~53_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(12));

-- Location: LCCOMB_X14_Y24_N26
\num_balls[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[13]~55_combout\ = (num_balls(13) & (\num_balls[12]~54\ $ (GND))) # (!num_balls(13) & (!\num_balls[12]~54\ & VCC))
-- \num_balls[13]~56\ = CARRY((num_balls(13) & !\num_balls[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(13),
	datad => VCC,
	cin => \num_balls[12]~54\,
	combout => \num_balls[13]~55_combout\,
	cout => \num_balls[13]~56\);

-- Location: FF_X14_Y24_N27
\num_balls[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[13]~55_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(13));

-- Location: LCCOMB_X14_Y24_N28
\num_balls[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[14]~57_combout\ = (num_balls(14) & (!\num_balls[13]~56\)) # (!num_balls(14) & ((\num_balls[13]~56\) # (GND)))
-- \num_balls[14]~58\ = CARRY((!\num_balls[13]~56\) # (!num_balls(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(14),
	datad => VCC,
	cin => \num_balls[13]~56\,
	combout => \num_balls[14]~57_combout\,
	cout => \num_balls[14]~58\);

-- Location: FF_X14_Y24_N29
\num_balls[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[14]~57_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(14));

-- Location: LCCOMB_X14_Y24_N30
\num_balls[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[15]~59_combout\ = (num_balls(15) & (\num_balls[14]~58\ $ (GND))) # (!num_balls(15) & (!\num_balls[14]~58\ & VCC))
-- \num_balls[15]~60\ = CARRY((num_balls(15) & !\num_balls[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(15),
	datad => VCC,
	cin => \num_balls[14]~58\,
	combout => \num_balls[15]~59_combout\,
	cout => \num_balls[15]~60\);

-- Location: FF_X14_Y24_N31
\num_balls[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[15]~59_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(15));

-- Location: LCCOMB_X14_Y23_N0
\num_balls[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[16]~61_combout\ = (num_balls(16) & (!\num_balls[15]~60\)) # (!num_balls(16) & ((\num_balls[15]~60\) # (GND)))
-- \num_balls[16]~62\ = CARRY((!\num_balls[15]~60\) # (!num_balls(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(16),
	datad => VCC,
	cin => \num_balls[15]~60\,
	combout => \num_balls[16]~61_combout\,
	cout => \num_balls[16]~62\);

-- Location: FF_X14_Y23_N1
\num_balls[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[16]~61_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(16));

-- Location: LCCOMB_X14_Y23_N2
\num_balls[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[17]~63_combout\ = (num_balls(17) & (\num_balls[16]~62\ $ (GND))) # (!num_balls(17) & (!\num_balls[16]~62\ & VCC))
-- \num_balls[17]~64\ = CARRY((num_balls(17) & !\num_balls[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(17),
	datad => VCC,
	cin => \num_balls[16]~62\,
	combout => \num_balls[17]~63_combout\,
	cout => \num_balls[17]~64\);

-- Location: FF_X14_Y23_N3
\num_balls[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[17]~63_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(17));

-- Location: LCCOMB_X14_Y23_N4
\num_balls[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[18]~65_combout\ = (num_balls(18) & (!\num_balls[17]~64\)) # (!num_balls(18) & ((\num_balls[17]~64\) # (GND)))
-- \num_balls[18]~66\ = CARRY((!\num_balls[17]~64\) # (!num_balls(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(18),
	datad => VCC,
	cin => \num_balls[17]~64\,
	combout => \num_balls[18]~65_combout\,
	cout => \num_balls[18]~66\);

-- Location: FF_X14_Y23_N5
\num_balls[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[18]~65_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(18));

-- Location: LCCOMB_X14_Y23_N6
\num_balls[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[19]~67_combout\ = (num_balls(19) & (\num_balls[18]~66\ $ (GND))) # (!num_balls(19) & (!\num_balls[18]~66\ & VCC))
-- \num_balls[19]~68\ = CARRY((num_balls(19) & !\num_balls[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(19),
	datad => VCC,
	cin => \num_balls[18]~66\,
	combout => \num_balls[19]~67_combout\,
	cout => \num_balls[19]~68\);

-- Location: FF_X14_Y23_N7
\num_balls[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[19]~67_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(19));

-- Location: LCCOMB_X14_Y23_N8
\num_balls[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[20]~69_combout\ = (num_balls(20) & (!\num_balls[19]~68\)) # (!num_balls(20) & ((\num_balls[19]~68\) # (GND)))
-- \num_balls[20]~70\ = CARRY((!\num_balls[19]~68\) # (!num_balls(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(20),
	datad => VCC,
	cin => \num_balls[19]~68\,
	combout => \num_balls[20]~69_combout\,
	cout => \num_balls[20]~70\);

-- Location: FF_X14_Y23_N9
\num_balls[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[20]~69_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(20));

-- Location: LCCOMB_X14_Y23_N10
\num_balls[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[21]~71_combout\ = (num_balls(21) & (\num_balls[20]~70\ $ (GND))) # (!num_balls(21) & (!\num_balls[20]~70\ & VCC))
-- \num_balls[21]~72\ = CARRY((num_balls(21) & !\num_balls[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(21),
	datad => VCC,
	cin => \num_balls[20]~70\,
	combout => \num_balls[21]~71_combout\,
	cout => \num_balls[21]~72\);

-- Location: FF_X14_Y23_N11
\num_balls[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[21]~71_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(21));

-- Location: LCCOMB_X14_Y23_N12
\num_balls[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[22]~73_combout\ = (num_balls(22) & (!\num_balls[21]~72\)) # (!num_balls(22) & ((\num_balls[21]~72\) # (GND)))
-- \num_balls[22]~74\ = CARRY((!\num_balls[21]~72\) # (!num_balls(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(22),
	datad => VCC,
	cin => \num_balls[21]~72\,
	combout => \num_balls[22]~73_combout\,
	cout => \num_balls[22]~74\);

-- Location: FF_X14_Y23_N13
\num_balls[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[22]~73_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(22));

-- Location: LCCOMB_X14_Y23_N14
\num_balls[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[23]~75_combout\ = (num_balls(23) & (\num_balls[22]~74\ $ (GND))) # (!num_balls(23) & (!\num_balls[22]~74\ & VCC))
-- \num_balls[23]~76\ = CARRY((num_balls(23) & !\num_balls[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(23),
	datad => VCC,
	cin => \num_balls[22]~74\,
	combout => \num_balls[23]~75_combout\,
	cout => \num_balls[23]~76\);

-- Location: FF_X14_Y23_N15
\num_balls[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[23]~75_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(23));

-- Location: LCCOMB_X14_Y23_N16
\num_balls[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[24]~77_combout\ = (num_balls(24) & (!\num_balls[23]~76\)) # (!num_balls(24) & ((\num_balls[23]~76\) # (GND)))
-- \num_balls[24]~78\ = CARRY((!\num_balls[23]~76\) # (!num_balls(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(24),
	datad => VCC,
	cin => \num_balls[23]~76\,
	combout => \num_balls[24]~77_combout\,
	cout => \num_balls[24]~78\);

-- Location: FF_X14_Y23_N17
\num_balls[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[24]~77_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(24));

-- Location: LCCOMB_X14_Y23_N18
\num_balls[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[25]~79_combout\ = (num_balls(25) & (\num_balls[24]~78\ $ (GND))) # (!num_balls(25) & (!\num_balls[24]~78\ & VCC))
-- \num_balls[25]~80\ = CARRY((num_balls(25) & !\num_balls[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(25),
	datad => VCC,
	cin => \num_balls[24]~78\,
	combout => \num_balls[25]~79_combout\,
	cout => \num_balls[25]~80\);

-- Location: FF_X14_Y23_N19
\num_balls[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[25]~79_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(25));

-- Location: LCCOMB_X14_Y23_N20
\num_balls[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[26]~81_combout\ = (num_balls(26) & (!\num_balls[25]~80\)) # (!num_balls(26) & ((\num_balls[25]~80\) # (GND)))
-- \num_balls[26]~82\ = CARRY((!\num_balls[25]~80\) # (!num_balls(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(26),
	datad => VCC,
	cin => \num_balls[25]~80\,
	combout => \num_balls[26]~81_combout\,
	cout => \num_balls[26]~82\);

-- Location: FF_X14_Y23_N21
\num_balls[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[26]~81_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(26));

-- Location: LCCOMB_X14_Y25_N22
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!num_balls(23) & (!num_balls(24) & (!num_balls(25) & !num_balls(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(23),
	datab => num_balls(24),
	datac => num_balls(25),
	datad => num_balls(26),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X14_Y23_N22
\num_balls[27]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[27]~83_combout\ = (num_balls(27) & (\num_balls[26]~82\ $ (GND))) # (!num_balls(27) & (!\num_balls[26]~82\ & VCC))
-- \num_balls[27]~84\ = CARRY((num_balls(27) & !\num_balls[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(27),
	datad => VCC,
	cin => \num_balls[26]~82\,
	combout => \num_balls[27]~83_combout\,
	cout => \num_balls[27]~84\);

-- Location: FF_X14_Y23_N23
\num_balls[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[27]~83_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(27));

-- Location: LCCOMB_X14_Y23_N24
\num_balls[28]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[28]~85_combout\ = (num_balls(28) & (!\num_balls[27]~84\)) # (!num_balls(28) & ((\num_balls[27]~84\) # (GND)))
-- \num_balls[28]~86\ = CARRY((!\num_balls[27]~84\) # (!num_balls(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(28),
	datad => VCC,
	cin => \num_balls[27]~84\,
	combout => \num_balls[28]~85_combout\,
	cout => \num_balls[28]~86\);

-- Location: FF_X14_Y23_N25
\num_balls[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[28]~85_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(28));

-- Location: LCCOMB_X14_Y23_N26
\num_balls[29]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[29]~87_combout\ = (num_balls(29) & (\num_balls[28]~86\ $ (GND))) # (!num_balls(29) & (!\num_balls[28]~86\ & VCC))
-- \num_balls[29]~88\ = CARRY((num_balls(29) & !\num_balls[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(29),
	datad => VCC,
	cin => \num_balls[28]~86\,
	combout => \num_balls[29]~87_combout\,
	cout => \num_balls[29]~88\);

-- Location: FF_X14_Y23_N27
\num_balls[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[29]~87_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(29));

-- Location: LCCOMB_X14_Y23_N28
\num_balls[30]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[30]~89_combout\ = (num_balls(30) & (!\num_balls[29]~88\)) # (!num_balls(30) & ((\num_balls[29]~88\) # (GND)))
-- \num_balls[30]~90\ = CARRY((!\num_balls[29]~88\) # (!num_balls(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_balls(30),
	datad => VCC,
	cin => \num_balls[29]~88\,
	combout => \num_balls[30]~89_combout\,
	cout => \num_balls[30]~90\);

-- Location: FF_X14_Y23_N29
\num_balls[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[30]~89_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(30));

-- Location: LCCOMB_X14_Y23_N30
\num_balls[31]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_balls[31]~91_combout\ = num_balls(31) $ (!\num_balls[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(31),
	cin => \num_balls[30]~90\,
	combout => \num_balls[31]~91_combout\);

-- Location: FF_X14_Y23_N31
\num_balls[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Ball~input_o\,
	d => \num_balls[31]~91_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_balls(31));

-- Location: LCCOMB_X14_Y25_N4
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!num_balls(21) & (!num_balls(20) & (!num_balls(22) & !num_balls(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(21),
	datab => num_balls(20),
	datac => num_balls(22),
	datad => num_balls(19),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X14_Y25_N0
\Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!num_balls(27) & (!num_balls(28) & (!num_balls(29) & !num_balls(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(27),
	datab => num_balls(28),
	datac => num_balls(29),
	datad => num_balls(30),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X14_Y25_N18
\Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~6_combout\ & (!num_balls(31) & (\Equal1~5_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => num_balls(31),
	datac => \Equal1~5_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X14_Y25_N26
\Equal1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (!num_balls(1) & num_balls(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => num_balls(1),
	datad => num_balls(2),
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X14_Y25_N12
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!num_balls(4) & (!num_balls(3) & (!num_balls(5) & !num_balls(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(4),
	datab => num_balls(3),
	datac => num_balls(5),
	datad => num_balls(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X14_Y24_N0
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!num_balls(13) & (!num_balls(12) & (!num_balls(11) & !num_balls(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(13),
	datab => num_balls(12),
	datac => num_balls(11),
	datad => num_balls(14),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X14_Y25_N14
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!num_balls(7) & (!num_balls(8) & (!num_balls(9) & !num_balls(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(7),
	datab => num_balls(8),
	datac => num_balls(9),
	datad => num_balls(10),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X14_Y25_N20
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!num_balls(18) & (!num_balls(17) & (!num_balls(16) & !num_balls(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(18),
	datab => num_balls(17),
	datac => num_balls(16),
	datad => num_balls(15),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X14_Y25_N2
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~2_combout\ & (\Equal1~1_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X14_Y25_N16
\Equal1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = (!num_balls(0) & (\Equal1~8_combout\ & (\Equal1~10_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_balls(0),
	datab => \Equal1~8_combout\,
	datac => \Equal1~10_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~11_combout\);

-- Location: LCCOMB_X16_Y26_N2
\num_strikes[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[1]~31_combout\ = (num_strikes(0) & (num_strikes(1) $ (VCC))) # (!num_strikes(0) & (num_strikes(1) & VCC))
-- \num_strikes[1]~32\ = CARRY((num_strikes(0) & num_strikes(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(0),
	datab => num_strikes(1),
	datad => VCC,
	combout => \num_strikes[1]~31_combout\,
	cout => \num_strikes[1]~32\);

-- Location: FF_X16_Y26_N3
\num_strikes[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[1]~31_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(1));

-- Location: LCCOMB_X16_Y25_N12
\num_strikes[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[22]~73_combout\ = (num_strikes(22) & (!\num_strikes[21]~72\)) # (!num_strikes(22) & ((\num_strikes[21]~72\) # (GND)))
-- \num_strikes[22]~74\ = CARRY((!\num_strikes[21]~72\) # (!num_strikes(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(22),
	datad => VCC,
	cin => \num_strikes[21]~72\,
	combout => \num_strikes[22]~73_combout\,
	cout => \num_strikes[22]~74\);

-- Location: LCCOMB_X16_Y25_N14
\num_strikes[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[23]~75_combout\ = (num_strikes(23) & (\num_strikes[22]~74\ $ (GND))) # (!num_strikes(23) & (!\num_strikes[22]~74\ & VCC))
-- \num_strikes[23]~76\ = CARRY((num_strikes(23) & !\num_strikes[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(23),
	datad => VCC,
	cin => \num_strikes[22]~74\,
	combout => \num_strikes[23]~75_combout\,
	cout => \num_strikes[23]~76\);

-- Location: FF_X16_Y25_N15
\num_strikes[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[23]~75_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(23));

-- Location: LCCOMB_X16_Y25_N16
\num_strikes[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[24]~77_combout\ = (num_strikes(24) & (!\num_strikes[23]~76\)) # (!num_strikes(24) & ((\num_strikes[23]~76\) # (GND)))
-- \num_strikes[24]~78\ = CARRY((!\num_strikes[23]~76\) # (!num_strikes(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(24),
	datad => VCC,
	cin => \num_strikes[23]~76\,
	combout => \num_strikes[24]~77_combout\,
	cout => \num_strikes[24]~78\);

-- Location: FF_X16_Y25_N17
\num_strikes[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[24]~77_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(24));

-- Location: LCCOMB_X16_Y25_N18
\num_strikes[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[25]~79_combout\ = (num_strikes(25) & (\num_strikes[24]~78\ $ (GND))) # (!num_strikes(25) & (!\num_strikes[24]~78\ & VCC))
-- \num_strikes[25]~80\ = CARRY((num_strikes(25) & !\num_strikes[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(25),
	datad => VCC,
	cin => \num_strikes[24]~78\,
	combout => \num_strikes[25]~79_combout\,
	cout => \num_strikes[25]~80\);

-- Location: FF_X16_Y25_N19
\num_strikes[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[25]~79_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(25));

-- Location: LCCOMB_X16_Y25_N20
\num_strikes[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[26]~81_combout\ = (num_strikes(26) & (!\num_strikes[25]~80\)) # (!num_strikes(26) & ((\num_strikes[25]~80\) # (GND)))
-- \num_strikes[26]~82\ = CARRY((!\num_strikes[25]~80\) # (!num_strikes(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(26),
	datad => VCC,
	cin => \num_strikes[25]~80\,
	combout => \num_strikes[26]~81_combout\,
	cout => \num_strikes[26]~82\);

-- Location: FF_X16_Y25_N21
\num_strikes[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[26]~81_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(26));

-- Location: LCCOMB_X16_Y25_N22
\num_strikes[27]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[27]~83_combout\ = (num_strikes(27) & (\num_strikes[26]~82\ $ (GND))) # (!num_strikes(27) & (!\num_strikes[26]~82\ & VCC))
-- \num_strikes[27]~84\ = CARRY((num_strikes(27) & !\num_strikes[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(27),
	datad => VCC,
	cin => \num_strikes[26]~82\,
	combout => \num_strikes[27]~83_combout\,
	cout => \num_strikes[27]~84\);

-- Location: FF_X16_Y25_N23
\num_strikes[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[27]~83_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(27));

-- Location: LCCOMB_X16_Y25_N24
\num_strikes[28]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[28]~85_combout\ = (num_strikes(28) & (!\num_strikes[27]~84\)) # (!num_strikes(28) & ((\num_strikes[27]~84\) # (GND)))
-- \num_strikes[28]~86\ = CARRY((!\num_strikes[27]~84\) # (!num_strikes(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(28),
	datad => VCC,
	cin => \num_strikes[27]~84\,
	combout => \num_strikes[28]~85_combout\,
	cout => \num_strikes[28]~86\);

-- Location: FF_X16_Y25_N25
\num_strikes[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[28]~85_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(28));

-- Location: LCCOMB_X16_Y25_N26
\num_strikes[29]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[29]~87_combout\ = (num_strikes(29) & (\num_strikes[28]~86\ $ (GND))) # (!num_strikes(29) & (!\num_strikes[28]~86\ & VCC))
-- \num_strikes[29]~88\ = CARRY((num_strikes(29) & !\num_strikes[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(29),
	datad => VCC,
	cin => \num_strikes[28]~86\,
	combout => \num_strikes[29]~87_combout\,
	cout => \num_strikes[29]~88\);

-- Location: FF_X16_Y25_N27
\num_strikes[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[29]~87_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(29));

-- Location: LCCOMB_X16_Y25_N28
\num_strikes[30]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[30]~89_combout\ = (num_strikes(30) & (!\num_strikes[29]~88\)) # (!num_strikes(30) & ((\num_strikes[29]~88\) # (GND)))
-- \num_strikes[30]~90\ = CARRY((!\num_strikes[29]~88\) # (!num_strikes(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(30),
	datad => VCC,
	cin => \num_strikes[29]~88\,
	combout => \num_strikes[30]~89_combout\,
	cout => \num_strikes[30]~90\);

-- Location: FF_X16_Y25_N29
\num_strikes[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[30]~89_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(30));

-- Location: LCCOMB_X16_Y25_N30
\num_strikes[31]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[31]~91_combout\ = num_strikes(31) $ (!\num_strikes[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(31),
	cin => \num_strikes[30]~90\,
	combout => \num_strikes[31]~91_combout\);

-- Location: FF_X16_Y25_N31
\num_strikes[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[31]~91_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(31));

-- Location: LCCOMB_X15_Y25_N2
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!num_strikes(26) & (!num_strikes(27) & (!num_strikes(28) & !num_strikes(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(26),
	datab => num_strikes(27),
	datac => num_strikes(28),
	datad => num_strikes(29),
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X15_Y25_N4
\Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!num_strikes(31) & (!num_strikes(30) & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(31),
	datac => num_strikes(30),
	datad => \Equal0~10_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X15_Y25_N20
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!num_strikes(18) & (!num_strikes(20) & (!num_strikes(21) & !num_strikes(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(18),
	datab => num_strikes(20),
	datac => num_strikes(21),
	datad => num_strikes(19),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X15_Y25_N8
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & \Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X15_Y25_N10
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!num_strikes(10) & (!num_strikes(13) & (!num_strikes(12) & !num_strikes(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(10),
	datab => num_strikes(13),
	datac => num_strikes(12),
	datad => num_strikes(11),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X15_Y25_N24
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!num_strikes(15) & (!num_strikes(17) & (!num_strikes(16) & !num_strikes(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(15),
	datab => num_strikes(17),
	datac => num_strikes(16),
	datad => num_strikes(14),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X16_Y26_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!num_strikes(5) & (!num_strikes(4) & (!num_strikes(2) & !num_strikes(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(5),
	datab => num_strikes(4),
	datac => num_strikes(2),
	datad => num_strikes(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X15_Y25_N16
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!num_strikes(8) & (!num_strikes(7) & (!num_strikes(9) & !num_strikes(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(8),
	datab => num_strikes(7),
	datac => num_strikes(9),
	datad => num_strikes(6),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X15_Y25_N18
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X15_Y25_N28
\Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (num_strikes(1) & (\Equal0~11_combout\ & (\Equal0~9_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(1),
	datab => \Equal0~11_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X15_Y25_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ((\Equal1~11_combout\) # ((num_strikes(0) & \Equal0~12_combout\))) # (!\Clear~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clear~input_o\,
	datab => num_strikes(0),
	datac => \Equal1~11_combout\,
	datad => \Equal0~12_combout\,
	combout => \process_0~0_combout\);

-- Location: FF_X15_Y26_N17
\num_strikes[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[0]~93_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(0));

-- Location: LCCOMB_X16_Y26_N4
\num_strikes[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[2]~33_combout\ = (num_strikes(2) & (!\num_strikes[1]~32\)) # (!num_strikes(2) & ((\num_strikes[1]~32\) # (GND)))
-- \num_strikes[2]~34\ = CARRY((!\num_strikes[1]~32\) # (!num_strikes(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(2),
	datad => VCC,
	cin => \num_strikes[1]~32\,
	combout => \num_strikes[2]~33_combout\,
	cout => \num_strikes[2]~34\);

-- Location: FF_X16_Y26_N5
\num_strikes[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[2]~33_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(2));

-- Location: LCCOMB_X16_Y26_N6
\num_strikes[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[3]~35_combout\ = (num_strikes(3) & (\num_strikes[2]~34\ $ (GND))) # (!num_strikes(3) & (!\num_strikes[2]~34\ & VCC))
-- \num_strikes[3]~36\ = CARRY((num_strikes(3) & !\num_strikes[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(3),
	datad => VCC,
	cin => \num_strikes[2]~34\,
	combout => \num_strikes[3]~35_combout\,
	cout => \num_strikes[3]~36\);

-- Location: FF_X16_Y26_N7
\num_strikes[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[3]~35_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(3));

-- Location: LCCOMB_X16_Y26_N8
\num_strikes[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[4]~37_combout\ = (num_strikes(4) & (!\num_strikes[3]~36\)) # (!num_strikes(4) & ((\num_strikes[3]~36\) # (GND)))
-- \num_strikes[4]~38\ = CARRY((!\num_strikes[3]~36\) # (!num_strikes(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(4),
	datad => VCC,
	cin => \num_strikes[3]~36\,
	combout => \num_strikes[4]~37_combout\,
	cout => \num_strikes[4]~38\);

-- Location: FF_X16_Y26_N9
\num_strikes[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[4]~37_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(4));

-- Location: LCCOMB_X16_Y26_N10
\num_strikes[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[5]~39_combout\ = (num_strikes(5) & (\num_strikes[4]~38\ $ (GND))) # (!num_strikes(5) & (!\num_strikes[4]~38\ & VCC))
-- \num_strikes[5]~40\ = CARRY((num_strikes(5) & !\num_strikes[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(5),
	datad => VCC,
	cin => \num_strikes[4]~38\,
	combout => \num_strikes[5]~39_combout\,
	cout => \num_strikes[5]~40\);

-- Location: FF_X16_Y26_N11
\num_strikes[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[5]~39_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(5));

-- Location: LCCOMB_X16_Y26_N12
\num_strikes[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[6]~41_combout\ = (num_strikes(6) & (!\num_strikes[5]~40\)) # (!num_strikes(6) & ((\num_strikes[5]~40\) # (GND)))
-- \num_strikes[6]~42\ = CARRY((!\num_strikes[5]~40\) # (!num_strikes(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(6),
	datad => VCC,
	cin => \num_strikes[5]~40\,
	combout => \num_strikes[6]~41_combout\,
	cout => \num_strikes[6]~42\);

-- Location: FF_X16_Y26_N13
\num_strikes[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[6]~41_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(6));

-- Location: LCCOMB_X16_Y26_N14
\num_strikes[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[7]~43_combout\ = (num_strikes(7) & (\num_strikes[6]~42\ $ (GND))) # (!num_strikes(7) & (!\num_strikes[6]~42\ & VCC))
-- \num_strikes[7]~44\ = CARRY((num_strikes(7) & !\num_strikes[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(7),
	datad => VCC,
	cin => \num_strikes[6]~42\,
	combout => \num_strikes[7]~43_combout\,
	cout => \num_strikes[7]~44\);

-- Location: FF_X16_Y26_N15
\num_strikes[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[7]~43_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(7));

-- Location: LCCOMB_X16_Y26_N16
\num_strikes[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[8]~45_combout\ = (num_strikes(8) & (!\num_strikes[7]~44\)) # (!num_strikes(8) & ((\num_strikes[7]~44\) # (GND)))
-- \num_strikes[8]~46\ = CARRY((!\num_strikes[7]~44\) # (!num_strikes(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(8),
	datad => VCC,
	cin => \num_strikes[7]~44\,
	combout => \num_strikes[8]~45_combout\,
	cout => \num_strikes[8]~46\);

-- Location: FF_X16_Y26_N17
\num_strikes[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[8]~45_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(8));

-- Location: LCCOMB_X16_Y26_N18
\num_strikes[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[9]~47_combout\ = (num_strikes(9) & (\num_strikes[8]~46\ $ (GND))) # (!num_strikes(9) & (!\num_strikes[8]~46\ & VCC))
-- \num_strikes[9]~48\ = CARRY((num_strikes(9) & !\num_strikes[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(9),
	datad => VCC,
	cin => \num_strikes[8]~46\,
	combout => \num_strikes[9]~47_combout\,
	cout => \num_strikes[9]~48\);

-- Location: FF_X16_Y26_N19
\num_strikes[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[9]~47_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(9));

-- Location: LCCOMB_X16_Y26_N20
\num_strikes[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[10]~49_combout\ = (num_strikes(10) & (!\num_strikes[9]~48\)) # (!num_strikes(10) & ((\num_strikes[9]~48\) # (GND)))
-- \num_strikes[10]~50\ = CARRY((!\num_strikes[9]~48\) # (!num_strikes(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(10),
	datad => VCC,
	cin => \num_strikes[9]~48\,
	combout => \num_strikes[10]~49_combout\,
	cout => \num_strikes[10]~50\);

-- Location: FF_X16_Y26_N21
\num_strikes[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[10]~49_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(10));

-- Location: LCCOMB_X16_Y26_N22
\num_strikes[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[11]~51_combout\ = (num_strikes(11) & (\num_strikes[10]~50\ $ (GND))) # (!num_strikes(11) & (!\num_strikes[10]~50\ & VCC))
-- \num_strikes[11]~52\ = CARRY((num_strikes(11) & !\num_strikes[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(11),
	datad => VCC,
	cin => \num_strikes[10]~50\,
	combout => \num_strikes[11]~51_combout\,
	cout => \num_strikes[11]~52\);

-- Location: FF_X16_Y26_N23
\num_strikes[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[11]~51_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(11));

-- Location: LCCOMB_X16_Y26_N24
\num_strikes[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[12]~53_combout\ = (num_strikes(12) & (!\num_strikes[11]~52\)) # (!num_strikes(12) & ((\num_strikes[11]~52\) # (GND)))
-- \num_strikes[12]~54\ = CARRY((!\num_strikes[11]~52\) # (!num_strikes(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(12),
	datad => VCC,
	cin => \num_strikes[11]~52\,
	combout => \num_strikes[12]~53_combout\,
	cout => \num_strikes[12]~54\);

-- Location: FF_X16_Y26_N25
\num_strikes[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[12]~53_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(12));

-- Location: LCCOMB_X16_Y26_N26
\num_strikes[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[13]~55_combout\ = (num_strikes(13) & (\num_strikes[12]~54\ $ (GND))) # (!num_strikes(13) & (!\num_strikes[12]~54\ & VCC))
-- \num_strikes[13]~56\ = CARRY((num_strikes(13) & !\num_strikes[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(13),
	datad => VCC,
	cin => \num_strikes[12]~54\,
	combout => \num_strikes[13]~55_combout\,
	cout => \num_strikes[13]~56\);

-- Location: FF_X16_Y26_N27
\num_strikes[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[13]~55_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(13));

-- Location: LCCOMB_X16_Y26_N28
\num_strikes[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[14]~57_combout\ = (num_strikes(14) & (!\num_strikes[13]~56\)) # (!num_strikes(14) & ((\num_strikes[13]~56\) # (GND)))
-- \num_strikes[14]~58\ = CARRY((!\num_strikes[13]~56\) # (!num_strikes(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(14),
	datad => VCC,
	cin => \num_strikes[13]~56\,
	combout => \num_strikes[14]~57_combout\,
	cout => \num_strikes[14]~58\);

-- Location: FF_X16_Y26_N29
\num_strikes[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[14]~57_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(14));

-- Location: LCCOMB_X16_Y26_N30
\num_strikes[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[15]~59_combout\ = (num_strikes(15) & (\num_strikes[14]~58\ $ (GND))) # (!num_strikes(15) & (!\num_strikes[14]~58\ & VCC))
-- \num_strikes[15]~60\ = CARRY((num_strikes(15) & !\num_strikes[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(15),
	datad => VCC,
	cin => \num_strikes[14]~58\,
	combout => \num_strikes[15]~59_combout\,
	cout => \num_strikes[15]~60\);

-- Location: FF_X16_Y26_N31
\num_strikes[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[15]~59_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(15));

-- Location: LCCOMB_X16_Y25_N0
\num_strikes[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[16]~61_combout\ = (num_strikes(16) & (!\num_strikes[15]~60\)) # (!num_strikes(16) & ((\num_strikes[15]~60\) # (GND)))
-- \num_strikes[16]~62\ = CARRY((!\num_strikes[15]~60\) # (!num_strikes(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(16),
	datad => VCC,
	cin => \num_strikes[15]~60\,
	combout => \num_strikes[16]~61_combout\,
	cout => \num_strikes[16]~62\);

-- Location: FF_X16_Y25_N1
\num_strikes[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[16]~61_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(16));

-- Location: LCCOMB_X16_Y25_N2
\num_strikes[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[17]~63_combout\ = (num_strikes(17) & (\num_strikes[16]~62\ $ (GND))) # (!num_strikes(17) & (!\num_strikes[16]~62\ & VCC))
-- \num_strikes[17]~64\ = CARRY((num_strikes(17) & !\num_strikes[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(17),
	datad => VCC,
	cin => \num_strikes[16]~62\,
	combout => \num_strikes[17]~63_combout\,
	cout => \num_strikes[17]~64\);

-- Location: FF_X16_Y25_N3
\num_strikes[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[17]~63_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(17));

-- Location: LCCOMB_X16_Y25_N4
\num_strikes[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[18]~65_combout\ = (num_strikes(18) & (!\num_strikes[17]~64\)) # (!num_strikes(18) & ((\num_strikes[17]~64\) # (GND)))
-- \num_strikes[18]~66\ = CARRY((!\num_strikes[17]~64\) # (!num_strikes(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(18),
	datad => VCC,
	cin => \num_strikes[17]~64\,
	combout => \num_strikes[18]~65_combout\,
	cout => \num_strikes[18]~66\);

-- Location: FF_X16_Y25_N5
\num_strikes[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[18]~65_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(18));

-- Location: LCCOMB_X16_Y25_N6
\num_strikes[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[19]~67_combout\ = (num_strikes(19) & (\num_strikes[18]~66\ $ (GND))) # (!num_strikes(19) & (!\num_strikes[18]~66\ & VCC))
-- \num_strikes[19]~68\ = CARRY((num_strikes(19) & !\num_strikes[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(19),
	datad => VCC,
	cin => \num_strikes[18]~66\,
	combout => \num_strikes[19]~67_combout\,
	cout => \num_strikes[19]~68\);

-- Location: FF_X16_Y25_N7
\num_strikes[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[19]~67_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(19));

-- Location: LCCOMB_X16_Y25_N8
\num_strikes[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[20]~69_combout\ = (num_strikes(20) & (!\num_strikes[19]~68\)) # (!num_strikes(20) & ((\num_strikes[19]~68\) # (GND)))
-- \num_strikes[20]~70\ = CARRY((!\num_strikes[19]~68\) # (!num_strikes(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(20),
	datad => VCC,
	cin => \num_strikes[19]~68\,
	combout => \num_strikes[20]~69_combout\,
	cout => \num_strikes[20]~70\);

-- Location: FF_X16_Y25_N9
\num_strikes[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[20]~69_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(20));

-- Location: LCCOMB_X16_Y25_N10
\num_strikes[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \num_strikes[21]~71_combout\ = (num_strikes(21) & (\num_strikes[20]~70\ $ (GND))) # (!num_strikes(21) & (!\num_strikes[20]~70\ & VCC))
-- \num_strikes[21]~72\ = CARRY((num_strikes(21) & !\num_strikes[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(21),
	datad => VCC,
	cin => \num_strikes[20]~70\,
	combout => \num_strikes[21]~71_combout\,
	cout => \num_strikes[21]~72\);

-- Location: FF_X16_Y25_N11
\num_strikes[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[21]~71_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(21));

-- Location: FF_X16_Y25_N13
\num_strikes[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Strike~input_o\,
	d => \num_strikes[22]~73_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => num_strikes(22));

-- Location: LCCOMB_X15_Y25_N26
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!num_strikes(22) & (!num_strikes(24) & (!num_strikes(23) & !num_strikes(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => num_strikes(22),
	datab => num_strikes(24),
	datac => num_strikes(23),
	datad => num_strikes(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X15_Y25_N22
\Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~8_combout\ & (\Equal0~7_combout\ & (\Equal0~11_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~11_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X15_Y25_N30
\Strike_Count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Strike_Count~0_combout\ = (\Equal0~13_combout\ & (num_strikes(0) $ (num_strikes(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => num_strikes(0),
	datac => num_strikes(1),
	combout => \Strike_Count~0_combout\);

-- Location: LCCOMB_X15_Y25_N14
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!num_strikes(0) & \Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => num_strikes(0),
	datad => \Equal0~12_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X14_Y25_N10
\Equal1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~4_combout\ & (!num_balls(0) & \Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datac => num_balls(0),
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X14_Y25_N8
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Equal1~8_combout\ & (\Equal1~4_combout\ & (num_balls(0) & !num_balls(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \Equal1~4_combout\,
	datac => num_balls(0),
	datad => num_balls(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X14_Y25_N28
\Ball_Count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ball_Count~0_combout\ = \Equal4~0_combout\ $ (((\Equal1~9_combout\ & (num_balls(1) & !num_balls(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => num_balls(1),
	datac => num_balls(2),
	datad => \Equal4~0_combout\,
	combout => \Ball_Count~0_combout\);

-- Location: LCCOMB_X14_Y25_N30
\Ball_Count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ball_Count~1_combout\ = (num_balls(1) & (\Equal4~0_combout\ $ (((\Equal1~9_combout\ & !num_balls(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => num_balls(1),
	datac => num_balls(2),
	datad => \Equal4~0_combout\,
	combout => \Ball_Count~1_combout\);

-- Location: LCCOMB_X14_Y25_N24
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal4~0_combout\ & num_balls(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => num_balls(1),
	combout => \Equal4~1_combout\);

ww_Strike_Count(0) <= \Strike_Count[0]~output_o\;

ww_Strike_Count(1) <= \Strike_Count[1]~output_o\;

ww_Ball_Count(0) <= \Ball_Count[0]~output_o\;

ww_Ball_Count(1) <= \Ball_Count[1]~output_o\;

ww_Ball_Count(2) <= \Ball_Count[2]~output_o\;
END structure;


