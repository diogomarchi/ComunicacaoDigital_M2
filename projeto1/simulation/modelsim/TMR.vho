-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/09/2020 11:03:44"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	TMR IS
    PORT (
	i_A : IN std_logic_vector(15 DOWNTO 0);
	i_B : IN std_logic_vector(15 DOWNTO 0);
	i_C : IN std_logic_vector(15 DOWNTO 0);
	o_A : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END TMR;

-- Design Ports Information
-- o_A[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[10]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[11]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[12]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[13]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[15]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[6]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[9]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[9]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[9]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[11]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[11]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[12]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[12]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[13]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[13]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[14]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[15]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[15]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[15]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TMR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_C : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_A : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_C[0]~input_o\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
SIGNAL \o_A~0_combout\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \i_C[1]~input_o\ : std_logic;
SIGNAL \o_A~1_combout\ : std_logic;
SIGNAL \i_C[2]~input_o\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \o_A~2_combout\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \i_C[3]~input_o\ : std_logic;
SIGNAL \o_A~3_combout\ : std_logic;
SIGNAL \i_C[4]~input_o\ : std_logic;
SIGNAL \i_A[4]~input_o\ : std_logic;
SIGNAL \i_B[4]~input_o\ : std_logic;
SIGNAL \o_A~4_combout\ : std_logic;
SIGNAL \i_A[5]~input_o\ : std_logic;
SIGNAL \i_C[5]~input_o\ : std_logic;
SIGNAL \i_B[5]~input_o\ : std_logic;
SIGNAL \o_A~5_combout\ : std_logic;
SIGNAL \i_A[6]~input_o\ : std_logic;
SIGNAL \i_C[6]~input_o\ : std_logic;
SIGNAL \i_B[6]~input_o\ : std_logic;
SIGNAL \o_A~6_combout\ : std_logic;
SIGNAL \i_C[7]~input_o\ : std_logic;
SIGNAL \i_B[7]~input_o\ : std_logic;
SIGNAL \i_A[7]~input_o\ : std_logic;
SIGNAL \o_A~7_combout\ : std_logic;
SIGNAL \i_A[8]~input_o\ : std_logic;
SIGNAL \i_B[8]~input_o\ : std_logic;
SIGNAL \i_C[8]~input_o\ : std_logic;
SIGNAL \o_A~8_combout\ : std_logic;
SIGNAL \i_B[9]~input_o\ : std_logic;
SIGNAL \i_C[9]~input_o\ : std_logic;
SIGNAL \i_A[9]~input_o\ : std_logic;
SIGNAL \o_A~9_combout\ : std_logic;
SIGNAL \i_B[10]~input_o\ : std_logic;
SIGNAL \i_C[10]~input_o\ : std_logic;
SIGNAL \i_A[10]~input_o\ : std_logic;
SIGNAL \o_A~10_combout\ : std_logic;
SIGNAL \i_B[11]~input_o\ : std_logic;
SIGNAL \i_C[11]~input_o\ : std_logic;
SIGNAL \i_A[11]~input_o\ : std_logic;
SIGNAL \o_A~11_combout\ : std_logic;
SIGNAL \i_B[12]~input_o\ : std_logic;
SIGNAL \i_A[12]~input_o\ : std_logic;
SIGNAL \i_C[12]~input_o\ : std_logic;
SIGNAL \o_A~12_combout\ : std_logic;
SIGNAL \i_B[13]~input_o\ : std_logic;
SIGNAL \i_A[13]~input_o\ : std_logic;
SIGNAL \i_C[13]~input_o\ : std_logic;
SIGNAL \o_A~13_combout\ : std_logic;
SIGNAL \i_C[14]~input_o\ : std_logic;
SIGNAL \i_A[14]~input_o\ : std_logic;
SIGNAL \i_B[14]~input_o\ : std_logic;
SIGNAL \o_A~14_combout\ : std_logic;
SIGNAL \i_C[15]~input_o\ : std_logic;
SIGNAL \i_A[15]~input_o\ : std_logic;
SIGNAL \i_B[15]~input_o\ : std_logic;
SIGNAL \o_A~15_combout\ : std_logic;
SIGNAL \ALT_INV_i_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_C[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_B[0]~input_o\ : std_logic;

BEGIN

ww_i_A <= i_A;
ww_i_B <= i_B;
ww_i_C <= i_C;
o_A <= ww_o_A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_A[15]~input_o\ <= NOT \i_A[15]~input_o\;
\ALT_INV_i_C[15]~input_o\ <= NOT \i_C[15]~input_o\;
\ALT_INV_i_B[15]~input_o\ <= NOT \i_B[15]~input_o\;
\ALT_INV_i_A[14]~input_o\ <= NOT \i_A[14]~input_o\;
\ALT_INV_i_C[14]~input_o\ <= NOT \i_C[14]~input_o\;
\ALT_INV_i_B[14]~input_o\ <= NOT \i_B[14]~input_o\;
\ALT_INV_i_A[13]~input_o\ <= NOT \i_A[13]~input_o\;
\ALT_INV_i_C[13]~input_o\ <= NOT \i_C[13]~input_o\;
\ALT_INV_i_B[13]~input_o\ <= NOT \i_B[13]~input_o\;
\ALT_INV_i_A[12]~input_o\ <= NOT \i_A[12]~input_o\;
\ALT_INV_i_C[12]~input_o\ <= NOT \i_C[12]~input_o\;
\ALT_INV_i_B[12]~input_o\ <= NOT \i_B[12]~input_o\;
\ALT_INV_i_A[11]~input_o\ <= NOT \i_A[11]~input_o\;
\ALT_INV_i_C[11]~input_o\ <= NOT \i_C[11]~input_o\;
\ALT_INV_i_B[11]~input_o\ <= NOT \i_B[11]~input_o\;
\ALT_INV_i_A[10]~input_o\ <= NOT \i_A[10]~input_o\;
\ALT_INV_i_C[10]~input_o\ <= NOT \i_C[10]~input_o\;
\ALT_INV_i_B[10]~input_o\ <= NOT \i_B[10]~input_o\;
\ALT_INV_i_A[9]~input_o\ <= NOT \i_A[9]~input_o\;
\ALT_INV_i_C[9]~input_o\ <= NOT \i_C[9]~input_o\;
\ALT_INV_i_B[9]~input_o\ <= NOT \i_B[9]~input_o\;
\ALT_INV_i_A[8]~input_o\ <= NOT \i_A[8]~input_o\;
\ALT_INV_i_C[8]~input_o\ <= NOT \i_C[8]~input_o\;
\ALT_INV_i_B[8]~input_o\ <= NOT \i_B[8]~input_o\;
\ALT_INV_i_A[7]~input_o\ <= NOT \i_A[7]~input_o\;
\ALT_INV_i_C[7]~input_o\ <= NOT \i_C[7]~input_o\;
\ALT_INV_i_B[7]~input_o\ <= NOT \i_B[7]~input_o\;
\ALT_INV_i_A[6]~input_o\ <= NOT \i_A[6]~input_o\;
\ALT_INV_i_C[6]~input_o\ <= NOT \i_C[6]~input_o\;
\ALT_INV_i_B[6]~input_o\ <= NOT \i_B[6]~input_o\;
\ALT_INV_i_A[5]~input_o\ <= NOT \i_A[5]~input_o\;
\ALT_INV_i_C[5]~input_o\ <= NOT \i_C[5]~input_o\;
\ALT_INV_i_B[5]~input_o\ <= NOT \i_B[5]~input_o\;
\ALT_INV_i_A[4]~input_o\ <= NOT \i_A[4]~input_o\;
\ALT_INV_i_C[4]~input_o\ <= NOT \i_C[4]~input_o\;
\ALT_INV_i_B[4]~input_o\ <= NOT \i_B[4]~input_o\;
\ALT_INV_i_A[3]~input_o\ <= NOT \i_A[3]~input_o\;
\ALT_INV_i_C[3]~input_o\ <= NOT \i_C[3]~input_o\;
\ALT_INV_i_B[3]~input_o\ <= NOT \i_B[3]~input_o\;
\ALT_INV_i_A[2]~input_o\ <= NOT \i_A[2]~input_o\;
\ALT_INV_i_C[2]~input_o\ <= NOT \i_C[2]~input_o\;
\ALT_INV_i_B[2]~input_o\ <= NOT \i_B[2]~input_o\;
\ALT_INV_i_A[1]~input_o\ <= NOT \i_A[1]~input_o\;
\ALT_INV_i_C[1]~input_o\ <= NOT \i_C[1]~input_o\;
\ALT_INV_i_B[1]~input_o\ <= NOT \i_B[1]~input_o\;
\ALT_INV_i_A[0]~input_o\ <= NOT \i_A[0]~input_o\;
\ALT_INV_i_C[0]~input_o\ <= NOT \i_C[0]~input_o\;
\ALT_INV_i_B[0]~input_o\ <= NOT \i_B[0]~input_o\;

-- Location: IOOBUF_X30_Y0_N19
\o_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~0_combout\,
	devoe => ww_devoe,
	o => ww_o_A(0));

-- Location: IOOBUF_X36_Y0_N53
\o_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~1_combout\,
	devoe => ww_devoe,
	o => ww_o_A(1));

-- Location: IOOBUF_X89_Y36_N5
\o_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~2_combout\,
	devoe => ww_devoe,
	o => ww_o_A(2));

-- Location: IOOBUF_X50_Y0_N76
\o_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~3_combout\,
	devoe => ww_devoe,
	o => ww_o_A(3));

-- Location: IOOBUF_X56_Y0_N2
\o_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~4_combout\,
	devoe => ww_devoe,
	o => ww_o_A(4));

-- Location: IOOBUF_X26_Y0_N93
\o_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~5_combout\,
	devoe => ww_devoe,
	o => ww_o_A(5));

-- Location: IOOBUF_X66_Y0_N93
\o_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~6_combout\,
	devoe => ww_devoe,
	o => ww_o_A(6));

-- Location: IOOBUF_X34_Y0_N93
\o_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~7_combout\,
	devoe => ww_devoe,
	o => ww_o_A(7));

-- Location: IOOBUF_X28_Y0_N19
\o_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~8_combout\,
	devoe => ww_devoe,
	o => ww_o_A(8));

-- Location: IOOBUF_X89_Y8_N22
\o_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~9_combout\,
	devoe => ww_devoe,
	o => ww_o_A(9));

-- Location: IOOBUF_X56_Y0_N36
\o_A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~10_combout\,
	devoe => ww_devoe,
	o => ww_o_A(10));

-- Location: IOOBUF_X89_Y37_N39
\o_A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~11_combout\,
	devoe => ww_devoe,
	o => ww_o_A(11));

-- Location: IOOBUF_X40_Y0_N36
\o_A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~12_combout\,
	devoe => ww_devoe,
	o => ww_o_A(12));

-- Location: IOOBUF_X62_Y0_N2
\o_A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~13_combout\,
	devoe => ww_devoe,
	o => ww_o_A(13));

-- Location: IOOBUF_X40_Y0_N2
\o_A[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~14_combout\,
	devoe => ww_devoe,
	o => ww_o_A(14));

-- Location: IOOBUF_X34_Y0_N76
\o_A[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_A~15_combout\,
	devoe => ww_devoe,
	o => ww_o_A(15));

-- Location: IOIBUF_X30_Y0_N1
\i_C[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(0),
	o => \i_C[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\i_B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\i_A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: LABCELL_X30_Y1_N33
\o_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~0_combout\ = ( \i_A[0]~input_o\ & ( (\i_B[0]~input_o\) # (\i_C[0]~input_o\) ) ) # ( !\i_A[0]~input_o\ & ( (\i_C[0]~input_o\ & \i_B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_C[0]~input_o\,
	datac => \ALT_INV_i_B[0]~input_o\,
	dataf => \ALT_INV_i_A[0]~input_o\,
	combout => \o_A~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\i_A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\i_B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\i_C[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(1),
	o => \i_C[1]~input_o\);

-- Location: LABCELL_X36_Y1_N3
\o_A~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~1_combout\ = ( \i_C[1]~input_o\ & ( (\i_B[1]~input_o\) # (\i_A[1]~input_o\) ) ) # ( !\i_C[1]~input_o\ & ( (\i_A[1]~input_o\ & \i_B[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_A[1]~input_o\,
	datac => \ALT_INV_i_B[1]~input_o\,
	dataf => \ALT_INV_i_C[1]~input_o\,
	combout => \o_A~1_combout\);

-- Location: IOIBUF_X89_Y36_N38
\i_C[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(2),
	o => \i_C[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\i_B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\i_A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\o_A~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~2_combout\ = ( \i_A[2]~input_o\ & ( (\i_B[2]~input_o\) # (\i_C[2]~input_o\) ) ) # ( !\i_A[2]~input_o\ & ( (\i_C[2]~input_o\ & \i_B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_C[2]~input_o\,
	datac => \ALT_INV_i_B[2]~input_o\,
	dataf => \ALT_INV_i_A[2]~input_o\,
	combout => \o_A~2_combout\);

-- Location: IOIBUF_X50_Y0_N41
\i_A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\i_B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\i_C[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(3),
	o => \i_C[3]~input_o\);

-- Location: LABCELL_X50_Y1_N0
\o_A~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~3_combout\ = ( \i_B[3]~input_o\ & ( \i_C[3]~input_o\ ) ) # ( !\i_B[3]~input_o\ & ( \i_C[3]~input_o\ & ( \i_A[3]~input_o\ ) ) ) # ( \i_B[3]~input_o\ & ( !\i_C[3]~input_o\ & ( \i_A[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_A[3]~input_o\,
	datae => \ALT_INV_i_B[3]~input_o\,
	dataf => \ALT_INV_i_C[3]~input_o\,
	combout => \o_A~3_combout\);

-- Location: IOIBUF_X56_Y0_N18
\i_C[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(4),
	o => \i_C[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\i_A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(4),
	o => \i_A[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\i_B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(4),
	o => \i_B[4]~input_o\);

-- Location: LABCELL_X56_Y1_N0
\o_A~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~4_combout\ = ( \i_B[4]~input_o\ & ( (\i_A[4]~input_o\) # (\i_C[4]~input_o\) ) ) # ( !\i_B[4]~input_o\ & ( (\i_C[4]~input_o\ & \i_A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010111110101111100000101000001010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_C[4]~input_o\,
	datac => \ALT_INV_i_A[4]~input_o\,
	datae => \ALT_INV_i_B[4]~input_o\,
	combout => \o_A~4_combout\);

-- Location: IOIBUF_X30_Y0_N35
\i_A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(5),
	o => \i_A[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\i_C[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(5),
	o => \i_C[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\i_B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(5),
	o => \i_B[5]~input_o\);

-- Location: LABCELL_X30_Y1_N36
\o_A~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~5_combout\ = ( \i_C[5]~input_o\ & ( \i_B[5]~input_o\ ) ) # ( !\i_C[5]~input_o\ & ( \i_B[5]~input_o\ & ( \i_A[5]~input_o\ ) ) ) # ( \i_C[5]~input_o\ & ( !\i_B[5]~input_o\ & ( \i_A[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_A[5]~input_o\,
	datae => \ALT_INV_i_C[5]~input_o\,
	dataf => \ALT_INV_i_B[5]~input_o\,
	combout => \o_A~5_combout\);

-- Location: IOIBUF_X66_Y0_N58
\i_A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(6),
	o => \i_A[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\i_C[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(6),
	o => \i_C[6]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\i_B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(6),
	o => \i_B[6]~input_o\);

-- Location: MLABCELL_X65_Y1_N30
\o_A~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~6_combout\ = ( \i_B[6]~input_o\ & ( (\i_C[6]~input_o\) # (\i_A[6]~input_o\) ) ) # ( !\i_B[6]~input_o\ & ( (\i_A[6]~input_o\ & \i_C[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_A[6]~input_o\,
	datac => \ALT_INV_i_C[6]~input_o\,
	dataf => \ALT_INV_i_B[6]~input_o\,
	combout => \o_A~6_combout\);

-- Location: IOIBUF_X36_Y0_N35
\i_C[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(7),
	o => \i_C[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\i_B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(7),
	o => \i_B[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\i_A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(7),
	o => \i_A[7]~input_o\);

-- Location: LABCELL_X33_Y1_N30
\o_A~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~7_combout\ = ( \i_A[7]~input_o\ & ( (\i_B[7]~input_o\) # (\i_C[7]~input_o\) ) ) # ( !\i_A[7]~input_o\ & ( (\i_C[7]~input_o\ & \i_B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111100000011000000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_C[7]~input_o\,
	datac => \ALT_INV_i_B[7]~input_o\,
	datae => \ALT_INV_i_A[7]~input_o\,
	combout => \o_A~7_combout\);

-- Location: IOIBUF_X28_Y0_N1
\i_A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(8),
	o => \i_A[8]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\i_B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(8),
	o => \i_B[8]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\i_C[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(8),
	o => \i_C[8]~input_o\);

-- Location: MLABCELL_X28_Y1_N0
\o_A~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~8_combout\ = ( \i_B[8]~input_o\ & ( \i_C[8]~input_o\ ) ) # ( !\i_B[8]~input_o\ & ( \i_C[8]~input_o\ & ( \i_A[8]~input_o\ ) ) ) # ( \i_B[8]~input_o\ & ( !\i_C[8]~input_o\ & ( \i_A[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_A[8]~input_o\,
	datae => \ALT_INV_i_B[8]~input_o\,
	dataf => \ALT_INV_i_C[8]~input_o\,
	combout => \o_A~8_combout\);

-- Location: IOIBUF_X89_Y8_N38
\i_B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(9),
	o => \i_B[9]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\i_C[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(9),
	o => \i_C[9]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\i_A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(9),
	o => \i_A[9]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\o_A~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~9_combout\ = ( \i_A[9]~input_o\ & ( (\i_C[9]~input_o\) # (\i_B[9]~input_o\) ) ) # ( !\i_A[9]~input_o\ & ( (\i_B[9]~input_o\ & \i_C[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111100000011000000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_B[9]~input_o\,
	datac => \ALT_INV_i_C[9]~input_o\,
	datae => \ALT_INV_i_A[9]~input_o\,
	combout => \o_A~9_combout\);

-- Location: IOIBUF_X54_Y0_N52
\i_B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(10),
	o => \i_B[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\i_C[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(10),
	o => \i_C[10]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\i_A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(10),
	o => \i_A[10]~input_o\);

-- Location: LABCELL_X55_Y1_N3
\o_A~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~10_combout\ = ( \i_C[10]~input_o\ & ( \i_A[10]~input_o\ ) ) # ( !\i_C[10]~input_o\ & ( \i_A[10]~input_o\ & ( \i_B[10]~input_o\ ) ) ) # ( \i_C[10]~input_o\ & ( !\i_A[10]~input_o\ & ( \i_B[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_B[10]~input_o\,
	datae => \ALT_INV_i_C[10]~input_o\,
	dataf => \ALT_INV_i_A[10]~input_o\,
	combout => \o_A~10_combout\);

-- Location: IOIBUF_X89_Y36_N55
\i_B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(11),
	o => \i_B[11]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\i_C[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(11),
	o => \i_C[11]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\i_A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(11),
	o => \i_A[11]~input_o\);

-- Location: LABCELL_X88_Y36_N39
\o_A~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~11_combout\ = ( \i_C[11]~input_o\ & ( \i_A[11]~input_o\ ) ) # ( !\i_C[11]~input_o\ & ( \i_A[11]~input_o\ & ( \i_B[11]~input_o\ ) ) ) # ( \i_C[11]~input_o\ & ( !\i_A[11]~input_o\ & ( \i_B[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_B[11]~input_o\,
	datae => \ALT_INV_i_C[11]~input_o\,
	dataf => \ALT_INV_i_A[11]~input_o\,
	combout => \o_A~11_combout\);

-- Location: IOIBUF_X40_Y0_N52
\i_B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(12),
	o => \i_B[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\i_A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(12),
	o => \i_A[12]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\i_C[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(12),
	o => \i_C[12]~input_o\);

-- Location: LABCELL_X40_Y1_N30
\o_A~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~12_combout\ = ( \i_C[12]~input_o\ & ( (\i_A[12]~input_o\) # (\i_B[12]~input_o\) ) ) # ( !\i_C[12]~input_o\ & ( (\i_B[12]~input_o\ & \i_A[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111100000011000000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_B[12]~input_o\,
	datac => \ALT_INV_i_A[12]~input_o\,
	datae => \ALT_INV_i_C[12]~input_o\,
	combout => \o_A~12_combout\);

-- Location: IOIBUF_X64_Y0_N1
\i_B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(13),
	o => \i_B[13]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\i_A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(13),
	o => \i_A[13]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\i_C[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(13),
	o => \i_C[13]~input_o\);

-- Location: LABCELL_X64_Y1_N33
\o_A~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~13_combout\ = ( \i_C[13]~input_o\ & ( (\i_A[13]~input_o\) # (\i_B[13]~input_o\) ) ) # ( !\i_C[13]~input_o\ & ( (\i_B[13]~input_o\ & \i_A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_B[13]~input_o\,
	datac => \ALT_INV_i_A[13]~input_o\,
	dataf => \ALT_INV_i_C[13]~input_o\,
	combout => \o_A~13_combout\);

-- Location: IOIBUF_X38_Y0_N1
\i_C[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(14),
	o => \i_C[14]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\i_A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(14),
	o => \i_A[14]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\i_B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(14),
	o => \i_B[14]~input_o\);

-- Location: MLABCELL_X39_Y1_N3
\o_A~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~14_combout\ = ( \i_A[14]~input_o\ & ( \i_B[14]~input_o\ ) ) # ( !\i_A[14]~input_o\ & ( \i_B[14]~input_o\ & ( \i_C[14]~input_o\ ) ) ) # ( \i_A[14]~input_o\ & ( !\i_B[14]~input_o\ & ( \i_C[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_C[14]~input_o\,
	datae => \ALT_INV_i_A[14]~input_o\,
	dataf => \ALT_INV_i_B[14]~input_o\,
	combout => \o_A~14_combout\);

-- Location: IOIBUF_X32_Y0_N18
\i_C[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(15),
	o => \i_C[15]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\i_A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(15),
	o => \i_A[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\i_B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(15),
	o => \i_B[15]~input_o\);

-- Location: LABCELL_X33_Y1_N9
\o_A~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_A~15_combout\ = ( \i_B[15]~input_o\ & ( (\i_A[15]~input_o\) # (\i_C[15]~input_o\) ) ) # ( !\i_B[15]~input_o\ & ( (\i_C[15]~input_o\ & \i_A[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101011111111100000000010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_C[15]~input_o\,
	datad => \ALT_INV_i_A[15]~input_o\,
	datae => \ALT_INV_i_B[15]~input_o\,
	combout => \o_A~15_combout\);

-- Location: MLABCELL_X72_Y32_N0
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


