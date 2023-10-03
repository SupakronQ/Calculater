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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/14/2022 23:38:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mode
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mode_vhd_vec_tst IS
END Mode_vhd_vec_tst;
ARCHITECTURE Mode_arch OF Mode_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_i : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B_i : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL CLK_i : STD_LOGIC;
SIGNAL DONE_o : STD_LOGIC;
SIGNAL Operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
SIGNAL Remainder : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL Results : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL RST_N_i : STD_LOGIC;
SIGNAL Start_i : STD_LOGIC;
COMPONENT Mode
	PORT (
	A_i : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	B_i : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	CLK_i : IN STD_LOGIC;
	DONE_o : OUT STD_LOGIC;
	Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	overflow : OUT STD_LOGIC;
	Remainder : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	Results : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	RST_N_i : IN STD_LOGIC;
	Start_i : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mode
	PORT MAP (
-- list connections between master ports and signals
	A_i => A_i,
	B_i => B_i,
	CLK_i => CLK_i,
	DONE_o => DONE_o,
	Operation => Operation,
	overflow => overflow,
	Remainder => Remainder,
	Results => Results,
	RST_N_i => RST_N_i,
	Start_i => Start_i
	);
-- A_i[4]
t_prcs_A_i_4: PROCESS
BEGIN
	A_i(4) <= '0';
WAIT;
END PROCESS t_prcs_A_i_4;
-- A_i[3]
t_prcs_A_i_3: PROCESS
BEGIN
	A_i(3) <= '0';
WAIT;
END PROCESS t_prcs_A_i_3;
-- A_i[2]
t_prcs_A_i_2: PROCESS
BEGIN
	A_i(2) <= '0';
WAIT;
END PROCESS t_prcs_A_i_2;
-- A_i[1]
t_prcs_A_i_1: PROCESS
BEGIN
	A_i(1) <= '0';
WAIT;
END PROCESS t_prcs_A_i_1;
-- A_i[0]
t_prcs_A_i_0: PROCESS
BEGIN
	A_i(0) <= '1';
	WAIT FOR 70000 ps;
	A_i(0) <= '0';
WAIT;
END PROCESS t_prcs_A_i_0;
-- B_i[4]
t_prcs_B_i_4: PROCESS
BEGIN
	B_i(4) <= '1';
	WAIT FOR 70000 ps;
	B_i(4) <= '0';
WAIT;
END PROCESS t_prcs_B_i_4;
-- B_i[3]
t_prcs_B_i_3: PROCESS
BEGIN
	B_i(3) <= '1';
	WAIT FOR 70000 ps;
	B_i(3) <= '0';
WAIT;
END PROCESS t_prcs_B_i_3;
-- B_i[2]
t_prcs_B_i_2: PROCESS
BEGIN
	B_i(2) <= '1';
	WAIT FOR 70000 ps;
	B_i(2) <= '0';
WAIT;
END PROCESS t_prcs_B_i_2;
-- B_i[1]
t_prcs_B_i_1: PROCESS
BEGIN
	B_i(1) <= '1';
	WAIT FOR 70000 ps;
	B_i(1) <= '0';
WAIT;
END PROCESS t_prcs_B_i_1;
-- B_i[0]
t_prcs_B_i_0: PROCESS
BEGIN
	B_i(0) <= '1';
	WAIT FOR 70000 ps;
	B_i(0) <= '0';
WAIT;
END PROCESS t_prcs_B_i_0;

-- CLK_i
t_prcs_CLK_i: PROCESS
BEGIN
LOOP
	CLK_i <= '0';
	WAIT FOR 5000 ps;
	CLK_i <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_i;

-- Start_i
t_prcs_Start_i: PROCESS
BEGIN
	Start_i <= '1';
	WAIT FOR 30000 ps;
	Start_i <= '0';
WAIT;
END PROCESS t_prcs_Start_i;
-- Operation[1]
t_prcs_Operation_1: PROCESS
BEGIN
	Operation(1) <= '1';
	WAIT FOR 20000 ps;
	Operation(1) <= '0';
WAIT;
END PROCESS t_prcs_Operation_1;
-- Operation[0]
t_prcs_Operation_0: PROCESS
BEGIN
	Operation(0) <= '1';
	WAIT FOR 20000 ps;
	Operation(0) <= '0';
WAIT;
END PROCESS t_prcs_Operation_0;

-- RST_N_i
t_prcs_RST_N_i: PROCESS
BEGIN
	RST_N_i <= '1';
WAIT;
END PROCESS t_prcs_RST_N_i;
END Mode_arch;
