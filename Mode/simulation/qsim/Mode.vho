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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/15/2022 10:42:11"

-- 
-- Device: Altera 5CEFA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mode IS
    PORT (
	A_i : IN std_logic_vector(4 DOWNTO 0);
	B_i : IN std_logic_vector(4 DOWNTO 0);
	RST_N_i : IN std_logic;
	CLK_i : IN std_logic;
	Start_i : IN std_logic;
	Operation : IN std_logic_vector(1 DOWNTO 0);
	BCD_data_main_digit_1 : OUT std_logic_vector(3 DOWNTO 0);
	BCD_data_main_digit_2 : OUT std_logic_vector(3 DOWNTO 0);
	BCD_data_main_digit_3 : OUT std_logic_vector(3 DOWNTO 0)
	);
END Mode;

ARCHITECTURE structure OF Mode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A_i : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B_i : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RST_N_i : std_logic;
SIGNAL ww_CLK_i : std_logic;
SIGNAL ww_Start_i : std_logic;
SIGNAL ww_Operation : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_BCD_data_main_digit_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BCD_data_main_digit_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BCD_data_main_digit_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCD_data_main_digit_1[0]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_1[1]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_1[2]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_1[3]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_2[0]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_2[1]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_2[2]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_2[3]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_3[0]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_3[1]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_3[2]~output_o\ : std_logic;
SIGNAL \BCD_data_main_digit_3[3]~output_o\ : std_logic;
SIGNAL \CLK_i~input_o\ : std_logic;
SIGNAL \A_i[0]~input_o\ : std_logic;
SIGNAL \Start_i~input_o\ : std_logic;
SIGNAL \B_i[4]~input_o\ : std_logic;
SIGNAL \Division|Selector1~0_combout\ : std_logic;
SIGNAL \RST_N_i~input_o\ : std_logic;
SIGNAL \Division|Selector22~0_combout\ : std_logic;
SIGNAL \Division|Round[0]~0_combout\ : std_logic;
SIGNAL \B_i[3]~input_o\ : std_logic;
SIGNAL \Division|Selector23~0_combout\ : std_logic;
SIGNAL \Division|Selector2~0_combout\ : std_logic;
SIGNAL \B_i[2]~input_o\ : std_logic;
SIGNAL \Division|Selector3~0_combout\ : std_logic;
SIGNAL \B_i[1]~input_o\ : std_logic;
SIGNAL \Division|Selector4~0_combout\ : std_logic;
SIGNAL \B_i[0]~input_o\ : std_logic;
SIGNAL \Division|Selector5~0_combout\ : std_logic;
SIGNAL \Division|Quotient[1]~0_combout\ : std_logic;
SIGNAL \Division|Selector24~0_combout\ : std_logic;
SIGNAL \Division|Selector25~0_combout\ : std_logic;
SIGNAL \Division|Selector26~0_combout\ : std_logic;
SIGNAL \Division|LessThan1~0_combout\ : std_logic;
SIGNAL \Division|LessThan1~1_combout\ : std_logic;
SIGNAL \Division|LessThan1~2_combout\ : std_logic;
SIGNAL \Division|Divisor[9]~0_combout\ : std_logic;
SIGNAL \A_i[4]~input_o\ : std_logic;
SIGNAL \A_i[3]~input_o\ : std_logic;
SIGNAL \A_i[2]~input_o\ : std_logic;
SIGNAL \A_i[1]~input_o\ : std_logic;
SIGNAL \Division|Add0~6\ : std_logic;
SIGNAL \Division|Add0~7\ : std_logic;
SIGNAL \Division|Add0~13_sumout\ : std_logic;
SIGNAL \Division|LessThan0~0_combout\ : std_logic;
SIGNAL \Division|LessThan0~1_combout\ : std_logic;
SIGNAL \Division|LessThan0~2_combout\ : std_logic;
SIGNAL \Division|LessThan0~3_combout\ : std_logic;
SIGNAL \Division|LessThan0~4_combout\ : std_logic;
SIGNAL \Division|process_0~1_combout\ : std_logic;
SIGNAL \Division|Selector20~0_combout\ : std_logic;
SIGNAL \Division|Remainder[0]~0_combout\ : std_logic;
SIGNAL \Division|Add0~14\ : std_logic;
SIGNAL \Division|Add0~15\ : std_logic;
SIGNAL \Division|Add0~17_sumout\ : std_logic;
SIGNAL \Division|Selector19~0_combout\ : std_logic;
SIGNAL \Division|Add0~18\ : std_logic;
SIGNAL \Division|Add0~19\ : std_logic;
SIGNAL \Division|Add0~21_sumout\ : std_logic;
SIGNAL \Division|Selector18~0_combout\ : std_logic;
SIGNAL \Division|Add0~22\ : std_logic;
SIGNAL \Division|Add0~23\ : std_logic;
SIGNAL \Division|Add0~33_sumout\ : std_logic;
SIGNAL \Division|Selector17~0_combout\ : std_logic;
SIGNAL \Division|Add0~34\ : std_logic;
SIGNAL \Division|Add0~35\ : std_logic;
SIGNAL \Division|Add0~37_sumout\ : std_logic;
SIGNAL \Division|Selector16~0_combout\ : std_logic;
SIGNAL \Division|Remainder[6]~1_combout\ : std_logic;
SIGNAL \Division|Add0~38\ : std_logic;
SIGNAL \Division|Add0~39\ : std_logic;
SIGNAL \Division|Add0~41_sumout\ : std_logic;
SIGNAL \Division|Selector15~0_combout\ : std_logic;
SIGNAL \Division|Add0~42\ : std_logic;
SIGNAL \Division|Add0~43\ : std_logic;
SIGNAL \Division|Add0~29_sumout\ : std_logic;
SIGNAL \Division|Selector14~0_combout\ : std_logic;
SIGNAL \Division|Add0~30\ : std_logic;
SIGNAL \Division|Add0~31\ : std_logic;
SIGNAL \Division|Add0~25_sumout\ : std_logic;
SIGNAL \Division|Selector13~0_combout\ : std_logic;
SIGNAL \Division|Add0~26\ : std_logic;
SIGNAL \Division|Add0~27\ : std_logic;
SIGNAL \Division|Add0~9_sumout\ : std_logic;
SIGNAL \Division|Selector12~0_combout\ : std_logic;
SIGNAL \Division|Add0~10\ : std_logic;
SIGNAL \Division|Add0~11\ : std_logic;
SIGNAL \Division|Add0~1_sumout\ : std_logic;
SIGNAL \Division|negative[10]~_wirecell_combout\ : std_logic;
SIGNAL \Division|process_0~0_combout\ : std_logic;
SIGNAL \Division|Selector27~0_combout\ : std_logic;
SIGNAL \Division|state.S0~q\ : std_logic;
SIGNAL \Division|Selector28~0_combout\ : std_logic;
SIGNAL \Division|state.S1~q\ : std_logic;
SIGNAL \Division|Quotient[1]~1_combout\ : std_logic;
SIGNAL \Division|state.S2~q\ : std_logic;
SIGNAL \Division|Add0~5_sumout\ : std_logic;
SIGNAL \Division|Selector21~0_combout\ : std_logic;
SIGNAL \Operation[0]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Operation[1]~input_o\ : std_logic;
SIGNAL \Remainder_main[9]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~21_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[43]~22_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~27_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~29_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[40]~41_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~34\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[53]~30_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~34_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~37_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[50]~46_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~38\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[65]~24_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~26_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~31_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[63]~38_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~40_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~43_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[61]~47_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~37_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~22_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~42\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~38\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~34\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~25_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[75]~32_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~33_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~39_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[73]~44_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~37_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~45_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~41_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~48_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~26_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~46_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~42_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~38_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~34_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~30_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~22_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[90]~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~125_sumout\ : std_logic;
SIGNAL \Binary_subtractor|bit_counter[0]~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~126\ : std_logic;
SIGNAL \Binary_subtractor|Add0~77_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~78\ : std_logic;
SIGNAL \Binary_subtractor|Add0~81_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~82\ : std_logic;
SIGNAL \Binary_subtractor|Add0~61_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~62\ : std_logic;
SIGNAL \Binary_subtractor|Add0~65_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~66\ : std_logic;
SIGNAL \Binary_subtractor|Add0~69_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~70\ : std_logic;
SIGNAL \Binary_subtractor|Add0~73_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~74\ : std_logic;
SIGNAL \Binary_subtractor|Add0~29_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~30\ : std_logic;
SIGNAL \Binary_subtractor|Add0~33_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~34\ : std_logic;
SIGNAL \Binary_subtractor|Add0~37_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~38\ : std_logic;
SIGNAL \Binary_subtractor|Add0~41_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~42\ : std_logic;
SIGNAL \Binary_subtractor|Add0~45_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~46\ : std_logic;
SIGNAL \Binary_subtractor|Add0~57_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~58\ : std_logic;
SIGNAL \Binary_subtractor|Add0~49_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~50\ : std_logic;
SIGNAL \Binary_subtractor|Add0~5_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~6\ : std_logic;
SIGNAL \Binary_subtractor|Add0~9_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~10\ : std_logic;
SIGNAL \Binary_subtractor|Add0~13_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~14\ : std_logic;
SIGNAL \Binary_subtractor|Add0~17_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~18\ : std_logic;
SIGNAL \Binary_subtractor|Add0~25_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~26\ : std_logic;
SIGNAL \Binary_subtractor|Add0~85_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~86\ : std_logic;
SIGNAL \Binary_subtractor|Add0~89_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~90\ : std_logic;
SIGNAL \Binary_subtractor|Add0~93_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~94\ : std_logic;
SIGNAL \Binary_subtractor|Add0~97_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~98\ : std_logic;
SIGNAL \Binary_subtractor|Add0~101_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~102\ : std_logic;
SIGNAL \Binary_subtractor|Add0~105_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~106\ : std_logic;
SIGNAL \Binary_subtractor|Add0~21_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~22\ : std_logic;
SIGNAL \Binary_subtractor|Add0~109_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~110\ : std_logic;
SIGNAL \Binary_subtractor|Add0~113_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~114\ : std_logic;
SIGNAL \Binary_subtractor|Add0~117_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~118\ : std_logic;
SIGNAL \Binary_subtractor|Add0~121_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~122\ : std_logic;
SIGNAL \Binary_subtractor|Add0~53_sumout\ : std_logic;
SIGNAL \Binary_subtractor|Add0~54\ : std_logic;
SIGNAL \Binary_subtractor|Add0~1_sumout\ : std_logic;
SIGNAL \Binary_subtractor|LessThan0~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|LessThan0~1_combout\ : std_logic;
SIGNAL \Binary_subtractor|LessThan0~2_combout\ : std_logic;
SIGNAL \Binary_subtractor|LessThan0~3_combout\ : std_logic;
SIGNAL \Binary_subtractor|LessThan0~4_combout\ : std_logic;
SIGNAL \Binary_subtractor|LessThan0~5_combout\ : std_logic;
SIGNAL \Binary_subtractor|state~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|state~q\ : std_logic;
SIGNAL \Binary_subtractor|Mode~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|Mode~q\ : std_logic;
SIGNAL \Binary_subtractor|Data_A~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|LessThan1~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|LessThan1~1_combout\ : std_logic;
SIGNAL \Binary_subtractor|over~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|over~q\ : std_logic;
SIGNAL \Multiplication|Add1~125_sumout\ : std_logic;
SIGNAL \Multiplication|bit_counter[24]~0_combout\ : std_logic;
SIGNAL \Multiplication|Add1~126\ : std_logic;
SIGNAL \Multiplication|Add1~81_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~82\ : std_logic;
SIGNAL \Multiplication|Add1~77_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~78\ : std_logic;
SIGNAL \Multiplication|Add1~113_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~114\ : std_logic;
SIGNAL \Multiplication|Add1~85_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~86\ : std_logic;
SIGNAL \Multiplication|Add1~57_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~58\ : std_logic;
SIGNAL \Multiplication|Add1~117_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~118\ : std_logic;
SIGNAL \Multiplication|Add1~89_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~90\ : std_logic;
SIGNAL \Multiplication|Add1~93_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~94\ : std_logic;
SIGNAL \Multiplication|Add1~97_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~98\ : std_logic;
SIGNAL \Multiplication|Add1~101_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~102\ : std_logic;
SIGNAL \Multiplication|Add1~105_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~106\ : std_logic;
SIGNAL \Multiplication|Add1~53_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~54\ : std_logic;
SIGNAL \Multiplication|Add1~121_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~122\ : std_logic;
SIGNAL \Multiplication|Add1~109_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~110\ : std_logic;
SIGNAL \Multiplication|Add1~25_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~26\ : std_logic;
SIGNAL \Multiplication|Add1~21_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~22\ : std_logic;
SIGNAL \Multiplication|Add1~17_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~18\ : std_logic;
SIGNAL \Multiplication|Add1~13_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~14\ : std_logic;
SIGNAL \Multiplication|Add1~9_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~10\ : std_logic;
SIGNAL \Multiplication|Add1~5_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~6\ : std_logic;
SIGNAL \Multiplication|Add1~49_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~50\ : std_logic;
SIGNAL \Multiplication|Add1~45_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~46\ : std_logic;
SIGNAL \Multiplication|Add1~41_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~42\ : std_logic;
SIGNAL \Multiplication|Add1~37_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~38\ : std_logic;
SIGNAL \Multiplication|Add1~33_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~34\ : std_logic;
SIGNAL \Multiplication|Add1~29_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~30\ : std_logic;
SIGNAL \Multiplication|Add1~73_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~74\ : std_logic;
SIGNAL \Multiplication|Add1~69_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~70\ : std_logic;
SIGNAL \Multiplication|Add1~65_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~66\ : std_logic;
SIGNAL \Multiplication|Add1~61_sumout\ : std_logic;
SIGNAL \Multiplication|Add1~62\ : std_logic;
SIGNAL \Multiplication|Add1~1_sumout\ : std_logic;
SIGNAL \Multiplication|LessThan0~0_combout\ : std_logic;
SIGNAL \Multiplication|LessThan0~1_combout\ : std_logic;
SIGNAL \Multiplication|LessThan0~2_combout\ : std_logic;
SIGNAL \Multiplication|LessThan0~3_combout\ : std_logic;
SIGNAL \Multiplication|LessThan0~4_combout\ : std_logic;
SIGNAL \Multiplication|LessThan0~5_combout\ : std_logic;
SIGNAL \Multiplication|state~0_combout\ : std_logic;
SIGNAL \Multiplication|state~q\ : std_logic;
SIGNAL \Multiplication|Data_A~5_combout\ : std_logic;
SIGNAL \Multiplication|Data_A~4_combout\ : std_logic;
SIGNAL \Multiplication|Data_A[2]~1_combout\ : std_logic;
SIGNAL \Multiplication|Data_A~3_combout\ : std_logic;
SIGNAL \Multiplication|Data_A~2_combout\ : std_logic;
SIGNAL \Multiplication|Data_A~0_combout\ : std_logic;
SIGNAL \Multiplication|Add0~37_sumout\ : std_logic;
SIGNAL \Multiplication|Data_B~0_combout\ : std_logic;
SIGNAL \Multiplication|Data_B~1_combout\ : std_logic;
SIGNAL \Multiplication|Data_B~2_combout\ : std_logic;
SIGNAL \Multiplication|Data_B~3_combout\ : std_logic;
SIGNAL \Multiplication|Data_B~4_combout\ : std_logic;
SIGNAL \Multiplication|Data_B~5_combout\ : std_logic;
SIGNAL \Multiplication|Mux0~0_combout\ : std_logic;
SIGNAL \Multiplication|Data_Poduct[4]~0_combout\ : std_logic;
SIGNAL \Multiplication|Add0~38\ : std_logic;
SIGNAL \Multiplication|Add0~33_sumout\ : std_logic;
SIGNAL \Multiplication|Add0~34\ : std_logic;
SIGNAL \Multiplication|Add0~29_sumout\ : std_logic;
SIGNAL \Multiplication|Add0~30\ : std_logic;
SIGNAL \Multiplication|Add0~9_sumout\ : std_logic;
SIGNAL \Multiplication|Add0~10\ : std_logic;
SIGNAL \Multiplication|Add0~5_sumout\ : std_logic;
SIGNAL \Multiplication|Add0~6\ : std_logic;
SIGNAL \Multiplication|Add0~21_sumout\ : std_logic;
SIGNAL \Multiplication|Add0~22\ : std_logic;
SIGNAL \Multiplication|Add0~17_sumout\ : std_logic;
SIGNAL \Multiplication|Add0~18\ : std_logic;
SIGNAL \Multiplication|Add0~13_sumout\ : std_logic;
SIGNAL \Multiplication|Add0~14\ : std_logic;
SIGNAL \Multiplication|Add0~1_sumout\ : std_logic;
SIGNAL \Multiplication|Add0~2\ : std_logic;
SIGNAL \Multiplication|Add0~25_sumout\ : std_logic;
SIGNAL \Multiplication|over~0_combout\ : std_logic;
SIGNAL \Multiplication|over~1_combout\ : std_logic;
SIGNAL \Multiplication|over~2_combout\ : std_logic;
SIGNAL \Multiplication|over~q\ : std_logic;
SIGNAL \Division|over~0_combout\ : std_logic;
SIGNAL \Division|over~1_combout\ : std_logic;
SIGNAL \Division|over~q\ : std_logic;
SIGNAL \convert_binary_Remainder|process_0~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_1[0]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[91]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_1[1]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[92]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_1[2]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[93]~6_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_1[3]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~19_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~9_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~39_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~40_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[65]~35_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~31_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~32_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[63]~15_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~30_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~42_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~38\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~34\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~34_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~36_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[75]~20_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~14_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~16_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[73]~10_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~4_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[71]~26_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[70]~44_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~37_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~46_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~42\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~38\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~34\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~47_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~48_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~49_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[86]~21_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~18_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~50_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~20_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~18_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~22_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~8_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~11_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~18_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~17_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~7_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~12_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~5_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~12_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~14_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[20]~5_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~6_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~27_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~26_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~11_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[26]~6_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[25]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~23_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~28_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~43_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~45_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~4_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~7_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[31]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[30]~15_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~42_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~46_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~52_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~37_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~53_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~26_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[36]~16_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[35]~19_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~51_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~54_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~41_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~26_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~22_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~18_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~14_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~10_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~6_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|int_data_2[0]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_2[0]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|int_data_2[1]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_2[1]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|int_data_2[2]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_2[2]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|int_data_2[3]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_2[3]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~10_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~11_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~12_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[51]~8_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~38_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~34\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~7_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~9_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[59]~13_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~14_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~16_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[57]~18_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[56]~19_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~38_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~34_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~30_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~26_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~22_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~18_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~14_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~10_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~6_cout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|int_data_3[0]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_3[0]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|int_data_3[1]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_3[1]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|int_data_3[2]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_3[2]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|int_data_3[3]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|BCD_digit_3[3]~3_combout\ : std_logic;
SIGNAL \Binary_subtractor|Data_A\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Division|negative\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Binary_subtractor|Data_B\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Division|Remainder\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Binary_subtractor|bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Division|Divisor\ : std_logic_vector(10 DOWNTO 0);
SIGNAL Op : std_logic_vector(1 DOWNTO 0);
SIGNAL \Multiplication|bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Multiplication|Data_Poduct\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Division|Quotient\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Multiplication|Data_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \convert_binary_Remainder|int_data_1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \convert_binary_Remainder|int_data_2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \convert_binary_Remainder|int_data_3\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Division|R\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Division|Round\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Multiplication|Data_B\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_B_i[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_i[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_i[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_i[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_i[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_i[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_i[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_i[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_i[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_i[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Operation[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Start_i~input_o\ : std_logic;
SIGNAL \ALT_INV_Operation[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RST_N_i~input_o\ : std_logic;
SIGNAL ALT_INV_Op : std_logic_vector(1 DOWNTO 0);
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~19_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~48_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~47_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~46_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~45_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~18_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[73]~44_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~43_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~42_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~41_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~40_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~16_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~15_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~14_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[91]~54_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[80]~53_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[80]~52_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[91]~51_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~20_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~39_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~38_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~37_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~36_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~35_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~34_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~33_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~13_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~12_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~11_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~10_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[99]~50_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[88]~49_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[88]~48_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[99]~47_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~19_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[92]~46_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[81]~45_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[70]~44_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[81]~43_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[92]~42_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[77]~41_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[66]~40_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[66]~39_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[77]~38_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~18_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~37_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[76]~36_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[65]~35_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[76]~34_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~33_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~17_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_Data_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[75]~32_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~31_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~30_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~29_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~28_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~27_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~26_combout\ : std_logic;
SIGNAL \Division|ALT_INV_Remainder\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~9_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~8_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~7_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~32_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~31_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~30_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~29_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~16_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~15_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[93]~28_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[82]~27_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[71]~26_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[60]~25_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[82]~24_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[93]~23_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~25_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[65]~24_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~23_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~22_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~20_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~19_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~18_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~17_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~6_combout\ : std_logic;
SIGNAL \Division|ALT_INV_R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~5_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~13_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[97]~22_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[86]~21_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[75]~20_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~19_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[97]~18_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~12_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~11_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[85]~17_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[74]~16_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[63]~15_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[74]~14_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[85]~13_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~8_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~7_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~6_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[95]~12_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[84]~11_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[73]~10_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~9_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[84]~8_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[95]~7_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~4_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[94]~6_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[83]~5_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[72]~4_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[61]~3_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[72]~2_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[83]~1_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[94]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~16_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~15_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~14_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~10_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~9_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~8_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~7_combout\ : std_logic;
SIGNAL \Division|ALT_INV_state.S2~q\ : std_logic;
SIGNAL \Multiplication|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_Data_B\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Division|ALT_INV_state.S0~q\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[71]~5_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[70]~2_combout\ : std_logic;
SIGNAL \Division|ALT_INV_over~0_combout\ : std_logic;
SIGNAL \Division|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \Division|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \Division|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \Division|ALT_INV_Round\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Division|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Division|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \Division|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \Division|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Division|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \Division|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \Division|ALT_INV_Divisor\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Division|ALT_INV_state.S1~q\ : std_logic;
SIGNAL \Multiplication|ALT_INV_over~1_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_over~0_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_state~q\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_state~q\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_Mode~q\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Remainder_main[9]~0_combout\ : std_logic;
SIGNAL \convert_binary_Remainder|ALT_INV_int_data_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \convert_binary_Remainder|ALT_INV_int_data_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \convert_binary_Remainder|ALT_INV_int_data_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \convert_binary_Remainder|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Division|ALT_INV_over~q\ : std_logic;
SIGNAL \Multiplication|ALT_INV_over~q\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_over~q\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~41_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~41_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~37_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_Data_Poduct\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Division|ALT_INV_negative\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \Binary_subtractor|ALT_INV_bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \Multiplication|ALT_INV_bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Division|ALT_INV_Quotient\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Binary_subtractor|ALT_INV_Data_B\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Binary_subtractor|ALT_INV_Data_A\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ : std_logic;
SIGNAL \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;

BEGIN

ww_A_i <= A_i;
ww_B_i <= B_i;
ww_RST_N_i <= RST_N_i;
ww_CLK_i <= CLK_i;
ww_Start_i <= Start_i;
ww_Operation <= Operation;
BCD_data_main_digit_1 <= ww_BCD_data_main_digit_1;
BCD_data_main_digit_2 <= ww_BCD_data_main_digit_2;
BCD_data_main_digit_3 <= ww_BCD_data_main_digit_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B_i[0]~input_o\ <= NOT \B_i[0]~input_o\;
\ALT_INV_A_i[0]~input_o\ <= NOT \A_i[0]~input_o\;
\ALT_INV_B_i[1]~input_o\ <= NOT \B_i[1]~input_o\;
\ALT_INV_A_i[1]~input_o\ <= NOT \A_i[1]~input_o\;
\ALT_INV_B_i[2]~input_o\ <= NOT \B_i[2]~input_o\;
\ALT_INV_A_i[2]~input_o\ <= NOT \A_i[2]~input_o\;
\ALT_INV_B_i[3]~input_o\ <= NOT \B_i[3]~input_o\;
\ALT_INV_A_i[3]~input_o\ <= NOT \A_i[3]~input_o\;
\ALT_INV_B_i[4]~input_o\ <= NOT \B_i[4]~input_o\;
\ALT_INV_A_i[4]~input_o\ <= NOT \A_i[4]~input_o\;
\ALT_INV_Operation[1]~input_o\ <= NOT \Operation[1]~input_o\;
\ALT_INV_Start_i~input_o\ <= NOT \Start_i~input_o\;
\ALT_INV_Operation[0]~input_o\ <= NOT \Operation[0]~input_o\;
\ALT_INV_RST_N_i~input_o\ <= NOT \RST_N_i~input_o\;
ALT_INV_Op(1) <= NOT Op(1);
ALT_INV_Op(0) <= NOT Op(0);
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~19_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[56]~19_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~48_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~48_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~47_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[61]~47_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~46_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[50]~46_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~45_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~45_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~18_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[57]~18_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[73]~44_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[73]~44_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~43_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~43_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~42_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~41_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[40]~41_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~40_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~40_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~16_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~16_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~15_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~14_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~14_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[91]~54_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~54_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[80]~53_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~53_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[80]~52_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~52_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[91]~51_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~51_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~20_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~20_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~39_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~39_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~38_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[63]~38_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~37_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~37_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~36_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~35_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~34_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~34_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~33_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~33_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~13_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[59]~13_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~12_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~12_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~11_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~11_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~10_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~10_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[99]~50_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~50_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[88]~49_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~49_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[88]~48_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~48_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[99]~47_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~47_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~19_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[35]~19_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[92]~46_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~46_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[81]~45_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~45_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[70]~44_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[70]~44_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[81]~43_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~43_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[92]~42_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~42_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[77]~41_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[66]~40_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~40_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[66]~39_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~39_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[77]~38_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~18_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~37_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[76]~36_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~36_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[65]~35_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[65]~35_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[76]~34_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~34_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~33_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~17_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~17_combout\;
\Multiplication|ALT_INV_Data_A\(1) <= NOT \Multiplication|Data_A\(1);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[75]~32_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[75]~32_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~31_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~31_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~30_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[53]~30_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~29_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~29_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~28_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~27_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~27_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~26_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~26_combout\;
\Division|ALT_INV_Remainder\(8) <= NOT \Division|Remainder\(8);
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~9_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~9_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~8_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[51]~8_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~7_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~7_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~32_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~32_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~31_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~31_combout\;
\Division|ALT_INV_Remainder\(7) <= NOT \Division|Remainder\(7);
\Division|ALT_INV_Remainder\(6) <= NOT \Division|Remainder\(6);
\Division|ALT_INV_Remainder\(5) <= NOT \Division|Remainder\(5);
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~30_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~30_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~29_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~16_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[36]~16_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~15_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[30]~15_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[93]~28_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~28_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[82]~27_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~27_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[71]~26_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[71]~26_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[60]~25_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[82]~24_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[93]~23_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~23_combout\;
\Multiplication|ALT_INV_Data_A\(2) <= NOT \Multiplication|Data_A\(2);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~25_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~25_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[65]~24_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[65]~24_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~23_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~22_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[43]~22_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~21_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~20_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~19_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~18_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~17_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\;
\Division|ALT_INV_Remainder\(9) <= NOT \Division|Remainder\(9);
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~6_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\;
\Division|ALT_INV_R\(8) <= NOT \Division|R\(8);
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~5_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~3_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~2_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~1_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~0_combout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~14_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~13_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[97]~22_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~22_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[86]~21_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[86]~21_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[75]~20_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[75]~20_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~19_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~19_combout\;
\Division|ALT_INV_R\(7) <= NOT \Division|R\(7);
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[97]~18_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~18_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~12_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~12_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~11_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~11_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[85]~17_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[74]~16_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~16_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[63]~15_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[63]~15_combout\;
\Division|ALT_INV_R\(6) <= NOT \Division|R\(6);
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[74]~14_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~14_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[85]~13_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~8_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~7_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~7_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~6_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[26]~6_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[20]~5_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[95]~12_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~12_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[84]~11_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~11_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[73]~10_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[73]~10_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~9_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~9_combout\;
\Division|ALT_INV_R\(5) <= NOT \Division|R\(5);
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[84]~8_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~8_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[95]~7_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~7_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~4_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~4_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~3_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~3_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~2_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[31]~2_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~1_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[25]~1_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[94]~6_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~6_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[83]~5_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~5_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[72]~4_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~4_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[61]~3_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\;
\Division|ALT_INV_R\(4) <= NOT \Division|R\(4);
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[72]~2_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~2_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[83]~1_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~1_combout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[94]~0_combout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~0_combout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~0_combout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~0_combout\;
\Multiplication|ALT_INV_Data_A\(3) <= NOT \Multiplication|Data_A\(3);
\Multiplication|ALT_INV_Data_A\(4) <= NOT \Multiplication|Data_A\(4);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~16_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~15_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~14_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\;
\Division|ALT_INV_R\(9) <= NOT \Division|R\(9);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~10_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~9_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~8_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~7_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\;
\Division|ALT_INV_state.S2~q\ <= NOT \Division|state.S2~q\;
\Multiplication|ALT_INV_Mux0~0_combout\ <= NOT \Multiplication|Mux0~0_combout\;
\Multiplication|ALT_INV_Data_B\(3) <= NOT \Multiplication|Data_B\(3);
\Multiplication|ALT_INV_Data_B\(2) <= NOT \Multiplication|Data_B\(2);
\Multiplication|ALT_INV_Data_B\(1) <= NOT \Multiplication|Data_B\(1);
\Multiplication|ALT_INV_Data_B\(0) <= NOT \Multiplication|Data_B\(0);
\Multiplication|ALT_INV_Data_B\(4) <= NOT \Multiplication|Data_B\(4);
\Division|ALT_INV_state.S0~q\ <= NOT \Division|state.S0~q\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[71]~5_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\;
\Division|ALT_INV_R\(3) <= NOT \Division|R\(3);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[70]~2_combout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\;
\Division|ALT_INV_R\(2) <= NOT \Division|R\(2);
\Division|ALT_INV_R\(1) <= NOT \Division|R\(1);
\Division|ALT_INV_over~0_combout\ <= NOT \Division|over~0_combout\;
\Division|ALT_INV_LessThan1~2_combout\ <= NOT \Division|LessThan1~2_combout\;
\Division|ALT_INV_LessThan1~1_combout\ <= NOT \Division|LessThan1~1_combout\;
\Division|ALT_INV_LessThan1~0_combout\ <= NOT \Division|LessThan1~0_combout\;
\Division|ALT_INV_Round\(0) <= NOT \Division|Round\(0);
\Division|ALT_INV_Round\(1) <= NOT \Division|Round\(1);
\Division|ALT_INV_Round\(2) <= NOT \Division|Round\(2);
\Division|ALT_INV_Round\(3) <= NOT \Division|Round\(3);
\Division|ALT_INV_Round\(4) <= NOT \Division|Round\(4);
\Division|ALT_INV_process_0~0_combout\ <= NOT \Division|process_0~0_combout\;
\Division|ALT_INV_LessThan0~4_combout\ <= NOT \Division|LessThan0~4_combout\;
\Division|ALT_INV_LessThan0~3_combout\ <= NOT \Division|LessThan0~3_combout\;
\Division|ALT_INV_LessThan0~2_combout\ <= NOT \Division|LessThan0~2_combout\;
\Division|ALT_INV_LessThan0~1_combout\ <= NOT \Division|LessThan0~1_combout\;
\Division|ALT_INV_LessThan0~0_combout\ <= NOT \Division|LessThan0~0_combout\;
\Division|ALT_INV_Divisor\(9) <= NOT \Division|Divisor\(9);
\Division|ALT_INV_state.S1~q\ <= NOT \Division|state.S1~q\;
\Multiplication|ALT_INV_over~1_combout\ <= NOT \Multiplication|over~1_combout\;
\Multiplication|ALT_INV_over~0_combout\ <= NOT \Multiplication|over~0_combout\;
\Multiplication|ALT_INV_LessThan0~5_combout\ <= NOT \Multiplication|LessThan0~5_combout\;
\Multiplication|ALT_INV_LessThan0~4_combout\ <= NOT \Multiplication|LessThan0~4_combout\;
\Multiplication|ALT_INV_LessThan0~3_combout\ <= NOT \Multiplication|LessThan0~3_combout\;
\Multiplication|ALT_INV_LessThan0~2_combout\ <= NOT \Multiplication|LessThan0~2_combout\;
\Multiplication|ALT_INV_LessThan0~1_combout\ <= NOT \Multiplication|LessThan0~1_combout\;
\Multiplication|ALT_INV_LessThan0~0_combout\ <= NOT \Multiplication|LessThan0~0_combout\;
\Multiplication|ALT_INV_state~q\ <= NOT \Multiplication|state~q\;
\Binary_subtractor|ALT_INV_LessThan0~5_combout\ <= NOT \Binary_subtractor|LessThan0~5_combout\;
\Binary_subtractor|ALT_INV_LessThan0~4_combout\ <= NOT \Binary_subtractor|LessThan0~4_combout\;
\Binary_subtractor|ALT_INV_LessThan0~3_combout\ <= NOT \Binary_subtractor|LessThan0~3_combout\;
\Binary_subtractor|ALT_INV_LessThan0~2_combout\ <= NOT \Binary_subtractor|LessThan0~2_combout\;
\Binary_subtractor|ALT_INV_LessThan0~1_combout\ <= NOT \Binary_subtractor|LessThan0~1_combout\;
\Binary_subtractor|ALT_INV_LessThan0~0_combout\ <= NOT \Binary_subtractor|LessThan0~0_combout\;
\Binary_subtractor|ALT_INV_state~q\ <= NOT \Binary_subtractor|state~q\;
\Binary_subtractor|ALT_INV_LessThan1~1_combout\ <= NOT \Binary_subtractor|LessThan1~1_combout\;
\Binary_subtractor|ALT_INV_LessThan1~0_combout\ <= NOT \Binary_subtractor|LessThan1~0_combout\;
\Binary_subtractor|ALT_INV_Mode~q\ <= NOT \Binary_subtractor|Mode~q\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_Remainder_main[9]~0_combout\ <= NOT \Remainder_main[9]~0_combout\;
\Division|ALT_INV_R\(0) <= NOT \Division|R\(0);
\convert_binary_Remainder|ALT_INV_int_data_3\(3) <= NOT \convert_binary_Remainder|int_data_3\(3);
\convert_binary_Remainder|ALT_INV_int_data_3\(2) <= NOT \convert_binary_Remainder|int_data_3\(2);
\convert_binary_Remainder|ALT_INV_int_data_3\(1) <= NOT \convert_binary_Remainder|int_data_3\(1);
\convert_binary_Remainder|ALT_INV_int_data_3\(0) <= NOT \convert_binary_Remainder|int_data_3\(0);
\convert_binary_Remainder|ALT_INV_int_data_2\(3) <= NOT \convert_binary_Remainder|int_data_2\(3);
\convert_binary_Remainder|ALT_INV_int_data_2\(2) <= NOT \convert_binary_Remainder|int_data_2\(2);
\convert_binary_Remainder|ALT_INV_int_data_2\(1) <= NOT \convert_binary_Remainder|int_data_2\(1);
\convert_binary_Remainder|ALT_INV_int_data_2\(0) <= NOT \convert_binary_Remainder|int_data_2\(0);
\convert_binary_Remainder|ALT_INV_int_data_1\(3) <= NOT \convert_binary_Remainder|int_data_1\(3);
\convert_binary_Remainder|ALT_INV_int_data_1\(2) <= NOT \convert_binary_Remainder|int_data_1\(2);
\convert_binary_Remainder|ALT_INV_int_data_1\(1) <= NOT \convert_binary_Remainder|int_data_1\(1);
\convert_binary_Remainder|ALT_INV_process_0~0_combout\ <= NOT \convert_binary_Remainder|process_0~0_combout\;
\Division|ALT_INV_over~q\ <= NOT \Division|over~q\;
\Multiplication|ALT_INV_over~q\ <= NOT \Multiplication|over~q\;
\Binary_subtractor|ALT_INV_over~q\ <= NOT \Binary_subtractor|over~q\;
\convert_binary_Remainder|ALT_INV_int_data_1\(0) <= NOT \convert_binary_Remainder|int_data_1\(0);
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~33_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~29_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~33_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~25_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~29_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~25_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~29_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~41_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~41_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~33_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~37_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~41_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~41_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~21_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~21_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~25_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~21_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~25_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~37_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~37_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~37_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~21_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~29_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~33_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~37_sumout\;
\Multiplication|ALT_INV_Data_Poduct\(0) <= NOT \Multiplication|Data_Poduct\(0);
\Multiplication|ALT_INV_Data_A\(0) <= NOT \Multiplication|Data_A\(0);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~17_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~17_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~17_sumout\;
\Division|ALT_INV_negative\(8) <= NOT \Division|negative\(8);
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~21_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~17_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~21_sumout\;
\Division|ALT_INV_negative\(7) <= NOT \Division|negative\(7);
\Division|ALT_INV_negative\(6) <= NOT \Division|negative\(6);
\Division|ALT_INV_negative\(5) <= NOT \Division|negative\(5);
\Division|ALT_INV_negative\(4) <= NOT \Division|negative\(4);
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~33_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~33_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~33_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~29_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~29_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~29_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~25_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~17_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~21_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~25_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~29_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~33_sumout\;
\Multiplication|ALT_INV_Data_Poduct\(1) <= NOT \Multiplication|Data_Poduct\(1);
\Division|ALT_INV_negative\(9) <= NOT \Division|negative\(9);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~13_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~13_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~13_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~17_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~13_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~17_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~13_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~21_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~25_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~21_sumout\;
\Division|ALT_INV_Remainder\(4) <= NOT \Division|Remainder\(4);
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~25_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~21_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~25_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~21_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~25_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~21_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~13_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~17_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~21_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~25_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~29_sumout\;
\Multiplication|ALT_INV_Data_Poduct\(2) <= NOT \Multiplication|Data_Poduct\(2);
\Binary_subtractor|ALT_INV_bit_counter\(0) <= NOT \Binary_subtractor|bit_counter\(0);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~9_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~9_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~9_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~13_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~13_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~9_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~9_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~9_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~17_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~17_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~17_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~9_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~17_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~5_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~13_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~13_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~13_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~17_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~9_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~9_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~9_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~5_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~9_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~13_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~13_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~9_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~5_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~5_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~5_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~5_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~5_sumout\;
\convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~9_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~9_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~17_sumout\;
\Division|ALT_INV_negative\(3) <= NOT \Division|negative\(3);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~21_sumout\;
\Division|ALT_INV_negative\(2) <= NOT \Division|negative\(2);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~25_sumout\;
\Division|ALT_INV_negative\(1) <= NOT \Division|negative\(1);
\Multiplication|ALT_INV_Data_A\(9) <= NOT \Multiplication|Data_A\(9);
\Multiplication|ALT_INV_Data_A\(5) <= NOT \Multiplication|Data_A\(5);
\Multiplication|ALT_INV_Data_A\(6) <= NOT \Multiplication|Data_A\(6);
\Multiplication|ALT_INV_Data_A\(7) <= NOT \Multiplication|Data_A\(7);
\Multiplication|ALT_INV_Data_A\(8) <= NOT \Multiplication|Data_A\(8);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~5_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~5_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~5_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\;
\Division|ALT_INV_negative\(0) <= NOT \Division|negative\(0);
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~5_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~9_sumout\;
\Division|ALT_INV_Remainder\(3) <= NOT \Division|Remainder\(3);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~13_sumout\;
\Division|ALT_INV_Remainder\(2) <= NOT \Division|Remainder\(2);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~17_sumout\;
\Division|ALT_INV_Remainder\(1) <= NOT \Division|Remainder\(1);
\Division|ALT_INV_negative\(10) <= NOT \Division|negative\(10);
\Multiplication|ALT_INV_bit_counter\(0) <= NOT \Multiplication|bit_counter\(0);
\Division|ALT_INV_Divisor\(5) <= NOT \Division|Divisor\(5);
\Division|ALT_INV_Quotient\(6) <= NOT \Division|Quotient\(6);
\Division|ALT_INV_Quotient\(7) <= NOT \Division|Quotient\(7);
\Division|ALT_INV_Divisor\(6) <= NOT \Division|Divisor\(6);
\Division|ALT_INV_Divisor\(7) <= NOT \Division|Divisor\(7);
\Division|ALT_INV_Quotient\(8) <= NOT \Division|Quotient\(8);
\Division|ALT_INV_Quotient\(9) <= NOT \Division|Quotient\(9);
\Division|ALT_INV_Divisor\(8) <= NOT \Division|Divisor\(8);
\Multiplication|ALT_INV_Data_Poduct\(9) <= NOT \Multiplication|Data_Poduct\(9);
\Multiplication|ALT_INV_Data_Poduct\(5) <= NOT \Multiplication|Data_Poduct\(5);
\Multiplication|ALT_INV_Data_Poduct\(6) <= NOT \Multiplication|Data_Poduct\(6);
\Multiplication|ALT_INV_Data_Poduct\(7) <= NOT \Multiplication|Data_Poduct\(7);
\Multiplication|ALT_INV_Data_Poduct\(3) <= NOT \Multiplication|Data_Poduct\(3);
\Multiplication|ALT_INV_Data_Poduct\(4) <= NOT \Multiplication|Data_Poduct\(4);
\Multiplication|ALT_INV_Data_Poduct\(8) <= NOT \Multiplication|Data_Poduct\(8);
\Multiplication|ALT_INV_bit_counter\(13) <= NOT \Multiplication|bit_counter\(13);
\Multiplication|ALT_INV_bit_counter\(6) <= NOT \Multiplication|bit_counter\(6);
\Multiplication|ALT_INV_bit_counter\(3) <= NOT \Multiplication|bit_counter\(3);
\Multiplication|ALT_INV_bit_counter\(14) <= NOT \Multiplication|bit_counter\(14);
\Multiplication|ALT_INV_bit_counter\(11) <= NOT \Multiplication|bit_counter\(11);
\Multiplication|ALT_INV_bit_counter\(10) <= NOT \Multiplication|bit_counter\(10);
\Multiplication|ALT_INV_bit_counter\(9) <= NOT \Multiplication|bit_counter\(9);
\Multiplication|ALT_INV_bit_counter\(8) <= NOT \Multiplication|bit_counter\(8);
\Multiplication|ALT_INV_bit_counter\(7) <= NOT \Multiplication|bit_counter\(7);
\Multiplication|ALT_INV_bit_counter\(4) <= NOT \Multiplication|bit_counter\(4);
\Multiplication|ALT_INV_bit_counter\(1) <= NOT \Multiplication|bit_counter\(1);
\Multiplication|ALT_INV_bit_counter\(2) <= NOT \Multiplication|bit_counter\(2);
\Multiplication|ALT_INV_bit_counter\(27) <= NOT \Multiplication|bit_counter\(27);
\Multiplication|ALT_INV_bit_counter\(28) <= NOT \Multiplication|bit_counter\(28);
\Multiplication|ALT_INV_bit_counter\(29) <= NOT \Multiplication|bit_counter\(29);
\Multiplication|ALT_INV_bit_counter\(30) <= NOT \Multiplication|bit_counter\(30);
\Multiplication|ALT_INV_bit_counter\(5) <= NOT \Multiplication|bit_counter\(5);
\Multiplication|ALT_INV_bit_counter\(12) <= NOT \Multiplication|bit_counter\(12);
\Multiplication|ALT_INV_bit_counter\(21) <= NOT \Multiplication|bit_counter\(21);
\Multiplication|ALT_INV_bit_counter\(22) <= NOT \Multiplication|bit_counter\(22);
\Multiplication|ALT_INV_bit_counter\(23) <= NOT \Multiplication|bit_counter\(23);
\Multiplication|ALT_INV_bit_counter\(24) <= NOT \Multiplication|bit_counter\(24);
\Multiplication|ALT_INV_bit_counter\(25) <= NOT \Multiplication|bit_counter\(25);
\Multiplication|ALT_INV_bit_counter\(26) <= NOT \Multiplication|bit_counter\(26);
\Multiplication|ALT_INV_bit_counter\(15) <= NOT \Multiplication|bit_counter\(15);
\Multiplication|ALT_INV_bit_counter\(16) <= NOT \Multiplication|bit_counter\(16);
\Multiplication|ALT_INV_bit_counter\(17) <= NOT \Multiplication|bit_counter\(17);
\Multiplication|ALT_INV_bit_counter\(18) <= NOT \Multiplication|bit_counter\(18);
\Multiplication|ALT_INV_bit_counter\(19) <= NOT \Multiplication|bit_counter\(19);
\Multiplication|ALT_INV_bit_counter\(20) <= NOT \Multiplication|bit_counter\(20);
\Multiplication|ALT_INV_bit_counter\(31) <= NOT \Multiplication|bit_counter\(31);
\Binary_subtractor|ALT_INV_bit_counter\(29) <= NOT \Binary_subtractor|bit_counter\(29);
\Binary_subtractor|ALT_INV_bit_counter\(28) <= NOT \Binary_subtractor|bit_counter\(28);
\Binary_subtractor|ALT_INV_bit_counter\(27) <= NOT \Binary_subtractor|bit_counter\(27);
\Binary_subtractor|ALT_INV_bit_counter\(26) <= NOT \Binary_subtractor|bit_counter\(26);
\Binary_subtractor|ALT_INV_bit_counter\(24) <= NOT \Binary_subtractor|bit_counter\(24);
\Binary_subtractor|ALT_INV_bit_counter\(23) <= NOT \Binary_subtractor|bit_counter\(23);
\Binary_subtractor|ALT_INV_bit_counter\(22) <= NOT \Binary_subtractor|bit_counter\(22);
\Binary_subtractor|ALT_INV_bit_counter\(21) <= NOT \Binary_subtractor|bit_counter\(21);
\Binary_subtractor|ALT_INV_bit_counter\(20) <= NOT \Binary_subtractor|bit_counter\(20);
\Binary_subtractor|ALT_INV_bit_counter\(19) <= NOT \Binary_subtractor|bit_counter\(19);
\Binary_subtractor|ALT_INV_bit_counter\(2) <= NOT \Binary_subtractor|bit_counter\(2);
\Binary_subtractor|ALT_INV_bit_counter\(1) <= NOT \Binary_subtractor|bit_counter\(1);
\Binary_subtractor|ALT_INV_bit_counter\(6) <= NOT \Binary_subtractor|bit_counter\(6);
\Binary_subtractor|ALT_INV_bit_counter\(5) <= NOT \Binary_subtractor|bit_counter\(5);
\Binary_subtractor|ALT_INV_bit_counter\(4) <= NOT \Binary_subtractor|bit_counter\(4);
\Binary_subtractor|ALT_INV_bit_counter\(3) <= NOT \Binary_subtractor|bit_counter\(3);
\Binary_subtractor|ALT_INV_bit_counter\(12) <= NOT \Binary_subtractor|bit_counter\(12);
\Binary_subtractor|ALT_INV_bit_counter\(30) <= NOT \Binary_subtractor|bit_counter\(30);
\Binary_subtractor|ALT_INV_bit_counter\(13) <= NOT \Binary_subtractor|bit_counter\(13);
\Binary_subtractor|ALT_INV_bit_counter\(11) <= NOT \Binary_subtractor|bit_counter\(11);
\Binary_subtractor|ALT_INV_bit_counter\(10) <= NOT \Binary_subtractor|bit_counter\(10);
\Binary_subtractor|ALT_INV_bit_counter\(9) <= NOT \Binary_subtractor|bit_counter\(9);
\Binary_subtractor|ALT_INV_bit_counter\(8) <= NOT \Binary_subtractor|bit_counter\(8);
\Binary_subtractor|ALT_INV_bit_counter\(7) <= NOT \Binary_subtractor|bit_counter\(7);
\Binary_subtractor|ALT_INV_bit_counter\(18) <= NOT \Binary_subtractor|bit_counter\(18);
\Binary_subtractor|ALT_INV_bit_counter\(25) <= NOT \Binary_subtractor|bit_counter\(25);
\Binary_subtractor|ALT_INV_bit_counter\(17) <= NOT \Binary_subtractor|bit_counter\(17);
\Binary_subtractor|ALT_INV_bit_counter\(16) <= NOT \Binary_subtractor|bit_counter\(16);
\Binary_subtractor|ALT_INV_bit_counter\(15) <= NOT \Binary_subtractor|bit_counter\(15);
\Binary_subtractor|ALT_INV_bit_counter\(14) <= NOT \Binary_subtractor|bit_counter\(14);
\Binary_subtractor|ALT_INV_bit_counter\(31) <= NOT \Binary_subtractor|bit_counter\(31);
\Binary_subtractor|ALT_INV_Data_B\(0) <= NOT \Binary_subtractor|Data_B\(0);
\Binary_subtractor|ALT_INV_Data_A\(0) <= NOT \Binary_subtractor|Data_A\(0);
\Binary_subtractor|ALT_INV_Data_B\(1) <= NOT \Binary_subtractor|Data_B\(1);
\Binary_subtractor|ALT_INV_Data_A\(1) <= NOT \Binary_subtractor|Data_A\(1);
\Binary_subtractor|ALT_INV_Data_B\(2) <= NOT \Binary_subtractor|Data_B\(2);
\Binary_subtractor|ALT_INV_Data_A\(2) <= NOT \Binary_subtractor|Data_A\(2);
\Binary_subtractor|ALT_INV_Data_B\(3) <= NOT \Binary_subtractor|Data_B\(3);
\Binary_subtractor|ALT_INV_Data_A\(3) <= NOT \Binary_subtractor|Data_A\(3);
\Binary_subtractor|ALT_INV_Data_B\(4) <= NOT \Binary_subtractor|Data_B\(4);
\Binary_subtractor|ALT_INV_Data_A\(4) <= NOT \Binary_subtractor|Data_A\(4);
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~5_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\;
\Division|ALT_INV_Remainder\(0) <= NOT \Division|Remainder\(0);
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\;
\convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~1_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\;
\convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~1_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~17_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~9_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~5_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~13_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~5_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~9_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5_sumout\;
\convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\;
\Division|ALT_INV_Quotient\(0) <= NOT \Division|Quotient\(0);
\Division|ALT_INV_Quotient\(1) <= NOT \Division|Quotient\(1);
\Division|ALT_INV_Quotient\(2) <= NOT \Division|Quotient\(2);
\Division|ALT_INV_Divisor\(0) <= NOT \Division|Divisor\(0);
\Division|ALT_INV_Divisor\(1) <= NOT \Division|Divisor\(1);
\Division|ALT_INV_Divisor\(2) <= NOT \Division|Divisor\(2);
\Division|ALT_INV_Quotient\(3) <= NOT \Division|Quotient\(3);
\Division|ALT_INV_Quotient\(4) <= NOT \Division|Quotient\(4);
\Division|ALT_INV_Divisor\(3) <= NOT \Division|Divisor\(3);
\Division|ALT_INV_Divisor\(4) <= NOT \Division|Divisor\(4);
\Division|ALT_INV_Quotient\(5) <= NOT \Division|Quotient\(5);

\BCD_data_main_digit_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_1[0]~0_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_1[0]~output_o\);

\BCD_data_main_digit_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_1[1]~1_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_1[1]~output_o\);

\BCD_data_main_digit_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_1[2]~2_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_1[2]~output_o\);

\BCD_data_main_digit_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_1[3]~3_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_1[3]~output_o\);

\BCD_data_main_digit_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_2[0]~0_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_2[0]~output_o\);

\BCD_data_main_digit_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_2[1]~1_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_2[1]~output_o\);

\BCD_data_main_digit_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_2[2]~2_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_2[2]~output_o\);

\BCD_data_main_digit_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_2[3]~3_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_2[3]~output_o\);

\BCD_data_main_digit_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_3[0]~0_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_3[0]~output_o\);

\BCD_data_main_digit_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_3[1]~1_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_3[1]~output_o\);

\BCD_data_main_digit_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_3[2]~2_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_3[2]~output_o\);

\BCD_data_main_digit_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \convert_binary_Remainder|BCD_digit_3[3]~3_combout\,
	devoe => ww_devoe,
	o => \BCD_data_main_digit_3[3]~output_o\);

\CLK_i~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_i,
	o => \CLK_i~input_o\);

\A_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_i(0),
	o => \A_i[0]~input_o\);

\Start_i~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start_i,
	o => \Start_i~input_o\);

\B_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_i(4),
	o => \B_i[4]~input_o\);

\Division|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector1~0_combout\ = (!\Division|state.S0~q\ & \B_i[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S0~q\,
	datab => \ALT_INV_B_i[4]~input_o\,
	combout => \Division|Selector1~0_combout\);

\RST_N_i~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_N_i,
	o => \RST_N_i~input_o\);

\Division|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector22~0_combout\ = (!\Division|state.S1~q\ & \B_i[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S1~q\,
	datab => \ALT_INV_B_i[4]~input_o\,
	combout => \Division|Selector22~0_combout\);

\Division|Round[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Round[0]~0_combout\ = ( \Division|state.S0~q\ & ( (\Division|state.S1~q\ & ((!\Division|process_0~0_combout\) # (\Division|LessThan1~2_combout\))) ) ) # ( !\Division|state.S0~q\ & ( ((\Division|state.S1~q\ & ((!\Division|process_0~0_combout\) # 
-- (\Division|LessThan1~2_combout\)))) # (\Start_i~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110111001100000011001101110101011101110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Division|ALT_INV_state.S1~q\,
	datac => \Division|ALT_INV_process_0~0_combout\,
	datad => \Division|ALT_INV_LessThan1~2_combout\,
	datae => \Division|ALT_INV_state.S0~q\,
	combout => \Division|Round[0]~0_combout\);

\Division|Round[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector22~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Round[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Round\(4));

\B_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_i(3),
	o => \B_i[3]~input_o\);

\Division|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector23~0_combout\ = (!\Division|state.S1~q\ & \B_i[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S1~q\,
	datab => \ALT_INV_B_i[3]~input_o\,
	combout => \Division|Selector23~0_combout\);

\Division|Round[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector23~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Round[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Round\(3));

\Division|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector2~0_combout\ = (!\Division|state.S2~q\ & ((\B_i[3]~input_o\))) # (\Division|state.S2~q\ & (\Division|Divisor\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(9),
	datab => \ALT_INV_B_i[3]~input_o\,
	datac => \Division|ALT_INV_state.S2~q\,
	combout => \Division|Selector2~0_combout\);

\Division|Divisor[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector2~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Divisor[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(8));

\B_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_i(2),
	o => \B_i[2]~input_o\);

\Division|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector3~0_combout\ = (!\Division|state.S2~q\ & ((\B_i[2]~input_o\))) # (\Division|state.S2~q\ & (\Division|Divisor\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(8),
	datab => \ALT_INV_B_i[2]~input_o\,
	datac => \Division|ALT_INV_state.S2~q\,
	combout => \Division|Selector3~0_combout\);

\Division|Divisor[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector3~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Divisor[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(7));

\B_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_i(1),
	o => \B_i[1]~input_o\);

\Division|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector4~0_combout\ = (!\Division|state.S2~q\ & ((\B_i[1]~input_o\))) # (\Division|state.S2~q\ & (\Division|Divisor\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(7),
	datab => \ALT_INV_B_i[1]~input_o\,
	datac => \Division|ALT_INV_state.S2~q\,
	combout => \Division|Selector4~0_combout\);

\Division|Divisor[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector4~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Divisor[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(6));

\B_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_i(0),
	o => \B_i[0]~input_o\);

\Division|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector5~0_combout\ = (!\Division|state.S2~q\ & ((\B_i[0]~input_o\))) # (\Division|state.S2~q\ & (\Division|Divisor\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(6),
	datab => \ALT_INV_B_i[0]~input_o\,
	datac => \Division|ALT_INV_state.S2~q\,
	combout => \Division|Selector5~0_combout\);

\Division|Divisor[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector5~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Divisor[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(5));

\Division|Quotient[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Quotient[1]~0_combout\ = (\Division|state.S0~q\ & ((!\Division|state.S1~q\) # ((!\Division|process_0~0_combout\) # (\Division|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S1~q\,
	datab => \Division|ALT_INV_process_0~0_combout\,
	datac => \Division|ALT_INV_LessThan1~2_combout\,
	datad => \Division|ALT_INV_state.S0~q\,
	combout => \Division|Quotient[1]~0_combout\);

\Division|Divisor[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Divisor\(5),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(4));

\Division|Divisor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Divisor\(4),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(3));

\Division|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector24~0_combout\ = (!\Division|state.S1~q\ & \B_i[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S1~q\,
	datab => \ALT_INV_B_i[2]~input_o\,
	combout => \Division|Selector24~0_combout\);

\Division|Round[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector24~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Round[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Round\(2));

\Division|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector25~0_combout\ = (!\Division|state.S1~q\ & \B_i[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S1~q\,
	datab => \ALT_INV_B_i[1]~input_o\,
	combout => \Division|Selector25~0_combout\);

\Division|Round[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector25~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Round[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Round\(1));

\Division|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector26~0_combout\ = (!\Division|state.S1~q\ & \B_i[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S1~q\,
	datab => \ALT_INV_B_i[0]~input_o\,
	combout => \Division|Selector26~0_combout\);

\Division|Round[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector26~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Round[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Round\(0));

\Division|Divisor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Divisor\(3),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(2));

\Division|Divisor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Divisor\(2),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(1));

\Division|Divisor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Divisor\(1),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(0));

\Division|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|LessThan1~0_combout\ = ( \Division|Divisor\(1) & ( \Division|Divisor\(0) & ( (\Division|Round\(2) & !\Division|Divisor\(2)) ) ) ) # ( !\Division|Divisor\(1) & ( \Division|Divisor\(0) & ( (!\Division|Round\(2) & (\Division|Round\(1) & 
-- !\Division|Divisor\(2))) # (\Division|Round\(2) & ((!\Division|Divisor\(2)) # (\Division|Round\(1)))) ) ) ) # ( \Division|Divisor\(1) & ( !\Division|Divisor\(0) & ( (!\Division|Round\(2) & (\Division|Round\(1) & (\Division|Round\(0) & 
-- !\Division|Divisor\(2)))) # (\Division|Round\(2) & ((!\Division|Divisor\(2)) # ((\Division|Round\(1) & \Division|Round\(0))))) ) ) ) # ( !\Division|Divisor\(1) & ( !\Division|Divisor\(0) & ( (!\Division|Round\(2) & (!\Division|Divisor\(2) & 
-- ((\Division|Round\(0)) # (\Division|Round\(1))))) # (\Division|Round\(2) & (((!\Division|Divisor\(2)) # (\Division|Round\(0))) # (\Division|Round\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010101010101110000000101110111000100010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Round\(2),
	datab => \Division|ALT_INV_Round\(1),
	datac => \Division|ALT_INV_Round\(0),
	datad => \Division|ALT_INV_Divisor\(2),
	datae => \Division|ALT_INV_Divisor\(1),
	dataf => \Division|ALT_INV_Divisor\(0),
	combout => \Division|LessThan1~0_combout\);

\Division|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|LessThan1~1_combout\ = ( !\Division|Divisor\(5) & ( (!\Division|Divisor\(9) & (!\Division|Divisor\(8) & (!\Division|Divisor\(7) & !\Division|Divisor\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(9),
	datab => \Division|ALT_INV_Divisor\(8),
	datac => \Division|ALT_INV_Divisor\(7),
	datad => \Division|ALT_INV_Divisor\(6),
	datae => \Division|ALT_INV_Divisor\(5),
	combout => \Division|LessThan1~1_combout\);

\Division|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|LessThan1~2_combout\ = ( \Division|LessThan1~0_combout\ & ( \Division|LessThan1~1_combout\ & ( (!\Division|Round\(4) & (!\Division|Divisor\(4) & ((!\Division|Divisor\(3)) # (\Division|Round\(3))))) # (\Division|Round\(4) & 
-- (((!\Division|Divisor\(4)) # (!\Division|Divisor\(3))) # (\Division|Round\(3)))) ) ) ) # ( !\Division|LessThan1~0_combout\ & ( \Division|LessThan1~1_combout\ & ( (!\Division|Round\(4) & (\Division|Round\(3) & (!\Division|Divisor\(4) & 
-- !\Division|Divisor\(3)))) # (\Division|Round\(4) & ((!\Division|Divisor\(4)) # ((\Division|Round\(3) & !\Division|Divisor\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110001010100001111010101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Round\(4),
	datab => \Division|ALT_INV_Round\(3),
	datac => \Division|ALT_INV_Divisor\(4),
	datad => \Division|ALT_INV_Divisor\(3),
	datae => \Division|ALT_INV_LessThan1~0_combout\,
	dataf => \Division|ALT_INV_LessThan1~1_combout\,
	combout => \Division|LessThan1~2_combout\);

\Division|Divisor[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Divisor[9]~0_combout\ = ( \Division|state.S0~q\ & ( (!\Division|state.S1~q\) # ((!\Division|process_0~0_combout\) # (\Division|LessThan1~2_combout\)) ) ) # ( !\Division|state.S0~q\ & ( (\Start_i~input_o\ & ((!\Division|state.S1~q\) # 
-- ((!\Division|process_0~0_combout\) # (\Division|LessThan1~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010101111111001111111101010100010101011111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Division|ALT_INV_state.S1~q\,
	datac => \Division|ALT_INV_process_0~0_combout\,
	datad => \Division|ALT_INV_LessThan1~2_combout\,
	datae => \Division|ALT_INV_state.S0~q\,
	combout => \Division|Divisor[9]~0_combout\);

\Division|Divisor[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector1~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Divisor[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Divisor\(9));

\A_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_i(4),
	o => \A_i[4]~input_o\);

\A_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_i(3),
	o => \A_i[3]~input_o\);

\A_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_i(2),
	o => \A_i[2]~input_o\);

\A_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_i(1),
	o => \A_i[1]~input_o\);

\Division|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~5_sumout\ = SUM(( !\Division|Remainder\(0) $ (!\Division|Divisor\(0)) ) + ( !VCC ) + ( !VCC ))
-- \Division|Add0~6\ = CARRY(( !\Division|Remainder\(0) $ (!\Division|Divisor\(0)) ) + ( !VCC ) + ( !VCC ))
-- \Division|Add0~7\ = SHARE((!\Division|Divisor\(0)) # (\Division|Remainder\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(0),
	datad => \Division|ALT_INV_Divisor\(0),
	cin => GND,
	sharein => GND,
	sumout => \Division|Add0~5_sumout\,
	cout => \Division|Add0~6\,
	shareout => \Division|Add0~7\);

\Division|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~13_sumout\ = SUM(( !\Division|Remainder\(1) $ (\Division|Divisor\(1)) ) + ( \Division|Add0~7\ ) + ( \Division|Add0~6\ ))
-- \Division|Add0~14\ = CARRY(( !\Division|Remainder\(1) $ (\Division|Divisor\(1)) ) + ( \Division|Add0~7\ ) + ( \Division|Add0~6\ ))
-- \Division|Add0~15\ = SHARE((\Division|Remainder\(1) & !\Division|Divisor\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(1),
	datad => \Division|ALT_INV_Divisor\(1),
	cin => \Division|Add0~6\,
	sharein => \Division|Add0~7\,
	sumout => \Division|Add0~13_sumout\,
	cout => \Division|Add0~14\,
	shareout => \Division|Add0~15\);

\Division|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|LessThan0~0_combout\ = (\Division|Divisor\(5) & !\Division|Quotient\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(5),
	datab => \Division|ALT_INV_Quotient\(5),
	combout => \Division|LessThan0~0_combout\);

\Division|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|LessThan0~1_combout\ = !\Division|Divisor\(5) $ (!\Division|Quotient\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(5),
	datab => \Division|ALT_INV_Quotient\(5),
	combout => \Division|LessThan0~1_combout\);

\Division|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|LessThan0~2_combout\ = ( \Division|Quotient\(1) & ( \Division|Quotient\(0) & ( (\Division|Divisor\(2) & !\Division|Quotient\(2)) ) ) ) # ( !\Division|Quotient\(1) & ( \Division|Quotient\(0) & ( (!\Division|Divisor\(2) & (\Division|Divisor\(1) & 
-- !\Division|Quotient\(2))) # (\Division|Divisor\(2) & ((!\Division|Quotient\(2)) # (\Division|Divisor\(1)))) ) ) ) # ( \Division|Quotient\(1) & ( !\Division|Quotient\(0) & ( (!\Division|Divisor\(2) & (\Division|Divisor\(1) & (\Division|Divisor\(0) & 
-- !\Division|Quotient\(2)))) # (\Division|Divisor\(2) & ((!\Division|Quotient\(2)) # ((\Division|Divisor\(1) & \Division|Divisor\(0))))) ) ) ) # ( !\Division|Quotient\(1) & ( !\Division|Quotient\(0) & ( (!\Division|Divisor\(2) & (!\Division|Quotient\(2) & 
-- ((\Division|Divisor\(0)) # (\Division|Divisor\(1))))) # (\Division|Divisor\(2) & (((!\Division|Quotient\(2)) # (\Division|Divisor\(0))) # (\Division|Divisor\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010101010101110000000101110111000100010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(2),
	datab => \Division|ALT_INV_Divisor\(1),
	datac => \Division|ALT_INV_Divisor\(0),
	datad => \Division|ALT_INV_Quotient\(2),
	datae => \Division|ALT_INV_Quotient\(1),
	dataf => \Division|ALT_INV_Quotient\(0),
	combout => \Division|LessThan0~2_combout\);

\Division|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|LessThan0~3_combout\ = ( \Division|Quotient\(3) & ( \Division|LessThan0~2_combout\ & ( (!\Division|LessThan0~1_combout\ & ((!\Division|Divisor\(4) & (\Division|Divisor\(3) & !\Division|Quotient\(4))) # (\Division|Divisor\(4) & 
-- ((!\Division|Quotient\(4)) # (\Division|Divisor\(3)))))) ) ) ) # ( !\Division|Quotient\(3) & ( \Division|LessThan0~2_combout\ & ( (!\Division|LessThan0~1_combout\ & ((!\Division|Quotient\(4)) # (\Division|Divisor\(4)))) ) ) ) # ( \Division|Quotient\(3) & 
-- ( !\Division|LessThan0~2_combout\ & ( (\Division|Divisor\(4) & (!\Division|LessThan0~1_combout\ & !\Division|Quotient\(4))) ) ) ) # ( !\Division|Quotient\(3) & ( !\Division|LessThan0~2_combout\ & ( (!\Division|LessThan0~1_combout\ & 
-- ((!\Division|Divisor\(4) & (\Division|Divisor\(3) & !\Division|Quotient\(4))) # (\Division|Divisor\(4) & ((!\Division|Quotient\(4)) # (\Division|Divisor\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010000010100000000000011110000010100000111000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(4),
	datab => \Division|ALT_INV_Divisor\(3),
	datac => \Division|ALT_INV_LessThan0~1_combout\,
	datad => \Division|ALT_INV_Quotient\(4),
	datae => \Division|ALT_INV_Quotient\(3),
	dataf => \Division|ALT_INV_LessThan0~2_combout\,
	combout => \Division|LessThan0~3_combout\);

\Division|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|LessThan0~4_combout\ = ( \Division|LessThan0~0_combout\ & ( \Division|LessThan0~3_combout\ & ( (!\Division|Divisor\(7) & (((!\Division|Divisor\(6) & \Division|Quotient\(6))) # (\Division|Quotient\(7)))) # (\Division|Divisor\(7) & 
-- (!\Division|Divisor\(6) & (\Division|Quotient\(7) & \Division|Quotient\(6)))) ) ) ) # ( !\Division|LessThan0~0_combout\ & ( \Division|LessThan0~3_combout\ & ( (!\Division|Divisor\(7) & (((!\Division|Divisor\(6) & \Division|Quotient\(6))) # 
-- (\Division|Quotient\(7)))) # (\Division|Divisor\(7) & (!\Division|Divisor\(6) & (\Division|Quotient\(7) & \Division|Quotient\(6)))) ) ) ) # ( \Division|LessThan0~0_combout\ & ( !\Division|LessThan0~3_combout\ & ( (!\Division|Divisor\(7) & 
-- (((!\Division|Divisor\(6) & \Division|Quotient\(6))) # (\Division|Quotient\(7)))) # (\Division|Divisor\(7) & (!\Division|Divisor\(6) & (\Division|Quotient\(7) & \Division|Quotient\(6)))) ) ) ) # ( !\Division|LessThan0~0_combout\ & ( 
-- !\Division|LessThan0~3_combout\ & ( (!\Division|Divisor\(7) & ((!\Division|Divisor\(6)) # ((\Division|Quotient\(6)) # (\Division|Quotient\(7))))) # (\Division|Divisor\(7) & (\Division|Quotient\(7) & ((!\Division|Divisor\(6)) # (\Division|Quotient\(6))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111010101111000010101000111000001010100011100000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(7),
	datab => \Division|ALT_INV_Divisor\(6),
	datac => \Division|ALT_INV_Quotient\(7),
	datad => \Division|ALT_INV_Quotient\(6),
	datae => \Division|ALT_INV_LessThan0~0_combout\,
	dataf => \Division|ALT_INV_LessThan0~3_combout\,
	combout => \Division|LessThan0~4_combout\);

\Division|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|process_0~1_combout\ = ( \Division|LessThan0~4_combout\ & ( \Division|LessThan1~2_combout\ ) ) # ( !\Division|LessThan0~4_combout\ & ( \Division|LessThan1~2_combout\ ) ) # ( \Division|LessThan0~4_combout\ & ( !\Division|LessThan1~2_combout\ & ( 
-- (!\Division|Divisor\(9) & ((!\Division|Divisor\(8)) # ((\Division|Quotient\(8)) # (\Division|Quotient\(9))))) # (\Division|Divisor\(9) & (\Division|Quotient\(9) & ((!\Division|Divisor\(8)) # (\Division|Quotient\(8))))) ) ) ) # ( 
-- !\Division|LessThan0~4_combout\ & ( !\Division|LessThan1~2_combout\ & ( (!\Division|Divisor\(9) & (((!\Division|Divisor\(8) & \Division|Quotient\(8))) # (\Division|Quotient\(9)))) # (\Division|Divisor\(9) & (!\Division|Divisor\(8) & 
-- (\Division|Quotient\(9) & \Division|Quotient\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001110100011101010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(9),
	datab => \Division|ALT_INV_Divisor\(8),
	datac => \Division|ALT_INV_Quotient\(9),
	datad => \Division|ALT_INV_Quotient\(8),
	datae => \Division|ALT_INV_LessThan0~4_combout\,
	dataf => \Division|ALT_INV_LessThan1~2_combout\,
	combout => \Division|process_0~1_combout\);

\Division|negative[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~13_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(1));

\Division|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector20~0_combout\ = (!\Division|state.S2~q\ & (\A_i[1]~input_o\)) # (\Division|state.S2~q\ & ((\Division|negative\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_i[1]~input_o\,
	datab => \Division|ALT_INV_state.S2~q\,
	datac => \Division|ALT_INV_negative\(1),
	combout => \Division|Selector20~0_combout\);

\Division|Remainder[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Remainder[0]~0_combout\ = ( !\Division|state.S2~q\ & ( \Division|negative\(10) & ( (!\Division|state.S1~q\ & (\Start_i~input_o\)) # (\Division|state.S1~q\ & (((!\Division|process_0~0_combout\) # (\Division|LessThan1~2_combout\)))) ) ) ) # ( 
-- \Division|state.S2~q\ & ( !\Division|negative\(10) ) ) # ( !\Division|state.S2~q\ & ( !\Division|negative\(10) & ( (!\Division|state.S1~q\ & (\Start_i~input_o\)) # (\Division|state.S1~q\ & (((!\Division|process_0~0_combout\) # 
-- (\Division|LessThan1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110111111111111111111101110100011101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Division|ALT_INV_state.S1~q\,
	datac => \Division|ALT_INV_process_0~0_combout\,
	datad => \Division|ALT_INV_LessThan1~2_combout\,
	datae => \Division|ALT_INV_state.S2~q\,
	dataf => \Division|ALT_INV_negative\(10),
	combout => \Division|Remainder[0]~0_combout\);

\Division|Remainder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector20~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(1));

\Division|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~17_sumout\ = SUM(( !\Division|Remainder\(2) $ (\Division|Divisor\(2)) ) + ( \Division|Add0~15\ ) + ( \Division|Add0~14\ ))
-- \Division|Add0~18\ = CARRY(( !\Division|Remainder\(2) $ (\Division|Divisor\(2)) ) + ( \Division|Add0~15\ ) + ( \Division|Add0~14\ ))
-- \Division|Add0~19\ = SHARE((\Division|Remainder\(2) & !\Division|Divisor\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(2),
	datad => \Division|ALT_INV_Divisor\(2),
	cin => \Division|Add0~14\,
	sharein => \Division|Add0~15\,
	sumout => \Division|Add0~17_sumout\,
	cout => \Division|Add0~18\,
	shareout => \Division|Add0~19\);

\Division|negative[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~17_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(2));

\Division|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector19~0_combout\ = (!\Division|state.S2~q\ & (\A_i[2]~input_o\)) # (\Division|state.S2~q\ & ((\Division|negative\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_i[2]~input_o\,
	datab => \Division|ALT_INV_state.S2~q\,
	datac => \Division|ALT_INV_negative\(2),
	combout => \Division|Selector19~0_combout\);

\Division|Remainder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector19~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(2));

\Division|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~21_sumout\ = SUM(( !\Division|Remainder\(3) $ (\Division|Divisor\(3)) ) + ( \Division|Add0~19\ ) + ( \Division|Add0~18\ ))
-- \Division|Add0~22\ = CARRY(( !\Division|Remainder\(3) $ (\Division|Divisor\(3)) ) + ( \Division|Add0~19\ ) + ( \Division|Add0~18\ ))
-- \Division|Add0~23\ = SHARE((\Division|Remainder\(3) & !\Division|Divisor\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(3),
	datad => \Division|ALT_INV_Divisor\(3),
	cin => \Division|Add0~18\,
	sharein => \Division|Add0~19\,
	sumout => \Division|Add0~21_sumout\,
	cout => \Division|Add0~22\,
	shareout => \Division|Add0~23\);

\Division|negative[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~21_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(3));

\Division|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector18~0_combout\ = (!\Division|state.S2~q\ & (\A_i[3]~input_o\)) # (\Division|state.S2~q\ & ((\Division|negative\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_i[3]~input_o\,
	datab => \Division|ALT_INV_state.S2~q\,
	datac => \Division|ALT_INV_negative\(3),
	combout => \Division|Selector18~0_combout\);

\Division|Remainder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector18~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(3));

\Division|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~33_sumout\ = SUM(( !\Division|Remainder\(4) $ (\Division|Divisor\(4)) ) + ( \Division|Add0~23\ ) + ( \Division|Add0~22\ ))
-- \Division|Add0~34\ = CARRY(( !\Division|Remainder\(4) $ (\Division|Divisor\(4)) ) + ( \Division|Add0~23\ ) + ( \Division|Add0~22\ ))
-- \Division|Add0~35\ = SHARE((\Division|Remainder\(4) & !\Division|Divisor\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(4),
	datad => \Division|ALT_INV_Divisor\(4),
	cin => \Division|Add0~22\,
	sharein => \Division|Add0~23\,
	sumout => \Division|Add0~33_sumout\,
	cout => \Division|Add0~34\,
	shareout => \Division|Add0~35\);

\Division|negative[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~33_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(4));

\Division|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector17~0_combout\ = (!\Division|state.S2~q\ & (\A_i[4]~input_o\)) # (\Division|state.S2~q\ & ((\Division|negative\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_i[4]~input_o\,
	datab => \Division|ALT_INV_state.S2~q\,
	datac => \Division|ALT_INV_negative\(4),
	combout => \Division|Selector17~0_combout\);

\Division|Remainder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector17~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(4));

\Division|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~37_sumout\ = SUM(( !\Division|Remainder\(5) $ (\Division|Divisor\(5)) ) + ( \Division|Add0~35\ ) + ( \Division|Add0~34\ ))
-- \Division|Add0~38\ = CARRY(( !\Division|Remainder\(5) $ (\Division|Divisor\(5)) ) + ( \Division|Add0~35\ ) + ( \Division|Add0~34\ ))
-- \Division|Add0~39\ = SHARE((\Division|Remainder\(5) & !\Division|Divisor\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(5),
	datad => \Division|ALT_INV_Divisor\(5),
	cin => \Division|Add0~34\,
	sharein => \Division|Add0~35\,
	sumout => \Division|Add0~37_sumout\,
	cout => \Division|Add0~38\,
	shareout => \Division|Add0~39\);

\Division|negative[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~37_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(5));

\Division|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector16~0_combout\ = (\Division|state.S2~q\ & \Division|negative\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S2~q\,
	datab => \Division|ALT_INV_negative\(5),
	combout => \Division|Selector16~0_combout\);

\Division|Remainder[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Remainder[6]~1_combout\ = ( \Division|negative\(10) & ( (\Division|state.S1~q\ & ((!\Division|process_0~0_combout\) # (\Division|LessThan1~2_combout\))) ) ) # ( !\Division|negative\(10) & ( ((\Division|state.S1~q\ & 
-- ((!\Division|process_0~0_combout\) # (\Division|LessThan1~2_combout\)))) # (\Division|state.S2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010111111111010001010100010101000101111111110100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S1~q\,
	datab => \Division|ALT_INV_process_0~0_combout\,
	datac => \Division|ALT_INV_LessThan1~2_combout\,
	datad => \Division|ALT_INV_state.S2~q\,
	datae => \Division|ALT_INV_negative\(10),
	combout => \Division|Remainder[6]~1_combout\);

\Division|Remainder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector16~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Remainder[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(5));

\Division|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~41_sumout\ = SUM(( !\Division|Remainder\(6) $ (\Division|Divisor\(6)) ) + ( \Division|Add0~39\ ) + ( \Division|Add0~38\ ))
-- \Division|Add0~42\ = CARRY(( !\Division|Remainder\(6) $ (\Division|Divisor\(6)) ) + ( \Division|Add0~39\ ) + ( \Division|Add0~38\ ))
-- \Division|Add0~43\ = SHARE((\Division|Remainder\(6) & !\Division|Divisor\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(6),
	datad => \Division|ALT_INV_Divisor\(6),
	cin => \Division|Add0~38\,
	sharein => \Division|Add0~39\,
	sumout => \Division|Add0~41_sumout\,
	cout => \Division|Add0~42\,
	shareout => \Division|Add0~43\);

\Division|negative[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~41_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(6));

\Division|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector15~0_combout\ = (\Division|state.S2~q\ & \Division|negative\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S2~q\,
	datab => \Division|ALT_INV_negative\(6),
	combout => \Division|Selector15~0_combout\);

\Division|Remainder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector15~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Remainder[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(6));

\Division|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~29_sumout\ = SUM(( !\Division|Remainder\(7) $ (\Division|Divisor\(7)) ) + ( \Division|Add0~43\ ) + ( \Division|Add0~42\ ))
-- \Division|Add0~30\ = CARRY(( !\Division|Remainder\(7) $ (\Division|Divisor\(7)) ) + ( \Division|Add0~43\ ) + ( \Division|Add0~42\ ))
-- \Division|Add0~31\ = SHARE((\Division|Remainder\(7) & !\Division|Divisor\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(7),
	datad => \Division|ALT_INV_Divisor\(7),
	cin => \Division|Add0~42\,
	sharein => \Division|Add0~43\,
	sumout => \Division|Add0~29_sumout\,
	cout => \Division|Add0~30\,
	shareout => \Division|Add0~31\);

\Division|negative[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~29_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(7));

\Division|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector14~0_combout\ = (\Division|state.S2~q\ & \Division|negative\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S2~q\,
	datab => \Division|ALT_INV_negative\(7),
	combout => \Division|Selector14~0_combout\);

\Division|Remainder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector14~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Remainder[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(7));

\Division|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~25_sumout\ = SUM(( !\Division|Remainder\(8) $ (\Division|Divisor\(8)) ) + ( \Division|Add0~31\ ) + ( \Division|Add0~30\ ))
-- \Division|Add0~26\ = CARRY(( !\Division|Remainder\(8) $ (\Division|Divisor\(8)) ) + ( \Division|Add0~31\ ) + ( \Division|Add0~30\ ))
-- \Division|Add0~27\ = SHARE((\Division|Remainder\(8) & !\Division|Divisor\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(8),
	datad => \Division|ALT_INV_Divisor\(8),
	cin => \Division|Add0~30\,
	sharein => \Division|Add0~31\,
	sumout => \Division|Add0~25_sumout\,
	cout => \Division|Add0~26\,
	shareout => \Division|Add0~27\);

\Division|negative[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~25_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(8));

\Division|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector13~0_combout\ = (\Division|state.S2~q\ & \Division|negative\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S2~q\,
	datab => \Division|ALT_INV_negative\(8),
	combout => \Division|Selector13~0_combout\);

\Division|Remainder[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector13~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Remainder[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(8));

\Division|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~9_sumout\ = SUM(( !\Division|Remainder\(9) $ (\Division|Divisor\(9)) ) + ( \Division|Add0~27\ ) + ( \Division|Add0~26\ ))
-- \Division|Add0~10\ = CARRY(( !\Division|Remainder\(9) $ (\Division|Divisor\(9)) ) + ( \Division|Add0~27\ ) + ( \Division|Add0~26\ ))
-- \Division|Add0~11\ = SHARE((\Division|Remainder\(9) & !\Division|Divisor\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Division|ALT_INV_Remainder\(9),
	datad => \Division|ALT_INV_Divisor\(9),
	cin => \Division|Add0~26\,
	sharein => \Division|Add0~27\,
	sumout => \Division|Add0~9_sumout\,
	cout => \Division|Add0~10\,
	shareout => \Division|Add0~11\);

\Division|negative[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~9_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(9));

\Division|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector12~0_combout\ = (\Division|state.S2~q\ & \Division|negative\(9))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S2~q\,
	datab => \Division|ALT_INV_negative\(9),
	combout => \Division|Selector12~0_combout\);

\Division|Remainder[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector12~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Division|Remainder[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(9));

\Division|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Add0~1_sumout\ = SUM(( VCC ) + ( \Division|Add0~11\ ) + ( \Division|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Division|Add0~10\,
	sharein => \Division|Add0~11\,
	sumout => \Division|Add0~1_sumout\);

\Division|negative[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~1_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(10));

\Division|negative[10]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|negative[10]~_wirecell_combout\ = !\Division|negative\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_negative\(10),
	combout => \Division|negative[10]~_wirecell_combout\);

\Division|Quotient[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|negative[10]~_wirecell_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(0));

\Division|Quotient[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(0),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(1));

\Division|Quotient[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(1),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(2));

\Division|Quotient[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(2),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(3));

\Division|Quotient[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(3),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(4));

\Division|Quotient[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(4),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(5));

\Division|Quotient[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(5),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(6));

\Division|Quotient[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(6),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(7));

\Division|Quotient[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(7),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(8));

\Division|Quotient[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient\(8),
	clrn => \RST_N_i~input_o\,
	sclr => \Division|ALT_INV_state.S2~q\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Quotient\(9));

\Division|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|process_0~0_combout\ = ( \Division|LessThan0~4_combout\ & ( (!\Division|Divisor\(9) & (\Division|Divisor\(8) & (!\Division|Quotient\(9) & !\Division|Quotient\(8)))) # (\Division|Divisor\(9) & ((!\Division|Quotient\(9)) # ((\Division|Divisor\(8) 
-- & !\Division|Quotient\(8))))) ) ) # ( !\Division|LessThan0~4_combout\ & ( (!\Division|Divisor\(9) & (!\Division|Quotient\(9) & ((!\Division|Quotient\(8)) # (\Division|Divisor\(8))))) # (\Division|Divisor\(9) & (((!\Division|Quotient\(9)) # 
-- (!\Division|Quotient\(8))) # (\Division|Divisor\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101110001011100010101000011110101011100010111000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Divisor\(9),
	datab => \Division|ALT_INV_Divisor\(8),
	datac => \Division|ALT_INV_Quotient\(9),
	datad => \Division|ALT_INV_Quotient\(8),
	datae => \Division|ALT_INV_LessThan0~4_combout\,
	combout => \Division|process_0~0_combout\);

\Division|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector27~0_combout\ = ( \Division|state.S0~q\ & ( (!\Division|state.S1~q\) # ((\Division|process_0~0_combout\ & !\Division|LessThan1~2_combout\)) ) ) # ( !\Division|state.S0~q\ & ( (\Start_i~input_o\ & ((!\Division|state.S1~q\) # 
-- ((\Division|process_0~0_combout\ & !\Division|LessThan1~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000100110011111100110001000101010001001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Division|ALT_INV_state.S1~q\,
	datac => \Division|ALT_INV_process_0~0_combout\,
	datad => \Division|ALT_INV_LessThan1~2_combout\,
	datae => \Division|ALT_INV_state.S0~q\,
	combout => \Division|Selector27~0_combout\);

\Division|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector27~0_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|state.S0~q\);

\Division|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector28~0_combout\ = ((\Start_i~input_o\ & !\Division|state.S0~q\)) # (\Division|state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Division|ALT_INV_state.S0~q\,
	datac => \Division|ALT_INV_state.S2~q\,
	combout => \Division|Selector28~0_combout\);

\Division|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector28~0_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|state.S1~q\);

\Division|Quotient[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Quotient[1]~1_combout\ = (\Division|state.S1~q\ & (\Division|process_0~0_combout\ & !\Division|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_state.S1~q\,
	datab => \Division|ALT_INV_process_0~0_combout\,
	datac => \Division|ALT_INV_LessThan1~2_combout\,
	combout => \Division|Quotient[1]~1_combout\);

\Division|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Quotient[1]~1_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|state.S2~q\);

\Division|negative[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Add0~5_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|process_0~1_combout\,
	ena => \Division|state.S1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|negative\(0));

\Division|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|Selector21~0_combout\ = (!\Division|state.S2~q\ & (\A_i[0]~input_o\)) # (\Division|state.S2~q\ & ((\Division|negative\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_i[0]~input_o\,
	datab => \Division|ALT_INV_state.S2~q\,
	datac => \Division|ALT_INV_negative\(0),
	combout => \Division|Selector21~0_combout\);

\Division|Remainder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Selector21~0_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Division|state.S1~q\,
	ena => \Division|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|Remainder\(0));

\Division|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(0),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(0));

\Operation[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(0),
	o => \Operation[0]~input_o\);

\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\RST_N_i~input_o\) # (\Start_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \ALT_INV_Start_i~input_o\,
	combout => \process_0~0_combout\);

\Op[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- Op(0) = ( Op(0) & ( \process_0~0_combout\ & ( \Operation[0]~input_o\ ) ) ) # ( !Op(0) & ( \process_0~0_combout\ & ( \Operation[0]~input_o\ ) ) ) # ( Op(0) & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Operation[0]~input_o\,
	datae => ALT_INV_Op(0),
	dataf => \ALT_INV_process_0~0_combout\,
	combout => Op(0));

\Operation[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(1),
	o => \Operation[1]~input_o\);

\Op[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- Op(1) = ( Op(1) & ( \process_0~0_combout\ & ( \Operation[1]~input_o\ ) ) ) # ( !Op(1) & ( \process_0~0_combout\ & ( \Operation[1]~input_o\ ) ) ) # ( Op(1) & ( !\process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Operation[1]~input_o\,
	datae => ALT_INV_Op(1),
	dataf => \ALT_INV_process_0~0_combout\,
	combout => Op(1));

\Remainder_main[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Remainder_main[9]~0_combout\ = (Op(0) & Op(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	combout => \Remainder_main[9]~0_combout\);

\Division|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(9),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(9));

\Division|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(8),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(8));

\Division|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(7),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(7));

\Division|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(6),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(6));

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~22_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(6))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~18\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(6))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(6),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~18\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(7))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~18\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~14\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(7))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(7),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~18\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~14\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(8))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~14\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~10\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(8))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(8),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~14\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~10\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(9))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~10\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~6\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(9))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(9),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~10\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~6\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~6\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(8) & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(8),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~21_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~19_combout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~20_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~21_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~17_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(6),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\);

\Division|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(5),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(5));

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~26_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(5))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~22\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(5))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(5),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~22\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\ ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~22\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~18\ = CARRY(( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\ ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~22\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~35_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~22\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~18\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Division|R\(7) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~18\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Division|R\(7) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(7),
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~18\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~14\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~21_combout\ ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~14\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~10\ = CARRY(( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~21_combout\ ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~14\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~10\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Division|R\(9) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~10\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~6\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Division|R\(9) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(9),
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~10\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~6\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~6\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(9) & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(9),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[31]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~13_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_4~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(7),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\);

\Division|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(4),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(4));

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~30_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(4))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~26\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(4))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(4),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~26\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Division|R\(5) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~26\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Division|R\(5) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Division|ALT_INV_R\(5),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~26\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~22\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~22\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~35_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~22\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~18\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~18\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~28_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~18\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~14\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~14\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~20_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~19_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~19_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~20_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~14\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~10\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~10\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~10\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~6\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~6\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~12_combout\) # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[33]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~11_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[33]~12_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[43]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[43]~22_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[32]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[43]~22_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~27_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~27_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~29_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[31]~28_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~29_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[41]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[30]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[30]~35_combout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[40]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[40]~41_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~21_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_5~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(5),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[40]~41_combout\);

\Division|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(3),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(3));

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~14_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(3))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~14_cout\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~6\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(3))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(3),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~14_cout\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~6\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~33_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Division|R\(4) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~6\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~34\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Division|R\(4) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Division|ALT_INV_R\(4),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~6\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~33_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~34\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[40]~41_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~34\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~30\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[40]~41_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~41_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~34\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~30\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~30\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~36_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~30\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~26\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~29_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~27_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~26\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~29_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~27_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~27_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~29_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~26\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~22\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[43]~22_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~22\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[43]~22_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~22_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~22\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~18\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~18\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~10_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~18\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~10\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~10\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~13_combout\) # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[44]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~10_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[43]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[43]~22_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[53]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[53]~30_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~13_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~29_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[42]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~27_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[42]~29_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[53]~30_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~34_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~34_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~37_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[41]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[41]~36_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~37_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[51]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~21_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[40]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[40]~41_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[50]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[50]~46_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~25_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_6~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(4),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[50]~46_combout\);

\Division|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(2),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(2));

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~18_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(2))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~18_cout\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~6\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(2))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(2),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~18_cout\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~6\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(3) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~6\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(3) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Division|ALT_INV_R\(3),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~6\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~10\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~37_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[50]~46_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~10\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~38\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[50]~46_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~46_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~10\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~37_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~38\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~29_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~38\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~34\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~29_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~42_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~38\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~34\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~37_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~34_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~34\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~37_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~34_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~34_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~37_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~34\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~30\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~21_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[53]~30_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~30\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~21_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[53]~30_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~30_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~30\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~26\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~26\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~18_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~23_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~26\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~22\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~22\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~9_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~14_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~22\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~14\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~14\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~14_combout\) # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[55]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~9_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[55]~14_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[65]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[65]~24_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~17_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~23_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[54]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~18_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[54]~23_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[65]~24_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~26_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~26_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~31_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[53]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[53]~30_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~31_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[63]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[63]~38_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~25_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~37_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[52]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~34_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[52]~37_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[63]~38_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~40_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~40_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~43_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[51]~42_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~43_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[61]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[61]~47_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~33_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[50]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[50]~46_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[61]~47_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[60]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(3),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\);

\Division|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|Remainder\(1),
	clrn => \RST_N_i~input_o\,
	ena => \Division|Quotient[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|R\(1));

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~22_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(1))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~22_cout\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~6\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(1))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(1),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~22_cout\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~6\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\Division|R\(2) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~6\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~10\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\Division|R\(2) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Division|ALT_INV_R\(2),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~6\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~10\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~10\ 
-- ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~10\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~14\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~41_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~37_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[61]~47_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~14\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~42\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~37_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[61]~47_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~47_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~14\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~41_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~42\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~37_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~33_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~43_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~40_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~42\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~38\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~33_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~43_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~40_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~40_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~43_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~42\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~37_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~38\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~33_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[63]~38_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~38\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~34\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[63]~38_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~38_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~38\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~33_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~34\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~31_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~26_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~34\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~30\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~31_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~26_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~26_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~31_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~34\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~30\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~21_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[65]~24_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~30\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~26\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~21_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[65]~24_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[65]~24_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~30\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~26\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~26\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~8_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~15_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~26\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~18\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~18\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~15_combout\) # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[66]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~8_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[66]~15_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~25_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[65]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[65]~24_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~25_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[75]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[75]~32_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~25_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~31_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[64]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~26_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[64]~31_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[75]~32_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~33_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~33_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~39_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[63]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[63]~38_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~39_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[73]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[73]~44_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~33_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~43_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[62]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~40_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[62]~43_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[73]~44_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~45_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~37_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~45_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~48_combout\ = (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[61]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[61]~47_combout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~48_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[60]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[60]~4_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_8~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(2),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~26_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~5_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(0))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~26_cout\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~6\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(0))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(0),
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~26_cout\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~5_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~6\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\Division|R\(1) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~6\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~10\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\Division|R\(1) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Division|ALT_INV_R\(1),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~6\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~10\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~10\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~14\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[70]~2_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~10\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~14\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~17_sumout\ = SUM(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~14\ ))
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~18\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[71]~5_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~14\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~17_sumout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~18\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~46_cout\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~41_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~48_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[72]~45_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~45_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~41_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[72]~48_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~18\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~46_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~42_cout\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~37_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[73]~44_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[73]~44_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~46_cout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~42_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~38_cout\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~33_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~39_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[74]~33_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~33_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[74]~39_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~42_cout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~38_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~34_cout\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~29_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[75]~32_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[75]~32_combout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~38_cout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~34_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~30_cout\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~25_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[76]~17_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~17_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[76]~25_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~34_cout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~30_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~22_cout\ = CARRY(( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~17_sumout\)))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~16_combout\)) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[77]~7_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~7_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[77]~16_combout\,
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~30_cout\,
	cout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~22_cout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~22_cout\,
	sumout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[90]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[90]~0_combout\ = (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~5_sumout\)))) 
-- # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ & (\Division|R\(0) & (\Remainder_main[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(0),
	datab => \ALT_INV_Remainder_main[9]~0_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[90]~0_combout\);

\convert_binary_Remainder|int_data_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[90]~0_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_1\(0));

\Binary_subtractor|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~125_sumout\ = SUM(( \Binary_subtractor|bit_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \Binary_subtractor|Add0~126\ = CARRY(( \Binary_subtractor|bit_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(0),
	cin => GND,
	sumout => \Binary_subtractor|Add0~125_sumout\,
	cout => \Binary_subtractor|Add0~126\);

\Binary_subtractor|bit_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|bit_counter[0]~0_combout\ = (\RST_N_i~input_o\ & \Binary_subtractor|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \Binary_subtractor|ALT_INV_state~q\,
	combout => \Binary_subtractor|bit_counter[0]~0_combout\);

\Binary_subtractor|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~125_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(0));

\Binary_subtractor|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~77_sumout\ = SUM(( \Binary_subtractor|bit_counter\(1) ) + ( GND ) + ( \Binary_subtractor|Add0~126\ ))
-- \Binary_subtractor|Add0~78\ = CARRY(( \Binary_subtractor|bit_counter\(1) ) + ( GND ) + ( \Binary_subtractor|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(1),
	cin => \Binary_subtractor|Add0~126\,
	sumout => \Binary_subtractor|Add0~77_sumout\,
	cout => \Binary_subtractor|Add0~78\);

\Binary_subtractor|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~77_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(1));

\Binary_subtractor|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~81_sumout\ = SUM(( \Binary_subtractor|bit_counter\(2) ) + ( GND ) + ( \Binary_subtractor|Add0~78\ ))
-- \Binary_subtractor|Add0~82\ = CARRY(( \Binary_subtractor|bit_counter\(2) ) + ( GND ) + ( \Binary_subtractor|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(2),
	cin => \Binary_subtractor|Add0~78\,
	sumout => \Binary_subtractor|Add0~81_sumout\,
	cout => \Binary_subtractor|Add0~82\);

\Binary_subtractor|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~81_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(2));

\Binary_subtractor|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~61_sumout\ = SUM(( \Binary_subtractor|bit_counter\(3) ) + ( GND ) + ( \Binary_subtractor|Add0~82\ ))
-- \Binary_subtractor|Add0~62\ = CARRY(( \Binary_subtractor|bit_counter\(3) ) + ( GND ) + ( \Binary_subtractor|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(3),
	cin => \Binary_subtractor|Add0~82\,
	sumout => \Binary_subtractor|Add0~61_sumout\,
	cout => \Binary_subtractor|Add0~62\);

\Binary_subtractor|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~61_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(3));

\Binary_subtractor|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~65_sumout\ = SUM(( \Binary_subtractor|bit_counter\(4) ) + ( GND ) + ( \Binary_subtractor|Add0~62\ ))
-- \Binary_subtractor|Add0~66\ = CARRY(( \Binary_subtractor|bit_counter\(4) ) + ( GND ) + ( \Binary_subtractor|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(4),
	cin => \Binary_subtractor|Add0~62\,
	sumout => \Binary_subtractor|Add0~65_sumout\,
	cout => \Binary_subtractor|Add0~66\);

\Binary_subtractor|bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~65_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(4));

\Binary_subtractor|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~69_sumout\ = SUM(( \Binary_subtractor|bit_counter\(5) ) + ( GND ) + ( \Binary_subtractor|Add0~66\ ))
-- \Binary_subtractor|Add0~70\ = CARRY(( \Binary_subtractor|bit_counter\(5) ) + ( GND ) + ( \Binary_subtractor|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(5),
	cin => \Binary_subtractor|Add0~66\,
	sumout => \Binary_subtractor|Add0~69_sumout\,
	cout => \Binary_subtractor|Add0~70\);

\Binary_subtractor|bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~69_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(5));

\Binary_subtractor|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~73_sumout\ = SUM(( \Binary_subtractor|bit_counter\(6) ) + ( GND ) + ( \Binary_subtractor|Add0~70\ ))
-- \Binary_subtractor|Add0~74\ = CARRY(( \Binary_subtractor|bit_counter\(6) ) + ( GND ) + ( \Binary_subtractor|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(6),
	cin => \Binary_subtractor|Add0~70\,
	sumout => \Binary_subtractor|Add0~73_sumout\,
	cout => \Binary_subtractor|Add0~74\);

\Binary_subtractor|bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~73_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(6));

\Binary_subtractor|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~29_sumout\ = SUM(( \Binary_subtractor|bit_counter\(7) ) + ( GND ) + ( \Binary_subtractor|Add0~74\ ))
-- \Binary_subtractor|Add0~30\ = CARRY(( \Binary_subtractor|bit_counter\(7) ) + ( GND ) + ( \Binary_subtractor|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(7),
	cin => \Binary_subtractor|Add0~74\,
	sumout => \Binary_subtractor|Add0~29_sumout\,
	cout => \Binary_subtractor|Add0~30\);

\Binary_subtractor|bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~29_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(7));

\Binary_subtractor|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~33_sumout\ = SUM(( \Binary_subtractor|bit_counter\(8) ) + ( GND ) + ( \Binary_subtractor|Add0~30\ ))
-- \Binary_subtractor|Add0~34\ = CARRY(( \Binary_subtractor|bit_counter\(8) ) + ( GND ) + ( \Binary_subtractor|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(8),
	cin => \Binary_subtractor|Add0~30\,
	sumout => \Binary_subtractor|Add0~33_sumout\,
	cout => \Binary_subtractor|Add0~34\);

\Binary_subtractor|bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~33_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(8));

\Binary_subtractor|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~37_sumout\ = SUM(( \Binary_subtractor|bit_counter\(9) ) + ( GND ) + ( \Binary_subtractor|Add0~34\ ))
-- \Binary_subtractor|Add0~38\ = CARRY(( \Binary_subtractor|bit_counter\(9) ) + ( GND ) + ( \Binary_subtractor|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(9),
	cin => \Binary_subtractor|Add0~34\,
	sumout => \Binary_subtractor|Add0~37_sumout\,
	cout => \Binary_subtractor|Add0~38\);

\Binary_subtractor|bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~37_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(9));

\Binary_subtractor|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~41_sumout\ = SUM(( \Binary_subtractor|bit_counter\(10) ) + ( GND ) + ( \Binary_subtractor|Add0~38\ ))
-- \Binary_subtractor|Add0~42\ = CARRY(( \Binary_subtractor|bit_counter\(10) ) + ( GND ) + ( \Binary_subtractor|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(10),
	cin => \Binary_subtractor|Add0~38\,
	sumout => \Binary_subtractor|Add0~41_sumout\,
	cout => \Binary_subtractor|Add0~42\);

\Binary_subtractor|bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~41_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(10));

\Binary_subtractor|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~45_sumout\ = SUM(( \Binary_subtractor|bit_counter\(11) ) + ( GND ) + ( \Binary_subtractor|Add0~42\ ))
-- \Binary_subtractor|Add0~46\ = CARRY(( \Binary_subtractor|bit_counter\(11) ) + ( GND ) + ( \Binary_subtractor|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(11),
	cin => \Binary_subtractor|Add0~42\,
	sumout => \Binary_subtractor|Add0~45_sumout\,
	cout => \Binary_subtractor|Add0~46\);

\Binary_subtractor|bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~45_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(11));

\Binary_subtractor|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~57_sumout\ = SUM(( \Binary_subtractor|bit_counter\(12) ) + ( GND ) + ( \Binary_subtractor|Add0~46\ ))
-- \Binary_subtractor|Add0~58\ = CARRY(( \Binary_subtractor|bit_counter\(12) ) + ( GND ) + ( \Binary_subtractor|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(12),
	cin => \Binary_subtractor|Add0~46\,
	sumout => \Binary_subtractor|Add0~57_sumout\,
	cout => \Binary_subtractor|Add0~58\);

\Binary_subtractor|bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~57_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(12));

\Binary_subtractor|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~49_sumout\ = SUM(( \Binary_subtractor|bit_counter\(13) ) + ( GND ) + ( \Binary_subtractor|Add0~58\ ))
-- \Binary_subtractor|Add0~50\ = CARRY(( \Binary_subtractor|bit_counter\(13) ) + ( GND ) + ( \Binary_subtractor|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(13),
	cin => \Binary_subtractor|Add0~58\,
	sumout => \Binary_subtractor|Add0~49_sumout\,
	cout => \Binary_subtractor|Add0~50\);

\Binary_subtractor|bit_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~49_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(13));

\Binary_subtractor|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~5_sumout\ = SUM(( \Binary_subtractor|bit_counter\(14) ) + ( GND ) + ( \Binary_subtractor|Add0~50\ ))
-- \Binary_subtractor|Add0~6\ = CARRY(( \Binary_subtractor|bit_counter\(14) ) + ( GND ) + ( \Binary_subtractor|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(14),
	cin => \Binary_subtractor|Add0~50\,
	sumout => \Binary_subtractor|Add0~5_sumout\,
	cout => \Binary_subtractor|Add0~6\);

\Binary_subtractor|bit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~5_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(14));

\Binary_subtractor|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~9_sumout\ = SUM(( \Binary_subtractor|bit_counter\(15) ) + ( GND ) + ( \Binary_subtractor|Add0~6\ ))
-- \Binary_subtractor|Add0~10\ = CARRY(( \Binary_subtractor|bit_counter\(15) ) + ( GND ) + ( \Binary_subtractor|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(15),
	cin => \Binary_subtractor|Add0~6\,
	sumout => \Binary_subtractor|Add0~9_sumout\,
	cout => \Binary_subtractor|Add0~10\);

\Binary_subtractor|bit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~9_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(15));

\Binary_subtractor|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~13_sumout\ = SUM(( \Binary_subtractor|bit_counter\(16) ) + ( GND ) + ( \Binary_subtractor|Add0~10\ ))
-- \Binary_subtractor|Add0~14\ = CARRY(( \Binary_subtractor|bit_counter\(16) ) + ( GND ) + ( \Binary_subtractor|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(16),
	cin => \Binary_subtractor|Add0~10\,
	sumout => \Binary_subtractor|Add0~13_sumout\,
	cout => \Binary_subtractor|Add0~14\);

\Binary_subtractor|bit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~13_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(16));

\Binary_subtractor|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~17_sumout\ = SUM(( \Binary_subtractor|bit_counter\(17) ) + ( GND ) + ( \Binary_subtractor|Add0~14\ ))
-- \Binary_subtractor|Add0~18\ = CARRY(( \Binary_subtractor|bit_counter\(17) ) + ( GND ) + ( \Binary_subtractor|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(17),
	cin => \Binary_subtractor|Add0~14\,
	sumout => \Binary_subtractor|Add0~17_sumout\,
	cout => \Binary_subtractor|Add0~18\);

\Binary_subtractor|bit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~17_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(17));

\Binary_subtractor|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~25_sumout\ = SUM(( \Binary_subtractor|bit_counter\(18) ) + ( GND ) + ( \Binary_subtractor|Add0~18\ ))
-- \Binary_subtractor|Add0~26\ = CARRY(( \Binary_subtractor|bit_counter\(18) ) + ( GND ) + ( \Binary_subtractor|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(18),
	cin => \Binary_subtractor|Add0~18\,
	sumout => \Binary_subtractor|Add0~25_sumout\,
	cout => \Binary_subtractor|Add0~26\);

\Binary_subtractor|bit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~25_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(18));

\Binary_subtractor|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~85_sumout\ = SUM(( \Binary_subtractor|bit_counter\(19) ) + ( GND ) + ( \Binary_subtractor|Add0~26\ ))
-- \Binary_subtractor|Add0~86\ = CARRY(( \Binary_subtractor|bit_counter\(19) ) + ( GND ) + ( \Binary_subtractor|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(19),
	cin => \Binary_subtractor|Add0~26\,
	sumout => \Binary_subtractor|Add0~85_sumout\,
	cout => \Binary_subtractor|Add0~86\);

\Binary_subtractor|bit_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~85_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(19));

\Binary_subtractor|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~89_sumout\ = SUM(( \Binary_subtractor|bit_counter\(20) ) + ( GND ) + ( \Binary_subtractor|Add0~86\ ))
-- \Binary_subtractor|Add0~90\ = CARRY(( \Binary_subtractor|bit_counter\(20) ) + ( GND ) + ( \Binary_subtractor|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(20),
	cin => \Binary_subtractor|Add0~86\,
	sumout => \Binary_subtractor|Add0~89_sumout\,
	cout => \Binary_subtractor|Add0~90\);

\Binary_subtractor|bit_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~89_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(20));

\Binary_subtractor|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~93_sumout\ = SUM(( \Binary_subtractor|bit_counter\(21) ) + ( GND ) + ( \Binary_subtractor|Add0~90\ ))
-- \Binary_subtractor|Add0~94\ = CARRY(( \Binary_subtractor|bit_counter\(21) ) + ( GND ) + ( \Binary_subtractor|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(21),
	cin => \Binary_subtractor|Add0~90\,
	sumout => \Binary_subtractor|Add0~93_sumout\,
	cout => \Binary_subtractor|Add0~94\);

\Binary_subtractor|bit_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~93_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(21));

\Binary_subtractor|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~97_sumout\ = SUM(( \Binary_subtractor|bit_counter\(22) ) + ( GND ) + ( \Binary_subtractor|Add0~94\ ))
-- \Binary_subtractor|Add0~98\ = CARRY(( \Binary_subtractor|bit_counter\(22) ) + ( GND ) + ( \Binary_subtractor|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(22),
	cin => \Binary_subtractor|Add0~94\,
	sumout => \Binary_subtractor|Add0~97_sumout\,
	cout => \Binary_subtractor|Add0~98\);

\Binary_subtractor|bit_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~97_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(22));

\Binary_subtractor|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~101_sumout\ = SUM(( \Binary_subtractor|bit_counter\(23) ) + ( GND ) + ( \Binary_subtractor|Add0~98\ ))
-- \Binary_subtractor|Add0~102\ = CARRY(( \Binary_subtractor|bit_counter\(23) ) + ( GND ) + ( \Binary_subtractor|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(23),
	cin => \Binary_subtractor|Add0~98\,
	sumout => \Binary_subtractor|Add0~101_sumout\,
	cout => \Binary_subtractor|Add0~102\);

\Binary_subtractor|bit_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~101_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(23));

\Binary_subtractor|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~105_sumout\ = SUM(( \Binary_subtractor|bit_counter\(24) ) + ( GND ) + ( \Binary_subtractor|Add0~102\ ))
-- \Binary_subtractor|Add0~106\ = CARRY(( \Binary_subtractor|bit_counter\(24) ) + ( GND ) + ( \Binary_subtractor|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(24),
	cin => \Binary_subtractor|Add0~102\,
	sumout => \Binary_subtractor|Add0~105_sumout\,
	cout => \Binary_subtractor|Add0~106\);

\Binary_subtractor|bit_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~105_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(24));

\Binary_subtractor|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~21_sumout\ = SUM(( \Binary_subtractor|bit_counter\(25) ) + ( GND ) + ( \Binary_subtractor|Add0~106\ ))
-- \Binary_subtractor|Add0~22\ = CARRY(( \Binary_subtractor|bit_counter\(25) ) + ( GND ) + ( \Binary_subtractor|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(25),
	cin => \Binary_subtractor|Add0~106\,
	sumout => \Binary_subtractor|Add0~21_sumout\,
	cout => \Binary_subtractor|Add0~22\);

\Binary_subtractor|bit_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~21_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(25));

\Binary_subtractor|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~109_sumout\ = SUM(( \Binary_subtractor|bit_counter\(26) ) + ( GND ) + ( \Binary_subtractor|Add0~22\ ))
-- \Binary_subtractor|Add0~110\ = CARRY(( \Binary_subtractor|bit_counter\(26) ) + ( GND ) + ( \Binary_subtractor|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(26),
	cin => \Binary_subtractor|Add0~22\,
	sumout => \Binary_subtractor|Add0~109_sumout\,
	cout => \Binary_subtractor|Add0~110\);

\Binary_subtractor|bit_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~109_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(26));

\Binary_subtractor|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~113_sumout\ = SUM(( \Binary_subtractor|bit_counter\(27) ) + ( GND ) + ( \Binary_subtractor|Add0~110\ ))
-- \Binary_subtractor|Add0~114\ = CARRY(( \Binary_subtractor|bit_counter\(27) ) + ( GND ) + ( \Binary_subtractor|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(27),
	cin => \Binary_subtractor|Add0~110\,
	sumout => \Binary_subtractor|Add0~113_sumout\,
	cout => \Binary_subtractor|Add0~114\);

\Binary_subtractor|bit_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~113_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(27));

\Binary_subtractor|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~117_sumout\ = SUM(( \Binary_subtractor|bit_counter\(28) ) + ( GND ) + ( \Binary_subtractor|Add0~114\ ))
-- \Binary_subtractor|Add0~118\ = CARRY(( \Binary_subtractor|bit_counter\(28) ) + ( GND ) + ( \Binary_subtractor|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(28),
	cin => \Binary_subtractor|Add0~114\,
	sumout => \Binary_subtractor|Add0~117_sumout\,
	cout => \Binary_subtractor|Add0~118\);

\Binary_subtractor|bit_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~117_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(28));

\Binary_subtractor|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~121_sumout\ = SUM(( \Binary_subtractor|bit_counter\(29) ) + ( GND ) + ( \Binary_subtractor|Add0~118\ ))
-- \Binary_subtractor|Add0~122\ = CARRY(( \Binary_subtractor|bit_counter\(29) ) + ( GND ) + ( \Binary_subtractor|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(29),
	cin => \Binary_subtractor|Add0~118\,
	sumout => \Binary_subtractor|Add0~121_sumout\,
	cout => \Binary_subtractor|Add0~122\);

\Binary_subtractor|bit_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~121_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(29));

\Binary_subtractor|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~53_sumout\ = SUM(( \Binary_subtractor|bit_counter\(30) ) + ( GND ) + ( \Binary_subtractor|Add0~122\ ))
-- \Binary_subtractor|Add0~54\ = CARRY(( \Binary_subtractor|bit_counter\(30) ) + ( GND ) + ( \Binary_subtractor|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(30),
	cin => \Binary_subtractor|Add0~122\,
	sumout => \Binary_subtractor|Add0~53_sumout\,
	cout => \Binary_subtractor|Add0~54\);

\Binary_subtractor|bit_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~53_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(30));

\Binary_subtractor|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Add0~1_sumout\ = SUM(( \Binary_subtractor|bit_counter\(31) ) + ( GND ) + ( \Binary_subtractor|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Binary_subtractor|ALT_INV_bit_counter\(31),
	cin => \Binary_subtractor|Add0~54\,
	sumout => \Binary_subtractor|Add0~1_sumout\);

\Binary_subtractor|bit_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Add0~1_sumout\,
	sclr => \Binary_subtractor|LessThan0~5_combout\,
	ena => \Binary_subtractor|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|bit_counter\(31));

\Binary_subtractor|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|LessThan0~0_combout\ = ( !\Binary_subtractor|bit_counter\(25) & ( !\Binary_subtractor|bit_counter\(18) & ( (!\Binary_subtractor|bit_counter\(14) & (!\Binary_subtractor|bit_counter\(15) & (!\Binary_subtractor|bit_counter\(16) & 
-- !\Binary_subtractor|bit_counter\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Binary_subtractor|ALT_INV_bit_counter\(14),
	datab => \Binary_subtractor|ALT_INV_bit_counter\(15),
	datac => \Binary_subtractor|ALT_INV_bit_counter\(16),
	datad => \Binary_subtractor|ALT_INV_bit_counter\(17),
	datae => \Binary_subtractor|ALT_INV_bit_counter\(25),
	dataf => \Binary_subtractor|ALT_INV_bit_counter\(18),
	combout => \Binary_subtractor|LessThan0~0_combout\);

\Binary_subtractor|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|LessThan0~1_combout\ = ( !\Binary_subtractor|bit_counter\(11) & ( !\Binary_subtractor|bit_counter\(13) & ( (!\Binary_subtractor|bit_counter\(7) & (!\Binary_subtractor|bit_counter\(8) & (!\Binary_subtractor|bit_counter\(9) & 
-- !\Binary_subtractor|bit_counter\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Binary_subtractor|ALT_INV_bit_counter\(7),
	datab => \Binary_subtractor|ALT_INV_bit_counter\(8),
	datac => \Binary_subtractor|ALT_INV_bit_counter\(9),
	datad => \Binary_subtractor|ALT_INV_bit_counter\(10),
	datae => \Binary_subtractor|ALT_INV_bit_counter\(11),
	dataf => \Binary_subtractor|ALT_INV_bit_counter\(13),
	combout => \Binary_subtractor|LessThan0~1_combout\);

\Binary_subtractor|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|LessThan0~2_combout\ = ( !\Binary_subtractor|bit_counter\(5) & ( !\Binary_subtractor|bit_counter\(6) & ( (!\Binary_subtractor|bit_counter\(30) & (!\Binary_subtractor|bit_counter\(12) & (!\Binary_subtractor|bit_counter\(3) & 
-- !\Binary_subtractor|bit_counter\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Binary_subtractor|ALT_INV_bit_counter\(30),
	datab => \Binary_subtractor|ALT_INV_bit_counter\(12),
	datac => \Binary_subtractor|ALT_INV_bit_counter\(3),
	datad => \Binary_subtractor|ALT_INV_bit_counter\(4),
	datae => \Binary_subtractor|ALT_INV_bit_counter\(5),
	dataf => \Binary_subtractor|ALT_INV_bit_counter\(6),
	combout => \Binary_subtractor|LessThan0~2_combout\);

\Binary_subtractor|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|LessThan0~3_combout\ = ( !\Binary_subtractor|bit_counter\(21) & ( !\Binary_subtractor|bit_counter\(22) & ( (!\Binary_subtractor|bit_counter\(19) & (!\Binary_subtractor|bit_counter\(20) & ((!\Binary_subtractor|bit_counter\(1)) # 
-- (!\Binary_subtractor|bit_counter\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Binary_subtractor|ALT_INV_bit_counter\(1),
	datab => \Binary_subtractor|ALT_INV_bit_counter\(2),
	datac => \Binary_subtractor|ALT_INV_bit_counter\(19),
	datad => \Binary_subtractor|ALT_INV_bit_counter\(20),
	datae => \Binary_subtractor|ALT_INV_bit_counter\(21),
	dataf => \Binary_subtractor|ALT_INV_bit_counter\(22),
	combout => \Binary_subtractor|LessThan0~3_combout\);

\Binary_subtractor|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|LessThan0~4_combout\ = ( !\Binary_subtractor|bit_counter\(28) & ( !\Binary_subtractor|bit_counter\(29) & ( (!\Binary_subtractor|bit_counter\(23) & (!\Binary_subtractor|bit_counter\(24) & (!\Binary_subtractor|bit_counter\(26) & 
-- !\Binary_subtractor|bit_counter\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Binary_subtractor|ALT_INV_bit_counter\(23),
	datab => \Binary_subtractor|ALT_INV_bit_counter\(24),
	datac => \Binary_subtractor|ALT_INV_bit_counter\(26),
	datad => \Binary_subtractor|ALT_INV_bit_counter\(27),
	datae => \Binary_subtractor|ALT_INV_bit_counter\(28),
	dataf => \Binary_subtractor|ALT_INV_bit_counter\(29),
	combout => \Binary_subtractor|LessThan0~4_combout\);

\Binary_subtractor|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|LessThan0~5_combout\ = ( \Binary_subtractor|LessThan0~3_combout\ & ( \Binary_subtractor|LessThan0~4_combout\ & ( (!\Binary_subtractor|bit_counter\(31) & ((!\Binary_subtractor|LessThan0~0_combout\) # 
-- ((!\Binary_subtractor|LessThan0~1_combout\) # (!\Binary_subtractor|LessThan0~2_combout\)))) ) ) ) # ( !\Binary_subtractor|LessThan0~3_combout\ & ( \Binary_subtractor|LessThan0~4_combout\ & ( !\Binary_subtractor|bit_counter\(31) ) ) ) # ( 
-- \Binary_subtractor|LessThan0~3_combout\ & ( !\Binary_subtractor|LessThan0~4_combout\ & ( !\Binary_subtractor|bit_counter\(31) ) ) ) # ( !\Binary_subtractor|LessThan0~3_combout\ & ( !\Binary_subtractor|LessThan0~4_combout\ & ( 
-- !\Binary_subtractor|bit_counter\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Binary_subtractor|ALT_INV_bit_counter\(31),
	datab => \Binary_subtractor|ALT_INV_LessThan0~0_combout\,
	datac => \Binary_subtractor|ALT_INV_LessThan0~1_combout\,
	datad => \Binary_subtractor|ALT_INV_LessThan0~2_combout\,
	datae => \Binary_subtractor|ALT_INV_LessThan0~3_combout\,
	dataf => \Binary_subtractor|ALT_INV_LessThan0~4_combout\,
	combout => \Binary_subtractor|LessThan0~5_combout\);

\Binary_subtractor|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|state~0_combout\ = (!\Binary_subtractor|state~q\ & (\Start_i~input_o\)) # (\Binary_subtractor|state~q\ & ((!\Binary_subtractor|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010001110100011101000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Binary_subtractor|ALT_INV_state~q\,
	datac => \Binary_subtractor|ALT_INV_LessThan0~5_combout\,
	combout => \Binary_subtractor|state~0_combout\);

\Binary_subtractor|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|state~0_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|state~q\);

\Binary_subtractor|Mode~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Mode~0_combout\ = ((\RST_N_i~input_o\ & (\Start_i~input_o\ & !\Binary_subtractor|state~q\))) # (\Binary_subtractor|Mode~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000111110000111100011111000011110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \ALT_INV_Start_i~input_o\,
	datac => \Binary_subtractor|ALT_INV_Mode~q\,
	datad => \Binary_subtractor|ALT_INV_state~q\,
	combout => \Binary_subtractor|Mode~0_combout\);

\Binary_subtractor|Mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|Mode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Mode~q\);

\Binary_subtractor|Data_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|Data_A~0_combout\ = (!\Binary_subtractor|state~q\ & (\Start_i~input_o\)) # (\Binary_subtractor|state~q\ & ((\Binary_subtractor|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Binary_subtractor|ALT_INV_state~q\,
	datac => \Binary_subtractor|ALT_INV_LessThan0~5_combout\,
	combout => \Binary_subtractor|Data_A~0_combout\);

\Binary_subtractor|Data_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \A_i[4]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_A\(4));

\Binary_subtractor|Data_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \B_i[4]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_B\(4));

\Binary_subtractor|Data_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \A_i[3]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_A\(3));

\Binary_subtractor|Data_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \B_i[3]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_B\(3));

\Binary_subtractor|Data_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \A_i[2]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_A\(2));

\Binary_subtractor|Data_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \B_i[2]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_B\(2));

\Binary_subtractor|Data_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \A_i[1]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_A\(1));

\Binary_subtractor|Data_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \B_i[1]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_B\(1));

\Binary_subtractor|Data_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \A_i[0]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_A\(0));

\Binary_subtractor|Data_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \B_i[0]~input_o\,
	clrn => \RST_N_i~input_o\,
	sclr => \Binary_subtractor|state~q\,
	ena => \Binary_subtractor|Data_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|Data_B\(0));

\Binary_subtractor|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|LessThan1~0_combout\ = ( \Binary_subtractor|Data_A\(0) & ( \Binary_subtractor|Data_B\(0) & ( (!\Binary_subtractor|Data_A\(2) & (((!\Binary_subtractor|Data_A\(1) & \Binary_subtractor|Data_B\(1))) # (\Binary_subtractor|Data_B\(2)))) # 
-- (\Binary_subtractor|Data_A\(2) & (\Binary_subtractor|Data_B\(2) & (!\Binary_subtractor|Data_A\(1) & \Binary_subtractor|Data_B\(1)))) ) ) ) # ( !\Binary_subtractor|Data_A\(0) & ( \Binary_subtractor|Data_B\(0) & ( (!\Binary_subtractor|Data_A\(2) & 
-- (((!\Binary_subtractor|Data_A\(1)) # (\Binary_subtractor|Data_B\(1))) # (\Binary_subtractor|Data_B\(2)))) # (\Binary_subtractor|Data_A\(2) & (\Binary_subtractor|Data_B\(2) & ((!\Binary_subtractor|Data_A\(1)) # (\Binary_subtractor|Data_B\(1))))) ) ) ) # ( 
-- \Binary_subtractor|Data_A\(0) & ( !\Binary_subtractor|Data_B\(0) & ( (!\Binary_subtractor|Data_A\(2) & (((!\Binary_subtractor|Data_A\(1) & \Binary_subtractor|Data_B\(1))) # (\Binary_subtractor|Data_B\(2)))) # (\Binary_subtractor|Data_A\(2) & 
-- (\Binary_subtractor|Data_B\(2) & (!\Binary_subtractor|Data_A\(1) & \Binary_subtractor|Data_B\(1)))) ) ) ) # ( !\Binary_subtractor|Data_A\(0) & ( !\Binary_subtractor|Data_B\(0) & ( (!\Binary_subtractor|Data_A\(2) & (((!\Binary_subtractor|Data_A\(1) & 
-- \Binary_subtractor|Data_B\(1))) # (\Binary_subtractor|Data_B\(2)))) # (\Binary_subtractor|Data_A\(2) & (\Binary_subtractor|Data_B\(2) & (!\Binary_subtractor|Data_A\(1) & \Binary_subtractor|Data_B\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001010110010101110110010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Binary_subtractor|ALT_INV_Data_A\(2),
	datab => \Binary_subtractor|ALT_INV_Data_B\(2),
	datac => \Binary_subtractor|ALT_INV_Data_A\(1),
	datad => \Binary_subtractor|ALT_INV_Data_B\(1),
	datae => \Binary_subtractor|ALT_INV_Data_A\(0),
	dataf => \Binary_subtractor|ALT_INV_Data_B\(0),
	combout => \Binary_subtractor|LessThan1~0_combout\);

\Binary_subtractor|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|LessThan1~1_combout\ = ( \Binary_subtractor|LessThan1~0_combout\ & ( (!\Binary_subtractor|Data_A\(4) & (((!\Binary_subtractor|Data_A\(3)) # (\Binary_subtractor|Data_B\(3))) # (\Binary_subtractor|Data_B\(4)))) # 
-- (\Binary_subtractor|Data_A\(4) & (\Binary_subtractor|Data_B\(4) & ((!\Binary_subtractor|Data_A\(3)) # (\Binary_subtractor|Data_B\(3))))) ) ) # ( !\Binary_subtractor|LessThan1~0_combout\ & ( (!\Binary_subtractor|Data_A\(4) & 
-- (((!\Binary_subtractor|Data_A\(3) & \Binary_subtractor|Data_B\(3))) # (\Binary_subtractor|Data_B\(4)))) # (\Binary_subtractor|Data_A\(4) & (\Binary_subtractor|Data_B\(4) & (!\Binary_subtractor|Data_A\(3) & \Binary_subtractor|Data_B\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101100100010101100101011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Binary_subtractor|ALT_INV_Data_A\(4),
	datab => \Binary_subtractor|ALT_INV_Data_B\(4),
	datac => \Binary_subtractor|ALT_INV_Data_A\(3),
	datad => \Binary_subtractor|ALT_INV_Data_B\(3),
	datae => \Binary_subtractor|ALT_INV_LessThan1~0_combout\,
	combout => \Binary_subtractor|LessThan1~1_combout\);

\Binary_subtractor|over~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Binary_subtractor|over~0_combout\ = ( \Binary_subtractor|state~q\ & ( \Binary_subtractor|LessThan0~5_combout\ & ( (!\RST_N_i~input_o\ & (\Binary_subtractor|over~q\)) # (\RST_N_i~input_o\ & (((\Binary_subtractor|Mode~q\ & 
-- \Binary_subtractor|LessThan1~1_combout\)))) ) ) ) # ( !\Binary_subtractor|state~q\ & ( \Binary_subtractor|LessThan0~5_combout\ & ( \Binary_subtractor|over~q\ ) ) ) # ( \Binary_subtractor|state~q\ & ( !\Binary_subtractor|LessThan0~5_combout\ & ( 
-- \Binary_subtractor|over~q\ ) ) ) # ( !\Binary_subtractor|state~q\ & ( !\Binary_subtractor|LessThan0~5_combout\ & ( \Binary_subtractor|over~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \Binary_subtractor|ALT_INV_over~q\,
	datac => \Binary_subtractor|ALT_INV_Mode~q\,
	datad => \Binary_subtractor|ALT_INV_LessThan1~1_combout\,
	datae => \Binary_subtractor|ALT_INV_state~q\,
	dataf => \Binary_subtractor|ALT_INV_LessThan0~5_combout\,
	combout => \Binary_subtractor|over~0_combout\);

\Binary_subtractor|over\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Binary_subtractor|over~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Binary_subtractor|over~q\);

\Multiplication|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~125_sumout\ = SUM(( \Multiplication|bit_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \Multiplication|Add1~126\ = CARRY(( \Multiplication|bit_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(0),
	cin => GND,
	sumout => \Multiplication|Add1~125_sumout\,
	cout => \Multiplication|Add1~126\);

\Multiplication|bit_counter[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|bit_counter[24]~0_combout\ = (\RST_N_i~input_o\ & \Multiplication|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \Multiplication|ALT_INV_state~q\,
	combout => \Multiplication|bit_counter[24]~0_combout\);

\Multiplication|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~125_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(0));

\Multiplication|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~81_sumout\ = SUM(( \Multiplication|bit_counter\(1) ) + ( GND ) + ( \Multiplication|Add1~126\ ))
-- \Multiplication|Add1~82\ = CARRY(( \Multiplication|bit_counter\(1) ) + ( GND ) + ( \Multiplication|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(1),
	cin => \Multiplication|Add1~126\,
	sumout => \Multiplication|Add1~81_sumout\,
	cout => \Multiplication|Add1~82\);

\Multiplication|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~81_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(1));

\Multiplication|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~77_sumout\ = SUM(( \Multiplication|bit_counter\(2) ) + ( GND ) + ( \Multiplication|Add1~82\ ))
-- \Multiplication|Add1~78\ = CARRY(( \Multiplication|bit_counter\(2) ) + ( GND ) + ( \Multiplication|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(2),
	cin => \Multiplication|Add1~82\,
	sumout => \Multiplication|Add1~77_sumout\,
	cout => \Multiplication|Add1~78\);

\Multiplication|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~77_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(2));

\Multiplication|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~113_sumout\ = SUM(( \Multiplication|bit_counter\(3) ) + ( GND ) + ( \Multiplication|Add1~78\ ))
-- \Multiplication|Add1~114\ = CARRY(( \Multiplication|bit_counter\(3) ) + ( GND ) + ( \Multiplication|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(3),
	cin => \Multiplication|Add1~78\,
	sumout => \Multiplication|Add1~113_sumout\,
	cout => \Multiplication|Add1~114\);

\Multiplication|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~113_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(3));

\Multiplication|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~85_sumout\ = SUM(( \Multiplication|bit_counter\(4) ) + ( GND ) + ( \Multiplication|Add1~114\ ))
-- \Multiplication|Add1~86\ = CARRY(( \Multiplication|bit_counter\(4) ) + ( GND ) + ( \Multiplication|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(4),
	cin => \Multiplication|Add1~114\,
	sumout => \Multiplication|Add1~85_sumout\,
	cout => \Multiplication|Add1~86\);

\Multiplication|bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~85_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(4));

\Multiplication|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~57_sumout\ = SUM(( \Multiplication|bit_counter\(5) ) + ( GND ) + ( \Multiplication|Add1~86\ ))
-- \Multiplication|Add1~58\ = CARRY(( \Multiplication|bit_counter\(5) ) + ( GND ) + ( \Multiplication|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(5),
	cin => \Multiplication|Add1~86\,
	sumout => \Multiplication|Add1~57_sumout\,
	cout => \Multiplication|Add1~58\);

\Multiplication|bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~57_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(5));

\Multiplication|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~117_sumout\ = SUM(( \Multiplication|bit_counter\(6) ) + ( GND ) + ( \Multiplication|Add1~58\ ))
-- \Multiplication|Add1~118\ = CARRY(( \Multiplication|bit_counter\(6) ) + ( GND ) + ( \Multiplication|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(6),
	cin => \Multiplication|Add1~58\,
	sumout => \Multiplication|Add1~117_sumout\,
	cout => \Multiplication|Add1~118\);

\Multiplication|bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~117_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(6));

\Multiplication|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~89_sumout\ = SUM(( \Multiplication|bit_counter\(7) ) + ( GND ) + ( \Multiplication|Add1~118\ ))
-- \Multiplication|Add1~90\ = CARRY(( \Multiplication|bit_counter\(7) ) + ( GND ) + ( \Multiplication|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(7),
	cin => \Multiplication|Add1~118\,
	sumout => \Multiplication|Add1~89_sumout\,
	cout => \Multiplication|Add1~90\);

\Multiplication|bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~89_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(7));

\Multiplication|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~93_sumout\ = SUM(( \Multiplication|bit_counter\(8) ) + ( GND ) + ( \Multiplication|Add1~90\ ))
-- \Multiplication|Add1~94\ = CARRY(( \Multiplication|bit_counter\(8) ) + ( GND ) + ( \Multiplication|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(8),
	cin => \Multiplication|Add1~90\,
	sumout => \Multiplication|Add1~93_sumout\,
	cout => \Multiplication|Add1~94\);

\Multiplication|bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~93_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(8));

\Multiplication|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~97_sumout\ = SUM(( \Multiplication|bit_counter\(9) ) + ( GND ) + ( \Multiplication|Add1~94\ ))
-- \Multiplication|Add1~98\ = CARRY(( \Multiplication|bit_counter\(9) ) + ( GND ) + ( \Multiplication|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(9),
	cin => \Multiplication|Add1~94\,
	sumout => \Multiplication|Add1~97_sumout\,
	cout => \Multiplication|Add1~98\);

\Multiplication|bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~97_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(9));

\Multiplication|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~101_sumout\ = SUM(( \Multiplication|bit_counter\(10) ) + ( GND ) + ( \Multiplication|Add1~98\ ))
-- \Multiplication|Add1~102\ = CARRY(( \Multiplication|bit_counter\(10) ) + ( GND ) + ( \Multiplication|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(10),
	cin => \Multiplication|Add1~98\,
	sumout => \Multiplication|Add1~101_sumout\,
	cout => \Multiplication|Add1~102\);

\Multiplication|bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~101_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(10));

\Multiplication|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~105_sumout\ = SUM(( \Multiplication|bit_counter\(11) ) + ( GND ) + ( \Multiplication|Add1~102\ ))
-- \Multiplication|Add1~106\ = CARRY(( \Multiplication|bit_counter\(11) ) + ( GND ) + ( \Multiplication|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(11),
	cin => \Multiplication|Add1~102\,
	sumout => \Multiplication|Add1~105_sumout\,
	cout => \Multiplication|Add1~106\);

\Multiplication|bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~105_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(11));

\Multiplication|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~53_sumout\ = SUM(( \Multiplication|bit_counter\(12) ) + ( GND ) + ( \Multiplication|Add1~106\ ))
-- \Multiplication|Add1~54\ = CARRY(( \Multiplication|bit_counter\(12) ) + ( GND ) + ( \Multiplication|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(12),
	cin => \Multiplication|Add1~106\,
	sumout => \Multiplication|Add1~53_sumout\,
	cout => \Multiplication|Add1~54\);

\Multiplication|bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~53_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(12));

\Multiplication|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~121_sumout\ = SUM(( \Multiplication|bit_counter\(13) ) + ( GND ) + ( \Multiplication|Add1~54\ ))
-- \Multiplication|Add1~122\ = CARRY(( \Multiplication|bit_counter\(13) ) + ( GND ) + ( \Multiplication|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(13),
	cin => \Multiplication|Add1~54\,
	sumout => \Multiplication|Add1~121_sumout\,
	cout => \Multiplication|Add1~122\);

\Multiplication|bit_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~121_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(13));

\Multiplication|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~109_sumout\ = SUM(( \Multiplication|bit_counter\(14) ) + ( GND ) + ( \Multiplication|Add1~122\ ))
-- \Multiplication|Add1~110\ = CARRY(( \Multiplication|bit_counter\(14) ) + ( GND ) + ( \Multiplication|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(14),
	cin => \Multiplication|Add1~122\,
	sumout => \Multiplication|Add1~109_sumout\,
	cout => \Multiplication|Add1~110\);

\Multiplication|bit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~109_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(14));

\Multiplication|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~25_sumout\ = SUM(( \Multiplication|bit_counter\(15) ) + ( GND ) + ( \Multiplication|Add1~110\ ))
-- \Multiplication|Add1~26\ = CARRY(( \Multiplication|bit_counter\(15) ) + ( GND ) + ( \Multiplication|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(15),
	cin => \Multiplication|Add1~110\,
	sumout => \Multiplication|Add1~25_sumout\,
	cout => \Multiplication|Add1~26\);

\Multiplication|bit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~25_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(15));

\Multiplication|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~21_sumout\ = SUM(( \Multiplication|bit_counter\(16) ) + ( GND ) + ( \Multiplication|Add1~26\ ))
-- \Multiplication|Add1~22\ = CARRY(( \Multiplication|bit_counter\(16) ) + ( GND ) + ( \Multiplication|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(16),
	cin => \Multiplication|Add1~26\,
	sumout => \Multiplication|Add1~21_sumout\,
	cout => \Multiplication|Add1~22\);

\Multiplication|bit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~21_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(16));

\Multiplication|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~17_sumout\ = SUM(( \Multiplication|bit_counter\(17) ) + ( GND ) + ( \Multiplication|Add1~22\ ))
-- \Multiplication|Add1~18\ = CARRY(( \Multiplication|bit_counter\(17) ) + ( GND ) + ( \Multiplication|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(17),
	cin => \Multiplication|Add1~22\,
	sumout => \Multiplication|Add1~17_sumout\,
	cout => \Multiplication|Add1~18\);

\Multiplication|bit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~17_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(17));

\Multiplication|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~13_sumout\ = SUM(( \Multiplication|bit_counter\(18) ) + ( GND ) + ( \Multiplication|Add1~18\ ))
-- \Multiplication|Add1~14\ = CARRY(( \Multiplication|bit_counter\(18) ) + ( GND ) + ( \Multiplication|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(18),
	cin => \Multiplication|Add1~18\,
	sumout => \Multiplication|Add1~13_sumout\,
	cout => \Multiplication|Add1~14\);

\Multiplication|bit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~13_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(18));

\Multiplication|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~9_sumout\ = SUM(( \Multiplication|bit_counter\(19) ) + ( GND ) + ( \Multiplication|Add1~14\ ))
-- \Multiplication|Add1~10\ = CARRY(( \Multiplication|bit_counter\(19) ) + ( GND ) + ( \Multiplication|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(19),
	cin => \Multiplication|Add1~14\,
	sumout => \Multiplication|Add1~9_sumout\,
	cout => \Multiplication|Add1~10\);

\Multiplication|bit_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~9_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(19));

\Multiplication|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~5_sumout\ = SUM(( \Multiplication|bit_counter\(20) ) + ( GND ) + ( \Multiplication|Add1~10\ ))
-- \Multiplication|Add1~6\ = CARRY(( \Multiplication|bit_counter\(20) ) + ( GND ) + ( \Multiplication|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(20),
	cin => \Multiplication|Add1~10\,
	sumout => \Multiplication|Add1~5_sumout\,
	cout => \Multiplication|Add1~6\);

\Multiplication|bit_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~5_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(20));

\Multiplication|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~49_sumout\ = SUM(( \Multiplication|bit_counter\(21) ) + ( GND ) + ( \Multiplication|Add1~6\ ))
-- \Multiplication|Add1~50\ = CARRY(( \Multiplication|bit_counter\(21) ) + ( GND ) + ( \Multiplication|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(21),
	cin => \Multiplication|Add1~6\,
	sumout => \Multiplication|Add1~49_sumout\,
	cout => \Multiplication|Add1~50\);

\Multiplication|bit_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~49_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(21));

\Multiplication|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~45_sumout\ = SUM(( \Multiplication|bit_counter\(22) ) + ( GND ) + ( \Multiplication|Add1~50\ ))
-- \Multiplication|Add1~46\ = CARRY(( \Multiplication|bit_counter\(22) ) + ( GND ) + ( \Multiplication|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(22),
	cin => \Multiplication|Add1~50\,
	sumout => \Multiplication|Add1~45_sumout\,
	cout => \Multiplication|Add1~46\);

\Multiplication|bit_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~45_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(22));

\Multiplication|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~41_sumout\ = SUM(( \Multiplication|bit_counter\(23) ) + ( GND ) + ( \Multiplication|Add1~46\ ))
-- \Multiplication|Add1~42\ = CARRY(( \Multiplication|bit_counter\(23) ) + ( GND ) + ( \Multiplication|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(23),
	cin => \Multiplication|Add1~46\,
	sumout => \Multiplication|Add1~41_sumout\,
	cout => \Multiplication|Add1~42\);

\Multiplication|bit_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~41_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(23));

\Multiplication|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~37_sumout\ = SUM(( \Multiplication|bit_counter\(24) ) + ( GND ) + ( \Multiplication|Add1~42\ ))
-- \Multiplication|Add1~38\ = CARRY(( \Multiplication|bit_counter\(24) ) + ( GND ) + ( \Multiplication|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(24),
	cin => \Multiplication|Add1~42\,
	sumout => \Multiplication|Add1~37_sumout\,
	cout => \Multiplication|Add1~38\);

\Multiplication|bit_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~37_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(24));

\Multiplication|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~33_sumout\ = SUM(( \Multiplication|bit_counter\(25) ) + ( GND ) + ( \Multiplication|Add1~38\ ))
-- \Multiplication|Add1~34\ = CARRY(( \Multiplication|bit_counter\(25) ) + ( GND ) + ( \Multiplication|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(25),
	cin => \Multiplication|Add1~38\,
	sumout => \Multiplication|Add1~33_sumout\,
	cout => \Multiplication|Add1~34\);

\Multiplication|bit_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~33_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(25));

\Multiplication|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~29_sumout\ = SUM(( \Multiplication|bit_counter\(26) ) + ( GND ) + ( \Multiplication|Add1~34\ ))
-- \Multiplication|Add1~30\ = CARRY(( \Multiplication|bit_counter\(26) ) + ( GND ) + ( \Multiplication|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(26),
	cin => \Multiplication|Add1~34\,
	sumout => \Multiplication|Add1~29_sumout\,
	cout => \Multiplication|Add1~30\);

\Multiplication|bit_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~29_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(26));

\Multiplication|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~73_sumout\ = SUM(( \Multiplication|bit_counter\(27) ) + ( GND ) + ( \Multiplication|Add1~30\ ))
-- \Multiplication|Add1~74\ = CARRY(( \Multiplication|bit_counter\(27) ) + ( GND ) + ( \Multiplication|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(27),
	cin => \Multiplication|Add1~30\,
	sumout => \Multiplication|Add1~73_sumout\,
	cout => \Multiplication|Add1~74\);

\Multiplication|bit_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~73_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(27));

\Multiplication|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~69_sumout\ = SUM(( \Multiplication|bit_counter\(28) ) + ( GND ) + ( \Multiplication|Add1~74\ ))
-- \Multiplication|Add1~70\ = CARRY(( \Multiplication|bit_counter\(28) ) + ( GND ) + ( \Multiplication|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(28),
	cin => \Multiplication|Add1~74\,
	sumout => \Multiplication|Add1~69_sumout\,
	cout => \Multiplication|Add1~70\);

\Multiplication|bit_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~69_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(28));

\Multiplication|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~65_sumout\ = SUM(( \Multiplication|bit_counter\(29) ) + ( GND ) + ( \Multiplication|Add1~70\ ))
-- \Multiplication|Add1~66\ = CARRY(( \Multiplication|bit_counter\(29) ) + ( GND ) + ( \Multiplication|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(29),
	cin => \Multiplication|Add1~70\,
	sumout => \Multiplication|Add1~65_sumout\,
	cout => \Multiplication|Add1~66\);

\Multiplication|bit_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~65_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(29));

\Multiplication|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~61_sumout\ = SUM(( \Multiplication|bit_counter\(30) ) + ( GND ) + ( \Multiplication|Add1~66\ ))
-- \Multiplication|Add1~62\ = CARRY(( \Multiplication|bit_counter\(30) ) + ( GND ) + ( \Multiplication|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(30),
	cin => \Multiplication|Add1~66\,
	sumout => \Multiplication|Add1~61_sumout\,
	cout => \Multiplication|Add1~62\);

\Multiplication|bit_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~61_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(30));

\Multiplication|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add1~1_sumout\ = SUM(( \Multiplication|bit_counter\(31) ) + ( GND ) + ( \Multiplication|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_bit_counter\(31),
	cin => \Multiplication|Add1~62\,
	sumout => \Multiplication|Add1~1_sumout\);

\Multiplication|bit_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add1~1_sumout\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|bit_counter\(31));

\Multiplication|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|LessThan0~0_combout\ = ( !\Multiplication|bit_counter\(16) & ( !\Multiplication|bit_counter\(15) & ( (!\Multiplication|bit_counter\(20) & (!\Multiplication|bit_counter\(19) & (!\Multiplication|bit_counter\(18) & 
-- !\Multiplication|bit_counter\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_bit_counter\(20),
	datab => \Multiplication|ALT_INV_bit_counter\(19),
	datac => \Multiplication|ALT_INV_bit_counter\(18),
	datad => \Multiplication|ALT_INV_bit_counter\(17),
	datae => \Multiplication|ALT_INV_bit_counter\(16),
	dataf => \Multiplication|ALT_INV_bit_counter\(15),
	combout => \Multiplication|LessThan0~0_combout\);

\Multiplication|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|LessThan0~1_combout\ = ( !\Multiplication|bit_counter\(22) & ( !\Multiplication|bit_counter\(21) & ( (!\Multiplication|bit_counter\(26) & (!\Multiplication|bit_counter\(25) & (!\Multiplication|bit_counter\(24) & 
-- !\Multiplication|bit_counter\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_bit_counter\(26),
	datab => \Multiplication|ALT_INV_bit_counter\(25),
	datac => \Multiplication|ALT_INV_bit_counter\(24),
	datad => \Multiplication|ALT_INV_bit_counter\(23),
	datae => \Multiplication|ALT_INV_bit_counter\(22),
	dataf => \Multiplication|ALT_INV_bit_counter\(21),
	combout => \Multiplication|LessThan0~1_combout\);

\Multiplication|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|LessThan0~2_combout\ = ( !\Multiplication|bit_counter\(28) & ( !\Multiplication|bit_counter\(27) & ( (!\Multiplication|bit_counter\(12) & (!\Multiplication|bit_counter\(5) & (!\Multiplication|bit_counter\(30) & 
-- !\Multiplication|bit_counter\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_bit_counter\(12),
	datab => \Multiplication|ALT_INV_bit_counter\(5),
	datac => \Multiplication|ALT_INV_bit_counter\(30),
	datad => \Multiplication|ALT_INV_bit_counter\(29),
	datae => \Multiplication|ALT_INV_bit_counter\(28),
	dataf => \Multiplication|ALT_INV_bit_counter\(27),
	combout => \Multiplication|LessThan0~2_combout\);

\Multiplication|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|LessThan0~3_combout\ = ( !\Multiplication|bit_counter\(8) & ( !\Multiplication|bit_counter\(9) & ( (!\Multiplication|bit_counter\(4) & (!\Multiplication|bit_counter\(7) & ((!\Multiplication|bit_counter\(2)) # 
-- (!\Multiplication|bit_counter\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_bit_counter\(2),
	datab => \Multiplication|ALT_INV_bit_counter\(1),
	datac => \Multiplication|ALT_INV_bit_counter\(4),
	datad => \Multiplication|ALT_INV_bit_counter\(7),
	datae => \Multiplication|ALT_INV_bit_counter\(8),
	dataf => \Multiplication|ALT_INV_bit_counter\(9),
	combout => \Multiplication|LessThan0~3_combout\);

\Multiplication|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|LessThan0~4_combout\ = ( !\Multiplication|bit_counter\(6) & ( !\Multiplication|bit_counter\(13) & ( (!\Multiplication|bit_counter\(10) & (!\Multiplication|bit_counter\(11) & (!\Multiplication|bit_counter\(14) & 
-- !\Multiplication|bit_counter\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_bit_counter\(10),
	datab => \Multiplication|ALT_INV_bit_counter\(11),
	datac => \Multiplication|ALT_INV_bit_counter\(14),
	datad => \Multiplication|ALT_INV_bit_counter\(3),
	datae => \Multiplication|ALT_INV_bit_counter\(6),
	dataf => \Multiplication|ALT_INV_bit_counter\(13),
	combout => \Multiplication|LessThan0~4_combout\);

\Multiplication|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|LessThan0~5_combout\ = ( \Multiplication|LessThan0~3_combout\ & ( \Multiplication|LessThan0~4_combout\ & ( (!\Multiplication|bit_counter\(31) & ((!\Multiplication|LessThan0~0_combout\) # ((!\Multiplication|LessThan0~1_combout\) # 
-- (!\Multiplication|LessThan0~2_combout\)))) ) ) ) # ( !\Multiplication|LessThan0~3_combout\ & ( \Multiplication|LessThan0~4_combout\ & ( !\Multiplication|bit_counter\(31) ) ) ) # ( \Multiplication|LessThan0~3_combout\ & ( 
-- !\Multiplication|LessThan0~4_combout\ & ( !\Multiplication|bit_counter\(31) ) ) ) # ( !\Multiplication|LessThan0~3_combout\ & ( !\Multiplication|LessThan0~4_combout\ & ( !\Multiplication|bit_counter\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_bit_counter\(31),
	datab => \Multiplication|ALT_INV_LessThan0~0_combout\,
	datac => \Multiplication|ALT_INV_LessThan0~1_combout\,
	datad => \Multiplication|ALT_INV_LessThan0~2_combout\,
	datae => \Multiplication|ALT_INV_LessThan0~3_combout\,
	dataf => \Multiplication|ALT_INV_LessThan0~4_combout\,
	combout => \Multiplication|LessThan0~5_combout\);

\Multiplication|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|state~0_combout\ = (!\Multiplication|state~q\ & (\Start_i~input_o\)) # (\Multiplication|state~q\ & ((!\Multiplication|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010001110100011101000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Multiplication|ALT_INV_state~q\,
	datac => \Multiplication|ALT_INV_LessThan0~5_combout\,
	combout => \Multiplication|state~0_combout\);

\Multiplication|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|state~0_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|state~q\);

\Multiplication|Data_A~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_A~5_combout\ = (!\Start_i~input_o\ & ((\Multiplication|Data_A\(0)))) # (\Start_i~input_o\ & (\A_i[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \ALT_INV_A_i[0]~input_o\,
	datac => \Multiplication|ALT_INV_Data_A\(0),
	combout => \Multiplication|Data_A~5_combout\);

\Multiplication|Data_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A~5_combout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(0));

\Multiplication|Data_A~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_A~4_combout\ = (!\Multiplication|state~q\ & (((\A_i[1]~input_o\)))) # (\Multiplication|state~q\ & (!\Multiplication|LessThan0~5_combout\ & ((\Multiplication|Data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \Multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_A_i[1]~input_o\,
	datad => \Multiplication|ALT_INV_Data_A\(0),
	combout => \Multiplication|Data_A~4_combout\);

\Multiplication|Data_A[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_A[2]~1_combout\ = (\Multiplication|state~q\) # (\Start_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Multiplication|ALT_INV_state~q\,
	combout => \Multiplication|Data_A[2]~1_combout\);

\Multiplication|Data_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A~4_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_A[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(1));

\Multiplication|Data_A~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_A~3_combout\ = (!\Multiplication|state~q\ & (((\A_i[2]~input_o\)))) # (\Multiplication|state~q\ & (!\Multiplication|LessThan0~5_combout\ & ((\Multiplication|Data_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \Multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_A_i[2]~input_o\,
	datad => \Multiplication|ALT_INV_Data_A\(1),
	combout => \Multiplication|Data_A~3_combout\);

\Multiplication|Data_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A~3_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_A[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(2));

\Multiplication|Data_A~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_A~2_combout\ = (!\Multiplication|state~q\ & (((\A_i[3]~input_o\)))) # (\Multiplication|state~q\ & (!\Multiplication|LessThan0~5_combout\ & ((\Multiplication|Data_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \Multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_A_i[3]~input_o\,
	datad => \Multiplication|ALT_INV_Data_A\(2),
	combout => \Multiplication|Data_A~2_combout\);

\Multiplication|Data_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A~2_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_A[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(3));

\Multiplication|Data_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_A~0_combout\ = (!\Multiplication|state~q\ & (((\A_i[4]~input_o\)))) # (\Multiplication|state~q\ & (!\Multiplication|LessThan0~5_combout\ & ((\Multiplication|Data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \Multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_A_i[4]~input_o\,
	datad => \Multiplication|ALT_INV_Data_A\(3),
	combout => \Multiplication|Data_A~0_combout\);

\Multiplication|Data_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_A[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(4));

\Multiplication|Data_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A\(4),
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(5));

\Multiplication|Data_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A\(5),
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(6));

\Multiplication|Data_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A\(6),
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(7));

\Multiplication|Data_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A\(7),
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(8));

\Multiplication|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~37_sumout\ = SUM(( \Multiplication|Data_A\(0) ) + ( \Multiplication|Data_Poduct\(0) ) + ( !VCC ))
-- \Multiplication|Add0~38\ = CARRY(( \Multiplication|Data_A\(0) ) + ( \Multiplication|Data_Poduct\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_A\(0),
	dataf => \Multiplication|ALT_INV_Data_Poduct\(0),
	cin => GND,
	sumout => \Multiplication|Add0~37_sumout\,
	cout => \Multiplication|Add0~38\);

\Multiplication|Data_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_B~0_combout\ = (!\Multiplication|state~q\ & \B_i[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B_i[4]~input_o\,
	combout => \Multiplication|Data_B~0_combout\);

\Multiplication|Data_B~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_B~1_combout\ = (!\Multiplication|state~q\ & (\Start_i~input_o\)) # (\Multiplication|state~q\ & ((\Multiplication|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start_i~input_o\,
	datab => \Multiplication|ALT_INV_state~q\,
	datac => \Multiplication|ALT_INV_LessThan0~5_combout\,
	combout => \Multiplication|Data_B~1_combout\);

\Multiplication|Data_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_B~0_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_B\(4));

\Multiplication|Data_B~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_B~2_combout\ = (!\Multiplication|state~q\ & \B_i[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B_i[0]~input_o\,
	combout => \Multiplication|Data_B~2_combout\);

\Multiplication|Data_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_B~2_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_B\(0));

\Multiplication|Data_B~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_B~3_combout\ = (!\Multiplication|state~q\ & \B_i[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B_i[1]~input_o\,
	combout => \Multiplication|Data_B~3_combout\);

\Multiplication|Data_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_B~3_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_B\(1));

\Multiplication|Data_B~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_B~4_combout\ = (!\Multiplication|state~q\ & \B_i[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B_i[2]~input_o\,
	combout => \Multiplication|Data_B~4_combout\);

\Multiplication|Data_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_B~4_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_B\(2));

\Multiplication|Data_B~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_B~5_combout\ = (!\Multiplication|state~q\ & \B_i[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B_i[3]~input_o\,
	combout => \Multiplication|Data_B~5_combout\);

\Multiplication|Data_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_B~5_combout\,
	clrn => \RST_N_i~input_o\,
	ena => \Multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_B\(3));

\Multiplication|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Mux0~0_combout\ = ( \Multiplication|bit_counter\(0) & ( \Multiplication|bit_counter\(1) & ( !\Multiplication|Data_B\(3) ) ) ) # ( !\Multiplication|bit_counter\(0) & ( \Multiplication|bit_counter\(1) & ( !\Multiplication|Data_B\(2) ) ) ) # 
-- ( \Multiplication|bit_counter\(0) & ( !\Multiplication|bit_counter\(1) & ( !\Multiplication|Data_B\(1) ) ) ) # ( !\Multiplication|bit_counter\(0) & ( !\Multiplication|bit_counter\(1) & ( !\Multiplication|Data_B\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_Data_B\(0),
	datab => \Multiplication|ALT_INV_Data_B\(1),
	datac => \Multiplication|ALT_INV_Data_B\(2),
	datad => \Multiplication|ALT_INV_Data_B\(3),
	datae => \Multiplication|ALT_INV_bit_counter\(0),
	dataf => \Multiplication|ALT_INV_bit_counter\(1),
	combout => \Multiplication|Mux0~0_combout\);

\Multiplication|Data_Poduct[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Data_Poduct[4]~0_combout\ = ( \Multiplication|Mux0~0_combout\ & ( (\Multiplication|state~q\ & (((\Multiplication|bit_counter\(2) & \Multiplication|Data_B\(4))) # (\Multiplication|LessThan0~5_combout\))) ) ) # ( 
-- !\Multiplication|Mux0~0_combout\ & ( (\Multiplication|state~q\ & ((!\Multiplication|bit_counter\(2)) # ((\Multiplication|Data_B\(4)) # (\Multiplication|LessThan0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101000001010001010101000101010101010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_state~q\,
	datab => \Multiplication|ALT_INV_bit_counter\(2),
	datac => \Multiplication|ALT_INV_LessThan0~5_combout\,
	datad => \Multiplication|ALT_INV_Data_B\(4),
	datae => \Multiplication|ALT_INV_Mux0~0_combout\,
	combout => \Multiplication|Data_Poduct[4]~0_combout\);

\Multiplication|Data_Poduct[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~37_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(0));

\Multiplication|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~33_sumout\ = SUM(( \Multiplication|Data_Poduct\(1) ) + ( \Multiplication|Data_A\(1) ) + ( \Multiplication|Add0~38\ ))
-- \Multiplication|Add0~34\ = CARRY(( \Multiplication|Data_Poduct\(1) ) + ( \Multiplication|Data_A\(1) ) + ( \Multiplication|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(1),
	dataf => \Multiplication|ALT_INV_Data_A\(1),
	cin => \Multiplication|Add0~38\,
	sumout => \Multiplication|Add0~33_sumout\,
	cout => \Multiplication|Add0~34\);

\Multiplication|Data_Poduct[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~33_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(1));

\Multiplication|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~29_sumout\ = SUM(( \Multiplication|Data_Poduct\(2) ) + ( \Multiplication|Data_A\(2) ) + ( \Multiplication|Add0~34\ ))
-- \Multiplication|Add0~30\ = CARRY(( \Multiplication|Data_Poduct\(2) ) + ( \Multiplication|Data_A\(2) ) + ( \Multiplication|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(2),
	dataf => \Multiplication|ALT_INV_Data_A\(2),
	cin => \Multiplication|Add0~34\,
	sumout => \Multiplication|Add0~29_sumout\,
	cout => \Multiplication|Add0~30\);

\Multiplication|Data_Poduct[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~29_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(2));

\Multiplication|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~9_sumout\ = SUM(( \Multiplication|Data_Poduct\(3) ) + ( \Multiplication|Data_A\(3) ) + ( \Multiplication|Add0~30\ ))
-- \Multiplication|Add0~10\ = CARRY(( \Multiplication|Data_Poduct\(3) ) + ( \Multiplication|Data_A\(3) ) + ( \Multiplication|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(3),
	dataf => \Multiplication|ALT_INV_Data_A\(3),
	cin => \Multiplication|Add0~30\,
	sumout => \Multiplication|Add0~9_sumout\,
	cout => \Multiplication|Add0~10\);

\Multiplication|Data_Poduct[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~9_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(3));

\Multiplication|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~5_sumout\ = SUM(( \Multiplication|Data_Poduct\(4) ) + ( \Multiplication|Data_A\(4) ) + ( \Multiplication|Add0~10\ ))
-- \Multiplication|Add0~6\ = CARRY(( \Multiplication|Data_Poduct\(4) ) + ( \Multiplication|Data_A\(4) ) + ( \Multiplication|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(4),
	dataf => \Multiplication|ALT_INV_Data_A\(4),
	cin => \Multiplication|Add0~10\,
	sumout => \Multiplication|Add0~5_sumout\,
	cout => \Multiplication|Add0~6\);

\Multiplication|Data_Poduct[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~5_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(4));

\Multiplication|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~21_sumout\ = SUM(( \Multiplication|Data_Poduct\(5) ) + ( \Multiplication|Data_A\(5) ) + ( \Multiplication|Add0~6\ ))
-- \Multiplication|Add0~22\ = CARRY(( \Multiplication|Data_Poduct\(5) ) + ( \Multiplication|Data_A\(5) ) + ( \Multiplication|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(5),
	dataf => \Multiplication|ALT_INV_Data_A\(5),
	cin => \Multiplication|Add0~6\,
	sumout => \Multiplication|Add0~21_sumout\,
	cout => \Multiplication|Add0~22\);

\Multiplication|Data_Poduct[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~21_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(5));

\Multiplication|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~17_sumout\ = SUM(( \Multiplication|Data_Poduct\(6) ) + ( \Multiplication|Data_A\(6) ) + ( \Multiplication|Add0~22\ ))
-- \Multiplication|Add0~18\ = CARRY(( \Multiplication|Data_Poduct\(6) ) + ( \Multiplication|Data_A\(6) ) + ( \Multiplication|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(6),
	dataf => \Multiplication|ALT_INV_Data_A\(6),
	cin => \Multiplication|Add0~22\,
	sumout => \Multiplication|Add0~17_sumout\,
	cout => \Multiplication|Add0~18\);

\Multiplication|Data_Poduct[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~17_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(6));

\Multiplication|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~13_sumout\ = SUM(( \Multiplication|Data_Poduct\(7) ) + ( \Multiplication|Data_A\(7) ) + ( \Multiplication|Add0~18\ ))
-- \Multiplication|Add0~14\ = CARRY(( \Multiplication|Data_Poduct\(7) ) + ( \Multiplication|Data_A\(7) ) + ( \Multiplication|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(7),
	dataf => \Multiplication|ALT_INV_Data_A\(7),
	cin => \Multiplication|Add0~18\,
	sumout => \Multiplication|Add0~13_sumout\,
	cout => \Multiplication|Add0~14\);

\Multiplication|Data_Poduct[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~13_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(7));

\Multiplication|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~1_sumout\ = SUM(( \Multiplication|Data_Poduct\(8) ) + ( \Multiplication|Data_A\(8) ) + ( \Multiplication|Add0~14\ ))
-- \Multiplication|Add0~2\ = CARRY(( \Multiplication|Data_Poduct\(8) ) + ( \Multiplication|Data_A\(8) ) + ( \Multiplication|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(8),
	dataf => \Multiplication|ALT_INV_Data_A\(8),
	cin => \Multiplication|Add0~14\,
	sumout => \Multiplication|Add0~1_sumout\,
	cout => \Multiplication|Add0~2\);

\Multiplication|Data_Poduct[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~1_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(8));

\Multiplication|Data_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Data_A\(8),
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_A\(9));

\Multiplication|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|Add0~25_sumout\ = SUM(( \Multiplication|Data_Poduct\(9) ) + ( \Multiplication|Data_A\(9) ) + ( \Multiplication|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Multiplication|ALT_INV_Data_Poduct\(9),
	dataf => \Multiplication|ALT_INV_Data_A\(9),
	cin => \Multiplication|Add0~2\,
	sumout => \Multiplication|Add0~25_sumout\);

\Multiplication|Data_Poduct[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|Add0~25_sumout\,
	clrn => \RST_N_i~input_o\,
	sclr => \Multiplication|LessThan0~5_combout\,
	ena => \Multiplication|Data_Poduct[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|Data_Poduct\(9));

\Multiplication|over~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|over~0_combout\ = (\Multiplication|Data_Poduct\(7) & (\Multiplication|Data_Poduct\(6) & (\Multiplication|Data_Poduct\(5) & \Multiplication|Data_Poduct\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_Data_Poduct\(7),
	datab => \Multiplication|ALT_INV_Data_Poduct\(6),
	datac => \Multiplication|ALT_INV_Data_Poduct\(5),
	datad => \Multiplication|ALT_INV_Data_Poduct\(9),
	combout => \Multiplication|over~0_combout\);

\Multiplication|over~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|over~1_combout\ = (\Multiplication|Data_Poduct\(8) & (\Multiplication|over~0_combout\ & ((\Multiplication|Data_Poduct\(3)) # (\Multiplication|Data_Poduct\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplication|ALT_INV_Data_Poduct\(8),
	datab => \Multiplication|ALT_INV_Data_Poduct\(4),
	datac => \Multiplication|ALT_INV_Data_Poduct\(3),
	datad => \Multiplication|ALT_INV_over~0_combout\,
	combout => \Multiplication|over~1_combout\);

\Multiplication|over~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Multiplication|over~2_combout\ = ( \Multiplication|over~1_combout\ & ( ((\RST_N_i~input_o\ & (\Multiplication|state~q\ & \Multiplication|LessThan0~5_combout\))) # (\Multiplication|over~q\) ) ) # ( !\Multiplication|over~1_combout\ & ( 
-- (\Multiplication|over~q\ & ((!\RST_N_i~input_o\) # ((!\Multiplication|state~q\) # (!\Multiplication|LessThan0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110010001100110011011100110011001100100011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \Multiplication|ALT_INV_over~q\,
	datac => \Multiplication|ALT_INV_state~q\,
	datad => \Multiplication|ALT_INV_LessThan0~5_combout\,
	datae => \Multiplication|ALT_INV_over~1_combout\,
	combout => \Multiplication|over~2_combout\);

\Multiplication|over\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Multiplication|over~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Multiplication|over~q\);

\Division|over~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|over~0_combout\ = ( !\Division|Round\(0) & ( (!\Division|Round\(4) & (!\Division|Round\(3) & (!\Division|Round\(2) & !\Division|Round\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_Round\(4),
	datab => \Division|ALT_INV_Round\(3),
	datac => \Division|ALT_INV_Round\(2),
	datad => \Division|ALT_INV_Round\(1),
	datae => \Division|ALT_INV_Round\(0),
	combout => \Division|over~0_combout\);

\Division|over~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Division|over~1_combout\ = ( \Division|LessThan1~2_combout\ & ( \Division|over~0_combout\ & ( ((\RST_N_i~input_o\ & \Division|state.S1~q\)) # (\Division|over~q\) ) ) ) # ( !\Division|LessThan1~2_combout\ & ( \Division|over~0_combout\ & ( 
-- ((\RST_N_i~input_o\ & (\Division|state.S1~q\ & !\Division|process_0~0_combout\))) # (\Division|over~q\) ) ) ) # ( \Division|LessThan1~2_combout\ & ( !\Division|over~0_combout\ & ( (\Division|over~q\ & ((!\RST_N_i~input_o\) # (!\Division|state.S1~q\))) ) ) 
-- ) # ( !\Division|LessThan1~2_combout\ & ( !\Division|over~0_combout\ & ( (\Division|over~q\ & ((!\RST_N_i~input_o\) # ((!\Division|state.S1~q\) # (\Division|process_0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110011001100100011001000110111001100110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \Division|ALT_INV_over~q\,
	datac => \Division|ALT_INV_state.S1~q\,
	datad => \Division|ALT_INV_process_0~0_combout\,
	datae => \Division|ALT_INV_LessThan1~2_combout\,
	dataf => \Division|ALT_INV_over~0_combout\,
	combout => \Division|over~1_combout\);

\Division|over\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \Division|over~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Division|over~q\);

\convert_binary_Remainder|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|process_0~0_combout\ = ( \Division|over~q\ & ( (!Op(0) & (Op(1) & ((\Multiplication|over~q\)))) # (Op(0) & (((\Binary_subtractor|over~q\)) # (Op(1)))) ) ) # ( !\Division|over~q\ & ( (!Op(0) & (Op(1) & 
-- ((\Multiplication|over~q\)))) # (Op(0) & (!Op(1) & (\Binary_subtractor|over~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011100000100001001100001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datac => \Binary_subtractor|ALT_INV_over~q\,
	datad => \Multiplication|ALT_INV_over~q\,
	datae => \Division|ALT_INV_over~q\,
	combout => \convert_binary_Remainder|process_0~0_combout\);

\convert_binary_Remainder|BCD_digit_1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_1[0]~0_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_1\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|ALT_INV_int_data_1\(0),
	datab => \ALT_INV_RST_N_i~input_o\,
	datac => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	combout => \convert_binary_Remainder|BCD_digit_1[0]~0_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[91]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[91]~1_combout\ = ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~9_sumout\ & ( 
-- (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5_sumout\)))) # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Remainder_main[9]~0_combout\ & (\Division|R\(1)))) ) ) ) # ( !\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~9_sumout\ ) ) # ( 
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ( !\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~9_sumout\ & ( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~5_sumout\)))) # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111000111111111111111110000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(1),
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	datae => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[91]~1_combout\);

\convert_binary_Remainder|int_data_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[91]~1_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_1\(1));

\convert_binary_Remainder|BCD_digit_1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_1[1]~1_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_1\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_1\(1),
	combout => \convert_binary_Remainder|BCD_digit_1[1]~1_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[92]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[92]~3_combout\ = ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~13_sumout\ & ( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\) # 
-- ((!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9_sumout\))) # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\))) ) ) # ( !\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~13_sumout\ & ( 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ((!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[70]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011111111110001101100000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[70]~2_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datae => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[92]~3_combout\);

\convert_binary_Remainder|int_data_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[92]~3_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_1\(2));

\convert_binary_Remainder|BCD_digit_1[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_1[2]~2_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_1\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_1\(2),
	combout => \convert_binary_Remainder|BCD_digit_1[2]~2_combout\);

\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[93]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[93]~6_combout\ = ( \convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~17_sumout\ & ( (!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\) # 
-- ((!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13_sumout\))) # (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\))) ) ) # ( !\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~17_sumout\ & ( 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_10~1_sumout\ & ((!\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~13_sumout\))) # 
-- (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[71]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011111111110001101100000000000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_StageOut[71]~5_combout\,
	datac => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datae => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	combout => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[93]~6_combout\);

\convert_binary_Remainder|int_data_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|Mod0|auto_generated|divider|divider|StageOut[93]~6_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_1\(3));

\convert_binary_Remainder|BCD_digit_1[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_1[3]~3_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_1\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_1\(3),
	combout => \convert_binary_Remainder|BCD_digit_1[3]~3_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~34_cout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(3))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~34_cout\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~26\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(3))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(3),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~26\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(4))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~26\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~6\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(4))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(4),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~26\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~6\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(5))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~6\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~10\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(5))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(5),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~6\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~10\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(6))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~10\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~14\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(6))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(6),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~10\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~14\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(7))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~14\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~18\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(7))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(7),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~14\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~18\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(8))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~18\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~30\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(8))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(8),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~18\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~30\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(9))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~30\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~22\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(9))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(9),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~30\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~22\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~22\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~19_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~17_sumout\)))) 
-- # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(7),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~19_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~9_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(5),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~9_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~25_sumout\)))) 
-- # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(3),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~38_cout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(2))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~38_cout\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~34\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(2))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(2),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~34\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\ ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~34\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~26\ = CARRY(( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\ ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~34\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[60]~25_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~34\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~26\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(4) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~26\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~6\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(4) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(4),
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~26\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~6\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~9_combout\ ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~6\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~10\ = CARRY(( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~9_combout\ ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~9_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~6\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~10\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(6) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~10\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(6) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(6),
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~10\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~14\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~19_combout\ ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~14\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~18\ = CARRY(( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~19_combout\ ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~19_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~14\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~18\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~29_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(8) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~18\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~29_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(8) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(8),
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~18\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~30\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(9) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~30\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(9) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(9),
	datab => \ALT_INV_Remainder_main[9]~0_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~30\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~22\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~22\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~39_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~39_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~40_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(9) & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(9),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~40_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[65]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[65]~35_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~29_sumout\)))) 
-- # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(8),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[65]~35_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~31_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~31_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~32_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(7) & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(7),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~32_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[63]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[63]~15_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~13_sumout\)))) 
-- # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(6),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[63]~15_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~30_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(5) & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(5),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~30_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[61]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(4),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~42_cout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~37_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(1))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~42_cout\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~38\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(1))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(1),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~42_cout\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~37_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~38\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~33_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~33_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\Division|R\(2) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~38\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~34\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~33_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\Division|R\(2) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Division|ALT_INV_R\(2),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~38\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~33_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~34\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~25_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~34\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~26\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~25_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[60]~25_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~34\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~26\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~5_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~5_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~26\ 
-- ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~6\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~5_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~26\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[61]~3_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~26\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~5_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~6\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~30_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~6\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~10\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~30_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~29_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~29_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~30_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~6\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~10\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~13_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[63]~15_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~10\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~13_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[63]~15_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[63]~15_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~10\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~14\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~17_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~32_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~31_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~14\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~17_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~32_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~31_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~31_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~32_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~14\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~18\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[65]~35_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~18\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~30\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[65]~35_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[65]~35_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~18\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~30\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~40_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~39_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~30\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~22\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~40_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~39_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[66]~39_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[66]~40_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~30\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~22\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~22\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~40_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[66]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[66]~39_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[66]~40_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~34_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~34_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~36_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[65]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[65]~35_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~36_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[75]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[75]~20_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[64]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[64]~19_combout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[75]~20_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~14_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~14_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~16_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[63]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[63]~15_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~16_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[73]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[73]~10_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[62]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[62]~9_combout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[73]~10_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~2_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~2_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~4_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[61]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[61]~3_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~4_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[71]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[71]~26_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~25_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[60]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[60]~25_combout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[71]~26_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[70]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[70]~44_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~33_sumout\)))) 
-- # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_8~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(2),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[70]~44_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~46_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~46_cout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~41_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(0))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~46_cout\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~42\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(0))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~46_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(0),
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~46_cout\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~41_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~42\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~37_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~37_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\Division|R\(1) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~42\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~38\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~37_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\Division|R\(1) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Division|ALT_INV_R\(1),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~42\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~37_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~38\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~33_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~33_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[70]~44_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~38\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~34\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~33_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[70]~44_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[70]~44_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~38\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~33_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~34\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~25_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~25_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[71]~26_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~34\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~26\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~25_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[71]~26_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[71]~26_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~34\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~25_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~26\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~5_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~4_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~2_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~26\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~6\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~4_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~2_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[72]~2_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[72]~4_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~26\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~5_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~6\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[73]~10_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~6\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~10\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~9_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[73]~10_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[73]~10_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~6\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~10\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~16_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~14_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~10\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~14\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~16_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~14_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[74]~14_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[74]~16_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~10\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~14\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~17_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[75]~20_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~14\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~18\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[75]~20_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[75]~20_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~14\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~17_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~18\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~29_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~36_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~34_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~18\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~30\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~29_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~36_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~34_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[76]~34_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[76]~36_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~18\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~30\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~30\ ))
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~22\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[77]~38_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[77]~41_combout\,
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~30\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~21_sumout\,
	cout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~22\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~22\,
	sumout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~47_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~21_sumout\ & !\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~47_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~48_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~48_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~49_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~41_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[77]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[77]~38_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[77]~41_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~49_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~36_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[76]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[76]~34_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[76]~36_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[86]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[86]~21_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[75]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[75]~20_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[86]~21_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~16_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[74]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[74]~14_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[74]~16_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~18_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~18_cout\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[85]~13_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[85]~17_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~18_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~6\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[86]~21_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~6\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~17_sumout\))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[86]~21_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[86]~21_combout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~6\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~10\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~10\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~22\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~33_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~37_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~22\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~49_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~48_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~22\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~21_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~49_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~48_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[88]~48_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[88]~49_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~22\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~14\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~50_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~49_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[88]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[88]~48_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[88]~49_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~50_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~20_combout\ = ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21_sumout\ & ( 
-- (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\)))) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\)) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\))) ) ) ) # ( 
-- !\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21_sumout\ ) ) # ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- !\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21_sumout\ & ( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110101111111111111111111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~33_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~37_combout\,
	datae => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~20_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~18_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~18_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~22_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[86]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[86]~21_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~22_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ = ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~5_sumout\ & ( 
-- (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13_sumout\)))) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17_combout\)) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13_combout\))) ) ) ) # ( 
-- !\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~5_sumout\ ) ) # ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- !\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~5_sumout\ & ( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~13_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~17_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[85]~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110101111111111111111111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[85]~13_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[85]~17_combout\,
	datae => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~8_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~8_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~11_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[73]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[73]~10_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~11_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~22_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~11_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~8_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~22_cout\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~6\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~9_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~11_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~8_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[84]~8_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[84]~11_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~22_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~6\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~6\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\ ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~6\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~10\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~22_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~18_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~22_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~18_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[97]~18_combout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[97]~22_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~14\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~20_combout\ ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~14\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~26\ = CARRY(( \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~20_combout\ ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~20_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~26\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~18_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~13_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~50_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[99]~47_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[99]~47_combout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[99]~50_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~26\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~18_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~18_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~17_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~17_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~29_sumout\)))) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~37_combout\)) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[87]~33_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110101111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~33_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[87]~37_combout\,
	datae => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[16]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~22_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[97]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[97]~18_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[97]~22_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~7_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~7_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~12_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~11_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[84]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[84]~8_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[84]~11_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~12_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~1_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~1_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~5_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~4_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[72]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[72]~2_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[72]~4_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~5_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~26_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~5_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~1_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~26_cout\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~5_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~5_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~1_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[83]~1_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[83]~5_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~6\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~12_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~7_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~6\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~12_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~7_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[95]~7_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[95]~12_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~6\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~10\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~10\ 
-- ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~14\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~13_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~18\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~25_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[17]~17_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~17_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~18_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~18\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~22_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~12_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~12_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~14_combout\ = (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~13_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~14_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[15]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~9_combout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[20]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[20]~5_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~12_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[95]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[95]~7_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[95]~12_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[20]~5_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~0_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~5_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~0_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~6_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~5_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[83]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[83]~1_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[83]~5_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~6_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~27_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[71]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[71]~26_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~27_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~26_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~27_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~26_cout\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~25_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~27_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[82]~24_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[82]~27_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~26_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~22\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~5_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~6_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~22\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~5_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~6_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[94]~0_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[94]~6_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~10\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[20]~5_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~10\ 
-- ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[20]~5_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~14\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~14\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~18\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~17_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~14_combout\)) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[22]~12_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~12_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[22]~14_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~18\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~6_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~11_combout\ = (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[21]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[21]~10_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~11_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[26]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[26]~6_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[20]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[20]~5_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[26]~6_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[25]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[25]~1_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~5_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~6_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[94]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[94]~0_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[94]~6_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[25]~1_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~23_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~23_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~28_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~27_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[82]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[82]~24_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[82]~27_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~28_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~43_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~43_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~45_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & 
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[70]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[70]~44_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~45_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~26_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~33_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~45_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~43_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~26_cout\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~33_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~45_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~43_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[81]~43_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[81]~45_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~26_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~22\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~21_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~28_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~23_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~22\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~21_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~28_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~23_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[93]~23_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[93]~28_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~22\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~18\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[25]~1_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~18\ 
-- ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[25]~1_combout\)) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~18\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~1_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~18\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~10\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[26]~6_combout\)) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~10\ 
-- ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[26]~6_combout\)) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~6_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~10\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~14\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~11_combout\)) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[27]~8_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~8_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~11_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~14\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~6_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~4_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~4_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~7_combout\ = (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[26]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~6_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~7_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[31]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[31]~2_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[25]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~1_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[31]~2_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[30]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[30]~15_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~21_sumout\)))) 
-- # (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~28_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[93]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[93]~23_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[93]~28_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[30]~15_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~42_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~42_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~46_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~45_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[81]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[81]~43_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[81]~45_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~46_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~52_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~37_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~52_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~53_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(1) & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_9~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(1),
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~53_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~26_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~37_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~53_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~52_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~26_cout\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~22\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~37_sumout\)))) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~53_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~52_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[80]~52_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~37_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[80]~53_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~26_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~22\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~46_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~42_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~22\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~46_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~42_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[92]~42_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[92]~46_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~22\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~18\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[30]~15_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~18\ ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[30]~15_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~15_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~18\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~14\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[31]~2_combout\)) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~14\ 
-- ))
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~10\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~9_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[31]~2_combout\)) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~2_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~14\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~10\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~13_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~7_combout\)) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[32]~4_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~4_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~7_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~10\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~6_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~0_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~0_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~3_combout\ = (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[31]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[31]~2_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~3_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[36]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[36]~16_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[30]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[30]~15_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[36]~16_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[35]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[35]~19_combout\ = (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~21_sumout\)))) 
-- # (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~46_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[92]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101101011111000110110101111100011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[92]~42_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[92]~46_combout\,
	combout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[35]~19_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~51_combout\ = (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & \convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~37_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~37_sumout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~51_combout\);

\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~54_combout\ = (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & 
-- ((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~53_combout\) # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[80]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[80]~52_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[80]~53_combout\,
	combout => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~54_combout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~26_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~22_cout\ = CARRY(( (!\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~41_sumout\)))) 
-- # (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|op_10~1_sumout\ & (\Division|R\(0) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(0),
	datab => \ALT_INV_Remainder_main[9]~0_combout\,
	datac => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_op_10~41_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~26_cout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~22_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~18_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~21_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~54_combout\)) # 
-- (\convert_binary_Remainder|Mod1|auto_generated|divider|divider|StageOut[91]~51_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[91]~51_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	datad => \convert_binary_Remainder|Mod1|auto_generated|divider|divider|ALT_INV_StageOut[91]~54_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~22_cout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~18_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~14_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~17_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[35]~19_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~19_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~18_cout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~14_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~10_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~13_sumout\))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[36]~16_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~16_combout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~14_cout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~10_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~6_cout\ = CARRY(( (!\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~9_sumout\)))) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~3_combout\)) # 
-- (\convert_binary_Remainder|Div0|auto_generated|divider|divider|StageOut[37]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~0_combout\,
	datac => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	datad => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_StageOut[37]~3_combout\,
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~10_cout\,
	cout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~6_cout\);

\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~6_cout\,
	sumout => \convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~1_sumout\);

\convert_binary_Remainder|int_data_2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|int_data_2[0]~0_combout\ = !\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_10~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \convert_binary_Remainder|int_data_2[0]~0_combout\);

\convert_binary_Remainder|int_data_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|int_data_2[0]~0_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_2\(0));

\convert_binary_Remainder|BCD_digit_2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_2[0]~0_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_2\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_2\(0),
	combout => \convert_binary_Remainder|BCD_digit_2[0]~0_combout\);

\convert_binary_Remainder|int_data_2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|int_data_2[1]~1_combout\ = !\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_9~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \convert_binary_Remainder|int_data_2[1]~1_combout\);

\convert_binary_Remainder|int_data_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|int_data_2[1]~1_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_2\(1));

\convert_binary_Remainder|BCD_digit_2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_2[1]~1_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_2\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_2\(1),
	combout => \convert_binary_Remainder|BCD_digit_2[1]~1_combout\);

\convert_binary_Remainder|int_data_2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|int_data_2[2]~2_combout\ = !\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_8~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \convert_binary_Remainder|int_data_2[2]~2_combout\);

\convert_binary_Remainder|int_data_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|int_data_2[2]~2_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_2\(2));

\convert_binary_Remainder|BCD_digit_2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_2[2]~2_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_2\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_2\(2),
	combout => \convert_binary_Remainder|BCD_digit_2[2]~2_combout\);

\convert_binary_Remainder|int_data_2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|int_data_2[3]~3_combout\ = !\convert_binary_Remainder|Div0|auto_generated|divider|divider|op_7~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \convert_binary_Remainder|int_data_2[3]~3_combout\);

\convert_binary_Remainder|int_data_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|int_data_2[3]~3_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_2\(3));

\convert_binary_Remainder|BCD_digit_2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_2[3]~3_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_2\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_2\(3),
	combout => \convert_binary_Remainder|BCD_digit_2[3]~3_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~34_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(3))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~34_cout\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~30\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(3))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(3),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~30\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(4))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~30\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~26\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(4))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(4),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~30\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~26\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(5))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~26\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~22\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(5))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(5),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~26\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~22\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(6))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~22\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~18\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(6))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(6),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~22\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~18\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(7))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~18\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~10\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(7))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(7),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~18\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~10\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(8))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~10\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~14\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(8))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(8),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~10\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~14\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(9))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~14\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~6\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(9))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datab => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(9),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~14\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~6\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~6\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(7) & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(7),
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ = (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~1_combout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~2_combout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~10_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~10_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~11_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(5) & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(5),
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~11_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~12_combout\ = (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~11_combout\) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~10_combout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~11_combout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~12_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~29_sumout\)))) 
-- # (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(3),
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~38_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(2))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~38_cout\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~34\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(2))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(2),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~34\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\ ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~34\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~30\ = CARRY(( \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\ ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~34\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~34\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~30\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~25_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(4) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~30\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~25_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(4) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(4),
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~30\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~26\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~12_combout\ ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~26\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~22\ = CARRY(( \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~12_combout\ ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~26\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~12_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~26\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~22\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(6) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~22\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(6) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(6),
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~22\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~18\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~18\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~10\ = CARRY(( \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~18\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~3_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~18\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~10\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~13_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(8) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~10\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~13_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(8) & (\Remainder_main[9]~0_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(8),
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~10\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~14\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~5_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Division|R\(9) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Division|ALT_INV_R\(9),
	datab => \ALT_INV_Remainder_main[9]~0_combout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~14\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~6_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\ = (\Remainder_main[9]~0_combout\ & (\Division|R\(8) & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(8),
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[51]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[51]~8_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~17_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(6),
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[51]~8_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[49]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~25_sumout\)))) 
-- # (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(4),
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~38_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~33_sumout\ = SUM(( (Op(0) & (Op(1) & \Division|R\(1))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~38_cout\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~34\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(1))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(1),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~38_cout\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~33_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~34\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~33_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\Division|R\(2) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~34\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~30\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~33_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\Division|R\(2) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \Division|ALT_INV_R\(2),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~34\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~30\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~30\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~26\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~30\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~26\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~25_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~26\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~22\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~25_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~15_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~26\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~22\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~11_combout\)) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~10_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~22\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~21_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~11_combout\)) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~10_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~10_combout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~11_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~22\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~18\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[51]~8_combout\)) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~18\ 
-- ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~17_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[51]~8_combout\)) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~18\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~8_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~18\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~14\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~9_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\)) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~14\ ))
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~10\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~9_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~2_combout\)) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~1_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~1_combout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~2_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~14\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~10\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~13_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~6_combout\)) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[53]~5_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~5_combout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[53]~6_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~10\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~6_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\ = (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[52]~3_combout\ & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[52]~3_combout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~7_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~7_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~9_combout\ = (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[51]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[51]~8_combout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~9_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[59]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[59]~13_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~21_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[50]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[50]~12_combout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[59]~13_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~14_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~14_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~16_combout\ = (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[49]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[49]~15_combout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~16_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[57]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[57]~18_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~29_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[48]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[48]~17_combout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[57]~18_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[56]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[56]~19_combout\ = (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~33_sumout\)))) 
-- # (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\ & (\Remainder_main[9]~0_combout\ & (\Division|R\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000000011111000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Remainder_main[9]~0_combout\,
	datab => \Division|ALT_INV_R\(2),
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	combout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[56]~19_combout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~38_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~34_cout\ = CARRY(( (Op(0) & (Op(1) & \Division|R\(0))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Op(0),
	datac => ALT_INV_Op(1),
	datad => \Division|ALT_INV_R\(0),
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~38_cout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~34_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~30_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~33_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\Division|R\(1) & (\Remainder_main[9]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \Division|ALT_INV_R\(1),
	datac => \ALT_INV_Remainder_main[9]~0_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~34_cout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~30_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~26_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~29_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[56]~19_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[56]~19_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~30_cout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~26_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~22_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~25_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[57]~18_combout\)) ) + ( VCC ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[57]~18_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~26_cout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~22_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~18_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~21_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~16_combout\)) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[58]~14_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~14_combout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[58]~16_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~22_cout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~18_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~14_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & ((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~17_sumout\))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[59]~13_combout\)) ) + ( GND ) + ( 
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[59]~13_combout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~18_cout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~14_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~10_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~13_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~9_combout\)) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[60]~7_combout\))) ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~7_combout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[60]~9_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~14_cout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~10_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~6_cout\ = CARRY(( (!\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~9_sumout\)))) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\ & (((\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~4_combout\)) # 
-- (\convert_binary_Remainder|Div1|auto_generated|divider|divider|StageOut[61]~0_combout\))) ) + ( VCC ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datab => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~0_combout\,
	datac => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	datad => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_StageOut[61]~4_combout\,
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~10_cout\,
	cout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~6_cout\);

\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~6_cout\,
	sumout => \convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~1_sumout\);

\convert_binary_Remainder|int_data_3[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|int_data_3[0]~0_combout\ = !\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_10~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \convert_binary_Remainder|int_data_3[0]~0_combout\);

\convert_binary_Remainder|int_data_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|int_data_3[0]~0_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_3\(0));

\convert_binary_Remainder|BCD_digit_3[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_3[0]~0_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_3\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_3\(0),
	combout => \convert_binary_Remainder|BCD_digit_3[0]~0_combout\);

\convert_binary_Remainder|int_data_3[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|int_data_3[1]~1_combout\ = !\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_9~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \convert_binary_Remainder|int_data_3[1]~1_combout\);

\convert_binary_Remainder|int_data_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|int_data_3[1]~1_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_3\(1));

\convert_binary_Remainder|BCD_digit_3[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_3[1]~1_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_3\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_3\(1),
	combout => \convert_binary_Remainder|BCD_digit_3[1]~1_combout\);

\convert_binary_Remainder|int_data_3[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|int_data_3[2]~2_combout\ = !\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_8~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \convert_binary_Remainder|int_data_3[2]~2_combout\);

\convert_binary_Remainder|int_data_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|int_data_3[2]~2_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_3\(2));

\convert_binary_Remainder|BCD_digit_3[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_3[2]~2_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_3\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_3\(2),
	combout => \convert_binary_Remainder|BCD_digit_3[2]~2_combout\);

\convert_binary_Remainder|int_data_3[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|int_data_3[3]~3_combout\ = !\convert_binary_Remainder|Div1|auto_generated|divider|divider|op_7~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \convert_binary_Remainder|Div1|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \convert_binary_Remainder|int_data_3[3]~3_combout\);

\convert_binary_Remainder|int_data_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_i~input_o\,
	d => \convert_binary_Remainder|int_data_3[3]~3_combout\,
	clrn => \RST_N_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \convert_binary_Remainder|int_data_3\(3));

\convert_binary_Remainder|BCD_digit_3[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \convert_binary_Remainder|BCD_digit_3[3]~3_combout\ = ((\RST_N_i~input_o\ & \convert_binary_Remainder|process_0~0_combout\)) # (\convert_binary_Remainder|int_data_3\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N_i~input_o\,
	datab => \convert_binary_Remainder|ALT_INV_process_0~0_combout\,
	datac => \convert_binary_Remainder|ALT_INV_int_data_3\(3),
	combout => \convert_binary_Remainder|BCD_digit_3[3]~3_combout\);

ww_BCD_data_main_digit_1(0) <= \BCD_data_main_digit_1[0]~output_o\;

ww_BCD_data_main_digit_1(1) <= \BCD_data_main_digit_1[1]~output_o\;

ww_BCD_data_main_digit_1(2) <= \BCD_data_main_digit_1[2]~output_o\;

ww_BCD_data_main_digit_1(3) <= \BCD_data_main_digit_1[3]~output_o\;

ww_BCD_data_main_digit_2(0) <= \BCD_data_main_digit_2[0]~output_o\;

ww_BCD_data_main_digit_2(1) <= \BCD_data_main_digit_2[1]~output_o\;

ww_BCD_data_main_digit_2(2) <= \BCD_data_main_digit_2[2]~output_o\;

ww_BCD_data_main_digit_2(3) <= \BCD_data_main_digit_2[3]~output_o\;

ww_BCD_data_main_digit_3(0) <= \BCD_data_main_digit_3[0]~output_o\;

ww_BCD_data_main_digit_3(1) <= \BCD_data_main_digit_3[1]~output_o\;

ww_BCD_data_main_digit_3(2) <= \BCD_data_main_digit_3[2]~output_o\;

ww_BCD_data_main_digit_3(3) <= \BCD_data_main_digit_3[3]~output_o\;
END structure;


