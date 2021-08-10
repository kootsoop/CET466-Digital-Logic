-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/30/2020 17:40:01"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BaseballCounter IS
    PORT (
	clock : IN std_logic;
	IBC : IN std_logic;
	ISC : IN std_logic;
	NB : IN std_logic;
	dig : BUFFER std_logic_vector(1 DOWNTO 0);
	output : BUFFER std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END BaseballCounter;

-- Design Ports Information
-- dig[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ISC	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NB	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IBC	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BaseballCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_IBC : std_logic;
SIGNAL ww_ISC : std_logic;
SIGNAL ww_NB : std_logic;
SIGNAL ww_dig : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdiv|newclk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \deboubce_strikes|state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \deboubce_balls|state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiv|Add0~0_combout\ : std_logic;
SIGNAL \clkdiv|Add0~1\ : std_logic;
SIGNAL \clkdiv|Add0~2_combout\ : std_logic;
SIGNAL \clkdiv|Add0~3\ : std_logic;
SIGNAL \clkdiv|Add0~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~5\ : std_logic;
SIGNAL \clkdiv|Add0~6_combout\ : std_logic;
SIGNAL \clkdiv|Add0~7\ : std_logic;
SIGNAL \clkdiv|Add0~8_combout\ : std_logic;
SIGNAL \clkdiv|count~6_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~7_combout\ : std_logic;
SIGNAL \clkdiv|count~5_combout\ : std_logic;
SIGNAL \clkdiv|Add0~9\ : std_logic;
SIGNAL \clkdiv|Add0~10_combout\ : std_logic;
SIGNAL \clkdiv|Add0~11\ : std_logic;
SIGNAL \clkdiv|Add0~12_combout\ : std_logic;
SIGNAL \clkdiv|count~2_combout\ : std_logic;
SIGNAL \clkdiv|Add0~13\ : std_logic;
SIGNAL \clkdiv|Add0~14_combout\ : std_logic;
SIGNAL \clkdiv|Add0~15\ : std_logic;
SIGNAL \clkdiv|Add0~16_combout\ : std_logic;
SIGNAL \clkdiv|count~1_combout\ : std_logic;
SIGNAL \clkdiv|Add0~17\ : std_logic;
SIGNAL \clkdiv|Add0~18_combout\ : std_logic;
SIGNAL \clkdiv|count~0_combout\ : std_logic;
SIGNAL \clkdiv|Add0~19\ : std_logic;
SIGNAL \clkdiv|Add0~20_combout\ : std_logic;
SIGNAL \clkdiv|Add0~21\ : std_logic;
SIGNAL \clkdiv|Add0~22_combout\ : std_logic;
SIGNAL \clkdiv|Add0~23\ : std_logic;
SIGNAL \clkdiv|Add0~24_combout\ : std_logic;
SIGNAL \clkdiv|Add0~25\ : std_logic;
SIGNAL \clkdiv|Add0~26_combout\ : std_logic;
SIGNAL \clkdiv|Add0~27\ : std_logic;
SIGNAL \clkdiv|Add0~28_combout\ : std_logic;
SIGNAL \clkdiv|count~3_combout\ : std_logic;
SIGNAL \clkdiv|Add0~29\ : std_logic;
SIGNAL \clkdiv|Add0~30_combout\ : std_logic;
SIGNAL \clkdiv|count~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~31\ : std_logic;
SIGNAL \clkdiv|Add0~32_combout\ : std_logic;
SIGNAL \clkdiv|Add0~33\ : std_logic;
SIGNAL \clkdiv|Add0~34_combout\ : std_logic;
SIGNAL \clkdiv|Add0~35\ : std_logic;
SIGNAL \clkdiv|Add0~36_combout\ : std_logic;
SIGNAL \clkdiv|Add0~37\ : std_logic;
SIGNAL \clkdiv|Add0~38_combout\ : std_logic;
SIGNAL \clkdiv|Add0~39\ : std_logic;
SIGNAL \clkdiv|Add0~40_combout\ : std_logic;
SIGNAL \clkdiv|Add0~41\ : std_logic;
SIGNAL \clkdiv|Add0~42_combout\ : std_logic;
SIGNAL \clkdiv|Add0~43\ : std_logic;
SIGNAL \clkdiv|Add0~44_combout\ : std_logic;
SIGNAL \clkdiv|Add0~45\ : std_logic;
SIGNAL \clkdiv|Add0~46_combout\ : std_logic;
SIGNAL \clkdiv|Add0~47\ : std_logic;
SIGNAL \clkdiv|Add0~48_combout\ : std_logic;
SIGNAL \clkdiv|Add0~49\ : std_logic;
SIGNAL \clkdiv|Add0~50_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~5_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~0_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~1_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~2_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~3_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~4_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~6_combout\ : std_logic;
SIGNAL \clkdiv|Equal1~0_combout\ : std_logic;
SIGNAL \clkdiv|divclk~0_combout\ : std_logic;
SIGNAL \clkdiv|divclk~q\ : std_logic;
SIGNAL \clkdiv|newclk~feeder_combout\ : std_logic;
SIGNAL \clkdiv|newclk~q\ : std_logic;
SIGNAL \clkdiv|newclk~clkctrl_outclk\ : std_logic;
SIGNAL \digsel~0_combout\ : std_logic;
SIGNAL \digsel~q\ : std_logic;
SIGNAL \dig[0]~0_combout\ : std_logic;
SIGNAL \dig[0]~reg0_q\ : std_logic;
SIGNAL \dig[1]~reg0_q\ : std_logic;
SIGNAL \IBC~input_o\ : std_logic;
SIGNAL \deboubce_balls|count[0]~32_combout\ : std_logic;
SIGNAL \deboubce_balls|count[0]~33\ : std_logic;
SIGNAL \deboubce_balls|count[1]~34_combout\ : std_logic;
SIGNAL \deboubce_balls|count[1]~35\ : std_logic;
SIGNAL \deboubce_balls|count[2]~36_combout\ : std_logic;
SIGNAL \deboubce_balls|count[2]~37\ : std_logic;
SIGNAL \deboubce_balls|count[3]~38_combout\ : std_logic;
SIGNAL \deboubce_balls|count[3]~39\ : std_logic;
SIGNAL \deboubce_balls|count[4]~40_combout\ : std_logic;
SIGNAL \deboubce_balls|count[4]~41\ : std_logic;
SIGNAL \deboubce_balls|count[5]~42_combout\ : std_logic;
SIGNAL \deboubce_balls|count[5]~43\ : std_logic;
SIGNAL \deboubce_balls|count[6]~44_combout\ : std_logic;
SIGNAL \deboubce_balls|count[6]~45\ : std_logic;
SIGNAL \deboubce_balls|count[7]~46_combout\ : std_logic;
SIGNAL \deboubce_balls|count[7]~47\ : std_logic;
SIGNAL \deboubce_balls|count[8]~48_combout\ : std_logic;
SIGNAL \deboubce_balls|count[8]~49\ : std_logic;
SIGNAL \deboubce_balls|count[9]~50_combout\ : std_logic;
SIGNAL \deboubce_balls|count[9]~51\ : std_logic;
SIGNAL \deboubce_balls|count[10]~52_combout\ : std_logic;
SIGNAL \deboubce_balls|count[10]~53\ : std_logic;
SIGNAL \deboubce_balls|count[11]~54_combout\ : std_logic;
SIGNAL \deboubce_balls|count[11]~55\ : std_logic;
SIGNAL \deboubce_balls|count[12]~56_combout\ : std_logic;
SIGNAL \deboubce_balls|count[12]~57\ : std_logic;
SIGNAL \deboubce_balls|count[13]~58_combout\ : std_logic;
SIGNAL \deboubce_balls|count[13]~59\ : std_logic;
SIGNAL \deboubce_balls|count[14]~60_combout\ : std_logic;
SIGNAL \deboubce_balls|count[14]~61\ : std_logic;
SIGNAL \deboubce_balls|count[15]~62_combout\ : std_logic;
SIGNAL \deboubce_balls|count[15]~63\ : std_logic;
SIGNAL \deboubce_balls|count[16]~64_combout\ : std_logic;
SIGNAL \deboubce_balls|count[16]~65\ : std_logic;
SIGNAL \deboubce_balls|count[17]~66_combout\ : std_logic;
SIGNAL \deboubce_balls|count[17]~67\ : std_logic;
SIGNAL \deboubce_balls|count[18]~68_combout\ : std_logic;
SIGNAL \deboubce_balls|count[18]~69\ : std_logic;
SIGNAL \deboubce_balls|count[19]~70_combout\ : std_logic;
SIGNAL \deboubce_balls|count[19]~71\ : std_logic;
SIGNAL \deboubce_balls|count[20]~72_combout\ : std_logic;
SIGNAL \deboubce_balls|count[20]~73\ : std_logic;
SIGNAL \deboubce_balls|count[21]~74_combout\ : std_logic;
SIGNAL \deboubce_balls|count[21]~75\ : std_logic;
SIGNAL \deboubce_balls|count[22]~76_combout\ : std_logic;
SIGNAL \deboubce_balls|count[22]~77\ : std_logic;
SIGNAL \deboubce_balls|count[23]~78_combout\ : std_logic;
SIGNAL \deboubce_balls|count[23]~79\ : std_logic;
SIGNAL \deboubce_balls|count[24]~80_combout\ : std_logic;
SIGNAL \deboubce_balls|count[24]~81\ : std_logic;
SIGNAL \deboubce_balls|count[25]~82_combout\ : std_logic;
SIGNAL \deboubce_balls|count[25]~83\ : std_logic;
SIGNAL \deboubce_balls|count[26]~84_combout\ : std_logic;
SIGNAL \deboubce_balls|count[26]~85\ : std_logic;
SIGNAL \deboubce_balls|count[27]~86_combout\ : std_logic;
SIGNAL \deboubce_balls|count[27]~87\ : std_logic;
SIGNAL \deboubce_balls|count[28]~88_combout\ : std_logic;
SIGNAL \deboubce_balls|count[28]~89\ : std_logic;
SIGNAL \deboubce_balls|count[29]~90_combout\ : std_logic;
SIGNAL \deboubce_balls|count[29]~91\ : std_logic;
SIGNAL \deboubce_balls|count[30]~92_combout\ : std_logic;
SIGNAL \deboubce_balls|count[30]~93\ : std_logic;
SIGNAL \deboubce_balls|count[31]~94_combout\ : std_logic;
SIGNAL \deboubce_balls|state~2_combout\ : std_logic;
SIGNAL \deboubce_balls|state~1_combout\ : std_logic;
SIGNAL \deboubce_balls|LessThan0~0_combout\ : std_logic;
SIGNAL \deboubce_balls|LessThan0~1_combout\ : std_logic;
SIGNAL \deboubce_balls|process_0~0_combout\ : std_logic;
SIGNAL \deboubce_balls|state~0_combout\ : std_logic;
SIGNAL \deboubce_balls|process_0~1_combout\ : std_logic;
SIGNAL \deboubce_balls|process_0~2_combout\ : std_logic;
SIGNAL \deboubce_balls|process_0~3_combout\ : std_logic;
SIGNAL \deboubce_balls|process_0~4_combout\ : std_logic;
SIGNAL \deboubce_balls|state~5_combout\ : std_logic;
SIGNAL \deboubce_balls|state~3_combout\ : std_logic;
SIGNAL \deboubce_balls|state~4_combout\ : std_logic;
SIGNAL \deboubce_balls|state~6_combout\ : std_logic;
SIGNAL \deboubce_balls|state~7_combout\ : std_logic;
SIGNAL \deboubce_balls|state~8_combout\ : std_logic;
SIGNAL \deboubce_balls|state~9_combout\ : std_logic;
SIGNAL \deboubce_balls|state~10_combout\ : std_logic;
SIGNAL \deboubce_balls|state~feeder_combout\ : std_logic;
SIGNAL \deboubce_balls|state~q\ : std_logic;
SIGNAL \deboubce_balls|state~clkctrl_outclk\ : std_logic;
SIGNAL \balls[0]~93_combout\ : std_logic;
SIGNAL \NB~input_o\ : std_logic;
SIGNAL \bdis|Equal0~0_combout\ : std_logic;
SIGNAL \bdis|Equal0~2_combout\ : std_logic;
SIGNAL \bdis|Equal0~3_combout\ : std_logic;
SIGNAL \bdis|Equal0~1_combout\ : std_logic;
SIGNAL \bdis|Equal0~4_combout\ : std_logic;
SIGNAL \bdis|Equal0~6_combout\ : std_logic;
SIGNAL \bdis|Equal0~5_combout\ : std_logic;
SIGNAL \bdis|Equal0~7_combout\ : std_logic;
SIGNAL \bdis|Equal0~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \ISC~input_o\ : std_logic;
SIGNAL \deboubce_strikes|count[0]~32_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[0]~33\ : std_logic;
SIGNAL \deboubce_strikes|count[1]~34_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[1]~35\ : std_logic;
SIGNAL \deboubce_strikes|count[2]~36_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[2]~37\ : std_logic;
SIGNAL \deboubce_strikes|count[3]~38_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[3]~39\ : std_logic;
SIGNAL \deboubce_strikes|count[4]~40_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[4]~41\ : std_logic;
SIGNAL \deboubce_strikes|count[5]~42_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[5]~43\ : std_logic;
SIGNAL \deboubce_strikes|count[6]~44_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[6]~45\ : std_logic;
SIGNAL \deboubce_strikes|count[7]~46_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[7]~47\ : std_logic;
SIGNAL \deboubce_strikes|count[8]~48_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[8]~49\ : std_logic;
SIGNAL \deboubce_strikes|count[9]~50_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[9]~51\ : std_logic;
SIGNAL \deboubce_strikes|count[10]~52_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[10]~53\ : std_logic;
SIGNAL \deboubce_strikes|count[11]~54_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[11]~55\ : std_logic;
SIGNAL \deboubce_strikes|count[12]~56_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[12]~57\ : std_logic;
SIGNAL \deboubce_strikes|count[13]~58_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[13]~59\ : std_logic;
SIGNAL \deboubce_strikes|count[14]~60_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[14]~61\ : std_logic;
SIGNAL \deboubce_strikes|count[15]~62_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[15]~63\ : std_logic;
SIGNAL \deboubce_strikes|count[16]~64_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[16]~65\ : std_logic;
SIGNAL \deboubce_strikes|count[17]~66_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[17]~67\ : std_logic;
SIGNAL \deboubce_strikes|count[18]~68_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[18]~69\ : std_logic;
SIGNAL \deboubce_strikes|count[19]~70_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[19]~71\ : std_logic;
SIGNAL \deboubce_strikes|count[20]~72_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[20]~73\ : std_logic;
SIGNAL \deboubce_strikes|count[21]~74_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[21]~75\ : std_logic;
SIGNAL \deboubce_strikes|count[22]~76_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[22]~77\ : std_logic;
SIGNAL \deboubce_strikes|count[23]~78_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[23]~79\ : std_logic;
SIGNAL \deboubce_strikes|count[24]~80_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[24]~81\ : std_logic;
SIGNAL \deboubce_strikes|count[25]~82_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[25]~83\ : std_logic;
SIGNAL \deboubce_strikes|count[26]~84_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[26]~85\ : std_logic;
SIGNAL \deboubce_strikes|count[27]~86_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[27]~87\ : std_logic;
SIGNAL \deboubce_strikes|count[28]~88_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[28]~89\ : std_logic;
SIGNAL \deboubce_strikes|count[29]~90_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[29]~91\ : std_logic;
SIGNAL \deboubce_strikes|count[30]~92_combout\ : std_logic;
SIGNAL \deboubce_strikes|count[30]~93\ : std_logic;
SIGNAL \deboubce_strikes|count[31]~94_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~1_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~2_combout\ : std_logic;
SIGNAL \deboubce_strikes|LessThan0~0_combout\ : std_logic;
SIGNAL \deboubce_strikes|LessThan0~1_combout\ : std_logic;
SIGNAL \deboubce_strikes|process_0~0_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~0_combout\ : std_logic;
SIGNAL \deboubce_strikes|process_0~1_combout\ : std_logic;
SIGNAL \deboubce_strikes|process_0~2_combout\ : std_logic;
SIGNAL \deboubce_strikes|process_0~3_combout\ : std_logic;
SIGNAL \deboubce_strikes|process_0~4_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~3_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~5_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~4_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~6_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~7_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~8_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~9_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~10_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~feeder_combout\ : std_logic;
SIGNAL \deboubce_strikes|state~q\ : std_logic;
SIGNAL \deboubce_strikes|state~clkctrl_outclk\ : std_logic;
SIGNAL \strikes[0]~93_combout\ : std_logic;
SIGNAL \strikes[1]~31_combout\ : std_logic;
SIGNAL \strikes[1]~32\ : std_logic;
SIGNAL \strikes[2]~33_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \strikes[2]~34\ : std_logic;
SIGNAL \strikes[3]~35_combout\ : std_logic;
SIGNAL \strikes[3]~36\ : std_logic;
SIGNAL \strikes[4]~37_combout\ : std_logic;
SIGNAL \strikes[4]~38\ : std_logic;
SIGNAL \strikes[5]~39_combout\ : std_logic;
SIGNAL \strikes[5]~40\ : std_logic;
SIGNAL \strikes[6]~41_combout\ : std_logic;
SIGNAL \strikes[6]~42\ : std_logic;
SIGNAL \strikes[7]~43_combout\ : std_logic;
SIGNAL \strikes[7]~44\ : std_logic;
SIGNAL \strikes[8]~45_combout\ : std_logic;
SIGNAL \strikes[8]~46\ : std_logic;
SIGNAL \strikes[9]~47_combout\ : std_logic;
SIGNAL \strikes[9]~48\ : std_logic;
SIGNAL \strikes[10]~49_combout\ : std_logic;
SIGNAL \strikes[10]~50\ : std_logic;
SIGNAL \strikes[11]~51_combout\ : std_logic;
SIGNAL \strikes[11]~52\ : std_logic;
SIGNAL \strikes[12]~53_combout\ : std_logic;
SIGNAL \strikes[12]~54\ : std_logic;
SIGNAL \strikes[13]~55_combout\ : std_logic;
SIGNAL \strikes[13]~56\ : std_logic;
SIGNAL \strikes[14]~57_combout\ : std_logic;
SIGNAL \strikes[14]~58\ : std_logic;
SIGNAL \strikes[15]~59_combout\ : std_logic;
SIGNAL \strikes[15]~60\ : std_logic;
SIGNAL \strikes[16]~61_combout\ : std_logic;
SIGNAL \strikes[16]~62\ : std_logic;
SIGNAL \strikes[17]~63_combout\ : std_logic;
SIGNAL \strikes[17]~64\ : std_logic;
SIGNAL \strikes[18]~65_combout\ : std_logic;
SIGNAL \strikes[18]~66\ : std_logic;
SIGNAL \strikes[19]~67_combout\ : std_logic;
SIGNAL \strikes[19]~68\ : std_logic;
SIGNAL \strikes[20]~69_combout\ : std_logic;
SIGNAL \strikes[20]~70\ : std_logic;
SIGNAL \strikes[21]~71_combout\ : std_logic;
SIGNAL \strikes[21]~72\ : std_logic;
SIGNAL \strikes[22]~73_combout\ : std_logic;
SIGNAL \strikes[22]~74\ : std_logic;
SIGNAL \strikes[23]~75_combout\ : std_logic;
SIGNAL \strikes[23]~76\ : std_logic;
SIGNAL \strikes[24]~77_combout\ : std_logic;
SIGNAL \strikes[24]~78\ : std_logic;
SIGNAL \strikes[25]~79_combout\ : std_logic;
SIGNAL \strikes[25]~80\ : std_logic;
SIGNAL \strikes[26]~81_combout\ : std_logic;
SIGNAL \strikes[26]~82\ : std_logic;
SIGNAL \strikes[27]~83_combout\ : std_logic;
SIGNAL \strikes[27]~84\ : std_logic;
SIGNAL \strikes[28]~85_combout\ : std_logic;
SIGNAL \strikes[28]~86\ : std_logic;
SIGNAL \strikes[29]~87_combout\ : std_logic;
SIGNAL \strikes[29]~88\ : std_logic;
SIGNAL \strikes[30]~89_combout\ : std_logic;
SIGNAL \strikes[30]~90\ : std_logic;
SIGNAL \strikes[31]~91_combout\ : std_logic;
SIGNAL \sdis|Equal0~6_combout\ : std_logic;
SIGNAL \sdis|Equal0~5_combout\ : std_logic;
SIGNAL \sdis|Equal0~7_combout\ : std_logic;
SIGNAL \sdis|Equal0~8_combout\ : std_logic;
SIGNAL \sdis|Equal0~0_combout\ : std_logic;
SIGNAL \sdis|Equal0~1_combout\ : std_logic;
SIGNAL \sdis|Equal0~2_combout\ : std_logic;
SIGNAL \sdis|Equal0~3_combout\ : std_logic;
SIGNAL \sdis|Equal0~4_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \do_strikes~0_combout\ : std_logic;
SIGNAL \reset_b~q\ : std_logic;
SIGNAL \balls[1]~31_combout\ : std_logic;
SIGNAL \balls[1]~32\ : std_logic;
SIGNAL \balls[2]~33_combout\ : std_logic;
SIGNAL \balls[2]~34\ : std_logic;
SIGNAL \balls[3]~35_combout\ : std_logic;
SIGNAL \balls[3]~36\ : std_logic;
SIGNAL \balls[4]~37_combout\ : std_logic;
SIGNAL \balls[4]~38\ : std_logic;
SIGNAL \balls[5]~39_combout\ : std_logic;
SIGNAL \balls[5]~40\ : std_logic;
SIGNAL \balls[6]~41_combout\ : std_logic;
SIGNAL \balls[6]~42\ : std_logic;
SIGNAL \balls[7]~43_combout\ : std_logic;
SIGNAL \balls[7]~44\ : std_logic;
SIGNAL \balls[8]~45_combout\ : std_logic;
SIGNAL \balls[8]~46\ : std_logic;
SIGNAL \balls[9]~47_combout\ : std_logic;
SIGNAL \balls[9]~48\ : std_logic;
SIGNAL \balls[10]~49_combout\ : std_logic;
SIGNAL \balls[10]~50\ : std_logic;
SIGNAL \balls[11]~51_combout\ : std_logic;
SIGNAL \balls[11]~52\ : std_logic;
SIGNAL \balls[12]~53_combout\ : std_logic;
SIGNAL \balls[12]~54\ : std_logic;
SIGNAL \balls[13]~55_combout\ : std_logic;
SIGNAL \balls[13]~56\ : std_logic;
SIGNAL \balls[14]~57_combout\ : std_logic;
SIGNAL \balls[14]~58\ : std_logic;
SIGNAL \balls[15]~59_combout\ : std_logic;
SIGNAL \balls[15]~60\ : std_logic;
SIGNAL \balls[16]~61_combout\ : std_logic;
SIGNAL \balls[16]~62\ : std_logic;
SIGNAL \balls[17]~63_combout\ : std_logic;
SIGNAL \balls[17]~64\ : std_logic;
SIGNAL \balls[18]~65_combout\ : std_logic;
SIGNAL \balls[18]~66\ : std_logic;
SIGNAL \balls[19]~67_combout\ : std_logic;
SIGNAL \balls[19]~68\ : std_logic;
SIGNAL \balls[20]~69_combout\ : std_logic;
SIGNAL \balls[20]~70\ : std_logic;
SIGNAL \balls[21]~71_combout\ : std_logic;
SIGNAL \balls[21]~72\ : std_logic;
SIGNAL \balls[22]~73_combout\ : std_logic;
SIGNAL \balls[22]~74\ : std_logic;
SIGNAL \balls[23]~75_combout\ : std_logic;
SIGNAL \balls[23]~76\ : std_logic;
SIGNAL \balls[24]~77_combout\ : std_logic;
SIGNAL \balls[24]~78\ : std_logic;
SIGNAL \balls[25]~79_combout\ : std_logic;
SIGNAL \balls[25]~80\ : std_logic;
SIGNAL \balls[26]~81_combout\ : std_logic;
SIGNAL \balls[26]~82\ : std_logic;
SIGNAL \balls[27]~83_combout\ : std_logic;
SIGNAL \balls[27]~84\ : std_logic;
SIGNAL \balls[28]~85_combout\ : std_logic;
SIGNAL \balls[28]~86\ : std_logic;
SIGNAL \balls[29]~87_combout\ : std_logic;
SIGNAL \balls[29]~88\ : std_logic;
SIGNAL \balls[30]~89_combout\ : std_logic;
SIGNAL \balls[30]~90\ : std_logic;
SIGNAL \balls[31]~91_combout\ : std_logic;
SIGNAL \bdis|WideNor0~0_combout\ : std_logic;
SIGNAL \bdis|WideNor0~1_combout\ : std_logic;
SIGNAL \sdis|Equal4~0_combout\ : std_logic;
SIGNAL \sdis|WideNor0~0_combout\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \output[0]~reg0feeder_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \sdis|WideNor0~1_combout\ : std_logic;
SIGNAL \sdis|WideNor0~combout\ : std_logic;
SIGNAL \bdis|Equal4~0_combout\ : std_logic;
SIGNAL \bdis|WideNor0~combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \output[2]~reg0_q\ : std_logic;
SIGNAL \output[3]~reg0feeder_combout\ : std_logic;
SIGNAL \output[3]~reg0_q\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \output[4]~reg0_q\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \output~10_combout\ : std_logic;
SIGNAL \output[5]~reg0_q\ : std_logic;
SIGNAL \output~12_combout\ : std_logic;
SIGNAL \output~11_combout\ : std_logic;
SIGNAL \output~13_combout\ : std_logic;
SIGNAL \output[6]~reg0_q\ : std_logic;
SIGNAL \flash_b~q\ : std_logic;
SIGNAL \flash_counter[0]~33_combout\ : std_logic;
SIGNAL \flash_counter[0]~34\ : std_logic;
SIGNAL \flash_counter[1]~35_combout\ : std_logic;
SIGNAL \flash_counter[1]~36\ : std_logic;
SIGNAL \flash_counter[2]~37_combout\ : std_logic;
SIGNAL \flash_counter[2]~38\ : std_logic;
SIGNAL \flash_counter[3]~39_combout\ : std_logic;
SIGNAL \flash_counter[3]~40\ : std_logic;
SIGNAL \flash_counter[4]~41_combout\ : std_logic;
SIGNAL \flash_counter[4]~42\ : std_logic;
SIGNAL \flash_counter[5]~43_combout\ : std_logic;
SIGNAL \flash_counter[5]~44\ : std_logic;
SIGNAL \flash_counter[6]~45_combout\ : std_logic;
SIGNAL \flash_counter[6]~46\ : std_logic;
SIGNAL \flash_counter[7]~47_combout\ : std_logic;
SIGNAL \flash_counter[7]~48\ : std_logic;
SIGNAL \flash_counter[8]~49_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \flash_counter[8]~50\ : std_logic;
SIGNAL \flash_counter[9]~51_combout\ : std_logic;
SIGNAL \flash_counter[9]~52\ : std_logic;
SIGNAL \flash_counter[10]~53_combout\ : std_logic;
SIGNAL \flash_counter[10]~54\ : std_logic;
SIGNAL \flash_counter[11]~55_combout\ : std_logic;
SIGNAL \flash_counter[11]~56\ : std_logic;
SIGNAL \flash_counter[12]~57_combout\ : std_logic;
SIGNAL \flash_counter[12]~58\ : std_logic;
SIGNAL \flash_counter[13]~59_combout\ : std_logic;
SIGNAL \flash_counter[13]~60\ : std_logic;
SIGNAL \flash_counter[14]~61_combout\ : std_logic;
SIGNAL \flash_counter[14]~62\ : std_logic;
SIGNAL \flash_counter[15]~63_combout\ : std_logic;
SIGNAL \flash_counter[15]~64\ : std_logic;
SIGNAL \flash_counter[16]~65_combout\ : std_logic;
SIGNAL \flash_counter[16]~66\ : std_logic;
SIGNAL \flash_counter[17]~67_combout\ : std_logic;
SIGNAL \flash_counter[17]~68\ : std_logic;
SIGNAL \flash_counter[18]~69_combout\ : std_logic;
SIGNAL \flash_counter[18]~70\ : std_logic;
SIGNAL \flash_counter[19]~71_combout\ : std_logic;
SIGNAL \flash_counter[19]~72\ : std_logic;
SIGNAL \flash_counter[20]~73_combout\ : std_logic;
SIGNAL \flash_counter[20]~74\ : std_logic;
SIGNAL \flash_counter[21]~75_combout\ : std_logic;
SIGNAL \flash_counter[21]~76\ : std_logic;
SIGNAL \flash_counter[22]~77_combout\ : std_logic;
SIGNAL \flash_counter[22]~78\ : std_logic;
SIGNAL \flash_counter[23]~79_combout\ : std_logic;
SIGNAL \flash_counter[23]~80\ : std_logic;
SIGNAL \flash_counter[24]~81_combout\ : std_logic;
SIGNAL \flash_counter[24]~82\ : std_logic;
SIGNAL \flash_counter[25]~83_combout\ : std_logic;
SIGNAL \flash_counter[25]~84\ : std_logic;
SIGNAL \flash_counter[26]~85_combout\ : std_logic;
SIGNAL \flash_counter[26]~86\ : std_logic;
SIGNAL \flash_counter[27]~87_combout\ : std_logic;
SIGNAL \flash_counter[27]~88\ : std_logic;
SIGNAL \flash_counter[28]~89_combout\ : std_logic;
SIGNAL \flash_counter[28]~90\ : std_logic;
SIGNAL \flash_counter[29]~91_combout\ : std_logic;
SIGNAL \flash_counter[29]~92\ : std_logic;
SIGNAL \flash_counter[30]~93_combout\ : std_logic;
SIGNAL \flash_counter[30]~94\ : std_logic;
SIGNAL \flash_counter[31]~95_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \leds_output[0]~0_combout\ : std_logic;
SIGNAL \flash_counter~32_combout\ : std_logic;
SIGNAL \doing_flash_b~0_combout\ : std_logic;
SIGNAL \doing_flash_b~q\ : std_logic;
SIGNAL \leds_output[0]~2_combout\ : std_logic;
SIGNAL \leds_output[0]~1_combout\ : std_logic;
SIGNAL \leds_output[0]~3_combout\ : std_logic;
SIGNAL \flash_counter_s[0]~33_combout\ : std_logic;
SIGNAL \flash_counter_s[3]~40\ : std_logic;
SIGNAL \flash_counter_s[4]~41_combout\ : std_logic;
SIGNAL \flash_s~feeder_combout\ : std_logic;
SIGNAL \flash_s~q\ : std_logic;
SIGNAL \doing_flash_s~0_combout\ : std_logic;
SIGNAL \doing_flash_s~q\ : std_logic;
SIGNAL \flash_counter_s[4]~42\ : std_logic;
SIGNAL \flash_counter_s[5]~43_combout\ : std_logic;
SIGNAL \flash_counter_s[5]~44\ : std_logic;
SIGNAL \flash_counter_s[6]~45_combout\ : std_logic;
SIGNAL \flash_counter_s[6]~46\ : std_logic;
SIGNAL \flash_counter_s[7]~47_combout\ : std_logic;
SIGNAL \flash_counter_s[7]~48\ : std_logic;
SIGNAL \flash_counter_s[8]~49_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \flash_counter_s[8]~50\ : std_logic;
SIGNAL \flash_counter_s[9]~51_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \flash_counter_s[9]~52\ : std_logic;
SIGNAL \flash_counter_s[10]~53_combout\ : std_logic;
SIGNAL \flash_counter_s[10]~54\ : std_logic;
SIGNAL \flash_counter_s[11]~55_combout\ : std_logic;
SIGNAL \flash_counter_s[11]~56\ : std_logic;
SIGNAL \flash_counter_s[12]~57_combout\ : std_logic;
SIGNAL \flash_counter_s[12]~58\ : std_logic;
SIGNAL \flash_counter_s[13]~59_combout\ : std_logic;
SIGNAL \flash_counter_s[13]~60\ : std_logic;
SIGNAL \flash_counter_s[14]~61_combout\ : std_logic;
SIGNAL \flash_counter_s[14]~62\ : std_logic;
SIGNAL \flash_counter_s[15]~63_combout\ : std_logic;
SIGNAL \flash_counter_s[15]~64\ : std_logic;
SIGNAL \flash_counter_s[16]~65_combout\ : std_logic;
SIGNAL \flash_counter_s[16]~66\ : std_logic;
SIGNAL \flash_counter_s[17]~67_combout\ : std_logic;
SIGNAL \flash_counter_s[17]~68\ : std_logic;
SIGNAL \flash_counter_s[18]~69_combout\ : std_logic;
SIGNAL \flash_counter_s[18]~70\ : std_logic;
SIGNAL \flash_counter_s[19]~71_combout\ : std_logic;
SIGNAL \flash_counter_s[19]~72\ : std_logic;
SIGNAL \flash_counter_s[20]~73_combout\ : std_logic;
SIGNAL \flash_counter_s[20]~74\ : std_logic;
SIGNAL \flash_counter_s[21]~75_combout\ : std_logic;
SIGNAL \flash_counter_s[21]~76\ : std_logic;
SIGNAL \flash_counter_s[22]~77_combout\ : std_logic;
SIGNAL \flash_counter_s[22]~78\ : std_logic;
SIGNAL \flash_counter_s[23]~79_combout\ : std_logic;
SIGNAL \flash_counter_s[23]~80\ : std_logic;
SIGNAL \flash_counter_s[24]~81_combout\ : std_logic;
SIGNAL \flash_counter_s[24]~82\ : std_logic;
SIGNAL \flash_counter_s[25]~83_combout\ : std_logic;
SIGNAL \flash_counter_s[25]~84\ : std_logic;
SIGNAL \flash_counter_s[26]~85_combout\ : std_logic;
SIGNAL \flash_counter_s[26]~86\ : std_logic;
SIGNAL \flash_counter_s[27]~87_combout\ : std_logic;
SIGNAL \flash_counter_s[27]~88\ : std_logic;
SIGNAL \flash_counter_s[28]~89_combout\ : std_logic;
SIGNAL \flash_counter_s[28]~90\ : std_logic;
SIGNAL \flash_counter_s[29]~91_combout\ : std_logic;
SIGNAL \flash_counter_s[29]~92\ : std_logic;
SIGNAL \flash_counter_s[30]~93_combout\ : std_logic;
SIGNAL \flash_counter_s[30]~94\ : std_logic;
SIGNAL \flash_counter_s[31]~95_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~10_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \leds_output_s[2]~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \flash_counter_s~32_combout\ : std_logic;
SIGNAL \flash_counter_s[0]~34\ : std_logic;
SIGNAL \flash_counter_s[1]~35_combout\ : std_logic;
SIGNAL \flash_counter_s[1]~36\ : std_logic;
SIGNAL \flash_counter_s[2]~37_combout\ : std_logic;
SIGNAL \flash_counter_s[2]~38\ : std_logic;
SIGNAL \flash_counter_s[3]~39_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \leds_output_s[2]~1_combout\ : std_logic;
SIGNAL \leds_output_s[2]~0_combout\ : std_logic;
SIGNAL \leds_output_s[2]~3_combout\ : std_logic;
SIGNAL \leds_output_s[2]~4_combout\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \clkdiv|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL strikes : std_logic_vector(31 DOWNTO 0);
SIGNAL balls : std_logic_vector(31 DOWNTO 0);
SIGNAL \deboubce_balls|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL flash_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL flash_counter_s : std_logic_vector(31 DOWNTO 0);
SIGNAL leds_output_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \deboubce_strikes|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL leds_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset_b~q\ : std_logic;
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiv|ALT_INV_newclk~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_IBC <= IBC;
ww_ISC <= ISC;
ww_NB <= NB;
dig <= ww_dig;
output <= ww_output;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkdiv|newclk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdiv|newclk~q\);

\deboubce_strikes|state~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \deboubce_strikes|state~q\);

\deboubce_balls|state~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \deboubce_balls|state~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset_b~q\ <= NOT \reset_b~q\;
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\clkdiv|ALT_INV_newclk~clkctrl_outclk\ <= NOT \clkdiv|newclk~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~reg0_q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~reg0_q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]~reg0_q\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[3]~reg0_q\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[4]~reg0_q\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[5]~reg0_q\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[6]~reg0_q\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~0_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~0_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y2_N6
\clkdiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~0_combout\ = \clkdiv|count\(0) $ (VCC)
-- \clkdiv|Add0~1\ = CARRY(\clkdiv|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(0),
	datad => VCC,
	combout => \clkdiv|Add0~0_combout\,
	cout => \clkdiv|Add0~1\);

-- Location: LCCOMB_X19_Y2_N8
\clkdiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~2_combout\ = (\clkdiv|count\(1) & (!\clkdiv|Add0~1\)) # (!\clkdiv|count\(1) & ((\clkdiv|Add0~1\) # (GND)))
-- \clkdiv|Add0~3\ = CARRY((!\clkdiv|Add0~1\) # (!\clkdiv|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(1),
	datad => VCC,
	cin => \clkdiv|Add0~1\,
	combout => \clkdiv|Add0~2_combout\,
	cout => \clkdiv|Add0~3\);

-- Location: FF_X19_Y2_N9
\clkdiv|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(1));

-- Location: LCCOMB_X19_Y2_N10
\clkdiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~4_combout\ = (\clkdiv|count\(2) & (\clkdiv|Add0~3\ $ (GND))) # (!\clkdiv|count\(2) & (!\clkdiv|Add0~3\ & VCC))
-- \clkdiv|Add0~5\ = CARRY((\clkdiv|count\(2) & !\clkdiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(2),
	datad => VCC,
	cin => \clkdiv|Add0~3\,
	combout => \clkdiv|Add0~4_combout\,
	cout => \clkdiv|Add0~5\);

-- Location: FF_X19_Y2_N11
\clkdiv|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(2));

-- Location: LCCOMB_X19_Y2_N12
\clkdiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~6_combout\ = (\clkdiv|count\(3) & (!\clkdiv|Add0~5\)) # (!\clkdiv|count\(3) & ((\clkdiv|Add0~5\) # (GND)))
-- \clkdiv|Add0~7\ = CARRY((!\clkdiv|Add0~5\) # (!\clkdiv|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(3),
	datad => VCC,
	cin => \clkdiv|Add0~5\,
	combout => \clkdiv|Add0~6_combout\,
	cout => \clkdiv|Add0~7\);

-- Location: FF_X19_Y2_N13
\clkdiv|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(3));

-- Location: LCCOMB_X19_Y2_N14
\clkdiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~8_combout\ = (\clkdiv|count\(4) & (\clkdiv|Add0~7\ $ (GND))) # (!\clkdiv|count\(4) & (!\clkdiv|Add0~7\ & VCC))
-- \clkdiv|Add0~9\ = CARRY((\clkdiv|count\(4) & !\clkdiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(4),
	datad => VCC,
	cin => \clkdiv|Add0~7\,
	combout => \clkdiv|Add0~8_combout\,
	cout => \clkdiv|Add0~9\);

-- Location: LCCOMB_X18_Y2_N6
\clkdiv|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~6_combout\ = (\clkdiv|Add0~8_combout\ & (((\clkdiv|count\(0)) # (!\clkdiv|Equal0~6_combout\)) # (!\clkdiv|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~7_combout\,
	datab => \clkdiv|count\(0),
	datac => \clkdiv|Equal0~6_combout\,
	datad => \clkdiv|Add0~8_combout\,
	combout => \clkdiv|count~6_combout\);

-- Location: FF_X18_Y2_N7
\clkdiv|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(4));

-- Location: LCCOMB_X18_Y2_N22
\clkdiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~7_combout\ = (\clkdiv|count\(4) & (!\clkdiv|count\(3) & (!\clkdiv|count\(1) & !\clkdiv|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(4),
	datab => \clkdiv|count\(3),
	datac => \clkdiv|count\(1),
	datad => \clkdiv|count\(2),
	combout => \clkdiv|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y2_N16
\clkdiv|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~5_combout\ = (\clkdiv|Add0~0_combout\ & (((\clkdiv|count\(0)) # (!\clkdiv|Equal0~7_combout\)) # (!\clkdiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~6_combout\,
	datab => \clkdiv|Add0~0_combout\,
	datac => \clkdiv|count\(0),
	datad => \clkdiv|Equal0~7_combout\,
	combout => \clkdiv|count~5_combout\);

-- Location: FF_X18_Y2_N17
\clkdiv|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(0));

-- Location: LCCOMB_X19_Y2_N16
\clkdiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~10_combout\ = (\clkdiv|count\(5) & (!\clkdiv|Add0~9\)) # (!\clkdiv|count\(5) & ((\clkdiv|Add0~9\) # (GND)))
-- \clkdiv|Add0~11\ = CARRY((!\clkdiv|Add0~9\) # (!\clkdiv|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(5),
	datad => VCC,
	cin => \clkdiv|Add0~9\,
	combout => \clkdiv|Add0~10_combout\,
	cout => \clkdiv|Add0~11\);

-- Location: FF_X19_Y2_N17
\clkdiv|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(5));

-- Location: LCCOMB_X19_Y2_N18
\clkdiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~12_combout\ = (\clkdiv|count\(6) & (\clkdiv|Add0~11\ $ (GND))) # (!\clkdiv|count\(6) & (!\clkdiv|Add0~11\ & VCC))
-- \clkdiv|Add0~13\ = CARRY((\clkdiv|count\(6) & !\clkdiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(6),
	datad => VCC,
	cin => \clkdiv|Add0~11\,
	combout => \clkdiv|Add0~12_combout\,
	cout => \clkdiv|Add0~13\);

-- Location: LCCOMB_X19_Y2_N0
\clkdiv|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~2_combout\ = (\clkdiv|Add0~12_combout\ & (((\clkdiv|count\(0)) # (!\clkdiv|Equal0~6_combout\)) # (!\clkdiv|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~7_combout\,
	datab => \clkdiv|Add0~12_combout\,
	datac => \clkdiv|Equal0~6_combout\,
	datad => \clkdiv|count\(0),
	combout => \clkdiv|count~2_combout\);

-- Location: FF_X19_Y2_N1
\clkdiv|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(6));

-- Location: LCCOMB_X19_Y2_N20
\clkdiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~14_combout\ = (\clkdiv|count\(7) & (!\clkdiv|Add0~13\)) # (!\clkdiv|count\(7) & ((\clkdiv|Add0~13\) # (GND)))
-- \clkdiv|Add0~15\ = CARRY((!\clkdiv|Add0~13\) # (!\clkdiv|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(7),
	datad => VCC,
	cin => \clkdiv|Add0~13\,
	combout => \clkdiv|Add0~14_combout\,
	cout => \clkdiv|Add0~15\);

-- Location: FF_X19_Y2_N21
\clkdiv|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(7));

-- Location: LCCOMB_X19_Y2_N22
\clkdiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~16_combout\ = (\clkdiv|count\(8) & (\clkdiv|Add0~15\ $ (GND))) # (!\clkdiv|count\(8) & (!\clkdiv|Add0~15\ & VCC))
-- \clkdiv|Add0~17\ = CARRY((\clkdiv|count\(8) & !\clkdiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(8),
	datad => VCC,
	cin => \clkdiv|Add0~15\,
	combout => \clkdiv|Add0~16_combout\,
	cout => \clkdiv|Add0~17\);

-- Location: LCCOMB_X19_Y2_N2
\clkdiv|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~1_combout\ = (\clkdiv|Add0~16_combout\ & (((\clkdiv|count\(0)) # (!\clkdiv|Equal0~6_combout\)) # (!\clkdiv|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Add0~16_combout\,
	datab => \clkdiv|Equal0~7_combout\,
	datac => \clkdiv|Equal0~6_combout\,
	datad => \clkdiv|count\(0),
	combout => \clkdiv|count~1_combout\);

-- Location: FF_X19_Y2_N3
\clkdiv|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(8));

-- Location: LCCOMB_X19_Y2_N24
\clkdiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~18_combout\ = (\clkdiv|count\(9) & (!\clkdiv|Add0~17\)) # (!\clkdiv|count\(9) & ((\clkdiv|Add0~17\) # (GND)))
-- \clkdiv|Add0~19\ = CARRY((!\clkdiv|Add0~17\) # (!\clkdiv|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(9),
	datad => VCC,
	cin => \clkdiv|Add0~17\,
	combout => \clkdiv|Add0~18_combout\,
	cout => \clkdiv|Add0~19\);

-- Location: LCCOMB_X19_Y2_N4
\clkdiv|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~0_combout\ = (\clkdiv|Add0~18_combout\ & (((\clkdiv|count\(0)) # (!\clkdiv|Equal0~6_combout\)) # (!\clkdiv|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~7_combout\,
	datab => \clkdiv|Add0~18_combout\,
	datac => \clkdiv|Equal0~6_combout\,
	datad => \clkdiv|count\(0),
	combout => \clkdiv|count~0_combout\);

-- Location: FF_X19_Y2_N5
\clkdiv|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(9));

-- Location: LCCOMB_X19_Y2_N26
\clkdiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~20_combout\ = (\clkdiv|count\(10) & (\clkdiv|Add0~19\ $ (GND))) # (!\clkdiv|count\(10) & (!\clkdiv|Add0~19\ & VCC))
-- \clkdiv|Add0~21\ = CARRY((\clkdiv|count\(10) & !\clkdiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(10),
	datad => VCC,
	cin => \clkdiv|Add0~19\,
	combout => \clkdiv|Add0~20_combout\,
	cout => \clkdiv|Add0~21\);

-- Location: FF_X19_Y2_N27
\clkdiv|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(10));

-- Location: LCCOMB_X19_Y2_N28
\clkdiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~22_combout\ = (\clkdiv|count\(11) & (!\clkdiv|Add0~21\)) # (!\clkdiv|count\(11) & ((\clkdiv|Add0~21\) # (GND)))
-- \clkdiv|Add0~23\ = CARRY((!\clkdiv|Add0~21\) # (!\clkdiv|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(11),
	datad => VCC,
	cin => \clkdiv|Add0~21\,
	combout => \clkdiv|Add0~22_combout\,
	cout => \clkdiv|Add0~23\);

-- Location: FF_X19_Y2_N29
\clkdiv|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(11));

-- Location: LCCOMB_X19_Y2_N30
\clkdiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~24_combout\ = (\clkdiv|count\(12) & (\clkdiv|Add0~23\ $ (GND))) # (!\clkdiv|count\(12) & (!\clkdiv|Add0~23\ & VCC))
-- \clkdiv|Add0~25\ = CARRY((\clkdiv|count\(12) & !\clkdiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(12),
	datad => VCC,
	cin => \clkdiv|Add0~23\,
	combout => \clkdiv|Add0~24_combout\,
	cout => \clkdiv|Add0~25\);

-- Location: FF_X19_Y2_N31
\clkdiv|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(12));

-- Location: LCCOMB_X19_Y1_N0
\clkdiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~26_combout\ = (\clkdiv|count\(13) & (!\clkdiv|Add0~25\)) # (!\clkdiv|count\(13) & ((\clkdiv|Add0~25\) # (GND)))
-- \clkdiv|Add0~27\ = CARRY((!\clkdiv|Add0~25\) # (!\clkdiv|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(13),
	datad => VCC,
	cin => \clkdiv|Add0~25\,
	combout => \clkdiv|Add0~26_combout\,
	cout => \clkdiv|Add0~27\);

-- Location: FF_X19_Y1_N1
\clkdiv|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(13));

-- Location: LCCOMB_X19_Y1_N2
\clkdiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~28_combout\ = (\clkdiv|count\(14) & (\clkdiv|Add0~27\ $ (GND))) # (!\clkdiv|count\(14) & (!\clkdiv|Add0~27\ & VCC))
-- \clkdiv|Add0~29\ = CARRY((\clkdiv|count\(14) & !\clkdiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(14),
	datad => VCC,
	cin => \clkdiv|Add0~27\,
	combout => \clkdiv|Add0~28_combout\,
	cout => \clkdiv|Add0~29\);

-- Location: LCCOMB_X18_Y2_N30
\clkdiv|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~3_combout\ = (\clkdiv|Add0~28_combout\ & (((\clkdiv|count\(0)) # (!\clkdiv|Equal0~7_combout\)) # (!\clkdiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~6_combout\,
	datab => \clkdiv|count\(0),
	datac => \clkdiv|Add0~28_combout\,
	datad => \clkdiv|Equal0~7_combout\,
	combout => \clkdiv|count~3_combout\);

-- Location: FF_X18_Y2_N31
\clkdiv|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(14));

-- Location: LCCOMB_X19_Y1_N4
\clkdiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~30_combout\ = (\clkdiv|count\(15) & (!\clkdiv|Add0~29\)) # (!\clkdiv|count\(15) & ((\clkdiv|Add0~29\) # (GND)))
-- \clkdiv|Add0~31\ = CARRY((!\clkdiv|Add0~29\) # (!\clkdiv|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(15),
	datad => VCC,
	cin => \clkdiv|Add0~29\,
	combout => \clkdiv|Add0~30_combout\,
	cout => \clkdiv|Add0~31\);

-- Location: LCCOMB_X19_Y1_N26
\clkdiv|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|count~4_combout\ = (\clkdiv|Add0~30_combout\ & ((\clkdiv|count\(0)) # ((!\clkdiv|Equal0~6_combout\) # (!\clkdiv|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(0),
	datab => \clkdiv|Equal0~7_combout\,
	datac => \clkdiv|Add0~30_combout\,
	datad => \clkdiv|Equal0~6_combout\,
	combout => \clkdiv|count~4_combout\);

-- Location: FF_X19_Y1_N27
\clkdiv|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(15));

-- Location: LCCOMB_X19_Y1_N6
\clkdiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~32_combout\ = (\clkdiv|count\(16) & (\clkdiv|Add0~31\ $ (GND))) # (!\clkdiv|count\(16) & (!\clkdiv|Add0~31\ & VCC))
-- \clkdiv|Add0~33\ = CARRY((\clkdiv|count\(16) & !\clkdiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(16),
	datad => VCC,
	cin => \clkdiv|Add0~31\,
	combout => \clkdiv|Add0~32_combout\,
	cout => \clkdiv|Add0~33\);

-- Location: FF_X19_Y1_N7
\clkdiv|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(16));

-- Location: LCCOMB_X19_Y1_N8
\clkdiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~34_combout\ = (\clkdiv|count\(17) & (!\clkdiv|Add0~33\)) # (!\clkdiv|count\(17) & ((\clkdiv|Add0~33\) # (GND)))
-- \clkdiv|Add0~35\ = CARRY((!\clkdiv|Add0~33\) # (!\clkdiv|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(17),
	datad => VCC,
	cin => \clkdiv|Add0~33\,
	combout => \clkdiv|Add0~34_combout\,
	cout => \clkdiv|Add0~35\);

-- Location: FF_X19_Y1_N9
\clkdiv|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(17));

-- Location: LCCOMB_X19_Y1_N10
\clkdiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~36_combout\ = (\clkdiv|count\(18) & (\clkdiv|Add0~35\ $ (GND))) # (!\clkdiv|count\(18) & (!\clkdiv|Add0~35\ & VCC))
-- \clkdiv|Add0~37\ = CARRY((\clkdiv|count\(18) & !\clkdiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(18),
	datad => VCC,
	cin => \clkdiv|Add0~35\,
	combout => \clkdiv|Add0~36_combout\,
	cout => \clkdiv|Add0~37\);

-- Location: FF_X19_Y1_N11
\clkdiv|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(18));

-- Location: LCCOMB_X19_Y1_N12
\clkdiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~38_combout\ = (\clkdiv|count\(19) & (!\clkdiv|Add0~37\)) # (!\clkdiv|count\(19) & ((\clkdiv|Add0~37\) # (GND)))
-- \clkdiv|Add0~39\ = CARRY((!\clkdiv|Add0~37\) # (!\clkdiv|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(19),
	datad => VCC,
	cin => \clkdiv|Add0~37\,
	combout => \clkdiv|Add0~38_combout\,
	cout => \clkdiv|Add0~39\);

-- Location: FF_X19_Y1_N13
\clkdiv|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(19));

-- Location: LCCOMB_X19_Y1_N14
\clkdiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~40_combout\ = (\clkdiv|count\(20) & (\clkdiv|Add0~39\ $ (GND))) # (!\clkdiv|count\(20) & (!\clkdiv|Add0~39\ & VCC))
-- \clkdiv|Add0~41\ = CARRY((\clkdiv|count\(20) & !\clkdiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(20),
	datad => VCC,
	cin => \clkdiv|Add0~39\,
	combout => \clkdiv|Add0~40_combout\,
	cout => \clkdiv|Add0~41\);

-- Location: FF_X19_Y1_N15
\clkdiv|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(20));

-- Location: LCCOMB_X19_Y1_N16
\clkdiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~42_combout\ = (\clkdiv|count\(21) & (!\clkdiv|Add0~41\)) # (!\clkdiv|count\(21) & ((\clkdiv|Add0~41\) # (GND)))
-- \clkdiv|Add0~43\ = CARRY((!\clkdiv|Add0~41\) # (!\clkdiv|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(21),
	datad => VCC,
	cin => \clkdiv|Add0~41\,
	combout => \clkdiv|Add0~42_combout\,
	cout => \clkdiv|Add0~43\);

-- Location: FF_X19_Y1_N17
\clkdiv|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(21));

-- Location: LCCOMB_X19_Y1_N18
\clkdiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~44_combout\ = (\clkdiv|count\(22) & (\clkdiv|Add0~43\ $ (GND))) # (!\clkdiv|count\(22) & (!\clkdiv|Add0~43\ & VCC))
-- \clkdiv|Add0~45\ = CARRY((\clkdiv|count\(22) & !\clkdiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(22),
	datad => VCC,
	cin => \clkdiv|Add0~43\,
	combout => \clkdiv|Add0~44_combout\,
	cout => \clkdiv|Add0~45\);

-- Location: FF_X19_Y1_N19
\clkdiv|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(22));

-- Location: LCCOMB_X19_Y1_N20
\clkdiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~46_combout\ = (\clkdiv|count\(23) & (!\clkdiv|Add0~45\)) # (!\clkdiv|count\(23) & ((\clkdiv|Add0~45\) # (GND)))
-- \clkdiv|Add0~47\ = CARRY((!\clkdiv|Add0~45\) # (!\clkdiv|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(23),
	datad => VCC,
	cin => \clkdiv|Add0~45\,
	combout => \clkdiv|Add0~46_combout\,
	cout => \clkdiv|Add0~47\);

-- Location: FF_X19_Y1_N21
\clkdiv|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(23));

-- Location: LCCOMB_X19_Y1_N22
\clkdiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~48_combout\ = (\clkdiv|count\(24) & (\clkdiv|Add0~47\ $ (GND))) # (!\clkdiv|count\(24) & (!\clkdiv|Add0~47\ & VCC))
-- \clkdiv|Add0~49\ = CARRY((\clkdiv|count\(24) & !\clkdiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(24),
	datad => VCC,
	cin => \clkdiv|Add0~47\,
	combout => \clkdiv|Add0~48_combout\,
	cout => \clkdiv|Add0~49\);

-- Location: FF_X19_Y1_N23
\clkdiv|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(24));

-- Location: LCCOMB_X19_Y1_N24
\clkdiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~50_combout\ = \clkdiv|Add0~49\ $ (\clkdiv|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv|count\(25),
	cin => \clkdiv|Add0~49\,
	combout => \clkdiv|Add0~50_combout\);

-- Location: FF_X19_Y1_N25
\clkdiv|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(25));

-- Location: LCCOMB_X18_Y1_N0
\clkdiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~5_combout\ = (!\clkdiv|count\(21) & (!\clkdiv|count\(22) & (!\clkdiv|count\(23) & !\clkdiv|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(21),
	datab => \clkdiv|count\(22),
	datac => \clkdiv|count\(23),
	datad => \clkdiv|count\(24),
	combout => \clkdiv|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y2_N10
\clkdiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~0_combout\ = (\clkdiv|count\(9) & (\clkdiv|count\(6) & (!\clkdiv|count\(7) & \clkdiv|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(9),
	datab => \clkdiv|count\(6),
	datac => \clkdiv|count\(7),
	datad => \clkdiv|count\(8),
	combout => \clkdiv|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y2_N4
\clkdiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~1_combout\ = (!\clkdiv|count\(10) & (!\clkdiv|count\(5) & (!\clkdiv|count\(12) & !\clkdiv|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(10),
	datab => \clkdiv|count\(5),
	datac => \clkdiv|count\(12),
	datad => \clkdiv|count\(11),
	combout => \clkdiv|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y1_N28
\clkdiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~2_combout\ = (!\clkdiv|count\(16) & (!\clkdiv|count\(13) & (\clkdiv|count\(15) & \clkdiv|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(16),
	datab => \clkdiv|count\(13),
	datac => \clkdiv|count\(15),
	datad => \clkdiv|count\(14),
	combout => \clkdiv|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y1_N30
\clkdiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~3_combout\ = (!\clkdiv|count\(18) & (!\clkdiv|count\(17) & (!\clkdiv|count\(20) & !\clkdiv|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(18),
	datab => \clkdiv|count\(17),
	datac => \clkdiv|count\(20),
	datad => \clkdiv|count\(19),
	combout => \clkdiv|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y2_N20
\clkdiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~4_combout\ = (\clkdiv|Equal0~0_combout\ & (\clkdiv|Equal0~1_combout\ & (\clkdiv|Equal0~2_combout\ & \clkdiv|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~0_combout\,
	datab => \clkdiv|Equal0~1_combout\,
	datac => \clkdiv|Equal0~2_combout\,
	datad => \clkdiv|Equal0~3_combout\,
	combout => \clkdiv|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y2_N26
\clkdiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~6_combout\ = (!\clkdiv|count\(25) & (\clkdiv|Equal0~5_combout\ & \clkdiv|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(25),
	datab => \clkdiv|Equal0~5_combout\,
	datad => \clkdiv|Equal0~4_combout\,
	combout => \clkdiv|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y2_N28
\clkdiv|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|Equal1~0_combout\ = (\clkdiv|count\(2) & (\clkdiv|count\(3) & (\clkdiv|count\(1) & !\clkdiv|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(2),
	datab => \clkdiv|count\(3),
	datac => \clkdiv|count\(1),
	datad => \clkdiv|count\(4),
	combout => \clkdiv|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y2_N24
\clkdiv|divclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|divclk~0_combout\ = \clkdiv|divclk~q\ $ (((\clkdiv|Equal0~6_combout\ & (\clkdiv|count\(0) & \clkdiv|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~6_combout\,
	datab => \clkdiv|count\(0),
	datac => \clkdiv|divclk~q\,
	datad => \clkdiv|Equal1~0_combout\,
	combout => \clkdiv|divclk~0_combout\);

-- Location: FF_X18_Y2_N25
\clkdiv|divclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|divclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|divclk~q\);

-- Location: LCCOMB_X1_Y11_N14
\clkdiv|newclk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdiv|newclk~feeder_combout\ = \clkdiv|divclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clkdiv|divclk~q\,
	combout => \clkdiv|newclk~feeder_combout\);

-- Location: FF_X1_Y11_N15
\clkdiv|newclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \clkdiv|newclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|newclk~q\);

-- Location: CLKCTRL_G0
\clkdiv|newclk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkdiv|newclk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkdiv|newclk~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y20_N14
\digsel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digsel~0_combout\ = !\digsel~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digsel~q\,
	combout => \digsel~0_combout\);

-- Location: FF_X22_Y20_N15
digsel : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \digsel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digsel~q\);

-- Location: LCCOMB_X22_Y20_N24
\dig[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dig[0]~0_combout\ = !\digsel~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digsel~q\,
	combout => \dig[0]~0_combout\);

-- Location: FF_X22_Y20_N25
\dig[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \dig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig[0]~reg0_q\);

-- Location: FF_X22_Y20_N29
\dig[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \digsel~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig[1]~reg0_q\);

-- Location: IOIBUF_X34_Y12_N22
\IBC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IBC,
	o => \IBC~input_o\);

-- Location: LCCOMB_X29_Y7_N0
\deboubce_balls|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[0]~32_combout\ = \deboubce_balls|count\(0) $ (VCC)
-- \deboubce_balls|count[0]~33\ = CARRY(\deboubce_balls|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(0),
	datad => VCC,
	combout => \deboubce_balls|count[0]~32_combout\,
	cout => \deboubce_balls|count[0]~33\);

-- Location: FF_X29_Y7_N1
\deboubce_balls|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[0]~32_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(0));

-- Location: LCCOMB_X29_Y7_N2
\deboubce_balls|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[1]~34_combout\ = (\deboubce_balls|count\(1) & (!\deboubce_balls|count[0]~33\)) # (!\deboubce_balls|count\(1) & ((\deboubce_balls|count[0]~33\) # (GND)))
-- \deboubce_balls|count[1]~35\ = CARRY((!\deboubce_balls|count[0]~33\) # (!\deboubce_balls|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(1),
	datad => VCC,
	cin => \deboubce_balls|count[0]~33\,
	combout => \deboubce_balls|count[1]~34_combout\,
	cout => \deboubce_balls|count[1]~35\);

-- Location: FF_X29_Y7_N3
\deboubce_balls|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[1]~34_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(1));

-- Location: LCCOMB_X29_Y7_N4
\deboubce_balls|count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[2]~36_combout\ = (\deboubce_balls|count\(2) & (\deboubce_balls|count[1]~35\ $ (GND))) # (!\deboubce_balls|count\(2) & (!\deboubce_balls|count[1]~35\ & VCC))
-- \deboubce_balls|count[2]~37\ = CARRY((\deboubce_balls|count\(2) & !\deboubce_balls|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(2),
	datad => VCC,
	cin => \deboubce_balls|count[1]~35\,
	combout => \deboubce_balls|count[2]~36_combout\,
	cout => \deboubce_balls|count[2]~37\);

-- Location: FF_X29_Y7_N5
\deboubce_balls|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[2]~36_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(2));

-- Location: LCCOMB_X29_Y7_N6
\deboubce_balls|count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[3]~38_combout\ = (\deboubce_balls|count\(3) & (!\deboubce_balls|count[2]~37\)) # (!\deboubce_balls|count\(3) & ((\deboubce_balls|count[2]~37\) # (GND)))
-- \deboubce_balls|count[3]~39\ = CARRY((!\deboubce_balls|count[2]~37\) # (!\deboubce_balls|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(3),
	datad => VCC,
	cin => \deboubce_balls|count[2]~37\,
	combout => \deboubce_balls|count[3]~38_combout\,
	cout => \deboubce_balls|count[3]~39\);

-- Location: FF_X29_Y7_N7
\deboubce_balls|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[3]~38_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(3));

-- Location: LCCOMB_X29_Y7_N8
\deboubce_balls|count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[4]~40_combout\ = (\deboubce_balls|count\(4) & (\deboubce_balls|count[3]~39\ $ (GND))) # (!\deboubce_balls|count\(4) & (!\deboubce_balls|count[3]~39\ & VCC))
-- \deboubce_balls|count[4]~41\ = CARRY((\deboubce_balls|count\(4) & !\deboubce_balls|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(4),
	datad => VCC,
	cin => \deboubce_balls|count[3]~39\,
	combout => \deboubce_balls|count[4]~40_combout\,
	cout => \deboubce_balls|count[4]~41\);

-- Location: FF_X29_Y7_N9
\deboubce_balls|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[4]~40_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(4));

-- Location: LCCOMB_X29_Y7_N10
\deboubce_balls|count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[5]~42_combout\ = (\deboubce_balls|count\(5) & (!\deboubce_balls|count[4]~41\)) # (!\deboubce_balls|count\(5) & ((\deboubce_balls|count[4]~41\) # (GND)))
-- \deboubce_balls|count[5]~43\ = CARRY((!\deboubce_balls|count[4]~41\) # (!\deboubce_balls|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(5),
	datad => VCC,
	cin => \deboubce_balls|count[4]~41\,
	combout => \deboubce_balls|count[5]~42_combout\,
	cout => \deboubce_balls|count[5]~43\);

-- Location: FF_X29_Y7_N11
\deboubce_balls|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[5]~42_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(5));

-- Location: LCCOMB_X29_Y7_N12
\deboubce_balls|count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[6]~44_combout\ = (\deboubce_balls|count\(6) & (\deboubce_balls|count[5]~43\ $ (GND))) # (!\deboubce_balls|count\(6) & (!\deboubce_balls|count[5]~43\ & VCC))
-- \deboubce_balls|count[6]~45\ = CARRY((\deboubce_balls|count\(6) & !\deboubce_balls|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(6),
	datad => VCC,
	cin => \deboubce_balls|count[5]~43\,
	combout => \deboubce_balls|count[6]~44_combout\,
	cout => \deboubce_balls|count[6]~45\);

-- Location: FF_X29_Y7_N13
\deboubce_balls|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[6]~44_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(6));

-- Location: LCCOMB_X29_Y7_N14
\deboubce_balls|count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[7]~46_combout\ = (\deboubce_balls|count\(7) & (!\deboubce_balls|count[6]~45\)) # (!\deboubce_balls|count\(7) & ((\deboubce_balls|count[6]~45\) # (GND)))
-- \deboubce_balls|count[7]~47\ = CARRY((!\deboubce_balls|count[6]~45\) # (!\deboubce_balls|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(7),
	datad => VCC,
	cin => \deboubce_balls|count[6]~45\,
	combout => \deboubce_balls|count[7]~46_combout\,
	cout => \deboubce_balls|count[7]~47\);

-- Location: FF_X29_Y7_N15
\deboubce_balls|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[7]~46_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(7));

-- Location: LCCOMB_X29_Y7_N16
\deboubce_balls|count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[8]~48_combout\ = (\deboubce_balls|count\(8) & (\deboubce_balls|count[7]~47\ $ (GND))) # (!\deboubce_balls|count\(8) & (!\deboubce_balls|count[7]~47\ & VCC))
-- \deboubce_balls|count[8]~49\ = CARRY((\deboubce_balls|count\(8) & !\deboubce_balls|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(8),
	datad => VCC,
	cin => \deboubce_balls|count[7]~47\,
	combout => \deboubce_balls|count[8]~48_combout\,
	cout => \deboubce_balls|count[8]~49\);

-- Location: FF_X29_Y7_N17
\deboubce_balls|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[8]~48_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(8));

-- Location: LCCOMB_X29_Y7_N18
\deboubce_balls|count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[9]~50_combout\ = (\deboubce_balls|count\(9) & (!\deboubce_balls|count[8]~49\)) # (!\deboubce_balls|count\(9) & ((\deboubce_balls|count[8]~49\) # (GND)))
-- \deboubce_balls|count[9]~51\ = CARRY((!\deboubce_balls|count[8]~49\) # (!\deboubce_balls|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(9),
	datad => VCC,
	cin => \deboubce_balls|count[8]~49\,
	combout => \deboubce_balls|count[9]~50_combout\,
	cout => \deboubce_balls|count[9]~51\);

-- Location: FF_X29_Y7_N19
\deboubce_balls|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[9]~50_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(9));

-- Location: LCCOMB_X29_Y7_N20
\deboubce_balls|count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[10]~52_combout\ = (\deboubce_balls|count\(10) & (\deboubce_balls|count[9]~51\ $ (GND))) # (!\deboubce_balls|count\(10) & (!\deboubce_balls|count[9]~51\ & VCC))
-- \deboubce_balls|count[10]~53\ = CARRY((\deboubce_balls|count\(10) & !\deboubce_balls|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(10),
	datad => VCC,
	cin => \deboubce_balls|count[9]~51\,
	combout => \deboubce_balls|count[10]~52_combout\,
	cout => \deboubce_balls|count[10]~53\);

-- Location: FF_X29_Y7_N21
\deboubce_balls|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[10]~52_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(10));

-- Location: LCCOMB_X29_Y7_N22
\deboubce_balls|count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[11]~54_combout\ = (\deboubce_balls|count\(11) & (!\deboubce_balls|count[10]~53\)) # (!\deboubce_balls|count\(11) & ((\deboubce_balls|count[10]~53\) # (GND)))
-- \deboubce_balls|count[11]~55\ = CARRY((!\deboubce_balls|count[10]~53\) # (!\deboubce_balls|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(11),
	datad => VCC,
	cin => \deboubce_balls|count[10]~53\,
	combout => \deboubce_balls|count[11]~54_combout\,
	cout => \deboubce_balls|count[11]~55\);

-- Location: FF_X29_Y7_N23
\deboubce_balls|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[11]~54_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(11));

-- Location: LCCOMB_X29_Y7_N24
\deboubce_balls|count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[12]~56_combout\ = (\deboubce_balls|count\(12) & (\deboubce_balls|count[11]~55\ $ (GND))) # (!\deboubce_balls|count\(12) & (!\deboubce_balls|count[11]~55\ & VCC))
-- \deboubce_balls|count[12]~57\ = CARRY((\deboubce_balls|count\(12) & !\deboubce_balls|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(12),
	datad => VCC,
	cin => \deboubce_balls|count[11]~55\,
	combout => \deboubce_balls|count[12]~56_combout\,
	cout => \deboubce_balls|count[12]~57\);

-- Location: FF_X29_Y7_N25
\deboubce_balls|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[12]~56_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(12));

-- Location: LCCOMB_X29_Y7_N26
\deboubce_balls|count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[13]~58_combout\ = (\deboubce_balls|count\(13) & (!\deboubce_balls|count[12]~57\)) # (!\deboubce_balls|count\(13) & ((\deboubce_balls|count[12]~57\) # (GND)))
-- \deboubce_balls|count[13]~59\ = CARRY((!\deboubce_balls|count[12]~57\) # (!\deboubce_balls|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(13),
	datad => VCC,
	cin => \deboubce_balls|count[12]~57\,
	combout => \deboubce_balls|count[13]~58_combout\,
	cout => \deboubce_balls|count[13]~59\);

-- Location: FF_X29_Y7_N27
\deboubce_balls|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[13]~58_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(13));

-- Location: LCCOMB_X29_Y7_N28
\deboubce_balls|count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[14]~60_combout\ = (\deboubce_balls|count\(14) & (\deboubce_balls|count[13]~59\ $ (GND))) # (!\deboubce_balls|count\(14) & (!\deboubce_balls|count[13]~59\ & VCC))
-- \deboubce_balls|count[14]~61\ = CARRY((\deboubce_balls|count\(14) & !\deboubce_balls|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(14),
	datad => VCC,
	cin => \deboubce_balls|count[13]~59\,
	combout => \deboubce_balls|count[14]~60_combout\,
	cout => \deboubce_balls|count[14]~61\);

-- Location: FF_X29_Y7_N29
\deboubce_balls|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[14]~60_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(14));

-- Location: LCCOMB_X29_Y7_N30
\deboubce_balls|count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[15]~62_combout\ = (\deboubce_balls|count\(15) & (!\deboubce_balls|count[14]~61\)) # (!\deboubce_balls|count\(15) & ((\deboubce_balls|count[14]~61\) # (GND)))
-- \deboubce_balls|count[15]~63\ = CARRY((!\deboubce_balls|count[14]~61\) # (!\deboubce_balls|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(15),
	datad => VCC,
	cin => \deboubce_balls|count[14]~61\,
	combout => \deboubce_balls|count[15]~62_combout\,
	cout => \deboubce_balls|count[15]~63\);

-- Location: FF_X29_Y7_N31
\deboubce_balls|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[15]~62_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(15));

-- Location: LCCOMB_X29_Y6_N0
\deboubce_balls|count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[16]~64_combout\ = (\deboubce_balls|count\(16) & (\deboubce_balls|count[15]~63\ $ (GND))) # (!\deboubce_balls|count\(16) & (!\deboubce_balls|count[15]~63\ & VCC))
-- \deboubce_balls|count[16]~65\ = CARRY((\deboubce_balls|count\(16) & !\deboubce_balls|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(16),
	datad => VCC,
	cin => \deboubce_balls|count[15]~63\,
	combout => \deboubce_balls|count[16]~64_combout\,
	cout => \deboubce_balls|count[16]~65\);

-- Location: FF_X29_Y6_N1
\deboubce_balls|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[16]~64_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(16));

-- Location: LCCOMB_X29_Y6_N2
\deboubce_balls|count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[17]~66_combout\ = (\deboubce_balls|count\(17) & (!\deboubce_balls|count[16]~65\)) # (!\deboubce_balls|count\(17) & ((\deboubce_balls|count[16]~65\) # (GND)))
-- \deboubce_balls|count[17]~67\ = CARRY((!\deboubce_balls|count[16]~65\) # (!\deboubce_balls|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(17),
	datad => VCC,
	cin => \deboubce_balls|count[16]~65\,
	combout => \deboubce_balls|count[17]~66_combout\,
	cout => \deboubce_balls|count[17]~67\);

-- Location: FF_X29_Y6_N3
\deboubce_balls|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[17]~66_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(17));

-- Location: LCCOMB_X29_Y6_N4
\deboubce_balls|count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[18]~68_combout\ = (\deboubce_balls|count\(18) & (\deboubce_balls|count[17]~67\ $ (GND))) # (!\deboubce_balls|count\(18) & (!\deboubce_balls|count[17]~67\ & VCC))
-- \deboubce_balls|count[18]~69\ = CARRY((\deboubce_balls|count\(18) & !\deboubce_balls|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(18),
	datad => VCC,
	cin => \deboubce_balls|count[17]~67\,
	combout => \deboubce_balls|count[18]~68_combout\,
	cout => \deboubce_balls|count[18]~69\);

-- Location: FF_X29_Y6_N5
\deboubce_balls|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[18]~68_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(18));

-- Location: LCCOMB_X29_Y6_N6
\deboubce_balls|count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[19]~70_combout\ = (\deboubce_balls|count\(19) & (!\deboubce_balls|count[18]~69\)) # (!\deboubce_balls|count\(19) & ((\deboubce_balls|count[18]~69\) # (GND)))
-- \deboubce_balls|count[19]~71\ = CARRY((!\deboubce_balls|count[18]~69\) # (!\deboubce_balls|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(19),
	datad => VCC,
	cin => \deboubce_balls|count[18]~69\,
	combout => \deboubce_balls|count[19]~70_combout\,
	cout => \deboubce_balls|count[19]~71\);

-- Location: FF_X29_Y6_N7
\deboubce_balls|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[19]~70_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(19));

-- Location: LCCOMB_X29_Y6_N8
\deboubce_balls|count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[20]~72_combout\ = (\deboubce_balls|count\(20) & (\deboubce_balls|count[19]~71\ $ (GND))) # (!\deboubce_balls|count\(20) & (!\deboubce_balls|count[19]~71\ & VCC))
-- \deboubce_balls|count[20]~73\ = CARRY((\deboubce_balls|count\(20) & !\deboubce_balls|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(20),
	datad => VCC,
	cin => \deboubce_balls|count[19]~71\,
	combout => \deboubce_balls|count[20]~72_combout\,
	cout => \deboubce_balls|count[20]~73\);

-- Location: FF_X29_Y6_N9
\deboubce_balls|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[20]~72_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(20));

-- Location: LCCOMB_X29_Y6_N10
\deboubce_balls|count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[21]~74_combout\ = (\deboubce_balls|count\(21) & (!\deboubce_balls|count[20]~73\)) # (!\deboubce_balls|count\(21) & ((\deboubce_balls|count[20]~73\) # (GND)))
-- \deboubce_balls|count[21]~75\ = CARRY((!\deboubce_balls|count[20]~73\) # (!\deboubce_balls|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(21),
	datad => VCC,
	cin => \deboubce_balls|count[20]~73\,
	combout => \deboubce_balls|count[21]~74_combout\,
	cout => \deboubce_balls|count[21]~75\);

-- Location: FF_X29_Y6_N11
\deboubce_balls|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[21]~74_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(21));

-- Location: LCCOMB_X29_Y6_N12
\deboubce_balls|count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[22]~76_combout\ = (\deboubce_balls|count\(22) & (\deboubce_balls|count[21]~75\ $ (GND))) # (!\deboubce_balls|count\(22) & (!\deboubce_balls|count[21]~75\ & VCC))
-- \deboubce_balls|count[22]~77\ = CARRY((\deboubce_balls|count\(22) & !\deboubce_balls|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(22),
	datad => VCC,
	cin => \deboubce_balls|count[21]~75\,
	combout => \deboubce_balls|count[22]~76_combout\,
	cout => \deboubce_balls|count[22]~77\);

-- Location: FF_X29_Y6_N13
\deboubce_balls|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[22]~76_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(22));

-- Location: LCCOMB_X29_Y6_N14
\deboubce_balls|count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[23]~78_combout\ = (\deboubce_balls|count\(23) & (!\deboubce_balls|count[22]~77\)) # (!\deboubce_balls|count\(23) & ((\deboubce_balls|count[22]~77\) # (GND)))
-- \deboubce_balls|count[23]~79\ = CARRY((!\deboubce_balls|count[22]~77\) # (!\deboubce_balls|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(23),
	datad => VCC,
	cin => \deboubce_balls|count[22]~77\,
	combout => \deboubce_balls|count[23]~78_combout\,
	cout => \deboubce_balls|count[23]~79\);

-- Location: FF_X29_Y6_N15
\deboubce_balls|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[23]~78_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(23));

-- Location: LCCOMB_X29_Y6_N16
\deboubce_balls|count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[24]~80_combout\ = (\deboubce_balls|count\(24) & (\deboubce_balls|count[23]~79\ $ (GND))) # (!\deboubce_balls|count\(24) & (!\deboubce_balls|count[23]~79\ & VCC))
-- \deboubce_balls|count[24]~81\ = CARRY((\deboubce_balls|count\(24) & !\deboubce_balls|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(24),
	datad => VCC,
	cin => \deboubce_balls|count[23]~79\,
	combout => \deboubce_balls|count[24]~80_combout\,
	cout => \deboubce_balls|count[24]~81\);

-- Location: FF_X29_Y6_N17
\deboubce_balls|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[24]~80_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(24));

-- Location: LCCOMB_X29_Y6_N18
\deboubce_balls|count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[25]~82_combout\ = (\deboubce_balls|count\(25) & (!\deboubce_balls|count[24]~81\)) # (!\deboubce_balls|count\(25) & ((\deboubce_balls|count[24]~81\) # (GND)))
-- \deboubce_balls|count[25]~83\ = CARRY((!\deboubce_balls|count[24]~81\) # (!\deboubce_balls|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(25),
	datad => VCC,
	cin => \deboubce_balls|count[24]~81\,
	combout => \deboubce_balls|count[25]~82_combout\,
	cout => \deboubce_balls|count[25]~83\);

-- Location: FF_X29_Y6_N19
\deboubce_balls|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[25]~82_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(25));

-- Location: LCCOMB_X29_Y6_N20
\deboubce_balls|count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[26]~84_combout\ = (\deboubce_balls|count\(26) & (\deboubce_balls|count[25]~83\ $ (GND))) # (!\deboubce_balls|count\(26) & (!\deboubce_balls|count[25]~83\ & VCC))
-- \deboubce_balls|count[26]~85\ = CARRY((\deboubce_balls|count\(26) & !\deboubce_balls|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(26),
	datad => VCC,
	cin => \deboubce_balls|count[25]~83\,
	combout => \deboubce_balls|count[26]~84_combout\,
	cout => \deboubce_balls|count[26]~85\);

-- Location: FF_X29_Y6_N21
\deboubce_balls|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[26]~84_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(26));

-- Location: LCCOMB_X29_Y6_N22
\deboubce_balls|count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[27]~86_combout\ = (\deboubce_balls|count\(27) & (!\deboubce_balls|count[26]~85\)) # (!\deboubce_balls|count\(27) & ((\deboubce_balls|count[26]~85\) # (GND)))
-- \deboubce_balls|count[27]~87\ = CARRY((!\deboubce_balls|count[26]~85\) # (!\deboubce_balls|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(27),
	datad => VCC,
	cin => \deboubce_balls|count[26]~85\,
	combout => \deboubce_balls|count[27]~86_combout\,
	cout => \deboubce_balls|count[27]~87\);

-- Location: FF_X29_Y6_N23
\deboubce_balls|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[27]~86_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(27));

-- Location: LCCOMB_X29_Y6_N24
\deboubce_balls|count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[28]~88_combout\ = (\deboubce_balls|count\(28) & (\deboubce_balls|count[27]~87\ $ (GND))) # (!\deboubce_balls|count\(28) & (!\deboubce_balls|count[27]~87\ & VCC))
-- \deboubce_balls|count[28]~89\ = CARRY((\deboubce_balls|count\(28) & !\deboubce_balls|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(28),
	datad => VCC,
	cin => \deboubce_balls|count[27]~87\,
	combout => \deboubce_balls|count[28]~88_combout\,
	cout => \deboubce_balls|count[28]~89\);

-- Location: FF_X29_Y6_N25
\deboubce_balls|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[28]~88_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(28));

-- Location: LCCOMB_X29_Y6_N26
\deboubce_balls|count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[29]~90_combout\ = (\deboubce_balls|count\(29) & (!\deboubce_balls|count[28]~89\)) # (!\deboubce_balls|count\(29) & ((\deboubce_balls|count[28]~89\) # (GND)))
-- \deboubce_balls|count[29]~91\ = CARRY((!\deboubce_balls|count[28]~89\) # (!\deboubce_balls|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(29),
	datad => VCC,
	cin => \deboubce_balls|count[28]~89\,
	combout => \deboubce_balls|count[29]~90_combout\,
	cout => \deboubce_balls|count[29]~91\);

-- Location: FF_X29_Y6_N27
\deboubce_balls|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[29]~90_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(29));

-- Location: LCCOMB_X29_Y6_N28
\deboubce_balls|count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[30]~92_combout\ = (\deboubce_balls|count\(30) & (\deboubce_balls|count[29]~91\ $ (GND))) # (!\deboubce_balls|count\(30) & (!\deboubce_balls|count[29]~91\ & VCC))
-- \deboubce_balls|count[30]~93\ = CARRY((\deboubce_balls|count\(30) & !\deboubce_balls|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_balls|count\(30),
	datad => VCC,
	cin => \deboubce_balls|count[29]~91\,
	combout => \deboubce_balls|count[30]~92_combout\,
	cout => \deboubce_balls|count[30]~93\);

-- Location: FF_X29_Y6_N29
\deboubce_balls|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[30]~92_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(30));

-- Location: LCCOMB_X29_Y6_N30
\deboubce_balls|count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|count[31]~94_combout\ = \deboubce_balls|count\(31) $ (\deboubce_balls|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(31),
	cin => \deboubce_balls|count[30]~93\,
	combout => \deboubce_balls|count[31]~94_combout\);

-- Location: FF_X29_Y6_N31
\deboubce_balls|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|count[31]~94_combout\,
	sclr => \deboubce_balls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|count\(31));

-- Location: LCCOMB_X30_Y7_N22
\deboubce_balls|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~2_combout\ = (!\deboubce_balls|count\(29) & (!\deboubce_balls|count\(30) & (!\deboubce_balls|count\(27) & !\deboubce_balls|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(29),
	datab => \deboubce_balls|count\(30),
	datac => \deboubce_balls|count\(27),
	datad => \deboubce_balls|count\(28),
	combout => \deboubce_balls|state~2_combout\);

-- Location: LCCOMB_X30_Y6_N0
\deboubce_balls|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~1_combout\ = (!\deboubce_balls|count\(23) & (!\deboubce_balls|count\(26) & (!\deboubce_balls|count\(24) & !\deboubce_balls|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(23),
	datab => \deboubce_balls|count\(26),
	datac => \deboubce_balls|count\(24),
	datad => \deboubce_balls|count\(25),
	combout => \deboubce_balls|state~1_combout\);

-- Location: LCCOMB_X30_Y7_N12
\deboubce_balls|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|LessThan0~0_combout\ = (!\deboubce_balls|count\(21) & !\deboubce_balls|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deboubce_balls|count\(21),
	datad => \deboubce_balls|count\(20),
	combout => \deboubce_balls|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y7_N14
\deboubce_balls|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|LessThan0~1_combout\ = (((!\deboubce_balls|count\(7) & !\deboubce_balls|count\(6))) # (!\deboubce_balls|count\(8))) # (!\deboubce_balls|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(7),
	datab => \deboubce_balls|count\(9),
	datac => \deboubce_balls|count\(8),
	datad => \deboubce_balls|count\(6),
	combout => \deboubce_balls|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y7_N30
\deboubce_balls|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|process_0~0_combout\ = (\deboubce_balls|count\(13)) # ((\deboubce_balls|count\(11) & ((\deboubce_balls|count\(10)) # (!\deboubce_balls|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(13),
	datab => \deboubce_balls|count\(11),
	datac => \deboubce_balls|LessThan0~1_combout\,
	datad => \deboubce_balls|count\(10),
	combout => \deboubce_balls|process_0~0_combout\);

-- Location: LCCOMB_X30_Y7_N18
\deboubce_balls|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~0_combout\ = (!\deboubce_balls|count\(15) & (!\deboubce_balls|count\(16) & (!\deboubce_balls|count\(17) & \deboubce_balls|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(15),
	datab => \deboubce_balls|count\(16),
	datac => \deboubce_balls|count\(17),
	datad => \deboubce_balls|LessThan0~0_combout\,
	combout => \deboubce_balls|state~0_combout\);

-- Location: LCCOMB_X30_Y7_N10
\deboubce_balls|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|process_0~1_combout\ = (\deboubce_balls|state~0_combout\ & (((!\deboubce_balls|count\(12) & !\deboubce_balls|process_0~0_combout\)) # (!\deboubce_balls|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(12),
	datab => \deboubce_balls|count\(14),
	datac => \deboubce_balls|process_0~0_combout\,
	datad => \deboubce_balls|state~0_combout\,
	combout => \deboubce_balls|process_0~1_combout\);

-- Location: LCCOMB_X30_Y7_N6
\deboubce_balls|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|process_0~2_combout\ = (\deboubce_balls|process_0~1_combout\) # ((\deboubce_balls|LessThan0~0_combout\ & ((!\deboubce_balls|count\(19)) # (!\deboubce_balls|count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(18),
	datab => \deboubce_balls|count\(19),
	datac => \deboubce_balls|LessThan0~0_combout\,
	datad => \deboubce_balls|process_0~1_combout\,
	combout => \deboubce_balls|process_0~2_combout\);

-- Location: LCCOMB_X30_Y7_N20
\deboubce_balls|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|process_0~3_combout\ = (\deboubce_balls|state~2_combout\ & (\deboubce_balls|state~1_combout\ & ((\deboubce_balls|process_0~2_combout\) # (!\deboubce_balls|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|state~2_combout\,
	datab => \deboubce_balls|state~1_combout\,
	datac => \deboubce_balls|count\(22),
	datad => \deboubce_balls|process_0~2_combout\,
	combout => \deboubce_balls|process_0~3_combout\);

-- Location: LCCOMB_X30_Y7_N8
\deboubce_balls|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|process_0~4_combout\ = (\deboubce_balls|count\(31) & (\IBC~input_o\ $ ((\deboubce_balls|state~q\)))) # (!\deboubce_balls|count\(31) & ((\IBC~input_o\ $ (\deboubce_balls|state~q\)) # (!\deboubce_balls|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IBC~input_o\,
	datab => \deboubce_balls|count\(31),
	datac => \deboubce_balls|state~q\,
	datad => \deboubce_balls|process_0~3_combout\,
	combout => \deboubce_balls|process_0~4_combout\);

-- Location: LCCOMB_X30_Y7_N26
\deboubce_balls|state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~5_combout\ = (\deboubce_balls|count\(18) & (\deboubce_balls|count\(14) & (\deboubce_balls|count\(22) & \deboubce_balls|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(18),
	datab => \deboubce_balls|count\(14),
	datac => \deboubce_balls|count\(22),
	datad => \deboubce_balls|count\(19),
	combout => \deboubce_balls|state~5_combout\);

-- Location: LCCOMB_X30_Y7_N28
\deboubce_balls|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~3_combout\ = (!\deboubce_balls|count\(13) & (!\deboubce_balls|count\(10) & (!\deboubce_balls|count\(12) & \deboubce_balls|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(13),
	datab => \deboubce_balls|count\(10),
	datac => \deboubce_balls|count\(12),
	datad => \deboubce_balls|count\(6),
	combout => \deboubce_balls|state~3_combout\);

-- Location: LCCOMB_X30_Y7_N4
\deboubce_balls|state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~4_combout\ = (!\deboubce_balls|count\(7) & (\deboubce_balls|count\(9) & (\deboubce_balls|count\(8) & \deboubce_balls|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(7),
	datab => \deboubce_balls|count\(9),
	datac => \deboubce_balls|count\(8),
	datad => \deboubce_balls|count\(11),
	combout => \deboubce_balls|state~4_combout\);

-- Location: LCCOMB_X28_Y7_N4
\deboubce_balls|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~6_combout\ = (!\deboubce_balls|count\(1) & (!\deboubce_balls|count\(0) & (!\deboubce_balls|count\(2) & !\deboubce_balls|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(1),
	datab => \deboubce_balls|count\(0),
	datac => \deboubce_balls|count\(2),
	datad => \deboubce_balls|count\(31),
	combout => \deboubce_balls|state~6_combout\);

-- Location: LCCOMB_X30_Y7_N2
\deboubce_balls|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~7_combout\ = (\deboubce_balls|state~5_combout\ & (\deboubce_balls|state~3_combout\ & (\deboubce_balls|state~4_combout\ & \deboubce_balls|state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|state~5_combout\,
	datab => \deboubce_balls|state~3_combout\,
	datac => \deboubce_balls|state~4_combout\,
	datad => \deboubce_balls|state~6_combout\,
	combout => \deboubce_balls|state~7_combout\);

-- Location: LCCOMB_X30_Y7_N16
\deboubce_balls|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~8_combout\ = (!\deboubce_balls|count\(4) & (!\deboubce_balls|count\(5) & (!\deboubce_balls|count\(3) & \deboubce_balls|state~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|count\(4),
	datab => \deboubce_balls|count\(5),
	datac => \deboubce_balls|count\(3),
	datad => \deboubce_balls|state~7_combout\,
	combout => \deboubce_balls|state~8_combout\);

-- Location: LCCOMB_X30_Y7_N24
\deboubce_balls|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~9_combout\ = (\deboubce_balls|state~0_combout\ & (\deboubce_balls|state~1_combout\ & (\deboubce_balls|state~2_combout\ & \deboubce_balls|state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|state~0_combout\,
	datab => \deboubce_balls|state~1_combout\,
	datac => \deboubce_balls|state~2_combout\,
	datad => \deboubce_balls|state~8_combout\,
	combout => \deboubce_balls|state~9_combout\);

-- Location: LCCOMB_X31_Y7_N8
\deboubce_balls|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~10_combout\ = (\deboubce_balls|process_0~4_combout\ & ((\deboubce_balls|state~9_combout\ & ((!\IBC~input_o\))) # (!\deboubce_balls|state~9_combout\ & (\deboubce_balls|state~q\)))) # (!\deboubce_balls|process_0~4_combout\ & 
-- (\deboubce_balls|state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|state~q\,
	datab => \deboubce_balls|process_0~4_combout\,
	datac => \IBC~input_o\,
	datad => \deboubce_balls|state~9_combout\,
	combout => \deboubce_balls|state~10_combout\);

-- Location: LCCOMB_X30_Y7_N0
\deboubce_balls|state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_balls|state~feeder_combout\ = \deboubce_balls|state~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_balls|state~10_combout\,
	combout => \deboubce_balls|state~feeder_combout\);

-- Location: FF_X30_Y7_N1
\deboubce_balls|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_balls|state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_balls|state~q\);

-- Location: CLKCTRL_G6
\deboubce_balls|state~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \deboubce_balls|state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \deboubce_balls|state~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y19_N6
\balls[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[0]~93_combout\ = !balls(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => balls(0),
	combout => \balls[0]~93_combout\);

-- Location: IOIBUF_X34_Y12_N8
\NB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NB,
	o => \NB~input_o\);

-- Location: LCCOMB_X22_Y19_N0
\bdis|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~0_combout\ = (!balls(6) & (!balls(4) & (!balls(3) & !balls(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(6),
	datab => balls(4),
	datac => balls(3),
	datad => balls(5),
	combout => \bdis|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y20_N8
\bdis|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~2_combout\ = (!balls(12) & (!balls(13) & (!balls(11) & !balls(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(12),
	datab => balls(13),
	datac => balls(11),
	datad => balls(14),
	combout => \bdis|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y20_N26
\bdis|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~3_combout\ = (!balls(15) & (!balls(18) & (!balls(17) & !balls(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(15),
	datab => balls(18),
	datac => balls(17),
	datad => balls(16),
	combout => \bdis|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y19_N12
\bdis|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~1_combout\ = (!balls(7) & (!balls(9) & (!balls(8) & !balls(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(7),
	datab => balls(9),
	datac => balls(8),
	datad => balls(10),
	combout => \bdis|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y20_N4
\bdis|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~4_combout\ = (\bdis|Equal0~0_combout\ & (\bdis|Equal0~2_combout\ & (\bdis|Equal0~3_combout\ & \bdis|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bdis|Equal0~0_combout\,
	datab => \bdis|Equal0~2_combout\,
	datac => \bdis|Equal0~3_combout\,
	datad => \bdis|Equal0~1_combout\,
	combout => \bdis|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y18_N18
\bdis|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~6_combout\ = (!balls(26) & (!balls(24) & (!balls(23) & !balls(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(26),
	datab => balls(24),
	datac => balls(23),
	datad => balls(25),
	combout => \bdis|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y18_N28
\bdis|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~5_combout\ = (!balls(19) & (!balls(21) & (!balls(20) & !balls(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(19),
	datab => balls(21),
	datac => balls(20),
	datad => balls(22),
	combout => \bdis|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y18_N28
\bdis|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~7_combout\ = (!balls(27) & (!balls(28) & (!balls(29) & !balls(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(27),
	datab => balls(28),
	datac => balls(29),
	datad => balls(30),
	combout => \bdis|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y20_N18
\bdis|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal0~8_combout\ = (\bdis|Equal0~6_combout\ & (\bdis|Equal0~5_combout\ & \bdis|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bdis|Equal0~6_combout\,
	datac => \bdis|Equal0~5_combout\,
	datad => \bdis|Equal0~7_combout\,
	combout => \bdis|Equal0~8_combout\);

-- Location: LCCOMB_X22_Y20_N30
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!balls(31) & ((balls(2)) # ((!\bdis|Equal0~8_combout\) # (!\bdis|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(31),
	datab => balls(2),
	datac => \bdis|Equal0~4_combout\,
	datad => \bdis|Equal0~8_combout\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\ISC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ISC,
	o => \ISC~input_o\);

-- Location: LCCOMB_X25_Y10_N0
\deboubce_strikes|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[0]~32_combout\ = \deboubce_strikes|count\(0) $ (VCC)
-- \deboubce_strikes|count[0]~33\ = CARRY(\deboubce_strikes|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(0),
	datad => VCC,
	combout => \deboubce_strikes|count[0]~32_combout\,
	cout => \deboubce_strikes|count[0]~33\);

-- Location: FF_X25_Y10_N1
\deboubce_strikes|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[0]~32_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(0));

-- Location: LCCOMB_X25_Y10_N2
\deboubce_strikes|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[1]~34_combout\ = (\deboubce_strikes|count\(1) & (!\deboubce_strikes|count[0]~33\)) # (!\deboubce_strikes|count\(1) & ((\deboubce_strikes|count[0]~33\) # (GND)))
-- \deboubce_strikes|count[1]~35\ = CARRY((!\deboubce_strikes|count[0]~33\) # (!\deboubce_strikes|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(1),
	datad => VCC,
	cin => \deboubce_strikes|count[0]~33\,
	combout => \deboubce_strikes|count[1]~34_combout\,
	cout => \deboubce_strikes|count[1]~35\);

-- Location: FF_X25_Y10_N3
\deboubce_strikes|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[1]~34_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(1));

-- Location: LCCOMB_X25_Y10_N4
\deboubce_strikes|count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[2]~36_combout\ = (\deboubce_strikes|count\(2) & (\deboubce_strikes|count[1]~35\ $ (GND))) # (!\deboubce_strikes|count\(2) & (!\deboubce_strikes|count[1]~35\ & VCC))
-- \deboubce_strikes|count[2]~37\ = CARRY((\deboubce_strikes|count\(2) & !\deboubce_strikes|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(2),
	datad => VCC,
	cin => \deboubce_strikes|count[1]~35\,
	combout => \deboubce_strikes|count[2]~36_combout\,
	cout => \deboubce_strikes|count[2]~37\);

-- Location: FF_X25_Y10_N5
\deboubce_strikes|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[2]~36_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(2));

-- Location: LCCOMB_X25_Y10_N6
\deboubce_strikes|count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[3]~38_combout\ = (\deboubce_strikes|count\(3) & (!\deboubce_strikes|count[2]~37\)) # (!\deboubce_strikes|count\(3) & ((\deboubce_strikes|count[2]~37\) # (GND)))
-- \deboubce_strikes|count[3]~39\ = CARRY((!\deboubce_strikes|count[2]~37\) # (!\deboubce_strikes|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(3),
	datad => VCC,
	cin => \deboubce_strikes|count[2]~37\,
	combout => \deboubce_strikes|count[3]~38_combout\,
	cout => \deboubce_strikes|count[3]~39\);

-- Location: FF_X25_Y10_N7
\deboubce_strikes|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[3]~38_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(3));

-- Location: LCCOMB_X25_Y10_N8
\deboubce_strikes|count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[4]~40_combout\ = (\deboubce_strikes|count\(4) & (\deboubce_strikes|count[3]~39\ $ (GND))) # (!\deboubce_strikes|count\(4) & (!\deboubce_strikes|count[3]~39\ & VCC))
-- \deboubce_strikes|count[4]~41\ = CARRY((\deboubce_strikes|count\(4) & !\deboubce_strikes|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(4),
	datad => VCC,
	cin => \deboubce_strikes|count[3]~39\,
	combout => \deboubce_strikes|count[4]~40_combout\,
	cout => \deboubce_strikes|count[4]~41\);

-- Location: FF_X25_Y10_N9
\deboubce_strikes|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[4]~40_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(4));

-- Location: LCCOMB_X25_Y10_N10
\deboubce_strikes|count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[5]~42_combout\ = (\deboubce_strikes|count\(5) & (!\deboubce_strikes|count[4]~41\)) # (!\deboubce_strikes|count\(5) & ((\deboubce_strikes|count[4]~41\) # (GND)))
-- \deboubce_strikes|count[5]~43\ = CARRY((!\deboubce_strikes|count[4]~41\) # (!\deboubce_strikes|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(5),
	datad => VCC,
	cin => \deboubce_strikes|count[4]~41\,
	combout => \deboubce_strikes|count[5]~42_combout\,
	cout => \deboubce_strikes|count[5]~43\);

-- Location: FF_X25_Y10_N11
\deboubce_strikes|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[5]~42_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(5));

-- Location: LCCOMB_X25_Y10_N12
\deboubce_strikes|count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[6]~44_combout\ = (\deboubce_strikes|count\(6) & (\deboubce_strikes|count[5]~43\ $ (GND))) # (!\deboubce_strikes|count\(6) & (!\deboubce_strikes|count[5]~43\ & VCC))
-- \deboubce_strikes|count[6]~45\ = CARRY((\deboubce_strikes|count\(6) & !\deboubce_strikes|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(6),
	datad => VCC,
	cin => \deboubce_strikes|count[5]~43\,
	combout => \deboubce_strikes|count[6]~44_combout\,
	cout => \deboubce_strikes|count[6]~45\);

-- Location: FF_X25_Y10_N13
\deboubce_strikes|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[6]~44_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(6));

-- Location: LCCOMB_X25_Y10_N14
\deboubce_strikes|count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[7]~46_combout\ = (\deboubce_strikes|count\(7) & (!\deboubce_strikes|count[6]~45\)) # (!\deboubce_strikes|count\(7) & ((\deboubce_strikes|count[6]~45\) # (GND)))
-- \deboubce_strikes|count[7]~47\ = CARRY((!\deboubce_strikes|count[6]~45\) # (!\deboubce_strikes|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(7),
	datad => VCC,
	cin => \deboubce_strikes|count[6]~45\,
	combout => \deboubce_strikes|count[7]~46_combout\,
	cout => \deboubce_strikes|count[7]~47\);

-- Location: FF_X25_Y10_N15
\deboubce_strikes|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[7]~46_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(7));

-- Location: LCCOMB_X25_Y10_N16
\deboubce_strikes|count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[8]~48_combout\ = (\deboubce_strikes|count\(8) & (\deboubce_strikes|count[7]~47\ $ (GND))) # (!\deboubce_strikes|count\(8) & (!\deboubce_strikes|count[7]~47\ & VCC))
-- \deboubce_strikes|count[8]~49\ = CARRY((\deboubce_strikes|count\(8) & !\deboubce_strikes|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(8),
	datad => VCC,
	cin => \deboubce_strikes|count[7]~47\,
	combout => \deboubce_strikes|count[8]~48_combout\,
	cout => \deboubce_strikes|count[8]~49\);

-- Location: FF_X25_Y10_N17
\deboubce_strikes|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[8]~48_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(8));

-- Location: LCCOMB_X25_Y10_N18
\deboubce_strikes|count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[9]~50_combout\ = (\deboubce_strikes|count\(9) & (!\deboubce_strikes|count[8]~49\)) # (!\deboubce_strikes|count\(9) & ((\deboubce_strikes|count[8]~49\) # (GND)))
-- \deboubce_strikes|count[9]~51\ = CARRY((!\deboubce_strikes|count[8]~49\) # (!\deboubce_strikes|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(9),
	datad => VCC,
	cin => \deboubce_strikes|count[8]~49\,
	combout => \deboubce_strikes|count[9]~50_combout\,
	cout => \deboubce_strikes|count[9]~51\);

-- Location: FF_X25_Y10_N19
\deboubce_strikes|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[9]~50_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(9));

-- Location: LCCOMB_X25_Y10_N20
\deboubce_strikes|count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[10]~52_combout\ = (\deboubce_strikes|count\(10) & (\deboubce_strikes|count[9]~51\ $ (GND))) # (!\deboubce_strikes|count\(10) & (!\deboubce_strikes|count[9]~51\ & VCC))
-- \deboubce_strikes|count[10]~53\ = CARRY((\deboubce_strikes|count\(10) & !\deboubce_strikes|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(10),
	datad => VCC,
	cin => \deboubce_strikes|count[9]~51\,
	combout => \deboubce_strikes|count[10]~52_combout\,
	cout => \deboubce_strikes|count[10]~53\);

-- Location: FF_X25_Y10_N21
\deboubce_strikes|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[10]~52_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(10));

-- Location: LCCOMB_X25_Y10_N22
\deboubce_strikes|count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[11]~54_combout\ = (\deboubce_strikes|count\(11) & (!\deboubce_strikes|count[10]~53\)) # (!\deboubce_strikes|count\(11) & ((\deboubce_strikes|count[10]~53\) # (GND)))
-- \deboubce_strikes|count[11]~55\ = CARRY((!\deboubce_strikes|count[10]~53\) # (!\deboubce_strikes|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(11),
	datad => VCC,
	cin => \deboubce_strikes|count[10]~53\,
	combout => \deboubce_strikes|count[11]~54_combout\,
	cout => \deboubce_strikes|count[11]~55\);

-- Location: FF_X25_Y10_N23
\deboubce_strikes|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[11]~54_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(11));

-- Location: LCCOMB_X25_Y10_N24
\deboubce_strikes|count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[12]~56_combout\ = (\deboubce_strikes|count\(12) & (\deboubce_strikes|count[11]~55\ $ (GND))) # (!\deboubce_strikes|count\(12) & (!\deboubce_strikes|count[11]~55\ & VCC))
-- \deboubce_strikes|count[12]~57\ = CARRY((\deboubce_strikes|count\(12) & !\deboubce_strikes|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(12),
	datad => VCC,
	cin => \deboubce_strikes|count[11]~55\,
	combout => \deboubce_strikes|count[12]~56_combout\,
	cout => \deboubce_strikes|count[12]~57\);

-- Location: FF_X25_Y10_N25
\deboubce_strikes|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[12]~56_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(12));

-- Location: LCCOMB_X25_Y10_N26
\deboubce_strikes|count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[13]~58_combout\ = (\deboubce_strikes|count\(13) & (!\deboubce_strikes|count[12]~57\)) # (!\deboubce_strikes|count\(13) & ((\deboubce_strikes|count[12]~57\) # (GND)))
-- \deboubce_strikes|count[13]~59\ = CARRY((!\deboubce_strikes|count[12]~57\) # (!\deboubce_strikes|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(13),
	datad => VCC,
	cin => \deboubce_strikes|count[12]~57\,
	combout => \deboubce_strikes|count[13]~58_combout\,
	cout => \deboubce_strikes|count[13]~59\);

-- Location: FF_X25_Y10_N27
\deboubce_strikes|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[13]~58_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(13));

-- Location: LCCOMB_X25_Y10_N28
\deboubce_strikes|count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[14]~60_combout\ = (\deboubce_strikes|count\(14) & (\deboubce_strikes|count[13]~59\ $ (GND))) # (!\deboubce_strikes|count\(14) & (!\deboubce_strikes|count[13]~59\ & VCC))
-- \deboubce_strikes|count[14]~61\ = CARRY((\deboubce_strikes|count\(14) & !\deboubce_strikes|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(14),
	datad => VCC,
	cin => \deboubce_strikes|count[13]~59\,
	combout => \deboubce_strikes|count[14]~60_combout\,
	cout => \deboubce_strikes|count[14]~61\);

-- Location: FF_X25_Y10_N29
\deboubce_strikes|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[14]~60_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(14));

-- Location: LCCOMB_X25_Y10_N30
\deboubce_strikes|count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[15]~62_combout\ = (\deboubce_strikes|count\(15) & (!\deboubce_strikes|count[14]~61\)) # (!\deboubce_strikes|count\(15) & ((\deboubce_strikes|count[14]~61\) # (GND)))
-- \deboubce_strikes|count[15]~63\ = CARRY((!\deboubce_strikes|count[14]~61\) # (!\deboubce_strikes|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(15),
	datad => VCC,
	cin => \deboubce_strikes|count[14]~61\,
	combout => \deboubce_strikes|count[15]~62_combout\,
	cout => \deboubce_strikes|count[15]~63\);

-- Location: FF_X25_Y10_N31
\deboubce_strikes|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[15]~62_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(15));

-- Location: LCCOMB_X25_Y9_N0
\deboubce_strikes|count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[16]~64_combout\ = (\deboubce_strikes|count\(16) & (\deboubce_strikes|count[15]~63\ $ (GND))) # (!\deboubce_strikes|count\(16) & (!\deboubce_strikes|count[15]~63\ & VCC))
-- \deboubce_strikes|count[16]~65\ = CARRY((\deboubce_strikes|count\(16) & !\deboubce_strikes|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(16),
	datad => VCC,
	cin => \deboubce_strikes|count[15]~63\,
	combout => \deboubce_strikes|count[16]~64_combout\,
	cout => \deboubce_strikes|count[16]~65\);

-- Location: FF_X25_Y9_N1
\deboubce_strikes|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[16]~64_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(16));

-- Location: LCCOMB_X25_Y9_N2
\deboubce_strikes|count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[17]~66_combout\ = (\deboubce_strikes|count\(17) & (!\deboubce_strikes|count[16]~65\)) # (!\deboubce_strikes|count\(17) & ((\deboubce_strikes|count[16]~65\) # (GND)))
-- \deboubce_strikes|count[17]~67\ = CARRY((!\deboubce_strikes|count[16]~65\) # (!\deboubce_strikes|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(17),
	datad => VCC,
	cin => \deboubce_strikes|count[16]~65\,
	combout => \deboubce_strikes|count[17]~66_combout\,
	cout => \deboubce_strikes|count[17]~67\);

-- Location: FF_X24_Y10_N21
\deboubce_strikes|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \deboubce_strikes|count[17]~66_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(17));

-- Location: LCCOMB_X25_Y9_N4
\deboubce_strikes|count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[18]~68_combout\ = (\deboubce_strikes|count\(18) & (\deboubce_strikes|count[17]~67\ $ (GND))) # (!\deboubce_strikes|count\(18) & (!\deboubce_strikes|count[17]~67\ & VCC))
-- \deboubce_strikes|count[18]~69\ = CARRY((\deboubce_strikes|count\(18) & !\deboubce_strikes|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(18),
	datad => VCC,
	cin => \deboubce_strikes|count[17]~67\,
	combout => \deboubce_strikes|count[18]~68_combout\,
	cout => \deboubce_strikes|count[18]~69\);

-- Location: FF_X25_Y9_N5
\deboubce_strikes|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[18]~68_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(18));

-- Location: LCCOMB_X25_Y9_N6
\deboubce_strikes|count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[19]~70_combout\ = (\deboubce_strikes|count\(19) & (!\deboubce_strikes|count[18]~69\)) # (!\deboubce_strikes|count\(19) & ((\deboubce_strikes|count[18]~69\) # (GND)))
-- \deboubce_strikes|count[19]~71\ = CARRY((!\deboubce_strikes|count[18]~69\) # (!\deboubce_strikes|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(19),
	datad => VCC,
	cin => \deboubce_strikes|count[18]~69\,
	combout => \deboubce_strikes|count[19]~70_combout\,
	cout => \deboubce_strikes|count[19]~71\);

-- Location: FF_X25_Y9_N7
\deboubce_strikes|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[19]~70_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(19));

-- Location: LCCOMB_X25_Y9_N8
\deboubce_strikes|count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[20]~72_combout\ = (\deboubce_strikes|count\(20) & (\deboubce_strikes|count[19]~71\ $ (GND))) # (!\deboubce_strikes|count\(20) & (!\deboubce_strikes|count[19]~71\ & VCC))
-- \deboubce_strikes|count[20]~73\ = CARRY((\deboubce_strikes|count\(20) & !\deboubce_strikes|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(20),
	datad => VCC,
	cin => \deboubce_strikes|count[19]~71\,
	combout => \deboubce_strikes|count[20]~72_combout\,
	cout => \deboubce_strikes|count[20]~73\);

-- Location: FF_X24_Y10_N25
\deboubce_strikes|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \deboubce_strikes|count[20]~72_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(20));

-- Location: LCCOMB_X25_Y9_N10
\deboubce_strikes|count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[21]~74_combout\ = (\deboubce_strikes|count\(21) & (!\deboubce_strikes|count[20]~73\)) # (!\deboubce_strikes|count\(21) & ((\deboubce_strikes|count[20]~73\) # (GND)))
-- \deboubce_strikes|count[21]~75\ = CARRY((!\deboubce_strikes|count[20]~73\) # (!\deboubce_strikes|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(21),
	datad => VCC,
	cin => \deboubce_strikes|count[20]~73\,
	combout => \deboubce_strikes|count[21]~74_combout\,
	cout => \deboubce_strikes|count[21]~75\);

-- Location: FF_X25_Y9_N11
\deboubce_strikes|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[21]~74_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(21));

-- Location: LCCOMB_X25_Y9_N12
\deboubce_strikes|count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[22]~76_combout\ = (\deboubce_strikes|count\(22) & (\deboubce_strikes|count[21]~75\ $ (GND))) # (!\deboubce_strikes|count\(22) & (!\deboubce_strikes|count[21]~75\ & VCC))
-- \deboubce_strikes|count[22]~77\ = CARRY((\deboubce_strikes|count\(22) & !\deboubce_strikes|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(22),
	datad => VCC,
	cin => \deboubce_strikes|count[21]~75\,
	combout => \deboubce_strikes|count[22]~76_combout\,
	cout => \deboubce_strikes|count[22]~77\);

-- Location: FF_X25_Y9_N13
\deboubce_strikes|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[22]~76_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(22));

-- Location: LCCOMB_X25_Y9_N14
\deboubce_strikes|count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[23]~78_combout\ = (\deboubce_strikes|count\(23) & (!\deboubce_strikes|count[22]~77\)) # (!\deboubce_strikes|count\(23) & ((\deboubce_strikes|count[22]~77\) # (GND)))
-- \deboubce_strikes|count[23]~79\ = CARRY((!\deboubce_strikes|count[22]~77\) # (!\deboubce_strikes|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(23),
	datad => VCC,
	cin => \deboubce_strikes|count[22]~77\,
	combout => \deboubce_strikes|count[23]~78_combout\,
	cout => \deboubce_strikes|count[23]~79\);

-- Location: FF_X25_Y9_N15
\deboubce_strikes|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[23]~78_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(23));

-- Location: LCCOMB_X25_Y9_N16
\deboubce_strikes|count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[24]~80_combout\ = (\deboubce_strikes|count\(24) & (\deboubce_strikes|count[23]~79\ $ (GND))) # (!\deboubce_strikes|count\(24) & (!\deboubce_strikes|count[23]~79\ & VCC))
-- \deboubce_strikes|count[24]~81\ = CARRY((\deboubce_strikes|count\(24) & !\deboubce_strikes|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(24),
	datad => VCC,
	cin => \deboubce_strikes|count[23]~79\,
	combout => \deboubce_strikes|count[24]~80_combout\,
	cout => \deboubce_strikes|count[24]~81\);

-- Location: FF_X25_Y9_N17
\deboubce_strikes|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[24]~80_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(24));

-- Location: LCCOMB_X25_Y9_N18
\deboubce_strikes|count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[25]~82_combout\ = (\deboubce_strikes|count\(25) & (!\deboubce_strikes|count[24]~81\)) # (!\deboubce_strikes|count\(25) & ((\deboubce_strikes|count[24]~81\) # (GND)))
-- \deboubce_strikes|count[25]~83\ = CARRY((!\deboubce_strikes|count[24]~81\) # (!\deboubce_strikes|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(25),
	datad => VCC,
	cin => \deboubce_strikes|count[24]~81\,
	combout => \deboubce_strikes|count[25]~82_combout\,
	cout => \deboubce_strikes|count[25]~83\);

-- Location: FF_X25_Y9_N19
\deboubce_strikes|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[25]~82_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(25));

-- Location: LCCOMB_X25_Y9_N20
\deboubce_strikes|count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[26]~84_combout\ = (\deboubce_strikes|count\(26) & (\deboubce_strikes|count[25]~83\ $ (GND))) # (!\deboubce_strikes|count\(26) & (!\deboubce_strikes|count[25]~83\ & VCC))
-- \deboubce_strikes|count[26]~85\ = CARRY((\deboubce_strikes|count\(26) & !\deboubce_strikes|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(26),
	datad => VCC,
	cin => \deboubce_strikes|count[25]~83\,
	combout => \deboubce_strikes|count[26]~84_combout\,
	cout => \deboubce_strikes|count[26]~85\);

-- Location: FF_X25_Y9_N21
\deboubce_strikes|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[26]~84_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(26));

-- Location: LCCOMB_X25_Y9_N22
\deboubce_strikes|count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[27]~86_combout\ = (\deboubce_strikes|count\(27) & (!\deboubce_strikes|count[26]~85\)) # (!\deboubce_strikes|count\(27) & ((\deboubce_strikes|count[26]~85\) # (GND)))
-- \deboubce_strikes|count[27]~87\ = CARRY((!\deboubce_strikes|count[26]~85\) # (!\deboubce_strikes|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(27),
	datad => VCC,
	cin => \deboubce_strikes|count[26]~85\,
	combout => \deboubce_strikes|count[27]~86_combout\,
	cout => \deboubce_strikes|count[27]~87\);

-- Location: FF_X25_Y9_N23
\deboubce_strikes|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[27]~86_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(27));

-- Location: LCCOMB_X25_Y9_N24
\deboubce_strikes|count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[28]~88_combout\ = (\deboubce_strikes|count\(28) & (\deboubce_strikes|count[27]~87\ $ (GND))) # (!\deboubce_strikes|count\(28) & (!\deboubce_strikes|count[27]~87\ & VCC))
-- \deboubce_strikes|count[28]~89\ = CARRY((\deboubce_strikes|count\(28) & !\deboubce_strikes|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(28),
	datad => VCC,
	cin => \deboubce_strikes|count[27]~87\,
	combout => \deboubce_strikes|count[28]~88_combout\,
	cout => \deboubce_strikes|count[28]~89\);

-- Location: FF_X25_Y9_N25
\deboubce_strikes|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[28]~88_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(28));

-- Location: LCCOMB_X25_Y9_N26
\deboubce_strikes|count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[29]~90_combout\ = (\deboubce_strikes|count\(29) & (!\deboubce_strikes|count[28]~89\)) # (!\deboubce_strikes|count\(29) & ((\deboubce_strikes|count[28]~89\) # (GND)))
-- \deboubce_strikes|count[29]~91\ = CARRY((!\deboubce_strikes|count[28]~89\) # (!\deboubce_strikes|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(29),
	datad => VCC,
	cin => \deboubce_strikes|count[28]~89\,
	combout => \deboubce_strikes|count[29]~90_combout\,
	cout => \deboubce_strikes|count[29]~91\);

-- Location: FF_X25_Y9_N27
\deboubce_strikes|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[29]~90_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(29));

-- Location: LCCOMB_X25_Y9_N28
\deboubce_strikes|count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[30]~92_combout\ = (\deboubce_strikes|count\(30) & (\deboubce_strikes|count[29]~91\ $ (GND))) # (!\deboubce_strikes|count\(30) & (!\deboubce_strikes|count[29]~91\ & VCC))
-- \deboubce_strikes|count[30]~93\ = CARRY((\deboubce_strikes|count\(30) & !\deboubce_strikes|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deboubce_strikes|count\(30),
	datad => VCC,
	cin => \deboubce_strikes|count[29]~91\,
	combout => \deboubce_strikes|count[30]~92_combout\,
	cout => \deboubce_strikes|count[30]~93\);

-- Location: FF_X25_Y9_N29
\deboubce_strikes|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[30]~92_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(30));

-- Location: LCCOMB_X25_Y9_N30
\deboubce_strikes|count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|count[31]~94_combout\ = \deboubce_strikes|count\(31) $ (\deboubce_strikes|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(31),
	cin => \deboubce_strikes|count[30]~93\,
	combout => \deboubce_strikes|count[31]~94_combout\);

-- Location: FF_X25_Y9_N31
\deboubce_strikes|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|count[31]~94_combout\,
	sclr => \deboubce_strikes|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|count\(31));

-- Location: LCCOMB_X24_Y9_N4
\deboubce_strikes|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~1_combout\ = (!\deboubce_strikes|count\(23) & (!\deboubce_strikes|count\(25) & (!\deboubce_strikes|count\(26) & !\deboubce_strikes|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(23),
	datab => \deboubce_strikes|count\(25),
	datac => \deboubce_strikes|count\(26),
	datad => \deboubce_strikes|count\(24),
	combout => \deboubce_strikes|state~1_combout\);

-- Location: LCCOMB_X24_Y9_N10
\deboubce_strikes|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~2_combout\ = (!\deboubce_strikes|count\(27) & (!\deboubce_strikes|count\(29) & (!\deboubce_strikes|count\(28) & !\deboubce_strikes|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(27),
	datab => \deboubce_strikes|count\(29),
	datac => \deboubce_strikes|count\(28),
	datad => \deboubce_strikes|count\(30),
	combout => \deboubce_strikes|state~2_combout\);

-- Location: LCCOMB_X24_Y10_N24
\deboubce_strikes|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|LessThan0~0_combout\ = (!\deboubce_strikes|count\(20) & !\deboubce_strikes|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deboubce_strikes|count\(20),
	datad => \deboubce_strikes|count\(21),
	combout => \deboubce_strikes|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y10_N8
\deboubce_strikes|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|LessThan0~1_combout\ = (((!\deboubce_strikes|count\(6) & !\deboubce_strikes|count\(7))) # (!\deboubce_strikes|count\(9))) # (!\deboubce_strikes|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(6),
	datab => \deboubce_strikes|count\(8),
	datac => \deboubce_strikes|count\(7),
	datad => \deboubce_strikes|count\(9),
	combout => \deboubce_strikes|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y10_N22
\deboubce_strikes|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|process_0~0_combout\ = (\deboubce_strikes|count\(13)) # ((\deboubce_strikes|count\(11) & ((\deboubce_strikes|count\(10)) # (!\deboubce_strikes|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(10),
	datab => \deboubce_strikes|count\(11),
	datac => \deboubce_strikes|LessThan0~1_combout\,
	datad => \deboubce_strikes|count\(13),
	combout => \deboubce_strikes|process_0~0_combout\);

-- Location: LCCOMB_X24_Y10_N20
\deboubce_strikes|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~0_combout\ = (!\deboubce_strikes|count\(15) & (!\deboubce_strikes|count\(16) & (!\deboubce_strikes|count\(17) & \deboubce_strikes|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(15),
	datab => \deboubce_strikes|count\(16),
	datac => \deboubce_strikes|count\(17),
	datad => \deboubce_strikes|LessThan0~0_combout\,
	combout => \deboubce_strikes|state~0_combout\);

-- Location: LCCOMB_X24_Y10_N10
\deboubce_strikes|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|process_0~1_combout\ = (\deboubce_strikes|state~0_combout\ & (((!\deboubce_strikes|count\(12) & !\deboubce_strikes|process_0~0_combout\)) # (!\deboubce_strikes|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(12),
	datab => \deboubce_strikes|count\(14),
	datac => \deboubce_strikes|process_0~0_combout\,
	datad => \deboubce_strikes|state~0_combout\,
	combout => \deboubce_strikes|process_0~1_combout\);

-- Location: LCCOMB_X24_Y10_N12
\deboubce_strikes|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|process_0~2_combout\ = (\deboubce_strikes|process_0~1_combout\) # ((\deboubce_strikes|LessThan0~0_combout\ & ((!\deboubce_strikes|count\(18)) # (!\deboubce_strikes|count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(19),
	datab => \deboubce_strikes|count\(18),
	datac => \deboubce_strikes|LessThan0~0_combout\,
	datad => \deboubce_strikes|process_0~1_combout\,
	combout => \deboubce_strikes|process_0~2_combout\);

-- Location: LCCOMB_X24_Y10_N6
\deboubce_strikes|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|process_0~3_combout\ = (\deboubce_strikes|state~1_combout\ & (\deboubce_strikes|state~2_combout\ & ((\deboubce_strikes|process_0~2_combout\) # (!\deboubce_strikes|count\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|state~1_combout\,
	datab => \deboubce_strikes|state~2_combout\,
	datac => \deboubce_strikes|count\(22),
	datad => \deboubce_strikes|process_0~2_combout\,
	combout => \deboubce_strikes|process_0~3_combout\);

-- Location: LCCOMB_X24_Y10_N26
\deboubce_strikes|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|process_0~4_combout\ = (\deboubce_strikes|count\(31) & (\ISC~input_o\ $ ((\deboubce_strikes|state~q\)))) # (!\deboubce_strikes|count\(31) & ((\ISC~input_o\ $ (\deboubce_strikes|state~q\)) # (!\deboubce_strikes|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ISC~input_o\,
	datab => \deboubce_strikes|count\(31),
	datac => \deboubce_strikes|state~q\,
	datad => \deboubce_strikes|process_0~3_combout\,
	combout => \deboubce_strikes|process_0~4_combout\);

-- Location: LCCOMB_X24_Y10_N30
\deboubce_strikes|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~3_combout\ = (!\deboubce_strikes|count\(12) & (\deboubce_strikes|count\(6) & (!\deboubce_strikes|count\(10) & !\deboubce_strikes|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(12),
	datab => \deboubce_strikes|count\(6),
	datac => \deboubce_strikes|count\(10),
	datad => \deboubce_strikes|count\(13),
	combout => \deboubce_strikes|state~3_combout\);

-- Location: LCCOMB_X24_Y9_N0
\deboubce_strikes|state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~5_combout\ = (\deboubce_strikes|count\(19) & (\deboubce_strikes|count\(22) & (\deboubce_strikes|count\(14) & \deboubce_strikes|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(19),
	datab => \deboubce_strikes|count\(22),
	datac => \deboubce_strikes|count\(14),
	datad => \deboubce_strikes|count\(18),
	combout => \deboubce_strikes|state~5_combout\);

-- Location: LCCOMB_X24_Y10_N4
\deboubce_strikes|state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~4_combout\ = (\deboubce_strikes|count\(9) & (\deboubce_strikes|count\(8) & (!\deboubce_strikes|count\(7) & \deboubce_strikes|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(9),
	datab => \deboubce_strikes|count\(8),
	datac => \deboubce_strikes|count\(7),
	datad => \deboubce_strikes|count\(11),
	combout => \deboubce_strikes|state~4_combout\);

-- Location: LCCOMB_X24_Y10_N2
\deboubce_strikes|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~6_combout\ = (!\deboubce_strikes|count\(1) & (!\deboubce_strikes|count\(0) & (!\deboubce_strikes|count\(2) & !\deboubce_strikes|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(1),
	datab => \deboubce_strikes|count\(0),
	datac => \deboubce_strikes|count\(2),
	datad => \deboubce_strikes|count\(31),
	combout => \deboubce_strikes|state~6_combout\);

-- Location: LCCOMB_X24_Y10_N28
\deboubce_strikes|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~7_combout\ = (\deboubce_strikes|state~3_combout\ & (\deboubce_strikes|state~5_combout\ & (\deboubce_strikes|state~4_combout\ & \deboubce_strikes|state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|state~3_combout\,
	datab => \deboubce_strikes|state~5_combout\,
	datac => \deboubce_strikes|state~4_combout\,
	datad => \deboubce_strikes|state~6_combout\,
	combout => \deboubce_strikes|state~7_combout\);

-- Location: LCCOMB_X24_Y10_N0
\deboubce_strikes|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~8_combout\ = (!\deboubce_strikes|count\(4) & (\deboubce_strikes|state~7_combout\ & (!\deboubce_strikes|count\(5) & !\deboubce_strikes|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|count\(4),
	datab => \deboubce_strikes|state~7_combout\,
	datac => \deboubce_strikes|count\(5),
	datad => \deboubce_strikes|count\(3),
	combout => \deboubce_strikes|state~8_combout\);

-- Location: LCCOMB_X24_Y10_N16
\deboubce_strikes|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~9_combout\ = (\deboubce_strikes|state~1_combout\ & (\deboubce_strikes|state~0_combout\ & (\deboubce_strikes|state~2_combout\ & \deboubce_strikes|state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|state~1_combout\,
	datab => \deboubce_strikes|state~0_combout\,
	datac => \deboubce_strikes|state~2_combout\,
	datad => \deboubce_strikes|state~8_combout\,
	combout => \deboubce_strikes|state~9_combout\);

-- Location: LCCOMB_X24_Y10_N14
\deboubce_strikes|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~10_combout\ = (\deboubce_strikes|process_0~4_combout\ & ((\deboubce_strikes|state~9_combout\ & (!\ISC~input_o\)) # (!\deboubce_strikes|state~9_combout\ & ((\deboubce_strikes|state~q\))))) # (!\deboubce_strikes|process_0~4_combout\ 
-- & (((\deboubce_strikes|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ISC~input_o\,
	datab => \deboubce_strikes|process_0~4_combout\,
	datac => \deboubce_strikes|state~q\,
	datad => \deboubce_strikes|state~9_combout\,
	combout => \deboubce_strikes|state~10_combout\);

-- Location: LCCOMB_X24_Y10_N18
\deboubce_strikes|state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \deboubce_strikes|state~feeder_combout\ = \deboubce_strikes|state~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deboubce_strikes|state~10_combout\,
	combout => \deboubce_strikes|state~feeder_combout\);

-- Location: FF_X24_Y10_N19
\deboubce_strikes|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \deboubce_strikes|state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deboubce_strikes|state~q\);

-- Location: CLKCTRL_G7
\deboubce_strikes|state~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \deboubce_strikes|state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \deboubce_strikes|state~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y20_N4
\strikes[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[0]~93_combout\ = !strikes(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => strikes(0),
	combout => \strikes[0]~93_combout\);

-- Location: FF_X25_Y20_N5
\strikes[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[0]~93_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(0));

-- Location: LCCOMB_X24_Y20_N2
\strikes[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[1]~31_combout\ = (strikes(0) & (strikes(1) $ (VCC))) # (!strikes(0) & (strikes(1) & VCC))
-- \strikes[1]~32\ = CARRY((strikes(0) & strikes(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(0),
	datab => strikes(1),
	datad => VCC,
	combout => \strikes[1]~31_combout\,
	cout => \strikes[1]~32\);

-- Location: FF_X24_Y20_N3
\strikes[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[1]~31_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(1));

-- Location: LCCOMB_X24_Y20_N4
\strikes[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[2]~33_combout\ = (strikes(2) & (!\strikes[1]~32\)) # (!strikes(2) & ((\strikes[1]~32\) # (GND)))
-- \strikes[2]~34\ = CARRY((!\strikes[1]~32\) # (!strikes(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(2),
	datad => VCC,
	cin => \strikes[1]~32\,
	combout => \strikes[2]~33_combout\,
	cout => \strikes[2]~34\);

-- Location: FF_X24_Y20_N5
\strikes[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[2]~33_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(2));

-- Location: LCCOMB_X25_Y20_N30
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (strikes(2)) # ((strikes(0) & strikes(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => strikes(0),
	datac => strikes(2),
	datad => strikes(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\strikes[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[3]~35_combout\ = (strikes(3) & (\strikes[2]~34\ $ (GND))) # (!strikes(3) & (!\strikes[2]~34\ & VCC))
-- \strikes[3]~36\ = CARRY((strikes(3) & !\strikes[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(3),
	datad => VCC,
	cin => \strikes[2]~34\,
	combout => \strikes[3]~35_combout\,
	cout => \strikes[3]~36\);

-- Location: FF_X24_Y20_N7
\strikes[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[3]~35_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(3));

-- Location: LCCOMB_X24_Y20_N8
\strikes[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[4]~37_combout\ = (strikes(4) & (!\strikes[3]~36\)) # (!strikes(4) & ((\strikes[3]~36\) # (GND)))
-- \strikes[4]~38\ = CARRY((!\strikes[3]~36\) # (!strikes(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(4),
	datad => VCC,
	cin => \strikes[3]~36\,
	combout => \strikes[4]~37_combout\,
	cout => \strikes[4]~38\);

-- Location: FF_X24_Y20_N9
\strikes[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[4]~37_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(4));

-- Location: LCCOMB_X24_Y20_N10
\strikes[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[5]~39_combout\ = (strikes(5) & (\strikes[4]~38\ $ (GND))) # (!strikes(5) & (!\strikes[4]~38\ & VCC))
-- \strikes[5]~40\ = CARRY((strikes(5) & !\strikes[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(5),
	datad => VCC,
	cin => \strikes[4]~38\,
	combout => \strikes[5]~39_combout\,
	cout => \strikes[5]~40\);

-- Location: FF_X24_Y20_N11
\strikes[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[5]~39_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(5));

-- Location: LCCOMB_X24_Y20_N12
\strikes[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[6]~41_combout\ = (strikes(6) & (!\strikes[5]~40\)) # (!strikes(6) & ((\strikes[5]~40\) # (GND)))
-- \strikes[6]~42\ = CARRY((!\strikes[5]~40\) # (!strikes(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(6),
	datad => VCC,
	cin => \strikes[5]~40\,
	combout => \strikes[6]~41_combout\,
	cout => \strikes[6]~42\);

-- Location: FF_X24_Y20_N13
\strikes[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[6]~41_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(6));

-- Location: LCCOMB_X24_Y20_N14
\strikes[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[7]~43_combout\ = (strikes(7) & (\strikes[6]~42\ $ (GND))) # (!strikes(7) & (!\strikes[6]~42\ & VCC))
-- \strikes[7]~44\ = CARRY((strikes(7) & !\strikes[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(7),
	datad => VCC,
	cin => \strikes[6]~42\,
	combout => \strikes[7]~43_combout\,
	cout => \strikes[7]~44\);

-- Location: FF_X24_Y20_N15
\strikes[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[7]~43_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(7));

-- Location: LCCOMB_X24_Y20_N16
\strikes[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[8]~45_combout\ = (strikes(8) & (!\strikes[7]~44\)) # (!strikes(8) & ((\strikes[7]~44\) # (GND)))
-- \strikes[8]~46\ = CARRY((!\strikes[7]~44\) # (!strikes(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(8),
	datad => VCC,
	cin => \strikes[7]~44\,
	combout => \strikes[8]~45_combout\,
	cout => \strikes[8]~46\);

-- Location: FF_X24_Y20_N17
\strikes[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[8]~45_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(8));

-- Location: LCCOMB_X24_Y20_N18
\strikes[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[9]~47_combout\ = (strikes(9) & (\strikes[8]~46\ $ (GND))) # (!strikes(9) & (!\strikes[8]~46\ & VCC))
-- \strikes[9]~48\ = CARRY((strikes(9) & !\strikes[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(9),
	datad => VCC,
	cin => \strikes[8]~46\,
	combout => \strikes[9]~47_combout\,
	cout => \strikes[9]~48\);

-- Location: FF_X24_Y20_N19
\strikes[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[9]~47_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(9));

-- Location: LCCOMB_X24_Y20_N20
\strikes[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[10]~49_combout\ = (strikes(10) & (!\strikes[9]~48\)) # (!strikes(10) & ((\strikes[9]~48\) # (GND)))
-- \strikes[10]~50\ = CARRY((!\strikes[9]~48\) # (!strikes(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(10),
	datad => VCC,
	cin => \strikes[9]~48\,
	combout => \strikes[10]~49_combout\,
	cout => \strikes[10]~50\);

-- Location: FF_X24_Y20_N21
\strikes[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[10]~49_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(10));

-- Location: LCCOMB_X24_Y20_N22
\strikes[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[11]~51_combout\ = (strikes(11) & (\strikes[10]~50\ $ (GND))) # (!strikes(11) & (!\strikes[10]~50\ & VCC))
-- \strikes[11]~52\ = CARRY((strikes(11) & !\strikes[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(11),
	datad => VCC,
	cin => \strikes[10]~50\,
	combout => \strikes[11]~51_combout\,
	cout => \strikes[11]~52\);

-- Location: FF_X24_Y20_N23
\strikes[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[11]~51_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(11));

-- Location: LCCOMB_X24_Y20_N24
\strikes[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[12]~53_combout\ = (strikes(12) & (!\strikes[11]~52\)) # (!strikes(12) & ((\strikes[11]~52\) # (GND)))
-- \strikes[12]~54\ = CARRY((!\strikes[11]~52\) # (!strikes(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(12),
	datad => VCC,
	cin => \strikes[11]~52\,
	combout => \strikes[12]~53_combout\,
	cout => \strikes[12]~54\);

-- Location: FF_X24_Y20_N25
\strikes[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[12]~53_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(12));

-- Location: LCCOMB_X24_Y20_N26
\strikes[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[13]~55_combout\ = (strikes(13) & (\strikes[12]~54\ $ (GND))) # (!strikes(13) & (!\strikes[12]~54\ & VCC))
-- \strikes[13]~56\ = CARRY((strikes(13) & !\strikes[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(13),
	datad => VCC,
	cin => \strikes[12]~54\,
	combout => \strikes[13]~55_combout\,
	cout => \strikes[13]~56\);

-- Location: FF_X24_Y20_N27
\strikes[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[13]~55_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(13));

-- Location: LCCOMB_X24_Y20_N28
\strikes[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[14]~57_combout\ = (strikes(14) & (!\strikes[13]~56\)) # (!strikes(14) & ((\strikes[13]~56\) # (GND)))
-- \strikes[14]~58\ = CARRY((!\strikes[13]~56\) # (!strikes(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(14),
	datad => VCC,
	cin => \strikes[13]~56\,
	combout => \strikes[14]~57_combout\,
	cout => \strikes[14]~58\);

-- Location: FF_X24_Y20_N29
\strikes[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[14]~57_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(14));

-- Location: LCCOMB_X24_Y20_N30
\strikes[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[15]~59_combout\ = (strikes(15) & (\strikes[14]~58\ $ (GND))) # (!strikes(15) & (!\strikes[14]~58\ & VCC))
-- \strikes[15]~60\ = CARRY((strikes(15) & !\strikes[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(15),
	datad => VCC,
	cin => \strikes[14]~58\,
	combout => \strikes[15]~59_combout\,
	cout => \strikes[15]~60\);

-- Location: FF_X24_Y20_N31
\strikes[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[15]~59_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(15));

-- Location: LCCOMB_X24_Y19_N0
\strikes[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[16]~61_combout\ = (strikes(16) & (!\strikes[15]~60\)) # (!strikes(16) & ((\strikes[15]~60\) # (GND)))
-- \strikes[16]~62\ = CARRY((!\strikes[15]~60\) # (!strikes(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(16),
	datad => VCC,
	cin => \strikes[15]~60\,
	combout => \strikes[16]~61_combout\,
	cout => \strikes[16]~62\);

-- Location: FF_X24_Y19_N1
\strikes[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[16]~61_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(16));

-- Location: LCCOMB_X24_Y19_N2
\strikes[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[17]~63_combout\ = (strikes(17) & (\strikes[16]~62\ $ (GND))) # (!strikes(17) & (!\strikes[16]~62\ & VCC))
-- \strikes[17]~64\ = CARRY((strikes(17) & !\strikes[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(17),
	datad => VCC,
	cin => \strikes[16]~62\,
	combout => \strikes[17]~63_combout\,
	cout => \strikes[17]~64\);

-- Location: FF_X24_Y19_N3
\strikes[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[17]~63_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(17));

-- Location: LCCOMB_X24_Y19_N4
\strikes[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[18]~65_combout\ = (strikes(18) & (!\strikes[17]~64\)) # (!strikes(18) & ((\strikes[17]~64\) # (GND)))
-- \strikes[18]~66\ = CARRY((!\strikes[17]~64\) # (!strikes(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(18),
	datad => VCC,
	cin => \strikes[17]~64\,
	combout => \strikes[18]~65_combout\,
	cout => \strikes[18]~66\);

-- Location: FF_X24_Y19_N5
\strikes[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[18]~65_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(18));

-- Location: LCCOMB_X24_Y19_N6
\strikes[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[19]~67_combout\ = (strikes(19) & (\strikes[18]~66\ $ (GND))) # (!strikes(19) & (!\strikes[18]~66\ & VCC))
-- \strikes[19]~68\ = CARRY((strikes(19) & !\strikes[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(19),
	datad => VCC,
	cin => \strikes[18]~66\,
	combout => \strikes[19]~67_combout\,
	cout => \strikes[19]~68\);

-- Location: FF_X24_Y19_N7
\strikes[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[19]~67_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(19));

-- Location: LCCOMB_X24_Y19_N8
\strikes[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[20]~69_combout\ = (strikes(20) & (!\strikes[19]~68\)) # (!strikes(20) & ((\strikes[19]~68\) # (GND)))
-- \strikes[20]~70\ = CARRY((!\strikes[19]~68\) # (!strikes(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(20),
	datad => VCC,
	cin => \strikes[19]~68\,
	combout => \strikes[20]~69_combout\,
	cout => \strikes[20]~70\);

-- Location: FF_X24_Y19_N9
\strikes[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[20]~69_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(20));

-- Location: LCCOMB_X24_Y19_N10
\strikes[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[21]~71_combout\ = (strikes(21) & (\strikes[20]~70\ $ (GND))) # (!strikes(21) & (!\strikes[20]~70\ & VCC))
-- \strikes[21]~72\ = CARRY((strikes(21) & !\strikes[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(21),
	datad => VCC,
	cin => \strikes[20]~70\,
	combout => \strikes[21]~71_combout\,
	cout => \strikes[21]~72\);

-- Location: FF_X24_Y19_N11
\strikes[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[21]~71_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(21));

-- Location: LCCOMB_X24_Y19_N12
\strikes[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[22]~73_combout\ = (strikes(22) & (!\strikes[21]~72\)) # (!strikes(22) & ((\strikes[21]~72\) # (GND)))
-- \strikes[22]~74\ = CARRY((!\strikes[21]~72\) # (!strikes(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(22),
	datad => VCC,
	cin => \strikes[21]~72\,
	combout => \strikes[22]~73_combout\,
	cout => \strikes[22]~74\);

-- Location: FF_X24_Y19_N13
\strikes[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[22]~73_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(22));

-- Location: LCCOMB_X24_Y19_N14
\strikes[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[23]~75_combout\ = (strikes(23) & (\strikes[22]~74\ $ (GND))) # (!strikes(23) & (!\strikes[22]~74\ & VCC))
-- \strikes[23]~76\ = CARRY((strikes(23) & !\strikes[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(23),
	datad => VCC,
	cin => \strikes[22]~74\,
	combout => \strikes[23]~75_combout\,
	cout => \strikes[23]~76\);

-- Location: FF_X24_Y19_N15
\strikes[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[23]~75_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(23));

-- Location: LCCOMB_X24_Y19_N16
\strikes[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[24]~77_combout\ = (strikes(24) & (!\strikes[23]~76\)) # (!strikes(24) & ((\strikes[23]~76\) # (GND)))
-- \strikes[24]~78\ = CARRY((!\strikes[23]~76\) # (!strikes(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(24),
	datad => VCC,
	cin => \strikes[23]~76\,
	combout => \strikes[24]~77_combout\,
	cout => \strikes[24]~78\);

-- Location: FF_X24_Y19_N17
\strikes[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[24]~77_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(24));

-- Location: LCCOMB_X24_Y19_N18
\strikes[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[25]~79_combout\ = (strikes(25) & (\strikes[24]~78\ $ (GND))) # (!strikes(25) & (!\strikes[24]~78\ & VCC))
-- \strikes[25]~80\ = CARRY((strikes(25) & !\strikes[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(25),
	datad => VCC,
	cin => \strikes[24]~78\,
	combout => \strikes[25]~79_combout\,
	cout => \strikes[25]~80\);

-- Location: FF_X24_Y19_N19
\strikes[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[25]~79_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(25));

-- Location: LCCOMB_X24_Y19_N20
\strikes[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[26]~81_combout\ = (strikes(26) & (!\strikes[25]~80\)) # (!strikes(26) & ((\strikes[25]~80\) # (GND)))
-- \strikes[26]~82\ = CARRY((!\strikes[25]~80\) # (!strikes(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(26),
	datad => VCC,
	cin => \strikes[25]~80\,
	combout => \strikes[26]~81_combout\,
	cout => \strikes[26]~82\);

-- Location: FF_X24_Y19_N21
\strikes[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[26]~81_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(26));

-- Location: LCCOMB_X24_Y19_N22
\strikes[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[27]~83_combout\ = (strikes(27) & (\strikes[26]~82\ $ (GND))) # (!strikes(27) & (!\strikes[26]~82\ & VCC))
-- \strikes[27]~84\ = CARRY((strikes(27) & !\strikes[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(27),
	datad => VCC,
	cin => \strikes[26]~82\,
	combout => \strikes[27]~83_combout\,
	cout => \strikes[27]~84\);

-- Location: FF_X24_Y19_N23
\strikes[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[27]~83_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(27));

-- Location: LCCOMB_X24_Y19_N24
\strikes[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[28]~85_combout\ = (strikes(28) & (!\strikes[27]~84\)) # (!strikes(28) & ((\strikes[27]~84\) # (GND)))
-- \strikes[28]~86\ = CARRY((!\strikes[27]~84\) # (!strikes(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(28),
	datad => VCC,
	cin => \strikes[27]~84\,
	combout => \strikes[28]~85_combout\,
	cout => \strikes[28]~86\);

-- Location: FF_X24_Y19_N25
\strikes[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[28]~85_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(28));

-- Location: LCCOMB_X24_Y19_N26
\strikes[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[29]~87_combout\ = (strikes(29) & (\strikes[28]~86\ $ (GND))) # (!strikes(29) & (!\strikes[28]~86\ & VCC))
-- \strikes[29]~88\ = CARRY((strikes(29) & !\strikes[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(29),
	datad => VCC,
	cin => \strikes[28]~86\,
	combout => \strikes[29]~87_combout\,
	cout => \strikes[29]~88\);

-- Location: FF_X24_Y19_N27
\strikes[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[29]~87_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(29));

-- Location: LCCOMB_X24_Y19_N28
\strikes[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[30]~89_combout\ = (strikes(30) & (!\strikes[29]~88\)) # (!strikes(30) & ((\strikes[29]~88\) # (GND)))
-- \strikes[30]~90\ = CARRY((!\strikes[29]~88\) # (!strikes(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => strikes(30),
	datad => VCC,
	cin => \strikes[29]~88\,
	combout => \strikes[30]~89_combout\,
	cout => \strikes[30]~90\);

-- Location: FF_X24_Y19_N29
\strikes[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[30]~89_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(30));

-- Location: LCCOMB_X24_Y19_N30
\strikes[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \strikes[31]~91_combout\ = strikes(31) $ (!\strikes[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => strikes(31),
	cin => \strikes[30]~90\,
	combout => \strikes[31]~91_combout\);

-- Location: FF_X24_Y19_N31
\strikes[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_strikes|state~clkctrl_outclk\,
	d => \strikes[31]~91_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => strikes(31));

-- Location: LCCOMB_X23_Y19_N0
\sdis|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~6_combout\ = (!strikes(26) & (!strikes(24) & (!strikes(23) & !strikes(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(26),
	datab => strikes(24),
	datac => strikes(23),
	datad => strikes(25),
	combout => \sdis|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y20_N30
\sdis|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~5_combout\ = (!strikes(20) & (!strikes(21) & (!strikes(19) & !strikes(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(20),
	datab => strikes(21),
	datac => strikes(19),
	datad => strikes(22),
	combout => \sdis|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y19_N2
\sdis|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~7_combout\ = (!strikes(29) & (!strikes(30) & (!strikes(28) & !strikes(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(29),
	datab => strikes(30),
	datac => strikes(28),
	datad => strikes(27),
	combout => \sdis|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y20_N0
\sdis|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~8_combout\ = (\sdis|Equal0~6_combout\ & (\sdis|Equal0~5_combout\ & \sdis|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdis|Equal0~6_combout\,
	datac => \sdis|Equal0~5_combout\,
	datad => \sdis|Equal0~7_combout\,
	combout => \sdis|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y20_N22
\sdis|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~0_combout\ = (!strikes(3) & (!strikes(4) & (!strikes(6) & !strikes(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(3),
	datab => strikes(4),
	datac => strikes(6),
	datad => strikes(5),
	combout => \sdis|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\sdis|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~1_combout\ = (!strikes(10) & (!strikes(8) & (!strikes(7) & !strikes(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(10),
	datab => strikes(8),
	datac => strikes(7),
	datad => strikes(9),
	combout => \sdis|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y20_N0
\sdis|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~2_combout\ = (!strikes(11) & (!strikes(14) & (!strikes(13) & !strikes(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(11),
	datab => strikes(14),
	datac => strikes(13),
	datad => strikes(12),
	combout => \sdis|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y20_N6
\sdis|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~3_combout\ = (!strikes(15) & (!strikes(16) & (!strikes(18) & !strikes(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(15),
	datab => strikes(16),
	datac => strikes(18),
	datad => strikes(17),
	combout => \sdis|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y20_N4
\sdis|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal0~4_combout\ = (\sdis|Equal0~0_combout\ & (\sdis|Equal0~1_combout\ & (\sdis|Equal0~2_combout\ & \sdis|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdis|Equal0~0_combout\,
	datab => \sdis|Equal0~1_combout\,
	datac => \sdis|Equal0~2_combout\,
	datad => \sdis|Equal0~3_combout\,
	combout => \sdis|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y19_N18
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!strikes(31) & ((\LessThan1~0_combout\) # ((!\sdis|Equal0~4_combout\) # (!\sdis|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => strikes(31),
	datac => \sdis|Equal0~8_combout\,
	datad => \sdis|Equal0~4_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y19_N30
\do_strikes~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \do_strikes~0_combout\ = ((\LessThan0~0_combout\) # (\LessThan1~1_combout\)) # (!\NB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NB~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \do_strikes~0_combout\);

-- Location: FF_X23_Y19_N31
reset_b : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \do_strikes~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_b~q\);

-- Location: FF_X23_Y19_N7
\balls[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[0]~93_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(0));

-- Location: LCCOMB_X22_Y19_N2
\balls[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[1]~31_combout\ = (balls(0) & (balls(1) $ (VCC))) # (!balls(0) & (balls(1) & VCC))
-- \balls[1]~32\ = CARRY((balls(0) & balls(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(0),
	datab => balls(1),
	datad => VCC,
	combout => \balls[1]~31_combout\,
	cout => \balls[1]~32\);

-- Location: FF_X22_Y19_N3
\balls[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[1]~31_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(1));

-- Location: LCCOMB_X22_Y19_N4
\balls[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[2]~33_combout\ = (balls(2) & (!\balls[1]~32\)) # (!balls(2) & ((\balls[1]~32\) # (GND)))
-- \balls[2]~34\ = CARRY((!\balls[1]~32\) # (!balls(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(2),
	datad => VCC,
	cin => \balls[1]~32\,
	combout => \balls[2]~33_combout\,
	cout => \balls[2]~34\);

-- Location: FF_X22_Y19_N5
\balls[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[2]~33_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(2));

-- Location: LCCOMB_X22_Y19_N6
\balls[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[3]~35_combout\ = (balls(3) & (\balls[2]~34\ $ (GND))) # (!balls(3) & (!\balls[2]~34\ & VCC))
-- \balls[3]~36\ = CARRY((balls(3) & !\balls[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(3),
	datad => VCC,
	cin => \balls[2]~34\,
	combout => \balls[3]~35_combout\,
	cout => \balls[3]~36\);

-- Location: FF_X22_Y19_N7
\balls[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[3]~35_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(3));

-- Location: LCCOMB_X22_Y19_N8
\balls[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[4]~37_combout\ = (balls(4) & (!\balls[3]~36\)) # (!balls(4) & ((\balls[3]~36\) # (GND)))
-- \balls[4]~38\ = CARRY((!\balls[3]~36\) # (!balls(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(4),
	datad => VCC,
	cin => \balls[3]~36\,
	combout => \balls[4]~37_combout\,
	cout => \balls[4]~38\);

-- Location: FF_X22_Y19_N9
\balls[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[4]~37_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(4));

-- Location: LCCOMB_X22_Y19_N10
\balls[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[5]~39_combout\ = (balls(5) & (\balls[4]~38\ $ (GND))) # (!balls(5) & (!\balls[4]~38\ & VCC))
-- \balls[5]~40\ = CARRY((balls(5) & !\balls[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(5),
	datad => VCC,
	cin => \balls[4]~38\,
	combout => \balls[5]~39_combout\,
	cout => \balls[5]~40\);

-- Location: FF_X22_Y19_N11
\balls[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[5]~39_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(5));

-- Location: LCCOMB_X22_Y19_N12
\balls[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[6]~41_combout\ = (balls(6) & (!\balls[5]~40\)) # (!balls(6) & ((\balls[5]~40\) # (GND)))
-- \balls[6]~42\ = CARRY((!\balls[5]~40\) # (!balls(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(6),
	datad => VCC,
	cin => \balls[5]~40\,
	combout => \balls[6]~41_combout\,
	cout => \balls[6]~42\);

-- Location: FF_X22_Y19_N13
\balls[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[6]~41_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(6));

-- Location: LCCOMB_X22_Y19_N14
\balls[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[7]~43_combout\ = (balls(7) & (\balls[6]~42\ $ (GND))) # (!balls(7) & (!\balls[6]~42\ & VCC))
-- \balls[7]~44\ = CARRY((balls(7) & !\balls[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(7),
	datad => VCC,
	cin => \balls[6]~42\,
	combout => \balls[7]~43_combout\,
	cout => \balls[7]~44\);

-- Location: FF_X22_Y19_N15
\balls[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[7]~43_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(7));

-- Location: LCCOMB_X22_Y19_N16
\balls[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[8]~45_combout\ = (balls(8) & (!\balls[7]~44\)) # (!balls(8) & ((\balls[7]~44\) # (GND)))
-- \balls[8]~46\ = CARRY((!\balls[7]~44\) # (!balls(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(8),
	datad => VCC,
	cin => \balls[7]~44\,
	combout => \balls[8]~45_combout\,
	cout => \balls[8]~46\);

-- Location: FF_X22_Y19_N17
\balls[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[8]~45_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(8));

-- Location: LCCOMB_X22_Y19_N18
\balls[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[9]~47_combout\ = (balls(9) & (\balls[8]~46\ $ (GND))) # (!balls(9) & (!\balls[8]~46\ & VCC))
-- \balls[9]~48\ = CARRY((balls(9) & !\balls[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(9),
	datad => VCC,
	cin => \balls[8]~46\,
	combout => \balls[9]~47_combout\,
	cout => \balls[9]~48\);

-- Location: FF_X22_Y19_N19
\balls[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[9]~47_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(9));

-- Location: LCCOMB_X22_Y19_N20
\balls[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[10]~49_combout\ = (balls(10) & (!\balls[9]~48\)) # (!balls(10) & ((\balls[9]~48\) # (GND)))
-- \balls[10]~50\ = CARRY((!\balls[9]~48\) # (!balls(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(10),
	datad => VCC,
	cin => \balls[9]~48\,
	combout => \balls[10]~49_combout\,
	cout => \balls[10]~50\);

-- Location: FF_X22_Y19_N21
\balls[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[10]~49_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(10));

-- Location: LCCOMB_X22_Y19_N22
\balls[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[11]~51_combout\ = (balls(11) & (\balls[10]~50\ $ (GND))) # (!balls(11) & (!\balls[10]~50\ & VCC))
-- \balls[11]~52\ = CARRY((balls(11) & !\balls[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(11),
	datad => VCC,
	cin => \balls[10]~50\,
	combout => \balls[11]~51_combout\,
	cout => \balls[11]~52\);

-- Location: FF_X22_Y19_N23
\balls[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[11]~51_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(11));

-- Location: LCCOMB_X22_Y19_N24
\balls[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[12]~53_combout\ = (balls(12) & (!\balls[11]~52\)) # (!balls(12) & ((\balls[11]~52\) # (GND)))
-- \balls[12]~54\ = CARRY((!\balls[11]~52\) # (!balls(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(12),
	datad => VCC,
	cin => \balls[11]~52\,
	combout => \balls[12]~53_combout\,
	cout => \balls[12]~54\);

-- Location: FF_X22_Y19_N25
\balls[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[12]~53_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(12));

-- Location: LCCOMB_X22_Y19_N26
\balls[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[13]~55_combout\ = (balls(13) & (\balls[12]~54\ $ (GND))) # (!balls(13) & (!\balls[12]~54\ & VCC))
-- \balls[13]~56\ = CARRY((balls(13) & !\balls[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(13),
	datad => VCC,
	cin => \balls[12]~54\,
	combout => \balls[13]~55_combout\,
	cout => \balls[13]~56\);

-- Location: FF_X22_Y19_N27
\balls[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[13]~55_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(13));

-- Location: LCCOMB_X22_Y19_N28
\balls[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[14]~57_combout\ = (balls(14) & (!\balls[13]~56\)) # (!balls(14) & ((\balls[13]~56\) # (GND)))
-- \balls[14]~58\ = CARRY((!\balls[13]~56\) # (!balls(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(14),
	datad => VCC,
	cin => \balls[13]~56\,
	combout => \balls[14]~57_combout\,
	cout => \balls[14]~58\);

-- Location: FF_X22_Y19_N29
\balls[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[14]~57_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(14));

-- Location: LCCOMB_X22_Y19_N30
\balls[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[15]~59_combout\ = (balls(15) & (\balls[14]~58\ $ (GND))) # (!balls(15) & (!\balls[14]~58\ & VCC))
-- \balls[15]~60\ = CARRY((balls(15) & !\balls[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(15),
	datad => VCC,
	cin => \balls[14]~58\,
	combout => \balls[15]~59_combout\,
	cout => \balls[15]~60\);

-- Location: FF_X22_Y19_N31
\balls[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[15]~59_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(15));

-- Location: LCCOMB_X22_Y18_N0
\balls[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[16]~61_combout\ = (balls(16) & (!\balls[15]~60\)) # (!balls(16) & ((\balls[15]~60\) # (GND)))
-- \balls[16]~62\ = CARRY((!\balls[15]~60\) # (!balls(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(16),
	datad => VCC,
	cin => \balls[15]~60\,
	combout => \balls[16]~61_combout\,
	cout => \balls[16]~62\);

-- Location: FF_X22_Y18_N1
\balls[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[16]~61_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(16));

-- Location: LCCOMB_X22_Y18_N2
\balls[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[17]~63_combout\ = (balls(17) & (\balls[16]~62\ $ (GND))) # (!balls(17) & (!\balls[16]~62\ & VCC))
-- \balls[17]~64\ = CARRY((balls(17) & !\balls[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(17),
	datad => VCC,
	cin => \balls[16]~62\,
	combout => \balls[17]~63_combout\,
	cout => \balls[17]~64\);

-- Location: FF_X22_Y18_N3
\balls[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[17]~63_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(17));

-- Location: LCCOMB_X22_Y18_N4
\balls[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[18]~65_combout\ = (balls(18) & (!\balls[17]~64\)) # (!balls(18) & ((\balls[17]~64\) # (GND)))
-- \balls[18]~66\ = CARRY((!\balls[17]~64\) # (!balls(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(18),
	datad => VCC,
	cin => \balls[17]~64\,
	combout => \balls[18]~65_combout\,
	cout => \balls[18]~66\);

-- Location: FF_X22_Y18_N5
\balls[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[18]~65_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(18));

-- Location: LCCOMB_X22_Y18_N6
\balls[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[19]~67_combout\ = (balls(19) & (\balls[18]~66\ $ (GND))) # (!balls(19) & (!\balls[18]~66\ & VCC))
-- \balls[19]~68\ = CARRY((balls(19) & !\balls[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(19),
	datad => VCC,
	cin => \balls[18]~66\,
	combout => \balls[19]~67_combout\,
	cout => \balls[19]~68\);

-- Location: FF_X22_Y18_N7
\balls[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[19]~67_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(19));

-- Location: LCCOMB_X22_Y18_N8
\balls[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[20]~69_combout\ = (balls(20) & (!\balls[19]~68\)) # (!balls(20) & ((\balls[19]~68\) # (GND)))
-- \balls[20]~70\ = CARRY((!\balls[19]~68\) # (!balls(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(20),
	datad => VCC,
	cin => \balls[19]~68\,
	combout => \balls[20]~69_combout\,
	cout => \balls[20]~70\);

-- Location: FF_X22_Y18_N9
\balls[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[20]~69_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(20));

-- Location: LCCOMB_X22_Y18_N10
\balls[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[21]~71_combout\ = (balls(21) & (\balls[20]~70\ $ (GND))) # (!balls(21) & (!\balls[20]~70\ & VCC))
-- \balls[21]~72\ = CARRY((balls(21) & !\balls[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(21),
	datad => VCC,
	cin => \balls[20]~70\,
	combout => \balls[21]~71_combout\,
	cout => \balls[21]~72\);

-- Location: FF_X22_Y18_N11
\balls[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[21]~71_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(21));

-- Location: LCCOMB_X22_Y18_N12
\balls[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[22]~73_combout\ = (balls(22) & (!\balls[21]~72\)) # (!balls(22) & ((\balls[21]~72\) # (GND)))
-- \balls[22]~74\ = CARRY((!\balls[21]~72\) # (!balls(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(22),
	datad => VCC,
	cin => \balls[21]~72\,
	combout => \balls[22]~73_combout\,
	cout => \balls[22]~74\);

-- Location: FF_X22_Y18_N13
\balls[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[22]~73_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(22));

-- Location: LCCOMB_X22_Y18_N14
\balls[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[23]~75_combout\ = (balls(23) & (\balls[22]~74\ $ (GND))) # (!balls(23) & (!\balls[22]~74\ & VCC))
-- \balls[23]~76\ = CARRY((balls(23) & !\balls[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(23),
	datad => VCC,
	cin => \balls[22]~74\,
	combout => \balls[23]~75_combout\,
	cout => \balls[23]~76\);

-- Location: FF_X22_Y18_N15
\balls[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[23]~75_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(23));

-- Location: LCCOMB_X22_Y18_N16
\balls[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[24]~77_combout\ = (balls(24) & (!\balls[23]~76\)) # (!balls(24) & ((\balls[23]~76\) # (GND)))
-- \balls[24]~78\ = CARRY((!\balls[23]~76\) # (!balls(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(24),
	datad => VCC,
	cin => \balls[23]~76\,
	combout => \balls[24]~77_combout\,
	cout => \balls[24]~78\);

-- Location: FF_X22_Y18_N17
\balls[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[24]~77_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(24));

-- Location: LCCOMB_X22_Y18_N18
\balls[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[25]~79_combout\ = (balls(25) & (\balls[24]~78\ $ (GND))) # (!balls(25) & (!\balls[24]~78\ & VCC))
-- \balls[25]~80\ = CARRY((balls(25) & !\balls[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(25),
	datad => VCC,
	cin => \balls[24]~78\,
	combout => \balls[25]~79_combout\,
	cout => \balls[25]~80\);

-- Location: FF_X22_Y18_N19
\balls[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[25]~79_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(25));

-- Location: LCCOMB_X22_Y18_N20
\balls[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[26]~81_combout\ = (balls(26) & (!\balls[25]~80\)) # (!balls(26) & ((\balls[25]~80\) # (GND)))
-- \balls[26]~82\ = CARRY((!\balls[25]~80\) # (!balls(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(26),
	datad => VCC,
	cin => \balls[25]~80\,
	combout => \balls[26]~81_combout\,
	cout => \balls[26]~82\);

-- Location: FF_X22_Y18_N21
\balls[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[26]~81_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(26));

-- Location: LCCOMB_X22_Y18_N22
\balls[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[27]~83_combout\ = (balls(27) & (\balls[26]~82\ $ (GND))) # (!balls(27) & (!\balls[26]~82\ & VCC))
-- \balls[27]~84\ = CARRY((balls(27) & !\balls[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(27),
	datad => VCC,
	cin => \balls[26]~82\,
	combout => \balls[27]~83_combout\,
	cout => \balls[27]~84\);

-- Location: FF_X22_Y18_N23
\balls[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[27]~83_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(27));

-- Location: LCCOMB_X22_Y18_N24
\balls[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[28]~85_combout\ = (balls(28) & (!\balls[27]~84\)) # (!balls(28) & ((\balls[27]~84\) # (GND)))
-- \balls[28]~86\ = CARRY((!\balls[27]~84\) # (!balls(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(28),
	datad => VCC,
	cin => \balls[27]~84\,
	combout => \balls[28]~85_combout\,
	cout => \balls[28]~86\);

-- Location: FF_X22_Y18_N25
\balls[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[28]~85_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(28));

-- Location: LCCOMB_X22_Y18_N26
\balls[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[29]~87_combout\ = (balls(29) & (\balls[28]~86\ $ (GND))) # (!balls(29) & (!\balls[28]~86\ & VCC))
-- \balls[29]~88\ = CARRY((balls(29) & !\balls[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(29),
	datad => VCC,
	cin => \balls[28]~86\,
	combout => \balls[29]~87_combout\,
	cout => \balls[29]~88\);

-- Location: FF_X22_Y18_N27
\balls[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[29]~87_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(29));

-- Location: LCCOMB_X22_Y18_N28
\balls[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[30]~89_combout\ = (balls(30) & (!\balls[29]~88\)) # (!balls(30) & ((\balls[29]~88\) # (GND)))
-- \balls[30]~90\ = CARRY((!\balls[29]~88\) # (!balls(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => balls(30),
	datad => VCC,
	cin => \balls[29]~88\,
	combout => \balls[30]~89_combout\,
	cout => \balls[30]~90\);

-- Location: FF_X22_Y18_N29
\balls[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[30]~89_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(30));

-- Location: LCCOMB_X22_Y18_N30
\balls[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \balls[31]~91_combout\ = balls(31) $ (!\balls[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => balls(31),
	cin => \balls[30]~90\,
	combout => \balls[31]~91_combout\);

-- Location: FF_X22_Y18_N31
\balls[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \deboubce_balls|state~clkctrl_outclk\,
	d => \balls[31]~91_combout\,
	clrn => \ALT_INV_reset_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => balls(31));

-- Location: LCCOMB_X23_Y19_N16
\bdis|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|WideNor0~0_combout\ = (balls(2)) # ((balls(0) & !balls(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(0),
	datac => balls(2),
	datad => balls(1),
	combout => \bdis|WideNor0~0_combout\);

-- Location: LCCOMB_X22_Y20_N12
\bdis|WideNor0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|WideNor0~1_combout\ = (balls(31)) # (((\bdis|WideNor0~0_combout\) # (!\bdis|Equal0~8_combout\)) # (!\bdis|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(31),
	datab => \bdis|Equal0~4_combout\,
	datac => \bdis|WideNor0~0_combout\,
	datad => \bdis|Equal0~8_combout\,
	combout => \bdis|WideNor0~1_combout\);

-- Location: LCCOMB_X23_Y20_N18
\sdis|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|Equal4~0_combout\ = (!strikes(31) & (\sdis|Equal0~4_combout\ & \sdis|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(31),
	datac => \sdis|Equal0~4_combout\,
	datad => \sdis|Equal0~8_combout\,
	combout => \sdis|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\sdis|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|WideNor0~0_combout\ = (strikes(2)) # (((strikes(0) & !strikes(1))) # (!\sdis|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(2),
	datab => strikes(0),
	datac => strikes(1),
	datad => \sdis|Equal4~0_combout\,
	combout => \sdis|WideNor0~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\digsel~q\ & ((\sdis|WideNor0~0_combout\))) # (!\digsel~q\ & (\bdis|WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bdis|WideNor0~1_combout\,
	datac => \digsel~q\,
	datad => \sdis|WideNor0~0_combout\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\output[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[0]~reg0feeder_combout\ = \output~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \output~0_combout\,
	combout => \output[0]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N3
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \output[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N26
\sdis|WideNor0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|WideNor0~1_combout\ = (strikes(2) & ((strikes(1)) # (strikes(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(1),
	datac => strikes(0),
	datad => strikes(2),
	combout => \sdis|WideNor0~1_combout\);

-- Location: LCCOMB_X23_Y20_N8
\sdis|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sdis|WideNor0~combout\ = (\sdis|WideNor0~1_combout\) # ((strikes(31)) # ((!\sdis|Equal0~8_combout\) # (!\sdis|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdis|WideNor0~1_combout\,
	datab => strikes(31),
	datac => \sdis|Equal0~4_combout\,
	datad => \sdis|Equal0~8_combout\,
	combout => \sdis|WideNor0~combout\);

-- Location: LCCOMB_X22_Y20_N6
\bdis|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|Equal4~0_combout\ = (!balls(31) & (\bdis|Equal0~4_combout\ & \bdis|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => balls(31),
	datac => \bdis|Equal0~4_combout\,
	datad => \bdis|Equal0~8_combout\,
	combout => \bdis|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y20_N10
\bdis|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bdis|WideNor0~combout\ = ((balls(2) & ((balls(1)) # (balls(0))))) # (!\bdis|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(1),
	datab => balls(0),
	datac => \bdis|Equal4~0_combout\,
	datad => balls(2),
	combout => \bdis|WideNor0~combout\);

-- Location: LCCOMB_X23_Y20_N12
\output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\digsel~q\ & (\sdis|WideNor0~combout\)) # (!\digsel~q\ & ((\bdis|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digsel~q\,
	datac => \sdis|WideNor0~combout\,
	datad => \bdis|WideNor0~combout\,
	combout => \output~1_combout\);

-- Location: FF_X23_Y20_N13
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N16
\output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~2_combout\ = ((strikes(0) & (strikes(2))) # (!strikes(0) & ((strikes(1))))) # (!\sdis|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(2),
	datab => strikes(0),
	datac => strikes(1),
	datad => \sdis|Equal4~0_combout\,
	combout => \output~2_combout\);

-- Location: LCCOMB_X23_Y18_N18
\output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~3_combout\ = ((balls(0) & ((balls(2)))) # (!balls(0) & (balls(1)))) # (!\bdis|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(0),
	datab => balls(1),
	datac => balls(2),
	datad => \bdis|Equal4~0_combout\,
	combout => \output~3_combout\);

-- Location: LCCOMB_X23_Y18_N8
\output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\digsel~q\ & (\output~2_combout\)) # (!\digsel~q\ & ((\output~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digsel~q\,
	datac => \output~2_combout\,
	datad => \output~3_combout\,
	combout => \output~4_combout\);

-- Location: FF_X23_Y18_N9
\output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \output~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N16
\output[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \output[3]~reg0feeder_combout\ = \output~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \output~0_combout\,
	combout => \output[3]~reg0feeder_combout\);

-- Location: FF_X22_Y20_N17
\output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \output[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N14
\output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (strikes(2)) # ((strikes(0)) # (!\sdis|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(2),
	datac => strikes(0),
	datad => \sdis|Equal4~0_combout\,
	combout => \output~6_combout\);

-- Location: LCCOMB_X23_Y18_N0
\output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (balls(0)) # ((balls(2)) # (!\bdis|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(0),
	datac => balls(2),
	datad => \bdis|Equal4~0_combout\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X23_Y18_N2
\output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\digsel~q\ & (\output~6_combout\)) # (!\digsel~q\ & ((\output~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digsel~q\,
	datac => \output~6_combout\,
	datad => \output~5_combout\,
	combout => \output~7_combout\);

-- Location: FF_X23_Y18_N3
\output[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \output~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[4]~reg0_q\);

-- Location: LCCOMB_X23_Y20_N20
\output~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (!strikes(1) & (!strikes(0) & \sdis|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(1),
	datac => strikes(0),
	datad => \sdis|Equal4~0_combout\,
	combout => \output~8_combout\);

-- Location: LCCOMB_X22_Y20_N10
\output~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (!balls(0) & (!balls(1) & \bdis|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(0),
	datab => balls(1),
	datad => \bdis|Equal4~0_combout\,
	combout => \output~9_combout\);

-- Location: LCCOMB_X22_Y20_N20
\output~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~10_combout\ = (\digsel~q\ & (!\output~8_combout\)) # (!\digsel~q\ & ((!\output~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digsel~q\,
	datac => \output~8_combout\,
	datad => \output~9_combout\,
	combout => \output~10_combout\);

-- Location: FF_X22_Y20_N21
\output[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \output~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[5]~reg0_q\);

-- Location: LCCOMB_X22_Y20_N22
\output~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~12_combout\ = ((balls(1) & ((balls(2)))) # (!balls(1) & ((balls(0)) # (!balls(2))))) # (!\bdis|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => balls(0),
	datab => balls(1),
	datac => balls(2),
	datad => \bdis|Equal4~0_combout\,
	combout => \output~12_combout\);

-- Location: LCCOMB_X23_Y20_N2
\output~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~11_combout\ = ((strikes(2) & ((strikes(0)) # (strikes(1)))) # (!strikes(2) & ((!strikes(1))))) # (!\sdis|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => strikes(2),
	datab => strikes(0),
	datac => strikes(1),
	datad => \sdis|Equal4~0_combout\,
	combout => \output~11_combout\);

-- Location: LCCOMB_X22_Y20_N0
\output~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~13_combout\ = (\digsel~q\ & ((\output~11_combout\))) # (!\digsel~q\ & (\output~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digsel~q\,
	datac => \output~12_combout\,
	datad => \output~11_combout\,
	combout => \output~13_combout\);

-- Location: FF_X22_Y20_N1
\output[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \output~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[6]~reg0_q\);

-- Location: FF_X22_Y20_N11
flash_b : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flash_b~q\);

-- Location: LCCOMB_X18_Y18_N0
\flash_counter[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[0]~33_combout\ = flash_counter(0) $ (VCC)
-- \flash_counter[0]~34\ = CARRY(flash_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(0),
	datad => VCC,
	combout => \flash_counter[0]~33_combout\,
	cout => \flash_counter[0]~34\);

-- Location: FF_X19_Y17_N17
\flash_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter[0]~33_combout\,
	sclr => \flash_counter~32_combout\,
	sload => VCC,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(0));

-- Location: LCCOMB_X18_Y18_N2
\flash_counter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[1]~35_combout\ = (flash_counter(1) & (!\flash_counter[0]~34\)) # (!flash_counter(1) & ((\flash_counter[0]~34\) # (GND)))
-- \flash_counter[1]~36\ = CARRY((!\flash_counter[0]~34\) # (!flash_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(1),
	datad => VCC,
	cin => \flash_counter[0]~34\,
	combout => \flash_counter[1]~35_combout\,
	cout => \flash_counter[1]~36\);

-- Location: FF_X18_Y18_N3
\flash_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[1]~35_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(1));

-- Location: LCCOMB_X18_Y18_N4
\flash_counter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[2]~37_combout\ = (flash_counter(2) & (\flash_counter[1]~36\ $ (GND))) # (!flash_counter(2) & (!\flash_counter[1]~36\ & VCC))
-- \flash_counter[2]~38\ = CARRY((flash_counter(2) & !\flash_counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(2),
	datad => VCC,
	cin => \flash_counter[1]~36\,
	combout => \flash_counter[2]~37_combout\,
	cout => \flash_counter[2]~38\);

-- Location: FF_X18_Y18_N5
\flash_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[2]~37_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(2));

-- Location: LCCOMB_X18_Y18_N6
\flash_counter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[3]~39_combout\ = (flash_counter(3) & (!\flash_counter[2]~38\)) # (!flash_counter(3) & ((\flash_counter[2]~38\) # (GND)))
-- \flash_counter[3]~40\ = CARRY((!\flash_counter[2]~38\) # (!flash_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(3),
	datad => VCC,
	cin => \flash_counter[2]~38\,
	combout => \flash_counter[3]~39_combout\,
	cout => \flash_counter[3]~40\);

-- Location: FF_X18_Y18_N7
\flash_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[3]~39_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(3));

-- Location: LCCOMB_X18_Y18_N8
\flash_counter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[4]~41_combout\ = (flash_counter(4) & (\flash_counter[3]~40\ $ (GND))) # (!flash_counter(4) & (!\flash_counter[3]~40\ & VCC))
-- \flash_counter[4]~42\ = CARRY((flash_counter(4) & !\flash_counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(4),
	datad => VCC,
	cin => \flash_counter[3]~40\,
	combout => \flash_counter[4]~41_combout\,
	cout => \flash_counter[4]~42\);

-- Location: FF_X18_Y18_N9
\flash_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[4]~41_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(4));

-- Location: LCCOMB_X18_Y18_N10
\flash_counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[5]~43_combout\ = (flash_counter(5) & (!\flash_counter[4]~42\)) # (!flash_counter(5) & ((\flash_counter[4]~42\) # (GND)))
-- \flash_counter[5]~44\ = CARRY((!\flash_counter[4]~42\) # (!flash_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(5),
	datad => VCC,
	cin => \flash_counter[4]~42\,
	combout => \flash_counter[5]~43_combout\,
	cout => \flash_counter[5]~44\);

-- Location: FF_X18_Y18_N11
\flash_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[5]~43_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(5));

-- Location: LCCOMB_X18_Y18_N12
\flash_counter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[6]~45_combout\ = (flash_counter(6) & (\flash_counter[5]~44\ $ (GND))) # (!flash_counter(6) & (!\flash_counter[5]~44\ & VCC))
-- \flash_counter[6]~46\ = CARRY((flash_counter(6) & !\flash_counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(6),
	datad => VCC,
	cin => \flash_counter[5]~44\,
	combout => \flash_counter[6]~45_combout\,
	cout => \flash_counter[6]~46\);

-- Location: FF_X18_Y18_N13
\flash_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[6]~45_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(6));

-- Location: LCCOMB_X18_Y18_N14
\flash_counter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[7]~47_combout\ = (flash_counter(7) & (!\flash_counter[6]~46\)) # (!flash_counter(7) & ((\flash_counter[6]~46\) # (GND)))
-- \flash_counter[7]~48\ = CARRY((!\flash_counter[6]~46\) # (!flash_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(7),
	datad => VCC,
	cin => \flash_counter[6]~46\,
	combout => \flash_counter[7]~47_combout\,
	cout => \flash_counter[7]~48\);

-- Location: FF_X18_Y18_N15
\flash_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[7]~47_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(7));

-- Location: LCCOMB_X18_Y18_N16
\flash_counter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[8]~49_combout\ = (flash_counter(8) & (\flash_counter[7]~48\ $ (GND))) # (!flash_counter(8) & (!\flash_counter[7]~48\ & VCC))
-- \flash_counter[8]~50\ = CARRY((flash_counter(8) & !\flash_counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(8),
	datad => VCC,
	cin => \flash_counter[7]~48\,
	combout => \flash_counter[8]~49_combout\,
	cout => \flash_counter[8]~50\);

-- Location: FF_X18_Y18_N17
\flash_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[8]~49_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(8));

-- Location: LCCOMB_X19_Y17_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!flash_counter(8) & (flash_counter(6) & (flash_counter(3) & !flash_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(8),
	datab => flash_counter(6),
	datac => flash_counter(3),
	datad => flash_counter(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X18_Y18_N18
\flash_counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[9]~51_combout\ = (flash_counter(9) & (!\flash_counter[8]~50\)) # (!flash_counter(9) & ((\flash_counter[8]~50\) # (GND)))
-- \flash_counter[9]~52\ = CARRY((!\flash_counter[8]~50\) # (!flash_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(9),
	datad => VCC,
	cin => \flash_counter[8]~50\,
	combout => \flash_counter[9]~51_combout\,
	cout => \flash_counter[9]~52\);

-- Location: FF_X18_Y18_N19
\flash_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[9]~51_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(9));

-- Location: LCCOMB_X18_Y18_N20
\flash_counter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[10]~53_combout\ = (flash_counter(10) & (\flash_counter[9]~52\ $ (GND))) # (!flash_counter(10) & (!\flash_counter[9]~52\ & VCC))
-- \flash_counter[10]~54\ = CARRY((flash_counter(10) & !\flash_counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(10),
	datad => VCC,
	cin => \flash_counter[9]~52\,
	combout => \flash_counter[10]~53_combout\,
	cout => \flash_counter[10]~54\);

-- Location: FF_X17_Y17_N13
\flash_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter[10]~53_combout\,
	sclr => \flash_counter~32_combout\,
	sload => VCC,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(10));

-- Location: LCCOMB_X18_Y18_N22
\flash_counter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[11]~55_combout\ = (flash_counter(11) & (!\flash_counter[10]~54\)) # (!flash_counter(11) & ((\flash_counter[10]~54\) # (GND)))
-- \flash_counter[11]~56\ = CARRY((!\flash_counter[10]~54\) # (!flash_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(11),
	datad => VCC,
	cin => \flash_counter[10]~54\,
	combout => \flash_counter[11]~55_combout\,
	cout => \flash_counter[11]~56\);

-- Location: FF_X18_Y18_N23
\flash_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[11]~55_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(11));

-- Location: LCCOMB_X18_Y18_N24
\flash_counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[12]~57_combout\ = (flash_counter(12) & (\flash_counter[11]~56\ $ (GND))) # (!flash_counter(12) & (!\flash_counter[11]~56\ & VCC))
-- \flash_counter[12]~58\ = CARRY((flash_counter(12) & !\flash_counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(12),
	datad => VCC,
	cin => \flash_counter[11]~56\,
	combout => \flash_counter[12]~57_combout\,
	cout => \flash_counter[12]~58\);

-- Location: FF_X17_Y17_N15
\flash_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter[12]~57_combout\,
	sclr => \flash_counter~32_combout\,
	sload => VCC,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(12));

-- Location: LCCOMB_X18_Y18_N26
\flash_counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[13]~59_combout\ = (flash_counter(13) & (!\flash_counter[12]~58\)) # (!flash_counter(13) & ((\flash_counter[12]~58\) # (GND)))
-- \flash_counter[13]~60\ = CARRY((!\flash_counter[12]~58\) # (!flash_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(13),
	datad => VCC,
	cin => \flash_counter[12]~58\,
	combout => \flash_counter[13]~59_combout\,
	cout => \flash_counter[13]~60\);

-- Location: FF_X18_Y18_N27
\flash_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[13]~59_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(13));

-- Location: LCCOMB_X18_Y18_N28
\flash_counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[14]~61_combout\ = (flash_counter(14) & (\flash_counter[13]~60\ $ (GND))) # (!flash_counter(14) & (!\flash_counter[13]~60\ & VCC))
-- \flash_counter[14]~62\ = CARRY((flash_counter(14) & !\flash_counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(14),
	datad => VCC,
	cin => \flash_counter[13]~60\,
	combout => \flash_counter[14]~61_combout\,
	cout => \flash_counter[14]~62\);

-- Location: FF_X17_Y17_N21
\flash_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter[14]~61_combout\,
	sclr => \flash_counter~32_combout\,
	sload => VCC,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(14));

-- Location: LCCOMB_X18_Y18_N30
\flash_counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[15]~63_combout\ = (flash_counter(15) & (!\flash_counter[14]~62\)) # (!flash_counter(15) & ((\flash_counter[14]~62\) # (GND)))
-- \flash_counter[15]~64\ = CARRY((!\flash_counter[14]~62\) # (!flash_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(15),
	datad => VCC,
	cin => \flash_counter[14]~62\,
	combout => \flash_counter[15]~63_combout\,
	cout => \flash_counter[15]~64\);

-- Location: FF_X17_Y17_N27
\flash_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter[15]~63_combout\,
	sclr => \flash_counter~32_combout\,
	sload => VCC,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(15));

-- Location: LCCOMB_X18_Y17_N0
\flash_counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[16]~65_combout\ = (flash_counter(16) & (\flash_counter[15]~64\ $ (GND))) # (!flash_counter(16) & (!\flash_counter[15]~64\ & VCC))
-- \flash_counter[16]~66\ = CARRY((flash_counter(16) & !\flash_counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(16),
	datad => VCC,
	cin => \flash_counter[15]~64\,
	combout => \flash_counter[16]~65_combout\,
	cout => \flash_counter[16]~66\);

-- Location: FF_X18_Y17_N1
\flash_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[16]~65_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(16));

-- Location: LCCOMB_X18_Y17_N2
\flash_counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[17]~67_combout\ = (flash_counter(17) & (!\flash_counter[16]~66\)) # (!flash_counter(17) & ((\flash_counter[16]~66\) # (GND)))
-- \flash_counter[17]~68\ = CARRY((!\flash_counter[16]~66\) # (!flash_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(17),
	datad => VCC,
	cin => \flash_counter[16]~66\,
	combout => \flash_counter[17]~67_combout\,
	cout => \flash_counter[17]~68\);

-- Location: FF_X18_Y17_N3
\flash_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[17]~67_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(17));

-- Location: LCCOMB_X18_Y17_N4
\flash_counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[18]~69_combout\ = (flash_counter(18) & (\flash_counter[17]~68\ $ (GND))) # (!flash_counter(18) & (!\flash_counter[17]~68\ & VCC))
-- \flash_counter[18]~70\ = CARRY((flash_counter(18) & !\flash_counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(18),
	datad => VCC,
	cin => \flash_counter[17]~68\,
	combout => \flash_counter[18]~69_combout\,
	cout => \flash_counter[18]~70\);

-- Location: FF_X18_Y17_N5
\flash_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[18]~69_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(18));

-- Location: LCCOMB_X18_Y17_N6
\flash_counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[19]~71_combout\ = (flash_counter(19) & (!\flash_counter[18]~70\)) # (!flash_counter(19) & ((\flash_counter[18]~70\) # (GND)))
-- \flash_counter[19]~72\ = CARRY((!\flash_counter[18]~70\) # (!flash_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(19),
	datad => VCC,
	cin => \flash_counter[18]~70\,
	combout => \flash_counter[19]~71_combout\,
	cout => \flash_counter[19]~72\);

-- Location: FF_X18_Y17_N7
\flash_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[19]~71_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(19));

-- Location: LCCOMB_X18_Y17_N8
\flash_counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[20]~73_combout\ = (flash_counter(20) & (\flash_counter[19]~72\ $ (GND))) # (!flash_counter(20) & (!\flash_counter[19]~72\ & VCC))
-- \flash_counter[20]~74\ = CARRY((flash_counter(20) & !\flash_counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(20),
	datad => VCC,
	cin => \flash_counter[19]~72\,
	combout => \flash_counter[20]~73_combout\,
	cout => \flash_counter[20]~74\);

-- Location: FF_X18_Y17_N9
\flash_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[20]~73_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(20));

-- Location: LCCOMB_X18_Y17_N10
\flash_counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[21]~75_combout\ = (flash_counter(21) & (!\flash_counter[20]~74\)) # (!flash_counter(21) & ((\flash_counter[20]~74\) # (GND)))
-- \flash_counter[21]~76\ = CARRY((!\flash_counter[20]~74\) # (!flash_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(21),
	datad => VCC,
	cin => \flash_counter[20]~74\,
	combout => \flash_counter[21]~75_combout\,
	cout => \flash_counter[21]~76\);

-- Location: FF_X18_Y17_N11
\flash_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[21]~75_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(21));

-- Location: LCCOMB_X18_Y17_N12
\flash_counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[22]~77_combout\ = (flash_counter(22) & (\flash_counter[21]~76\ $ (GND))) # (!flash_counter(22) & (!\flash_counter[21]~76\ & VCC))
-- \flash_counter[22]~78\ = CARRY((flash_counter(22) & !\flash_counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(22),
	datad => VCC,
	cin => \flash_counter[21]~76\,
	combout => \flash_counter[22]~77_combout\,
	cout => \flash_counter[22]~78\);

-- Location: FF_X18_Y17_N13
\flash_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[22]~77_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(22));

-- Location: LCCOMB_X18_Y17_N14
\flash_counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[23]~79_combout\ = (flash_counter(23) & (!\flash_counter[22]~78\)) # (!flash_counter(23) & ((\flash_counter[22]~78\) # (GND)))
-- \flash_counter[23]~80\ = CARRY((!\flash_counter[22]~78\) # (!flash_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(23),
	datad => VCC,
	cin => \flash_counter[22]~78\,
	combout => \flash_counter[23]~79_combout\,
	cout => \flash_counter[23]~80\);

-- Location: FF_X18_Y17_N15
\flash_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[23]~79_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(23));

-- Location: LCCOMB_X18_Y17_N16
\flash_counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[24]~81_combout\ = (flash_counter(24) & (\flash_counter[23]~80\ $ (GND))) # (!flash_counter(24) & (!\flash_counter[23]~80\ & VCC))
-- \flash_counter[24]~82\ = CARRY((flash_counter(24) & !\flash_counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(24),
	datad => VCC,
	cin => \flash_counter[23]~80\,
	combout => \flash_counter[24]~81_combout\,
	cout => \flash_counter[24]~82\);

-- Location: FF_X18_Y17_N17
\flash_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[24]~81_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(24));

-- Location: LCCOMB_X18_Y17_N18
\flash_counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[25]~83_combout\ = (flash_counter(25) & (!\flash_counter[24]~82\)) # (!flash_counter(25) & ((\flash_counter[24]~82\) # (GND)))
-- \flash_counter[25]~84\ = CARRY((!\flash_counter[24]~82\) # (!flash_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(25),
	datad => VCC,
	cin => \flash_counter[24]~82\,
	combout => \flash_counter[25]~83_combout\,
	cout => \flash_counter[25]~84\);

-- Location: FF_X18_Y17_N19
\flash_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[25]~83_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(25));

-- Location: LCCOMB_X18_Y17_N20
\flash_counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[26]~85_combout\ = (flash_counter(26) & (\flash_counter[25]~84\ $ (GND))) # (!flash_counter(26) & (!\flash_counter[25]~84\ & VCC))
-- \flash_counter[26]~86\ = CARRY((flash_counter(26) & !\flash_counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(26),
	datad => VCC,
	cin => \flash_counter[25]~84\,
	combout => \flash_counter[26]~85_combout\,
	cout => \flash_counter[26]~86\);

-- Location: FF_X18_Y17_N21
\flash_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[26]~85_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(26));

-- Location: LCCOMB_X18_Y17_N22
\flash_counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[27]~87_combout\ = (flash_counter(27) & (!\flash_counter[26]~86\)) # (!flash_counter(27) & ((\flash_counter[26]~86\) # (GND)))
-- \flash_counter[27]~88\ = CARRY((!\flash_counter[26]~86\) # (!flash_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(27),
	datad => VCC,
	cin => \flash_counter[26]~86\,
	combout => \flash_counter[27]~87_combout\,
	cout => \flash_counter[27]~88\);

-- Location: FF_X18_Y17_N23
\flash_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[27]~87_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(27));

-- Location: LCCOMB_X18_Y17_N24
\flash_counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[28]~89_combout\ = (flash_counter(28) & (\flash_counter[27]~88\ $ (GND))) # (!flash_counter(28) & (!\flash_counter[27]~88\ & VCC))
-- \flash_counter[28]~90\ = CARRY((flash_counter(28) & !\flash_counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(28),
	datad => VCC,
	cin => \flash_counter[27]~88\,
	combout => \flash_counter[28]~89_combout\,
	cout => \flash_counter[28]~90\);

-- Location: FF_X18_Y17_N25
\flash_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[28]~89_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(28));

-- Location: LCCOMB_X18_Y17_N26
\flash_counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[29]~91_combout\ = (flash_counter(29) & (!\flash_counter[28]~90\)) # (!flash_counter(29) & ((\flash_counter[28]~90\) # (GND)))
-- \flash_counter[29]~92\ = CARRY((!\flash_counter[28]~90\) # (!flash_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(29),
	datad => VCC,
	cin => \flash_counter[28]~90\,
	combout => \flash_counter[29]~91_combout\,
	cout => \flash_counter[29]~92\);

-- Location: FF_X18_Y17_N27
\flash_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[29]~91_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(29));

-- Location: LCCOMB_X18_Y17_N28
\flash_counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[30]~93_combout\ = (flash_counter(30) & (\flash_counter[29]~92\ $ (GND))) # (!flash_counter(30) & (!\flash_counter[29]~92\ & VCC))
-- \flash_counter[30]~94\ = CARRY((flash_counter(30) & !\flash_counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter(30),
	datad => VCC,
	cin => \flash_counter[29]~92\,
	combout => \flash_counter[30]~93_combout\,
	cout => \flash_counter[30]~94\);

-- Location: FF_X18_Y17_N29
\flash_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[30]~93_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(30));

-- Location: LCCOMB_X18_Y17_N30
\flash_counter[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter[31]~95_combout\ = flash_counter(31) $ (\flash_counter[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(31),
	cin => \flash_counter[30]~94\,
	combout => \flash_counter[31]~95_combout\);

-- Location: FF_X18_Y17_N31
\flash_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter[31]~95_combout\,
	sclr => \flash_counter~32_combout\,
	ena => \doing_flash_b~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter(31));

-- Location: LCCOMB_X19_Y17_N12
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!flash_counter(0) & (!flash_counter(31) & (!flash_counter(4) & !flash_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(0),
	datab => flash_counter(31),
	datac => flash_counter(4),
	datad => flash_counter(1),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X19_Y17_N16
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!flash_counter(29) & !flash_counter(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(29),
	datad => flash_counter(30),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y17_N10
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!flash_counter(26) & (!flash_counter(25) & (!flash_counter(27) & !flash_counter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(26),
	datab => flash_counter(25),
	datac => flash_counter(27),
	datad => flash_counter(28),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X17_Y17_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!flash_counter(24) & (!flash_counter(21) & (!flash_counter(23) & !flash_counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(24),
	datab => flash_counter(21),
	datac => flash_counter(23),
	datad => flash_counter(22),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y17_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!flash_counter(19) & (!flash_counter(20) & (!flash_counter(18) & !flash_counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(19),
	datab => flash_counter(20),
	datac => flash_counter(18),
	datad => flash_counter(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y17_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!flash_counter(10) & (!flash_counter(12) & (!flash_counter(11) & !flash_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(10),
	datab => flash_counter(12),
	datac => flash_counter(11),
	datad => flash_counter(9),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y17_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!flash_counter(15) & (!flash_counter(14) & (!flash_counter(16) & !flash_counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(15),
	datab => flash_counter(14),
	datac => flash_counter(16),
	datad => flash_counter(13),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y17_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X19_Y17_N2
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X19_Y17_N14
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (flash_counter(7) & (!flash_counter(5) & (\Equal1~0_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(7),
	datab => flash_counter(5),
	datac => \Equal1~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X19_Y17_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!flash_counter(7) & (flash_counter(2) & (flash_counter(5) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(7),
	datab => flash_counter(2),
	datac => flash_counter(5),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X19_Y17_N26
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!flash_counter(3) & (flash_counter(6) & (!flash_counter(8) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(3),
	datab => flash_counter(6),
	datac => flash_counter(8),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X19_Y17_N4
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (flash_counter(3)) # ((flash_counter(2)) # ((flash_counter(0)) # (flash_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(3),
	datab => flash_counter(2),
	datac => flash_counter(0),
	datad => flash_counter(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X19_Y17_N6
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (flash_counter(5)) # ((flash_counter(6)) # ((\LessThan2~0_combout\ & flash_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(5),
	datab => flash_counter(6),
	datac => \LessThan2~0_combout\,
	datad => flash_counter(4),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X19_Y17_N20
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (flash_counter(8) & (flash_counter(7) & \LessThan2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(8),
	datac => flash_counter(7),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X17_Y17_N16
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~5_combout\ & (!flash_counter(30) & (!flash_counter(29) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => flash_counter(30),
	datac => flash_counter(29),
	datad => \Equal0~4_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X19_Y17_N10
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (flash_counter(8) & (!flash_counter(6) & (flash_counter(3) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(8),
	datab => flash_counter(6),
	datac => flash_counter(3),
	datad => \Equal0~9_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X19_Y17_N24
\leds_output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output[0]~0_combout\ = (!flash_counter(31) & (!\Equal2~0_combout\ & ((\LessThan2~2_combout\) # (!\Equal0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(31),
	datab => \LessThan2~2_combout\,
	datac => \Equal0~11_combout\,
	datad => \Equal2~0_combout\,
	combout => \leds_output[0]~0_combout\);

-- Location: LCCOMB_X19_Y17_N18
\flash_counter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter~32_combout\ = (!\Equal1~1_combout\ & (!\Equal0~10_combout\ & \leds_output[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \Equal0~10_combout\,
	datad => \leds_output[0]~0_combout\,
	combout => \flash_counter~32_combout\);

-- Location: LCCOMB_X19_Y18_N28
\doing_flash_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doing_flash_b~0_combout\ = (\doing_flash_b~q\ & ((!\flash_counter~32_combout\))) # (!\doing_flash_b~q\ & (\flash_b~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flash_b~q\,
	datac => \doing_flash_b~q\,
	datad => \flash_counter~32_combout\,
	combout => \doing_flash_b~0_combout\);

-- Location: FF_X19_Y18_N29
doing_flash_b : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \doing_flash_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doing_flash_b~q\);

-- Location: LCCOMB_X19_Y17_N22
\leds_output[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output[0]~2_combout\ = ((flash_counter(3) & ((flash_counter(6)) # (!flash_counter(8)))) # (!flash_counter(3) & ((flash_counter(8)) # (!flash_counter(6))))) # (!\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter(3),
	datab => flash_counter(6),
	datac => flash_counter(8),
	datad => \Equal0~9_combout\,
	combout => \leds_output[0]~2_combout\);

-- Location: LCCOMB_X19_Y17_N28
\leds_output[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output[0]~1_combout\ = (!\Equal0~10_combout\ & (\doing_flash_b~q\ & ((\Equal1~1_combout\) # (\leds_output[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \doing_flash_b~q\,
	datac => \Equal1~1_combout\,
	datad => \leds_output[0]~0_combout\,
	combout => \leds_output[0]~1_combout\);

-- Location: LCCOMB_X19_Y17_N30
\leds_output[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output[0]~3_combout\ = (!\leds_output[0]~1_combout\ & ((leds_output(0)) # ((!\leds_output[0]~2_combout\ & \doing_flash_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_output[0]~2_combout\,
	datab => \doing_flash_b~q\,
	datac => leds_output(0),
	datad => \leds_output[0]~1_combout\,
	combout => \leds_output[0]~3_combout\);

-- Location: FF_X19_Y17_N31
\leds_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \leds_output[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => leds_output(0));

-- Location: LCCOMB_X19_Y15_N0
\flash_counter_s[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[0]~33_combout\ = flash_counter_s(0) $ (VCC)
-- \flash_counter_s[0]~34\ = CARRY(flash_counter_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(0),
	datad => VCC,
	combout => \flash_counter_s[0]~33_combout\,
	cout => \flash_counter_s[0]~34\);

-- Location: LCCOMB_X19_Y15_N6
\flash_counter_s[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[3]~39_combout\ = (flash_counter_s(3) & (!\flash_counter_s[2]~38\)) # (!flash_counter_s(3) & ((\flash_counter_s[2]~38\) # (GND)))
-- \flash_counter_s[3]~40\ = CARRY((!\flash_counter_s[2]~38\) # (!flash_counter_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(3),
	datad => VCC,
	cin => \flash_counter_s[2]~38\,
	combout => \flash_counter_s[3]~39_combout\,
	cout => \flash_counter_s[3]~40\);

-- Location: LCCOMB_X19_Y15_N8
\flash_counter_s[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[4]~41_combout\ = (flash_counter_s(4) & (\flash_counter_s[3]~40\ $ (GND))) # (!flash_counter_s(4) & (!\flash_counter_s[3]~40\ & VCC))
-- \flash_counter_s[4]~42\ = CARRY((flash_counter_s(4) & !\flash_counter_s[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(4),
	datad => VCC,
	cin => \flash_counter_s[3]~40\,
	combout => \flash_counter_s[4]~41_combout\,
	cout => \flash_counter_s[4]~42\);

-- Location: LCCOMB_X23_Y19_N24
\flash_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_s~feeder_combout\ = \LessThan1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan1~1_combout\,
	combout => \flash_s~feeder_combout\);

-- Location: FF_X23_Y19_N25
flash_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_s~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flash_s~q\);

-- Location: LCCOMB_X21_Y16_N20
\doing_flash_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doing_flash_s~0_combout\ = (\doing_flash_s~q\ & (!\flash_counter_s~32_combout\)) # (!\doing_flash_s~q\ & ((\flash_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flash_counter_s~32_combout\,
	datac => \doing_flash_s~q\,
	datad => \flash_s~q\,
	combout => \doing_flash_s~0_combout\);

-- Location: FF_X21_Y16_N21
doing_flash_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \doing_flash_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doing_flash_s~q\);

-- Location: FF_X19_Y15_N9
\flash_counter_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[4]~41_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(4));

-- Location: LCCOMB_X19_Y15_N10
\flash_counter_s[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[5]~43_combout\ = (flash_counter_s(5) & (!\flash_counter_s[4]~42\)) # (!flash_counter_s(5) & ((\flash_counter_s[4]~42\) # (GND)))
-- \flash_counter_s[5]~44\ = CARRY((!\flash_counter_s[4]~42\) # (!flash_counter_s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(5),
	datad => VCC,
	cin => \flash_counter_s[4]~42\,
	combout => \flash_counter_s[5]~43_combout\,
	cout => \flash_counter_s[5]~44\);

-- Location: FF_X19_Y15_N11
\flash_counter_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[5]~43_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(5));

-- Location: LCCOMB_X19_Y15_N12
\flash_counter_s[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[6]~45_combout\ = (flash_counter_s(6) & (\flash_counter_s[5]~44\ $ (GND))) # (!flash_counter_s(6) & (!\flash_counter_s[5]~44\ & VCC))
-- \flash_counter_s[6]~46\ = CARRY((flash_counter_s(6) & !\flash_counter_s[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(6),
	datad => VCC,
	cin => \flash_counter_s[5]~44\,
	combout => \flash_counter_s[6]~45_combout\,
	cout => \flash_counter_s[6]~46\);

-- Location: FF_X19_Y15_N13
\flash_counter_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[6]~45_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(6));

-- Location: LCCOMB_X19_Y15_N14
\flash_counter_s[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[7]~47_combout\ = (flash_counter_s(7) & (!\flash_counter_s[6]~46\)) # (!flash_counter_s(7) & ((\flash_counter_s[6]~46\) # (GND)))
-- \flash_counter_s[7]~48\ = CARRY((!\flash_counter_s[6]~46\) # (!flash_counter_s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(7),
	datad => VCC,
	cin => \flash_counter_s[6]~46\,
	combout => \flash_counter_s[7]~47_combout\,
	cout => \flash_counter_s[7]~48\);

-- Location: FF_X19_Y15_N15
\flash_counter_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[7]~47_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(7));

-- Location: LCCOMB_X19_Y15_N16
\flash_counter_s[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[8]~49_combout\ = (flash_counter_s(8) & (\flash_counter_s[7]~48\ $ (GND))) # (!flash_counter_s(8) & (!\flash_counter_s[7]~48\ & VCC))
-- \flash_counter_s[8]~50\ = CARRY((flash_counter_s(8) & !\flash_counter_s[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(8),
	datad => VCC,
	cin => \flash_counter_s[7]~48\,
	combout => \flash_counter_s[8]~49_combout\,
	cout => \flash_counter_s[8]~50\);

-- Location: FF_X19_Y15_N17
\flash_counter_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[8]~49_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(8));

-- Location: LCCOMB_X18_Y15_N30
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (flash_counter_s(7)) # ((flash_counter_s(8)) # ((flash_counter_s(5) & flash_counter_s(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(5),
	datab => flash_counter_s(6),
	datac => flash_counter_s(7),
	datad => flash_counter_s(8),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X19_Y15_N18
\flash_counter_s[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[9]~51_combout\ = (flash_counter_s(9) & (!\flash_counter_s[8]~50\)) # (!flash_counter_s(9) & ((\flash_counter_s[8]~50\) # (GND)))
-- \flash_counter_s[9]~52\ = CARRY((!\flash_counter_s[8]~50\) # (!flash_counter_s(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(9),
	datad => VCC,
	cin => \flash_counter_s[8]~50\,
	combout => \flash_counter_s[9]~51_combout\,
	cout => \flash_counter_s[9]~52\);

-- Location: FF_X19_Y15_N19
\flash_counter_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[9]~51_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(9));

-- Location: LCCOMB_X18_Y15_N22
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (flash_counter_s(4) & ((flash_counter_s(2)) # ((flash_counter_s(0)) # (flash_counter_s(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(2),
	datab => flash_counter_s(0),
	datac => flash_counter_s(4),
	datad => flash_counter_s(1),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X18_Y15_N0
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (flash_counter_s(6) & flash_counter_s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => flash_counter_s(6),
	datad => flash_counter_s(3),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X18_Y15_N16
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (flash_counter_s(9) & ((\LessThan3~0_combout\) # ((\LessThan3~1_combout\ & \Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => flash_counter_s(9),
	datac => \LessThan3~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X19_Y15_N20
\flash_counter_s[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[10]~53_combout\ = (flash_counter_s(10) & (\flash_counter_s[9]~52\ $ (GND))) # (!flash_counter_s(10) & (!\flash_counter_s[9]~52\ & VCC))
-- \flash_counter_s[10]~54\ = CARRY((flash_counter_s(10) & !\flash_counter_s[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(10),
	datad => VCC,
	cin => \flash_counter_s[9]~52\,
	combout => \flash_counter_s[10]~53_combout\,
	cout => \flash_counter_s[10]~54\);

-- Location: FF_X19_Y15_N21
\flash_counter_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[10]~53_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(10));

-- Location: LCCOMB_X19_Y15_N22
\flash_counter_s[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[11]~55_combout\ = (flash_counter_s(11) & (!\flash_counter_s[10]~54\)) # (!flash_counter_s(11) & ((\flash_counter_s[10]~54\) # (GND)))
-- \flash_counter_s[11]~56\ = CARRY((!\flash_counter_s[10]~54\) # (!flash_counter_s(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(11),
	datad => VCC,
	cin => \flash_counter_s[10]~54\,
	combout => \flash_counter_s[11]~55_combout\,
	cout => \flash_counter_s[11]~56\);

-- Location: FF_X19_Y15_N23
\flash_counter_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[11]~55_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(11));

-- Location: LCCOMB_X19_Y15_N24
\flash_counter_s[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[12]~57_combout\ = (flash_counter_s(12) & (\flash_counter_s[11]~56\ $ (GND))) # (!flash_counter_s(12) & (!\flash_counter_s[11]~56\ & VCC))
-- \flash_counter_s[12]~58\ = CARRY((flash_counter_s(12) & !\flash_counter_s[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(12),
	datad => VCC,
	cin => \flash_counter_s[11]~56\,
	combout => \flash_counter_s[12]~57_combout\,
	cout => \flash_counter_s[12]~58\);

-- Location: FF_X18_Y16_N1
\flash_counter_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[12]~57_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(12));

-- Location: LCCOMB_X19_Y15_N26
\flash_counter_s[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[13]~59_combout\ = (flash_counter_s(13) & (!\flash_counter_s[12]~58\)) # (!flash_counter_s(13) & ((\flash_counter_s[12]~58\) # (GND)))
-- \flash_counter_s[13]~60\ = CARRY((!\flash_counter_s[12]~58\) # (!flash_counter_s(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(13),
	datad => VCC,
	cin => \flash_counter_s[12]~58\,
	combout => \flash_counter_s[13]~59_combout\,
	cout => \flash_counter_s[13]~60\);

-- Location: FF_X19_Y15_N27
\flash_counter_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[13]~59_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(13));

-- Location: LCCOMB_X19_Y15_N28
\flash_counter_s[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[14]~61_combout\ = (flash_counter_s(14) & (\flash_counter_s[13]~60\ $ (GND))) # (!flash_counter_s(14) & (!\flash_counter_s[13]~60\ & VCC))
-- \flash_counter_s[14]~62\ = CARRY((flash_counter_s(14) & !\flash_counter_s[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(14),
	datad => VCC,
	cin => \flash_counter_s[13]~60\,
	combout => \flash_counter_s[14]~61_combout\,
	cout => \flash_counter_s[14]~62\);

-- Location: FF_X19_Y15_N29
\flash_counter_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[14]~61_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(14));

-- Location: LCCOMB_X19_Y15_N30
\flash_counter_s[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[15]~63_combout\ = (flash_counter_s(15) & (!\flash_counter_s[14]~62\)) # (!flash_counter_s(15) & ((\flash_counter_s[14]~62\) # (GND)))
-- \flash_counter_s[15]~64\ = CARRY((!\flash_counter_s[14]~62\) # (!flash_counter_s(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(15),
	datad => VCC,
	cin => \flash_counter_s[14]~62\,
	combout => \flash_counter_s[15]~63_combout\,
	cout => \flash_counter_s[15]~64\);

-- Location: FF_X18_Y16_N11
\flash_counter_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[15]~63_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(15));

-- Location: LCCOMB_X19_Y14_N0
\flash_counter_s[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[16]~65_combout\ = (flash_counter_s(16) & (\flash_counter_s[15]~64\ $ (GND))) # (!flash_counter_s(16) & (!\flash_counter_s[15]~64\ & VCC))
-- \flash_counter_s[16]~66\ = CARRY((flash_counter_s(16) & !\flash_counter_s[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(16),
	datad => VCC,
	cin => \flash_counter_s[15]~64\,
	combout => \flash_counter_s[16]~65_combout\,
	cout => \flash_counter_s[16]~66\);

-- Location: FF_X19_Y14_N1
\flash_counter_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[16]~65_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(16));

-- Location: LCCOMB_X19_Y14_N2
\flash_counter_s[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[17]~67_combout\ = (flash_counter_s(17) & (!\flash_counter_s[16]~66\)) # (!flash_counter_s(17) & ((\flash_counter_s[16]~66\) # (GND)))
-- \flash_counter_s[17]~68\ = CARRY((!\flash_counter_s[16]~66\) # (!flash_counter_s(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(17),
	datad => VCC,
	cin => \flash_counter_s[16]~66\,
	combout => \flash_counter_s[17]~67_combout\,
	cout => \flash_counter_s[17]~68\);

-- Location: FF_X18_Y16_N17
\flash_counter_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[17]~67_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(17));

-- Location: LCCOMB_X19_Y14_N4
\flash_counter_s[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[18]~69_combout\ = (flash_counter_s(18) & (\flash_counter_s[17]~68\ $ (GND))) # (!flash_counter_s(18) & (!\flash_counter_s[17]~68\ & VCC))
-- \flash_counter_s[18]~70\ = CARRY((flash_counter_s(18) & !\flash_counter_s[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(18),
	datad => VCC,
	cin => \flash_counter_s[17]~68\,
	combout => \flash_counter_s[18]~69_combout\,
	cout => \flash_counter_s[18]~70\);

-- Location: FF_X18_Y16_N23
\flash_counter_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[18]~69_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(18));

-- Location: LCCOMB_X19_Y14_N6
\flash_counter_s[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[19]~71_combout\ = (flash_counter_s(19) & (!\flash_counter_s[18]~70\)) # (!flash_counter_s(19) & ((\flash_counter_s[18]~70\) # (GND)))
-- \flash_counter_s[19]~72\ = CARRY((!\flash_counter_s[18]~70\) # (!flash_counter_s(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(19),
	datad => VCC,
	cin => \flash_counter_s[18]~70\,
	combout => \flash_counter_s[19]~71_combout\,
	cout => \flash_counter_s[19]~72\);

-- Location: FF_X19_Y14_N7
\flash_counter_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[19]~71_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(19));

-- Location: LCCOMB_X19_Y14_N8
\flash_counter_s[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[20]~73_combout\ = (flash_counter_s(20) & (\flash_counter_s[19]~72\ $ (GND))) # (!flash_counter_s(20) & (!\flash_counter_s[19]~72\ & VCC))
-- \flash_counter_s[20]~74\ = CARRY((flash_counter_s(20) & !\flash_counter_s[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(20),
	datad => VCC,
	cin => \flash_counter_s[19]~72\,
	combout => \flash_counter_s[20]~73_combout\,
	cout => \flash_counter_s[20]~74\);

-- Location: FF_X19_Y14_N9
\flash_counter_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[20]~73_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(20));

-- Location: LCCOMB_X19_Y14_N10
\flash_counter_s[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[21]~75_combout\ = (flash_counter_s(21) & (!\flash_counter_s[20]~74\)) # (!flash_counter_s(21) & ((\flash_counter_s[20]~74\) # (GND)))
-- \flash_counter_s[21]~76\ = CARRY((!\flash_counter_s[20]~74\) # (!flash_counter_s(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(21),
	datad => VCC,
	cin => \flash_counter_s[20]~74\,
	combout => \flash_counter_s[21]~75_combout\,
	cout => \flash_counter_s[21]~76\);

-- Location: FF_X19_Y14_N11
\flash_counter_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[21]~75_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(21));

-- Location: LCCOMB_X19_Y14_N12
\flash_counter_s[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[22]~77_combout\ = (flash_counter_s(22) & (\flash_counter_s[21]~76\ $ (GND))) # (!flash_counter_s(22) & (!\flash_counter_s[21]~76\ & VCC))
-- \flash_counter_s[22]~78\ = CARRY((flash_counter_s(22) & !\flash_counter_s[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(22),
	datad => VCC,
	cin => \flash_counter_s[21]~76\,
	combout => \flash_counter_s[22]~77_combout\,
	cout => \flash_counter_s[22]~78\);

-- Location: FF_X18_Y16_N25
\flash_counter_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[22]~77_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(22));

-- Location: LCCOMB_X19_Y14_N14
\flash_counter_s[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[23]~79_combout\ = (flash_counter_s(23) & (!\flash_counter_s[22]~78\)) # (!flash_counter_s(23) & ((\flash_counter_s[22]~78\) # (GND)))
-- \flash_counter_s[23]~80\ = CARRY((!\flash_counter_s[22]~78\) # (!flash_counter_s(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(23),
	datad => VCC,
	cin => \flash_counter_s[22]~78\,
	combout => \flash_counter_s[23]~79_combout\,
	cout => \flash_counter_s[23]~80\);

-- Location: FF_X19_Y14_N15
\flash_counter_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[23]~79_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(23));

-- Location: LCCOMB_X19_Y14_N16
\flash_counter_s[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[24]~81_combout\ = (flash_counter_s(24) & (\flash_counter_s[23]~80\ $ (GND))) # (!flash_counter_s(24) & (!\flash_counter_s[23]~80\ & VCC))
-- \flash_counter_s[24]~82\ = CARRY((flash_counter_s(24) & !\flash_counter_s[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(24),
	datad => VCC,
	cin => \flash_counter_s[23]~80\,
	combout => \flash_counter_s[24]~81_combout\,
	cout => \flash_counter_s[24]~82\);

-- Location: FF_X18_Y16_N15
\flash_counter_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[24]~81_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(24));

-- Location: LCCOMB_X19_Y14_N18
\flash_counter_s[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[25]~83_combout\ = (flash_counter_s(25) & (!\flash_counter_s[24]~82\)) # (!flash_counter_s(25) & ((\flash_counter_s[24]~82\) # (GND)))
-- \flash_counter_s[25]~84\ = CARRY((!\flash_counter_s[24]~82\) # (!flash_counter_s(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(25),
	datad => VCC,
	cin => \flash_counter_s[24]~82\,
	combout => \flash_counter_s[25]~83_combout\,
	cout => \flash_counter_s[25]~84\);

-- Location: FF_X18_Y16_N13
\flash_counter_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[25]~83_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(25));

-- Location: LCCOMB_X19_Y14_N20
\flash_counter_s[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[26]~85_combout\ = (flash_counter_s(26) & (\flash_counter_s[25]~84\ $ (GND))) # (!flash_counter_s(26) & (!\flash_counter_s[25]~84\ & VCC))
-- \flash_counter_s[26]~86\ = CARRY((flash_counter_s(26) & !\flash_counter_s[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(26),
	datad => VCC,
	cin => \flash_counter_s[25]~84\,
	combout => \flash_counter_s[26]~85_combout\,
	cout => \flash_counter_s[26]~86\);

-- Location: FF_X19_Y14_N21
\flash_counter_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[26]~85_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(26));

-- Location: LCCOMB_X19_Y14_N22
\flash_counter_s[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[27]~87_combout\ = (flash_counter_s(27) & (!\flash_counter_s[26]~86\)) # (!flash_counter_s(27) & ((\flash_counter_s[26]~86\) # (GND)))
-- \flash_counter_s[27]~88\ = CARRY((!\flash_counter_s[26]~86\) # (!flash_counter_s(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(27),
	datad => VCC,
	cin => \flash_counter_s[26]~86\,
	combout => \flash_counter_s[27]~87_combout\,
	cout => \flash_counter_s[27]~88\);

-- Location: FF_X19_Y16_N1
\flash_counter_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[27]~87_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(27));

-- Location: LCCOMB_X19_Y14_N24
\flash_counter_s[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[28]~89_combout\ = (flash_counter_s(28) & (\flash_counter_s[27]~88\ $ (GND))) # (!flash_counter_s(28) & (!\flash_counter_s[27]~88\ & VCC))
-- \flash_counter_s[28]~90\ = CARRY((flash_counter_s(28) & !\flash_counter_s[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(28),
	datad => VCC,
	cin => \flash_counter_s[27]~88\,
	combout => \flash_counter_s[28]~89_combout\,
	cout => \flash_counter_s[28]~90\);

-- Location: FF_X19_Y14_N25
\flash_counter_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[28]~89_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(28));

-- Location: LCCOMB_X19_Y14_N26
\flash_counter_s[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[29]~91_combout\ = (flash_counter_s(29) & (!\flash_counter_s[28]~90\)) # (!flash_counter_s(29) & ((\flash_counter_s[28]~90\) # (GND)))
-- \flash_counter_s[29]~92\ = CARRY((!\flash_counter_s[28]~90\) # (!flash_counter_s(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(29),
	datad => VCC,
	cin => \flash_counter_s[28]~90\,
	combout => \flash_counter_s[29]~91_combout\,
	cout => \flash_counter_s[29]~92\);

-- Location: FF_X18_Y16_N27
\flash_counter_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[29]~91_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(29));

-- Location: LCCOMB_X19_Y14_N28
\flash_counter_s[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[30]~93_combout\ = (flash_counter_s(30) & (\flash_counter_s[29]~92\ $ (GND))) # (!flash_counter_s(30) & (!\flash_counter_s[29]~92\ & VCC))
-- \flash_counter_s[30]~94\ = CARRY((flash_counter_s(30) & !\flash_counter_s[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(30),
	datad => VCC,
	cin => \flash_counter_s[29]~92\,
	combout => \flash_counter_s[30]~93_combout\,
	cout => \flash_counter_s[30]~94\);

-- Location: FF_X19_Y16_N7
\flash_counter_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	asdata => \flash_counter_s[30]~93_combout\,
	sclr => \flash_counter_s~32_combout\,
	sload => VCC,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(30));

-- Location: LCCOMB_X19_Y14_N30
\flash_counter_s[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[31]~95_combout\ = flash_counter_s(31) $ (\flash_counter_s[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(31),
	cin => \flash_counter_s[30]~94\,
	combout => \flash_counter_s[31]~95_combout\);

-- Location: FF_X19_Y14_N31
\flash_counter_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[31]~95_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(31));

-- Location: LCCOMB_X19_Y16_N16
\Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!flash_counter_s(29) & (!flash_counter_s(28) & (!flash_counter_s(27) & !flash_counter_s(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(29),
	datab => flash_counter_s(28),
	datac => flash_counter_s(27),
	datad => flash_counter_s(26),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X18_Y16_N30
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!flash_counter_s(25) & (!flash_counter_s(22) & (!flash_counter_s(24) & !flash_counter_s(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(25),
	datab => flash_counter_s(22),
	datac => flash_counter_s(24),
	datad => flash_counter_s(23),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X18_Y16_N18
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!flash_counter_s(15) & (!flash_counter_s(17) & (!flash_counter_s(16) & !flash_counter_s(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(15),
	datab => flash_counter_s(17),
	datac => flash_counter_s(16),
	datad => flash_counter_s(14),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X18_Y16_N8
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!flash_counter_s(12) & (!flash_counter_s(10) & (!flash_counter_s(11) & !flash_counter_s(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(12),
	datab => flash_counter_s(10),
	datac => flash_counter_s(11),
	datad => flash_counter_s(13),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X18_Y16_N28
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!flash_counter_s(18) & (!flash_counter_s(20) & (!flash_counter_s(21) & !flash_counter_s(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(18),
	datab => flash_counter_s(20),
	datac => flash_counter_s(21),
	datad => flash_counter_s(19),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X18_Y16_N20
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~3_combout\ & (\Equal3~1_combout\ & (\Equal3~0_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal3~1_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X19_Y16_N4
\Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~10_combout\ = (\Equal3~5_combout\ & (!flash_counter_s(30) & \Equal3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~5_combout\,
	datac => flash_counter_s(30),
	datad => \Equal3~4_combout\,
	combout => \Equal3~10_combout\);

-- Location: LCCOMB_X19_Y16_N8
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (flash_counter_s(2) & flash_counter_s(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(2),
	datad => flash_counter_s(5),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X19_Y16_N26
\Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!flash_counter_s(0) & (!flash_counter_s(1) & (!flash_counter_s(31) & !flash_counter_s(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(0),
	datab => flash_counter_s(1),
	datac => flash_counter_s(31),
	datad => flash_counter_s(9),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X19_Y16_N6
\Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (\Equal3~6_combout\ & (\Equal3~5_combout\ & (!flash_counter_s(30) & \Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~6_combout\,
	datab => \Equal3~5_combout\,
	datac => flash_counter_s(30),
	datad => \Equal3~4_combout\,
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X19_Y16_N10
\Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (flash_counter_s(6) & (!flash_counter_s(3) & (\Equal5~0_combout\ & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(6),
	datab => flash_counter_s(3),
	datac => \Equal5~0_combout\,
	datad => \Equal3~7_combout\,
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X19_Y16_N12
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (flash_counter_s(7) & (flash_counter_s(8) & (flash_counter_s(4) & \Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(7),
	datab => flash_counter_s(8),
	datac => flash_counter_s(4),
	datad => \Equal3~8_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X19_Y16_N22
\leds_output_s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output_s[2]~2_combout\ = (!flash_counter_s(31) & (!\Equal7~0_combout\ & ((\LessThan3~2_combout\) # (!\Equal3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~2_combout\,
	datab => flash_counter_s(31),
	datac => \Equal3~10_combout\,
	datad => \Equal7~0_combout\,
	combout => \leds_output_s[2]~2_combout\);

-- Location: LCCOMB_X19_Y16_N24
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (flash_counter_s(7) & (!flash_counter_s(2) & (!flash_counter_s(5) & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(7),
	datab => flash_counter_s(2),
	datac => flash_counter_s(5),
	datad => \Equal3~7_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X19_Y16_N28
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\Equal4~1_combout\ & (!flash_counter_s(4) & (!flash_counter_s(8) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => flash_counter_s(4),
	datac => flash_counter_s(8),
	datad => \Equal4~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X18_Y15_N28
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!flash_counter_s(3) & (flash_counter_s(4) & (!flash_counter_s(6) & flash_counter_s(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(3),
	datab => flash_counter_s(4),
	datac => flash_counter_s(6),
	datad => flash_counter_s(8),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X19_Y16_N14
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal6~0_combout\ & \Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal6~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X19_Y16_N30
\flash_counter_s~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s~32_combout\ = (\leds_output_s[2]~2_combout\ & (!\Equal4~2_combout\ & (!\Equal6~1_combout\ & \leds_output_s[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_output_s[2]~2_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal6~1_combout\,
	datad => \leds_output_s[2]~1_combout\,
	combout => \flash_counter_s~32_combout\);

-- Location: FF_X19_Y15_N1
\flash_counter_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[0]~33_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(0));

-- Location: LCCOMB_X19_Y15_N2
\flash_counter_s[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[1]~35_combout\ = (flash_counter_s(1) & (!\flash_counter_s[0]~34\)) # (!flash_counter_s(1) & ((\flash_counter_s[0]~34\) # (GND)))
-- \flash_counter_s[1]~36\ = CARRY((!\flash_counter_s[0]~34\) # (!flash_counter_s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(1),
	datad => VCC,
	cin => \flash_counter_s[0]~34\,
	combout => \flash_counter_s[1]~35_combout\,
	cout => \flash_counter_s[1]~36\);

-- Location: FF_X19_Y15_N3
\flash_counter_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[1]~35_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(1));

-- Location: LCCOMB_X19_Y15_N4
\flash_counter_s[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \flash_counter_s[2]~37_combout\ = (flash_counter_s(2) & (\flash_counter_s[1]~36\ $ (GND))) # (!flash_counter_s(2) & (!\flash_counter_s[1]~36\ & VCC))
-- \flash_counter_s[2]~38\ = CARRY((flash_counter_s(2) & !\flash_counter_s[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => flash_counter_s(2),
	datad => VCC,
	cin => \flash_counter_s[1]~36\,
	combout => \flash_counter_s[2]~37_combout\,
	cout => \flash_counter_s[2]~38\);

-- Location: FF_X19_Y15_N5
\flash_counter_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[2]~37_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(2));

-- Location: FF_X19_Y15_N7
\flash_counter_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \flash_counter_s[3]~39_combout\,
	sclr => \flash_counter_s~32_combout\,
	ena => \doing_flash_s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flash_counter_s(3));

-- Location: LCCOMB_X19_Y16_N0
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (flash_counter_s(5) & (flash_counter_s(2) & \Equal3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(5),
	datab => flash_counter_s(2),
	datad => \Equal3~7_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X19_Y16_N18
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!flash_counter_s(7) & (flash_counter_s(8) & (!flash_counter_s(4) & !flash_counter_s(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(7),
	datab => flash_counter_s(8),
	datac => flash_counter_s(4),
	datad => flash_counter_s(6),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X19_Y16_N20
\Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!flash_counter_s(7) & (!flash_counter_s(8) & (!flash_counter_s(4) & \Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(7),
	datab => flash_counter_s(8),
	datac => flash_counter_s(4),
	datad => \Equal3~8_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X19_Y16_N2
\leds_output_s[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output_s[2]~1_combout\ = (!\Equal3~9_combout\ & (((!\Equal5~2_combout\) # (!\Equal5~1_combout\)) # (!flash_counter_s(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => flash_counter_s(3),
	datab => \Equal5~1_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal3~9_combout\,
	combout => \leds_output_s[2]~1_combout\);

-- Location: LCCOMB_X23_Y19_N26
\leds_output_s[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output_s[2]~0_combout\ = (\doing_flash_s~q\ & (!\Equal6~1_combout\ & ((leds_output_s(2)) # (\Equal7~0_combout\)))) # (!\doing_flash_s~q\ & (leds_output_s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => leds_output_s(2),
	datab => \doing_flash_s~q\,
	datac => \Equal7~0_combout\,
	datad => \Equal6~1_combout\,
	combout => \leds_output_s[2]~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\leds_output_s[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output_s[2]~3_combout\ = (\leds_output_s[2]~1_combout\ & ((\leds_output_s[2]~2_combout\) # ((\Equal4~2_combout\ & !\Equal3~9_combout\)))) # (!\leds_output_s[2]~1_combout\ & (\Equal4~2_combout\ & ((!\Equal3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_output_s[2]~1_combout\,
	datab => \Equal4~2_combout\,
	datac => \leds_output_s[2]~2_combout\,
	datad => \Equal3~9_combout\,
	combout => \leds_output_s[2]~3_combout\);

-- Location: LCCOMB_X23_Y19_N20
\leds_output_s[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_output_s[2]~4_combout\ = (\doing_flash_s~q\ & (!\leds_output_s[2]~3_combout\ & ((\leds_output_s[2]~0_combout\) # (!\leds_output_s[2]~1_combout\)))) # (!\doing_flash_s~q\ & (((\leds_output_s[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_output_s[2]~1_combout\,
	datab => \doing_flash_s~q\,
	datac => \leds_output_s[2]~0_combout\,
	datad => \leds_output_s[2]~3_combout\,
	combout => \leds_output_s[2]~4_combout\);

-- Location: FF_X23_Y19_N21
\leds_output_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|ALT_INV_newclk~clkctrl_outclk\,
	d => \leds_output_s[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => leds_output_s(2));

-- Location: LCCOMB_X23_Y19_N14
\leds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (\doing_flash_b~q\ & (!leds_output(0))) # (!\doing_flash_b~q\ & ((!leds_output_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doing_flash_b~q\,
	datac => leds_output(0),
	datad => leds_output_s(2),
	combout => \leds~0_combout\);

ww_dig(0) <= \dig[0]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;
END structure;


