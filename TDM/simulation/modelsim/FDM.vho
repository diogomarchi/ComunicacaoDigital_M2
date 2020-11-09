-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/08/2020 15:00:52"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fdm IS
    PORT (
	i_CLK : IN std_logic;
	i_MAX_TIME : IN std_logic_vector(15 DOWNTO 0);
	i_A : IN std_logic_vector(15 DOWNTO 0);
	i_B : IN std_logic_vector(15 DOWNTO 0);
	i_C : IN std_logic_vector(15 DOWNTO 0);
	i_D : IN std_logic_vector(15 DOWNTO 0);
	o_Q : OUT std_logic_vector(15 DOWNTO 0)
	);
END fdm;

-- Design Ports Information
-- o_Q[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[6]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[8]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[9]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[10]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[12]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[14]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Q[15]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[6]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[6]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[7]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[7]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[7]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[8]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[8]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[8]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[8]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[9]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[9]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[9]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[10]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[10]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[10]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[11]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[11]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[11]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[12]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[12]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[12]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[12]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[13]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[13]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[14]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[14]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[14]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[15]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D[15]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[8]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[9]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[11]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[10]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[12]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[13]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[14]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_MAX_TIME[15]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fdm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_MAX_TIME : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_C : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \o_Q[0]~output_o\ : std_logic;
SIGNAL \o_Q[1]~output_o\ : std_logic;
SIGNAL \o_Q[2]~output_o\ : std_logic;
SIGNAL \o_Q[3]~output_o\ : std_logic;
SIGNAL \o_Q[4]~output_o\ : std_logic;
SIGNAL \o_Q[5]~output_o\ : std_logic;
SIGNAL \o_Q[6]~output_o\ : std_logic;
SIGNAL \o_Q[7]~output_o\ : std_logic;
SIGNAL \o_Q[8]~output_o\ : std_logic;
SIGNAL \o_Q[9]~output_o\ : std_logic;
SIGNAL \o_Q[10]~output_o\ : std_logic;
SIGNAL \o_Q[11]~output_o\ : std_logic;
SIGNAL \o_Q[12]~output_o\ : std_logic;
SIGNAL \o_Q[13]~output_o\ : std_logic;
SIGNAL \o_Q[14]~output_o\ : std_logic;
SIGNAL \o_Q[15]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_MAX_TIME[14]~input_o\ : std_logic;
SIGNAL \w_C[0]~16_combout\ : std_logic;
SIGNAL \w_C[0]~17\ : std_logic;
SIGNAL \w_C[1]~18_combout\ : std_logic;
SIGNAL \w_C[1]~19\ : std_logic;
SIGNAL \w_C[2]~20_combout\ : std_logic;
SIGNAL \w_C[2]~21\ : std_logic;
SIGNAL \w_C[3]~22_combout\ : std_logic;
SIGNAL \w_C[3]~23\ : std_logic;
SIGNAL \w_C[4]~24_combout\ : std_logic;
SIGNAL \w_C[4]~25\ : std_logic;
SIGNAL \w_C[5]~26_combout\ : std_logic;
SIGNAL \w_C[5]~27\ : std_logic;
SIGNAL \w_C[6]~28_combout\ : std_logic;
SIGNAL \w_C[6]~29\ : std_logic;
SIGNAL \w_C[7]~30_combout\ : std_logic;
SIGNAL \w_C[7]~31\ : std_logic;
SIGNAL \w_C[8]~32_combout\ : std_logic;
SIGNAL \w_C[8]~33\ : std_logic;
SIGNAL \w_C[9]~34_combout\ : std_logic;
SIGNAL \w_C[9]~35\ : std_logic;
SIGNAL \w_C[10]~36_combout\ : std_logic;
SIGNAL \w_C[10]~37\ : std_logic;
SIGNAL \w_C[11]~38_combout\ : std_logic;
SIGNAL \w_C[11]~39\ : std_logic;
SIGNAL \w_C[12]~40_combout\ : std_logic;
SIGNAL \w_C[12]~41\ : std_logic;
SIGNAL \w_C[13]~42_combout\ : std_logic;
SIGNAL \w_C[13]~43\ : std_logic;
SIGNAL \w_C[14]~44_combout\ : std_logic;
SIGNAL \i_MAX_TIME[15]~input_o\ : std_logic;
SIGNAL \w_C[14]~45\ : std_logic;
SIGNAL \w_C[15]~46_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \i_MAX_TIME[11]~input_o\ : std_logic;
SIGNAL \i_MAX_TIME[10]~input_o\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \i_MAX_TIME[9]~input_o\ : std_logic;
SIGNAL \i_MAX_TIME[8]~input_o\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \i_MAX_TIME[13]~input_o\ : std_logic;
SIGNAL \i_MAX_TIME[12]~input_o\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \i_MAX_TIME[3]~input_o\ : std_logic;
SIGNAL \i_MAX_TIME[2]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \i_MAX_TIME[1]~input_o\ : std_logic;
SIGNAL \i_MAX_TIME[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \i_MAX_TIME[7]~input_o\ : std_logic;
SIGNAL \i_MAX_TIME[6]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \i_MAX_TIME[5]~input_o\ : std_logic;
SIGNAL \i_MAX_TIME[4]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \w_SEL[0]~1_combout\ : std_logic;
SIGNAL \w_SEL[1]~0_combout\ : std_logic;
SIGNAL \i_C[0]~input_o\ : std_logic;
SIGNAL \i_D[0]~input_o\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \i_C[1]~input_o\ : std_logic;
SIGNAL \i_D[1]~input_o\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \i_C[2]~input_o\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \i_D[2]~input_o\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \i_C[3]~input_o\ : std_logic;
SIGNAL \i_D[3]~input_o\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \i_A[4]~input_o\ : std_logic;
SIGNAL \i_C[4]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \i_B[4]~input_o\ : std_logic;
SIGNAL \i_D[4]~input_o\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \i_D[5]~input_o\ : std_logic;
SIGNAL \i_C[5]~input_o\ : std_logic;
SIGNAL \i_B[5]~input_o\ : std_logic;
SIGNAL \i_A[5]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \i_C[6]~input_o\ : std_logic;
SIGNAL \i_A[6]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \i_D[6]~input_o\ : std_logic;
SIGNAL \i_B[6]~input_o\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \i_A[7]~input_o\ : std_logic;
SIGNAL \i_B[7]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \i_C[7]~input_o\ : std_logic;
SIGNAL \i_D[7]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \i_B[8]~input_o\ : std_logic;
SIGNAL \i_A[8]~input_o\ : std_logic;
SIGNAL \i_C[8]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \i_D[8]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \i_C[9]~input_o\ : std_logic;
SIGNAL \i_D[9]~input_o\ : std_logic;
SIGNAL \i_B[9]~input_o\ : std_logic;
SIGNAL \i_A[9]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \i_C[10]~input_o\ : std_logic;
SIGNAL \i_A[10]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \i_B[10]~input_o\ : std_logic;
SIGNAL \i_D[10]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \i_A[11]~input_o\ : std_logic;
SIGNAL \i_B[11]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \i_C[11]~input_o\ : std_logic;
SIGNAL \i_D[11]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \i_D[12]~input_o\ : std_logic;
SIGNAL \i_A[12]~input_o\ : std_logic;
SIGNAL \i_C[12]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \i_B[12]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \i_A[13]~input_o\ : std_logic;
SIGNAL \i_B[13]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \i_C[13]~input_o\ : std_logic;
SIGNAL \i_D[13]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \i_D[14]~input_o\ : std_logic;
SIGNAL \i_A[14]~input_o\ : std_logic;
SIGNAL \i_C[14]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \i_B[14]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \i_A[15]~input_o\ : std_logic;
SIGNAL \i_B[15]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \i_D[15]~input_o\ : std_logic;
SIGNAL \i_C[15]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL w_C : std_logic_vector(15 DOWNTO 0);
SIGNAL w_SEL : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_MAX_TIME <= i_MAX_TIME;
ww_i_A <= i_A;
ww_i_B <= i_B;
ww_i_C <= i_C;
ww_i_D <= i_D;
o_Q <= ww_o_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X22_Y25_N2
\o_Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\o_Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[1]~output_o\);

-- Location: IOOBUF_X29_Y25_N2
\o_Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[2]~output_o\);

-- Location: IOOBUF_X19_Y25_N9
\o_Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\o_Q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\o_Q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[5]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\o_Q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\o_Q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[7]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\o_Q[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[8]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\o_Q[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[9]~output_o\);

-- Location: IOOBUF_X22_Y25_N9
\o_Q[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[10]~output_o\);

-- Location: IOOBUF_X29_Y25_N16
\o_Q[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[11]~output_o\);

-- Location: IOOBUF_X29_Y25_N23
\o_Q[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[12]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\o_Q[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[13]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\o_Q[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[14]~output_o\);

-- Location: IOOBUF_X22_Y25_N16
\o_Q[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \o_Q[15]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\i_CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G3
\i_CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y13_N15
\i_MAX_TIME[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(14),
	o => \i_MAX_TIME[14]~input_o\);

-- Location: LCCOMB_X29_Y15_N0
\w_C[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[0]~16_combout\ = w_C(0) $ (VCC)
-- \w_C[0]~17\ = CARRY(w_C(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w_C(0),
	datad => VCC,
	combout => \w_C[0]~16_combout\,
	cout => \w_C[0]~17\);

-- Location: FF_X29_Y15_N1
\w_C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[0]~16_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(0));

-- Location: LCCOMB_X29_Y15_N2
\w_C[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[1]~18_combout\ = (w_C(1) & (!\w_C[0]~17\)) # (!w_C(1) & ((\w_C[0]~17\) # (GND)))
-- \w_C[1]~19\ = CARRY((!\w_C[0]~17\) # (!w_C(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(1),
	datad => VCC,
	cin => \w_C[0]~17\,
	combout => \w_C[1]~18_combout\,
	cout => \w_C[1]~19\);

-- Location: FF_X29_Y15_N3
\w_C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[1]~18_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(1));

-- Location: LCCOMB_X29_Y15_N4
\w_C[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[2]~20_combout\ = (w_C(2) & (\w_C[1]~19\ $ (GND))) # (!w_C(2) & (!\w_C[1]~19\ & VCC))
-- \w_C[2]~21\ = CARRY((w_C(2) & !\w_C[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(2),
	datad => VCC,
	cin => \w_C[1]~19\,
	combout => \w_C[2]~20_combout\,
	cout => \w_C[2]~21\);

-- Location: FF_X29_Y15_N5
\w_C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[2]~20_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(2));

-- Location: LCCOMB_X29_Y15_N6
\w_C[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[3]~22_combout\ = (w_C(3) & (!\w_C[2]~21\)) # (!w_C(3) & ((\w_C[2]~21\) # (GND)))
-- \w_C[3]~23\ = CARRY((!\w_C[2]~21\) # (!w_C(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_C(3),
	datad => VCC,
	cin => \w_C[2]~21\,
	combout => \w_C[3]~22_combout\,
	cout => \w_C[3]~23\);

-- Location: FF_X29_Y15_N7
\w_C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[3]~22_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(3));

-- Location: LCCOMB_X29_Y15_N8
\w_C[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[4]~24_combout\ = (w_C(4) & (\w_C[3]~23\ $ (GND))) # (!w_C(4) & (!\w_C[3]~23\ & VCC))
-- \w_C[4]~25\ = CARRY((w_C(4) & !\w_C[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(4),
	datad => VCC,
	cin => \w_C[3]~23\,
	combout => \w_C[4]~24_combout\,
	cout => \w_C[4]~25\);

-- Location: FF_X29_Y15_N9
\w_C[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[4]~24_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(4));

-- Location: LCCOMB_X29_Y15_N10
\w_C[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[5]~26_combout\ = (w_C(5) & (!\w_C[4]~25\)) # (!w_C(5) & ((\w_C[4]~25\) # (GND)))
-- \w_C[5]~27\ = CARRY((!\w_C[4]~25\) # (!w_C(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_C(5),
	datad => VCC,
	cin => \w_C[4]~25\,
	combout => \w_C[5]~26_combout\,
	cout => \w_C[5]~27\);

-- Location: FF_X29_Y15_N11
\w_C[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[5]~26_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(5));

-- Location: LCCOMB_X29_Y15_N12
\w_C[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[6]~28_combout\ = (w_C(6) & (\w_C[5]~27\ $ (GND))) # (!w_C(6) & (!\w_C[5]~27\ & VCC))
-- \w_C[6]~29\ = CARRY((w_C(6) & !\w_C[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_C(6),
	datad => VCC,
	cin => \w_C[5]~27\,
	combout => \w_C[6]~28_combout\,
	cout => \w_C[6]~29\);

-- Location: FF_X29_Y15_N13
\w_C[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[6]~28_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(6));

-- Location: LCCOMB_X29_Y15_N14
\w_C[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[7]~30_combout\ = (w_C(7) & (!\w_C[6]~29\)) # (!w_C(7) & ((\w_C[6]~29\) # (GND)))
-- \w_C[7]~31\ = CARRY((!\w_C[6]~29\) # (!w_C(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(7),
	datad => VCC,
	cin => \w_C[6]~29\,
	combout => \w_C[7]~30_combout\,
	cout => \w_C[7]~31\);

-- Location: FF_X29_Y15_N15
\w_C[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[7]~30_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(7));

-- Location: LCCOMB_X29_Y15_N16
\w_C[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[8]~32_combout\ = (w_C(8) & (\w_C[7]~31\ $ (GND))) # (!w_C(8) & (!\w_C[7]~31\ & VCC))
-- \w_C[8]~33\ = CARRY((w_C(8) & !\w_C[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(8),
	datad => VCC,
	cin => \w_C[7]~31\,
	combout => \w_C[8]~32_combout\,
	cout => \w_C[8]~33\);

-- Location: FF_X29_Y15_N17
\w_C[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[8]~32_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(8));

-- Location: LCCOMB_X29_Y15_N18
\w_C[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[9]~34_combout\ = (w_C(9) & (!\w_C[8]~33\)) # (!w_C(9) & ((\w_C[8]~33\) # (GND)))
-- \w_C[9]~35\ = CARRY((!\w_C[8]~33\) # (!w_C(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(9),
	datad => VCC,
	cin => \w_C[8]~33\,
	combout => \w_C[9]~34_combout\,
	cout => \w_C[9]~35\);

-- Location: FF_X29_Y15_N19
\w_C[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[9]~34_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(9));

-- Location: LCCOMB_X29_Y15_N20
\w_C[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[10]~36_combout\ = (w_C(10) & (\w_C[9]~35\ $ (GND))) # (!w_C(10) & (!\w_C[9]~35\ & VCC))
-- \w_C[10]~37\ = CARRY((w_C(10) & !\w_C[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(10),
	datad => VCC,
	cin => \w_C[9]~35\,
	combout => \w_C[10]~36_combout\,
	cout => \w_C[10]~37\);

-- Location: FF_X29_Y15_N21
\w_C[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[10]~36_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(10));

-- Location: LCCOMB_X29_Y15_N22
\w_C[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[11]~38_combout\ = (w_C(11) & (!\w_C[10]~37\)) # (!w_C(11) & ((\w_C[10]~37\) # (GND)))
-- \w_C[11]~39\ = CARRY((!\w_C[10]~37\) # (!w_C(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_C(11),
	datad => VCC,
	cin => \w_C[10]~37\,
	combout => \w_C[11]~38_combout\,
	cout => \w_C[11]~39\);

-- Location: FF_X29_Y15_N23
\w_C[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[11]~38_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(11));

-- Location: LCCOMB_X29_Y15_N24
\w_C[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[12]~40_combout\ = (w_C(12) & (\w_C[11]~39\ $ (GND))) # (!w_C(12) & (!\w_C[11]~39\ & VCC))
-- \w_C[12]~41\ = CARRY((w_C(12) & !\w_C[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(12),
	datad => VCC,
	cin => \w_C[11]~39\,
	combout => \w_C[12]~40_combout\,
	cout => \w_C[12]~41\);

-- Location: FF_X29_Y15_N25
\w_C[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[12]~40_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(12));

-- Location: LCCOMB_X29_Y15_N26
\w_C[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[13]~42_combout\ = (w_C(13) & (!\w_C[12]~41\)) # (!w_C(13) & ((\w_C[12]~41\) # (GND)))
-- \w_C[13]~43\ = CARRY((!\w_C[12]~41\) # (!w_C(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_C(13),
	datad => VCC,
	cin => \w_C[12]~41\,
	combout => \w_C[13]~42_combout\,
	cout => \w_C[13]~43\);

-- Location: FF_X29_Y15_N27
\w_C[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[13]~42_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(13));

-- Location: LCCOMB_X29_Y15_N28
\w_C[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[14]~44_combout\ = (w_C(14) & (\w_C[13]~43\ $ (GND))) # (!w_C(14) & (!\w_C[13]~43\ & VCC))
-- \w_C[14]~45\ = CARRY((w_C(14) & !\w_C[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_C(14),
	datad => VCC,
	cin => \w_C[13]~43\,
	combout => \w_C[14]~44_combout\,
	cout => \w_C[14]~45\);

-- Location: FF_X29_Y15_N29
\w_C[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[14]~44_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(14));

-- Location: IOIBUF_X31_Y9_N1
\i_MAX_TIME[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(15),
	o => \i_MAX_TIME[15]~input_o\);

-- Location: LCCOMB_X29_Y15_N30
\w_C[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_C[15]~46_combout\ = w_C(15) $ (\w_C[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_C(15),
	cin => \w_C[14]~45\,
	combout => \w_C[15]~46_combout\);

-- Location: FF_X29_Y15_N31
\w_C[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_C[15]~46_combout\,
	sclr => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_C(15));

-- Location: LCCOMB_X30_Y15_N10
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\i_MAX_TIME[14]~input_o\ & (w_C(14) & (\i_MAX_TIME[15]~input_o\ $ (!w_C(15))))) # (!\i_MAX_TIME[14]~input_o\ & (!w_C(14) & (\i_MAX_TIME[15]~input_o\ $ (!w_C(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MAX_TIME[14]~input_o\,
	datab => w_C(14),
	datac => \i_MAX_TIME[15]~input_o\,
	datad => w_C(15),
	combout => \Equal0~9_combout\);

-- Location: IOIBUF_X31_Y15_N1
\i_MAX_TIME[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(11),
	o => \i_MAX_TIME[11]~input_o\);

-- Location: IOIBUF_X31_Y13_N1
\i_MAX_TIME[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(10),
	o => \i_MAX_TIME[10]~input_o\);

-- Location: LCCOMB_X30_Y15_N4
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = \i_MAX_TIME[10]~input_o\ $ (w_C(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_MAX_TIME[10]~input_o\,
	datad => w_C(10),
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X31_Y17_N1
\i_MAX_TIME[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(9),
	o => \i_MAX_TIME[9]~input_o\);

-- Location: IOIBUF_X31_Y12_N22
\i_MAX_TIME[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(8),
	o => \i_MAX_TIME[8]~input_o\);

-- Location: LCCOMB_X30_Y15_N2
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\i_MAX_TIME[9]~input_o\ & (w_C(9) & (\i_MAX_TIME[8]~input_o\ $ (!w_C(8))))) # (!\i_MAX_TIME[9]~input_o\ & (!w_C(9) & (\i_MAX_TIME[8]~input_o\ $ (!w_C(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MAX_TIME[9]~input_o\,
	datab => \i_MAX_TIME[8]~input_o\,
	datac => w_C(8),
	datad => w_C(9),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X30_Y15_N18
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Equal0~6_combout\ & (\Equal0~5_combout\ & (w_C(11) $ (!\i_MAX_TIME[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_C(11),
	datab => \i_MAX_TIME[11]~input_o\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: IOIBUF_X31_Y15_N22
\i_MAX_TIME[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(13),
	o => \i_MAX_TIME[13]~input_o\);

-- Location: IOIBUF_X31_Y13_N8
\i_MAX_TIME[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(12),
	o => \i_MAX_TIME[12]~input_o\);

-- Location: LCCOMB_X30_Y15_N8
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\i_MAX_TIME[13]~input_o\ & (w_C(13) & (\i_MAX_TIME[12]~input_o\ $ (!w_C(12))))) # (!\i_MAX_TIME[13]~input_o\ & (!w_C(13) & (\i_MAX_TIME[12]~input_o\ $ (!w_C(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MAX_TIME[13]~input_o\,
	datab => \i_MAX_TIME[12]~input_o\,
	datac => w_C(13),
	datad => w_C(12),
	combout => \Equal0~8_combout\);

-- Location: IOIBUF_X31_Y12_N8
\i_MAX_TIME[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(3),
	o => \i_MAX_TIME[3]~input_o\);

-- Location: IOIBUF_X31_Y17_N8
\i_MAX_TIME[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(2),
	o => \i_MAX_TIME[2]~input_o\);

-- Location: LCCOMB_X30_Y15_N22
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\i_MAX_TIME[3]~input_o\ & (w_C(3) & (\i_MAX_TIME[2]~input_o\ $ (!w_C(2))))) # (!\i_MAX_TIME[3]~input_o\ & (!w_C(3) & (\i_MAX_TIME[2]~input_o\ $ (!w_C(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MAX_TIME[3]~input_o\,
	datab => \i_MAX_TIME[2]~input_o\,
	datac => w_C(2),
	datad => w_C(3),
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X31_Y15_N15
\i_MAX_TIME[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(1),
	o => \i_MAX_TIME[1]~input_o\);

-- Location: IOIBUF_X31_Y15_N8
\i_MAX_TIME[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(0),
	o => \i_MAX_TIME[0]~input_o\);

-- Location: LCCOMB_X30_Y15_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\i_MAX_TIME[1]~input_o\ & (w_C(1) & (\i_MAX_TIME[0]~input_o\ $ (!w_C(0))))) # (!\i_MAX_TIME[1]~input_o\ & (!w_C(1) & (\i_MAX_TIME[0]~input_o\ $ (!w_C(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_MAX_TIME[1]~input_o\,
	datab => \i_MAX_TIME[0]~input_o\,
	datac => w_C(0),
	datad => w_C(1),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X31_Y13_N22
\i_MAX_TIME[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(7),
	o => \i_MAX_TIME[7]~input_o\);

-- Location: IOIBUF_X31_Y14_N15
\i_MAX_TIME[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(6),
	o => \i_MAX_TIME[6]~input_o\);

-- Location: LCCOMB_X30_Y15_N30
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (w_C(6) & (\i_MAX_TIME[6]~input_o\ & (\i_MAX_TIME[7]~input_o\ $ (!w_C(7))))) # (!w_C(6) & (!\i_MAX_TIME[6]~input_o\ & (\i_MAX_TIME[7]~input_o\ $ (!w_C(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_C(6),
	datab => \i_MAX_TIME[7]~input_o\,
	datac => \i_MAX_TIME[6]~input_o\,
	datad => w_C(7),
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X31_Y12_N15
\i_MAX_TIME[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(5),
	o => \i_MAX_TIME[5]~input_o\);

-- Location: IOIBUF_X31_Y14_N1
\i_MAX_TIME[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_MAX_TIME(4),
	o => \i_MAX_TIME[4]~input_o\);

-- Location: LCCOMB_X30_Y15_N20
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (w_C(5) & (\i_MAX_TIME[5]~input_o\ & (\i_MAX_TIME[4]~input_o\ $ (!w_C(4))))) # (!w_C(5) & (!\i_MAX_TIME[5]~input_o\ & (\i_MAX_TIME[4]~input_o\ $ (!w_C(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_C(5),
	datab => \i_MAX_TIME[5]~input_o\,
	datac => \i_MAX_TIME[4]~input_o\,
	datad => w_C(4),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X30_Y15_N0
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y15_N12
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X30_Y15_N26
\w_SEL[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_SEL[0]~1_combout\ = w_SEL(0) $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_SEL(0),
	datad => \Equal0~10_combout\,
	combout => \w_SEL[0]~1_combout\);

-- Location: FF_X30_Y15_N27
\w_SEL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_SEL[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_SEL(0));

-- Location: LCCOMB_X30_Y15_N16
\w_SEL[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \w_SEL[1]~0_combout\ = w_SEL(1) $ (((w_SEL(0) & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datac => w_SEL(1),
	datad => \Equal0~10_combout\,
	combout => \w_SEL[1]~0_combout\);

-- Location: FF_X30_Y15_N17
\w_SEL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_SEL[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_SEL(1));

-- Location: IOIBUF_X27_Y25_N15
\i_C[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(0),
	o => \i_C[0]~input_o\);

-- Location: IOIBUF_X31_Y20_N15
\i_D[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(0),
	o => \i_D[0]~input_o\);

-- Location: IOIBUF_X31_Y12_N1
\i_B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: IOIBUF_X31_Y14_N8
\i_A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: LCCOMB_X30_Y15_N28
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (w_SEL(0) & ((w_SEL(1)) # ((\i_B[0]~input_o\)))) # (!w_SEL(0) & (!w_SEL(1) & ((\i_A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => w_SEL(1),
	datac => \i_B[0]~input_o\,
	datad => \i_A[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X27_Y21_N20
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (w_SEL(1) & ((\Mux15~0_combout\ & ((\i_D[0]~input_o\))) # (!\Mux15~0_combout\ & (\i_C[0]~input_o\)))) # (!w_SEL(1) & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(1),
	datab => \i_C[0]~input_o\,
	datac => \i_D[0]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: IOIBUF_X31_Y14_N22
\i_A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: IOIBUF_X31_Y17_N22
\i_B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: LCCOMB_X30_Y15_N14
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (w_SEL(1) & (((w_SEL(0))))) # (!w_SEL(1) & ((w_SEL(0) & ((\i_B[1]~input_o\))) # (!w_SEL(0) & (\i_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[1]~input_o\,
	datab => w_SEL(1),
	datac => w_SEL(0),
	datad => \i_B[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X0_Y5_N22
\i_C[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(1),
	o => \i_C[1]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\i_D[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(1),
	o => \i_D[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N0
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\i_D[1]~input_o\) # (!w_SEL(1))))) # (!\Mux14~0_combout\ & (\i_C[1]~input_o\ & (w_SEL(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \i_C[1]~input_o\,
	datac => w_SEL(1),
	datad => \i_D[1]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: IOIBUF_X27_Y25_N22
\i_B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: IOIBUF_X29_Y25_N8
\i_C[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(2),
	o => \i_C[2]~input_o\);

-- Location: IOIBUF_X31_Y20_N22
\i_A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: LCCOMB_X27_Y21_N18
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (w_SEL(0) & (((w_SEL(1))))) # (!w_SEL(0) & ((w_SEL(1) & (\i_C[2]~input_o\)) # (!w_SEL(1) & ((\i_A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_C[2]~input_o\,
	datac => w_SEL(1),
	datad => \i_A[2]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: IOIBUF_X27_Y25_N1
\i_D[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(2),
	o => \i_D[2]~input_o\);

-- Location: LCCOMB_X27_Y21_N4
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & (((\i_D[2]~input_o\) # (!w_SEL(0))))) # (!\Mux13~0_combout\ & (\i_B[2]~input_o\ & ((w_SEL(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[2]~input_o\,
	datab => \Mux13~0_combout\,
	datac => \i_D[2]~input_o\,
	datad => w_SEL(0),
	combout => \Mux13~1_combout\);

-- Location: IOIBUF_X29_Y25_N29
\i_B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: IOIBUF_X31_Y22_N22
\i_A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: LCCOMB_X27_Y21_N14
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (w_SEL(1) & (((w_SEL(0))))) # (!w_SEL(1) & ((w_SEL(0) & (\i_B[3]~input_o\)) # (!w_SEL(0) & ((\i_A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[3]~input_o\,
	datab => \i_A[3]~input_o\,
	datac => w_SEL(1),
	datad => w_SEL(0),
	combout => \Mux12~0_combout\);

-- Location: IOIBUF_X19_Y25_N15
\i_C[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(3),
	o => \i_C[3]~input_o\);

-- Location: IOIBUF_X31_Y19_N1
\i_D[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(3),
	o => \i_D[3]~input_o\);

-- Location: LCCOMB_X27_Y21_N0
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (w_SEL(1) & ((\Mux12~0_combout\ & ((\i_D[3]~input_o\))) # (!\Mux12~0_combout\ & (\i_C[3]~input_o\)))) # (!w_SEL(1) & (\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(1),
	datab => \Mux12~0_combout\,
	datac => \i_C[3]~input_o\,
	datad => \i_D[3]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: IOIBUF_X0_Y2_N8
\i_A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(4),
	o => \i_A[4]~input_o\);

-- Location: IOIBUF_X6_Y0_N8
\i_C[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(4),
	o => \i_C[4]~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (w_SEL(1) & (((w_SEL(0)) # (\i_C[4]~input_o\)))) # (!w_SEL(1) & (\i_A[4]~input_o\ & (!w_SEL(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[4]~input_o\,
	datab => w_SEL(1),
	datac => w_SEL(0),
	datad => \i_C[4]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X6_Y0_N15
\i_B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(4),
	o => \i_B[4]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\i_D[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(4),
	o => \i_D[4]~input_o\);

-- Location: LCCOMB_X1_Y4_N4
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & (((\i_D[4]~input_o\) # (!w_SEL(0))))) # (!\Mux11~0_combout\ & (\i_B[4]~input_o\ & (w_SEL(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \i_B[4]~input_o\,
	datac => w_SEL(0),
	datad => \i_D[4]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: IOIBUF_X0_Y3_N22
\i_D[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(5),
	o => \i_D[5]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\i_C[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(5),
	o => \i_C[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\i_B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(5),
	o => \i_B[5]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\i_A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(5),
	o => \i_A[5]~input_o\);

-- Location: LCCOMB_X1_Y4_N6
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (w_SEL(1) & (((w_SEL(0))))) # (!w_SEL(1) & ((w_SEL(0) & (\i_B[5]~input_o\)) # (!w_SEL(0) & ((\i_A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[5]~input_o\,
	datab => w_SEL(1),
	datac => w_SEL(0),
	datad => \i_A[5]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (w_SEL(1) & ((\Mux10~0_combout\ & (\i_D[5]~input_o\)) # (!\Mux10~0_combout\ & ((\i_C[5]~input_o\))))) # (!w_SEL(1) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_D[5]~input_o\,
	datab => w_SEL(1),
	datac => \i_C[5]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X3_Y0_N1
\i_C[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(6),
	o => \i_C[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\i_A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(6),
	o => \i_A[6]~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (w_SEL(0) & (((w_SEL(1))))) # (!w_SEL(0) & ((w_SEL(1) & (\i_C[6]~input_o\)) # (!w_SEL(1) & ((\i_A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_C[6]~input_o\,
	datac => w_SEL(1),
	datad => \i_A[6]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X0_Y4_N1
\i_D[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(6),
	o => \i_D[6]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\i_B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(6),
	o => \i_B[6]~input_o\);

-- Location: LCCOMB_X1_Y4_N28
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((\i_D[6]~input_o\) # ((!w_SEL(0))))) # (!\Mux9~0_combout\ & (((w_SEL(0) & \i_B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \i_D[6]~input_o\,
	datac => w_SEL(0),
	datad => \i_B[6]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: IOIBUF_X0_Y7_N8
\i_A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(7),
	o => \i_A[7]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\i_B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(7),
	o => \i_B[7]~input_o\);

-- Location: LCCOMB_X1_Y4_N10
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (w_SEL(0) & (((w_SEL(1)) # (\i_B[7]~input_o\)))) # (!w_SEL(0) & (\i_A[7]~input_o\ & (!w_SEL(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_A[7]~input_o\,
	datac => w_SEL(1),
	datad => \i_B[7]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X0_Y4_N8
\i_C[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(7),
	o => \i_C[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\i_D[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(7),
	o => \i_D[7]~input_o\);

-- Location: LCCOMB_X1_Y4_N12
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\i_D[7]~input_o\) # (!w_SEL(1))))) # (!\Mux8~0_combout\ & (\i_C[7]~input_o\ & (w_SEL(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \i_C[7]~input_o\,
	datac => w_SEL(1),
	datad => \i_D[7]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: IOIBUF_X9_Y0_N8
\i_B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(8),
	o => \i_B[8]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\i_A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(8),
	o => \i_A[8]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\i_C[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(8),
	o => \i_C[8]~input_o\);

-- Location: LCCOMB_X1_Y4_N18
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (w_SEL(0) & (w_SEL(1))) # (!w_SEL(0) & ((w_SEL(1) & ((\i_C[8]~input_o\))) # (!w_SEL(1) & (\i_A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => w_SEL(1),
	datac => \i_A[8]~input_o\,
	datad => \i_C[8]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X1_Y10_N15
\i_D[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(8),
	o => \i_D[8]~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\i_D[8]~input_o\) # (!w_SEL(0))))) # (!\Mux7~0_combout\ & (\i_B[8]~input_o\ & (w_SEL(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[8]~input_o\,
	datab => \Mux7~0_combout\,
	datac => w_SEL(0),
	datad => \i_D[8]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X0_Y6_N22
\i_C[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(9),
	o => \i_C[9]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\i_D[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(9),
	o => \i_D[9]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\i_B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(9),
	o => \i_B[9]~input_o\);

-- Location: IOIBUF_X0_Y3_N15
\i_A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(9),
	o => \i_A[9]~input_o\);

-- Location: LCCOMB_X1_Y4_N2
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (w_SEL(1) & (((w_SEL(0))))) # (!w_SEL(1) & ((w_SEL(0) & (\i_B[9]~input_o\)) # (!w_SEL(0) & ((\i_A[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[9]~input_o\,
	datab => w_SEL(1),
	datac => w_SEL(0),
	datad => \i_A[9]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y4_N20
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (w_SEL(1) & ((\Mux6~0_combout\ & ((\i_D[9]~input_o\))) # (!\Mux6~0_combout\ & (\i_C[9]~input_o\)))) # (!w_SEL(1) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_C[9]~input_o\,
	datab => \i_D[9]~input_o\,
	datac => w_SEL(1),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X31_Y19_N8
\i_C[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(10),
	o => \i_C[10]~input_o\);

-- Location: IOIBUF_X31_Y21_N22
\i_A[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(10),
	o => \i_A[10]~input_o\);

-- Location: LCCOMB_X27_Y21_N22
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (w_SEL(0) & (((w_SEL(1))))) # (!w_SEL(0) & ((w_SEL(1) & (\i_C[10]~input_o\)) # (!w_SEL(1) & ((\i_A[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_C[10]~input_o\,
	datac => w_SEL(1),
	datad => \i_A[10]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X31_Y17_N15
\i_B[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(10),
	o => \i_B[10]~input_o\);

-- Location: IOIBUF_X24_Y25_N1
\i_D[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(10),
	o => \i_D[10]~input_o\);

-- Location: LCCOMB_X27_Y21_N28
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\i_D[10]~input_o\) # (!w_SEL(0))))) # (!\Mux5~0_combout\ & (\i_B[10]~input_o\ & ((w_SEL(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \i_B[10]~input_o\,
	datac => \i_D[10]~input_o\,
	datad => w_SEL(0),
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X27_Y25_N8
\i_A[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(11),
	o => \i_A[11]~input_o\);

-- Location: IOIBUF_X31_Y22_N8
\i_B[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(11),
	o => \i_B[11]~input_o\);

-- Location: LCCOMB_X27_Y21_N30
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (w_SEL(0) & (((w_SEL(1)) # (\i_B[11]~input_o\)))) # (!w_SEL(0) & (\i_A[11]~input_o\ & (!w_SEL(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_A[11]~input_o\,
	datac => w_SEL(1),
	datad => \i_B[11]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X22_Y25_N22
\i_C[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(11),
	o => \i_C[11]~input_o\);

-- Location: IOIBUF_X31_Y21_N1
\i_D[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(11),
	o => \i_D[11]~input_o\);

-- Location: LCCOMB_X27_Y21_N12
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\i_D[11]~input_o\) # (!w_SEL(1))))) # (!\Mux4~0_combout\ & (\i_C[11]~input_o\ & (w_SEL(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \i_C[11]~input_o\,
	datac => w_SEL(1),
	datad => \i_D[11]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X31_Y21_N15
\i_D[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(12),
	o => \i_D[12]~input_o\);

-- Location: IOIBUF_X24_Y25_N22
\i_A[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(12),
	o => \i_A[12]~input_o\);

-- Location: IOIBUF_X31_Y21_N8
\i_C[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(12),
	o => \i_C[12]~input_o\);

-- Location: LCCOMB_X27_Y21_N26
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (w_SEL(0) & (((w_SEL(1))))) # (!w_SEL(0) & ((w_SEL(1) & ((\i_C[12]~input_o\))) # (!w_SEL(1) & (\i_A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_A[12]~input_o\,
	datac => w_SEL(1),
	datad => \i_C[12]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X31_Y22_N15
\i_B[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(12),
	o => \i_B[12]~input_o\);

-- Location: LCCOMB_X27_Y21_N16
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (w_SEL(0) & ((\Mux3~0_combout\ & (\i_D[12]~input_o\)) # (!\Mux3~0_combout\ & ((\i_B[12]~input_o\))))) # (!w_SEL(0) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_D[12]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \i_B[12]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X31_Y22_N1
\i_A[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(13),
	o => \i_A[13]~input_o\);

-- Location: IOIBUF_X31_Y19_N15
\i_B[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(13),
	o => \i_B[13]~input_o\);

-- Location: LCCOMB_X27_Y21_N6
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (w_SEL(0) & (((w_SEL(1)) # (\i_B[13]~input_o\)))) # (!w_SEL(0) & (\i_A[13]~input_o\ & (!w_SEL(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_A[13]~input_o\,
	datac => w_SEL(1),
	datad => \i_B[13]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X24_Y25_N15
\i_C[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(13),
	o => \i_C[13]~input_o\);

-- Location: IOIBUF_X19_Y25_N29
\i_D[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(13),
	o => \i_D[13]~input_o\);

-- Location: LCCOMB_X27_Y21_N8
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\i_D[13]~input_o\) # (!w_SEL(1))))) # (!\Mux2~0_combout\ & (\i_C[13]~input_o\ & (w_SEL(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \i_C[13]~input_o\,
	datac => w_SEL(1),
	datad => \i_D[13]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X0_Y2_N1
\i_D[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(14),
	o => \i_D[14]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\i_A[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(14),
	o => \i_A[14]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\i_C[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(14),
	o => \i_C[14]~input_o\);

-- Location: LCCOMB_X1_Y4_N30
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (w_SEL(1) & (((w_SEL(0)) # (\i_C[14]~input_o\)))) # (!w_SEL(1) & (\i_A[14]~input_o\ & (!w_SEL(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[14]~input_o\,
	datab => w_SEL(1),
	datac => w_SEL(0),
	datad => \i_C[14]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X0_Y4_N15
\i_B[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(14),
	o => \i_B[14]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (w_SEL(0) & ((\Mux1~0_combout\ & (\i_D[14]~input_o\)) # (!\Mux1~0_combout\ & ((\i_B[14]~input_o\))))) # (!w_SEL(0) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(0),
	datab => \i_D[14]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \i_B[14]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X27_Y25_N29
\i_A[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(15),
	o => \i_A[15]~input_o\);

-- Location: IOIBUF_X22_Y25_N29
\i_B[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(15),
	o => \i_B[15]~input_o\);

-- Location: LCCOMB_X27_Y21_N10
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (w_SEL(1) & (((w_SEL(0))))) # (!w_SEL(1) & ((w_SEL(0) & ((\i_B[15]~input_o\))) # (!w_SEL(0) & (\i_A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[15]~input_o\,
	datab => \i_B[15]~input_o\,
	datac => w_SEL(1),
	datad => w_SEL(0),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X24_Y25_N8
\i_D[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D(15),
	o => \i_D[15]~input_o\);

-- Location: IOIBUF_X31_Y19_N22
\i_C[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(15),
	o => \i_C[15]~input_o\);

-- Location: LCCOMB_X27_Y21_N24
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\i_D[15]~input_o\) # ((!w_SEL(1))))) # (!\Mux0~0_combout\ & (((w_SEL(1) & \i_C[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \i_D[15]~input_o\,
	datac => w_SEL(1),
	datad => \i_C[15]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_o_Q(0) <= \o_Q[0]~output_o\;

ww_o_Q(1) <= \o_Q[1]~output_o\;

ww_o_Q(2) <= \o_Q[2]~output_o\;

ww_o_Q(3) <= \o_Q[3]~output_o\;

ww_o_Q(4) <= \o_Q[4]~output_o\;

ww_o_Q(5) <= \o_Q[5]~output_o\;

ww_o_Q(6) <= \o_Q[6]~output_o\;

ww_o_Q(7) <= \o_Q[7]~output_o\;

ww_o_Q(8) <= \o_Q[8]~output_o\;

ww_o_Q(9) <= \o_Q[9]~output_o\;

ww_o_Q(10) <= \o_Q[10]~output_o\;

ww_o_Q(11) <= \o_Q[11]~output_o\;

ww_o_Q(12) <= \o_Q[12]~output_o\;

ww_o_Q(13) <= \o_Q[13]~output_o\;

ww_o_Q(14) <= \o_Q[14]~output_o\;

ww_o_Q(15) <= \o_Q[15]~output_o\;
END structure;


