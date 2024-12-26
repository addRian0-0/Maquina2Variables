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

-- DATE "12/16/2024 10:00:32"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Maquina2Variables IS
    PORT (
	clk : IN std_logic;
	x : IN std_logic_vector(1 DOWNTO 0);
	salida : BUFFER std_logic_vector(16 DOWNTO 0)
	);
END Maquina2Variables;

-- Design Ports Information


ARCHITECTURE structure OF Maquina2Variables IS
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
SIGNAL ww_x : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(16 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_122\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_123\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_124\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_125\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_126\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_127\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_128\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_129\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_130\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_131\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_132\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_133\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_134\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_135\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_136\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_137\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_138\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_121\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \clkint~regout\ : std_logic;
SIGNAL \state.s7~regout\ : std_logic;
SIGNAL \state.s8~regout\ : std_logic;
SIGNAL \state.s9~regout\ : std_logic;
SIGNAL \state.s10~regout\ : std_logic;
SIGNAL \state.s11~regout\ : std_logic;
SIGNAL \state.s2~regout\ : std_logic;
SIGNAL \state.s3~regout\ : std_logic;
SIGNAL \state.s4~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.s5~regout\ : std_logic;
SIGNAL \state.s6~regout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state.s0~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.s1~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \WideOr14~combout\ : std_logic;
SIGNAL \WideOr13~combout\ : std_logic;
SIGNAL \WideOr11~combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \WideOr12~combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \x~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL counTime : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_x <= x;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X4_Y2_N3
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = ((!counTime(0)))
-- \Add0~117\ = CARRY(((counTime(0))))
-- \Add0~117COUT1_121\ = CARRY(((counTime(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_121\);

-- Location: LC_X4_Y2_N5
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = counTime(2) $ ((((!\Add0~112\))))
-- \Add0~107\ = CARRY((counTime(2) & ((!\Add0~112\))))
-- \Add0~107COUT1_122\ = CARRY((counTime(2) & ((!\Add0~112\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(2),
	cin => \Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_122\);

-- Location: LC_X4_Y2_N6
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (counTime(3) $ (((!\Add0~112\ & \Add0~107\) # (\Add0~112\ & \Add0~107COUT1_122\))))
-- \Add0~102\ = CARRY(((!\Add0~107\) # (!counTime(3))))
-- \Add0~102COUT1_123\ = CARRY(((!\Add0~107COUT1_122\) # (!counTime(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(3),
	cin => \Add0~112\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_123\);

-- Location: LC_X4_Y2_N2
\counTime[3]\ : maxii_lcell
-- Equation(s):
-- \Equal0~6\ = (!counTime(2) & (!counTime(1) & (!counTime[3] & !counTime(0))))
-- counTime(3) = DFFEAS(\Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(2),
	datab => counTime(1),
	datac => \Add0~100_combout\,
	datad => counTime(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => counTime(3));

-- Location: LC_X4_Y2_N7
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = (counTime(4) $ ((!(!\Add0~112\ & \Add0~102\) # (\Add0~112\ & \Add0~102COUT1_123\))))
-- \Add0~97\ = CARRY(((counTime(4) & !\Add0~102\)))
-- \Add0~97COUT1_124\ = CARRY(((counTime(4) & !\Add0~102COUT1_123\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(4),
	cin => \Add0~112\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_124\);

-- Location: LC_X4_Y2_N1
\counTime[4]\ : maxii_lcell
-- Equation(s):
-- counTime(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(4));

-- Location: LC_X4_Y2_N8
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = (counTime(5) $ (((!\Add0~112\ & \Add0~97\) # (\Add0~112\ & \Add0~97COUT1_124\))))
-- \Add0~92\ = CARRY(((!\Add0~97\) # (!counTime(5))))
-- \Add0~92COUT1_125\ = CARRY(((!\Add0~97COUT1_124\) # (!counTime(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(5),
	cin => \Add0~112\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_125\);

-- Location: LC_X3_Y2_N4
\counTime[5]\ : maxii_lcell
-- Equation(s):
-- counTime(5) = DFFEAS((((\Add0~90_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(5));

-- Location: LC_X4_Y2_N9
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = (counTime(6) $ ((!(!\Add0~112\ & \Add0~92\) # (\Add0~112\ & \Add0~92COUT1_125\))))
-- \Add0~87\ = CARRY(((counTime(6) & !\Add0~92COUT1_125\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(6),
	cin => \Add0~112\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout => \Add0~87\);

-- Location: LC_X4_Y2_N0
\counTime[6]\ : maxii_lcell
-- Equation(s):
-- \Equal0~5\ = (counTime(7) & (!counTime(4) & (!counTime[6] & !counTime(5))))
-- counTime(6) = DFFEAS(\Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(7),
	datab => counTime(4),
	datac => \Add0~85_combout\,
	datad => counTime(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => counTime(6));

-- Location: LC_X5_Y2_N0
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (counTime(7) $ ((\Add0~87\)))
-- \Add0~82\ = CARRY(((!\Add0~87\) # (!counTime(7))))
-- \Add0~82COUT1_126\ = CARRY(((!\Add0~87\) # (!counTime(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(7),
	cin => \Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_126\);

-- Location: LC_X5_Y2_N1
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = (counTime(8) $ ((!(!\Add0~87\ & \Add0~82\) # (\Add0~87\ & \Add0~82COUT1_126\))))
-- \Add0~77\ = CARRY(((counTime(8) & !\Add0~82\)))
-- \Add0~77COUT1_127\ = CARRY(((counTime(8) & !\Add0~82COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(8),
	cin => \Add0~87\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_127\);

-- Location: LC_X5_Y3_N6
\counTime[8]\ : maxii_lcell
-- Equation(s):
-- counTime(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(8));

-- Location: LC_X5_Y2_N2
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (counTime(9) $ (((!\Add0~87\ & \Add0~77\) # (\Add0~87\ & \Add0~77COUT1_127\))))
-- \Add0~67\ = CARRY(((!\Add0~77\) # (!counTime(9))))
-- \Add0~67COUT1_128\ = CARRY(((!\Add0~77COUT1_127\) # (!counTime(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(9),
	cin => \Add0~87\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_128\);

-- Location: LC_X5_Y3_N2
\counTime[9]\ : maxii_lcell
-- Equation(s):
-- counTime(9) = DFFEAS((\Add0~65_combout\ & (((!\Equal0~5\) # (!\Equal0~4_combout\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~6\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5\,
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(9));

-- Location: LC_X5_Y2_N3
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = counTime(10) $ ((((!(!\Add0~87\ & \Add0~67\) # (\Add0~87\ & \Add0~67COUT1_128\)))))
-- \Add0~62\ = CARRY((counTime(10) & ((!\Add0~67\))))
-- \Add0~62COUT1_129\ = CARRY((counTime(10) & ((!\Add0~67COUT1_128\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(10),
	cin => \Add0~87\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_129\);

-- Location: LC_X5_Y3_N1
\counTime[10]\ : maxii_lcell
-- Equation(s):
-- counTime(10) = DFFEAS((\Add0~60_combout\ & (((!\Equal0~6\) # (!\Equal0~4_combout\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Equal0~4_combout\,
	datac => \Add0~60_combout\,
	datad => \Equal0~6\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(10));

-- Location: LC_X5_Y2_N4
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = counTime(11) $ (((((!\Add0~87\ & \Add0~62\) # (\Add0~87\ & \Add0~62COUT1_129\)))))
-- \Add0~72\ = CARRY(((!\Add0~62COUT1_129\)) # (!counTime(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(11),
	cin => \Add0~87\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout => \Add0~72\);

-- Location: LC_X5_Y3_N0
\counTime[11]\ : maxii_lcell
-- Equation(s):
-- \Equal0~3\ = (counTime(9) & (!counTime(8) & (!counTime[11] & counTime(10))))
-- counTime(11) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(9),
	datab => counTime(8),
	datac => \Add0~70_combout\,
	datad => counTime(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => counTime(11));

-- Location: LC_X5_Y2_N5
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (counTime(12) $ ((!\Add0~72\)))
-- \Add0~47\ = CARRY(((counTime(12) & !\Add0~72\)))
-- \Add0~47COUT1_130\ = CARRY(((counTime(12) & !\Add0~72\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(12),
	cin => \Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_130\);

-- Location: LC_X5_Y3_N8
\counTime[12]\ : maxii_lcell
-- Equation(s):
-- counTime(12) = DFFEAS((\Add0~45_combout\ & (((!\Equal0~5\) # (!\Equal0~4_combout\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~6\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5\,
	datad => \Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(12));

-- Location: LC_X5_Y2_N6
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = counTime(13) $ (((((!\Add0~72\ & \Add0~47\) # (\Add0~72\ & \Add0~47COUT1_130\)))))
-- \Add0~57\ = CARRY(((!\Add0~47\)) # (!counTime(13)))
-- \Add0~57COUT1_131\ = CARRY(((!\Add0~47COUT1_130\)) # (!counTime(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(13),
	cin => \Add0~72\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_131\);

-- Location: LC_X5_Y3_N7
\counTime[13]\ : maxii_lcell
-- Equation(s):
-- counTime(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(13));

-- Location: LC_X5_Y2_N7
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = counTime(14) $ ((((!(!\Add0~72\ & \Add0~57\) # (\Add0~72\ & \Add0~57COUT1_131\)))))
-- \Add0~52\ = CARRY((counTime(14) & ((!\Add0~57\))))
-- \Add0~52COUT1_132\ = CARRY((counTime(14) & ((!\Add0~57COUT1_131\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(14),
	cin => \Add0~72\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_132\);

-- Location: LC_X5_Y3_N3
\counTime[14]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (counTime(15) & (!counTime(13) & (!counTime[14] & counTime(12))))
-- counTime(14) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(15),
	datab => counTime(13),
	datac => \Add0~50_combout\,
	datad => counTime(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => counTime(14));

-- Location: LC_X5_Y2_N8
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (counTime(15) $ (((!\Add0~72\ & \Add0~52\) # (\Add0~72\ & \Add0~52COUT1_132\))))
-- \Add0~42\ = CARRY(((!\Add0~52\) # (!counTime(15))))
-- \Add0~42COUT1_133\ = CARRY(((!\Add0~52COUT1_132\) # (!counTime(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(15),
	cin => \Add0~72\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_133\);

-- Location: LC_X5_Y3_N4
\counTime[15]\ : maxii_lcell
-- Equation(s):
-- counTime(15) = DFFEAS((\Add0~40_combout\ & (((!\Equal0~5\) # (!\Equal0~4_combout\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~6\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5\,
	datad => \Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(15));

-- Location: LC_X5_Y2_N9
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = counTime(16) $ ((((!(!\Add0~72\ & \Add0~42\) # (\Add0~72\ & \Add0~42COUT1_133\)))))
-- \Add0~37\ = CARRY((counTime(16) & ((!\Add0~42COUT1_133\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(16),
	cin => \Add0~72\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X6_Y2_N7
\counTime[16]\ : maxii_lcell
-- Equation(s):
-- counTime(16) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(16));

-- Location: LC_X6_Y2_N0
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (counTime(17) $ ((\Add0~37\)))
-- \Add0~32\ = CARRY(((!\Add0~37\) # (!counTime(17))))
-- \Add0~32COUT1_134\ = CARRY(((!\Add0~37\) # (!counTime(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(17),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_134\);

-- Location: LC_X7_Y2_N8
\counTime[17]\ : maxii_lcell
-- Equation(s):
-- counTime(17) = DFFEAS((((\Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(17));

-- Location: LC_X6_Y2_N1
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (counTime(18) $ ((!(!\Add0~37\ & \Add0~32\) # (\Add0~37\ & \Add0~32COUT1_134\))))
-- \Add0~27\ = CARRY(((counTime(18) & !\Add0~32\)))
-- \Add0~27COUT1_135\ = CARRY(((counTime(18) & !\Add0~32COUT1_134\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(18),
	cin => \Add0~37\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_135\);

-- Location: LC_X7_Y2_N2
\counTime[18]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (!counTime(17) & (!counTime(16) & (!counTime[18] & counTime(19))))
-- counTime(18) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(17),
	datab => counTime(16),
	datac => \Add0~25_combout\,
	datad => counTime(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => counTime(18));

-- Location: LC_X6_Y2_N2
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (counTime(19) $ (((!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_135\))))
-- \Add0~22\ = CARRY(((!\Add0~27\) # (!counTime(19))))
-- \Add0~22COUT1_136\ = CARRY(((!\Add0~27COUT1_135\) # (!counTime(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(19),
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_136\);

-- Location: LC_X6_Y2_N9
\counTime[19]\ : maxii_lcell
-- Equation(s):
-- counTime(19) = DFFEAS((\Add0~20_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~6\,
	datab => \Add0~20_combout\,
	datac => \Equal0~5\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(19));

-- Location: LC_X6_Y2_N3
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = counTime(20) $ ((((!(!\Add0~37\ & \Add0~22\) # (\Add0~37\ & \Add0~22COUT1_136\)))))
-- \Add0~7\ = CARRY((counTime(20) & ((!\Add0~22\))))
-- \Add0~7COUT1_137\ = CARRY((counTime(20) & ((!\Add0~22COUT1_136\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(20),
	cin => \Add0~37\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_137\);

-- Location: LC_X6_Y2_N8
\counTime[20]\ : maxii_lcell
-- Equation(s):
-- counTime(20) = DFFEAS((\Add0~5_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~5_combout\,
	datab => \Equal0~6\,
	datac => \Equal0~5\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(20));

-- Location: LC_X6_Y2_N4
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (counTime(21) $ (((!\Add0~37\ & \Add0~7\) # (\Add0~37\ & \Add0~7COUT1_137\))))
-- \Add0~17\ = CARRY(((!\Add0~7COUT1_137\) # (!counTime(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(21),
	cin => \Add0~37\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X7_Y2_N4
\counTime[21]\ : maxii_lcell
-- Equation(s):
-- counTime(21) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(21));

-- Location: LC_X6_Y2_N5
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = counTime(22) $ ((((!\Add0~17\))))
-- \Add0~12\ = CARRY((counTime(22) & ((!\Add0~17\))))
-- \Add0~12COUT1_138\ = CARRY((counTime(22) & ((!\Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counTime(22),
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_138\);

-- Location: LC_X6_Y3_N9
\counTime[22]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (counTime(23) & (counTime(20) & (!counTime[22] & !counTime(21))))
-- counTime(22) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => counTime(23),
	datab => counTime(20),
	datac => \Add0~10_combout\,
	datad => counTime(21),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => counTime(22));

-- Location: LC_X6_Y2_N6
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (((!\Add0~17\ & \Add0~12\) # (\Add0~17\ & \Add0~12COUT1_138\) $ (counTime(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => counTime(23),
	cin => \Add0~17\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X6_Y3_N8
\counTime[23]\ : maxii_lcell
-- Equation(s):
-- counTime(23) = DFFEAS((\Add0~0_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6\)) # (!\Equal0~5\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5\,
	datab => \Equal0~6\,
	datac => \Equal0~4_combout\,
	datad => \Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(23));

-- Location: LC_X5_Y3_N9
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2\ & (\Equal0~3\ & (\Equal0~0\ & \Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2\,
	datab => \Equal0~3\,
	datac => \Equal0~0\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X5_Y3_N5
\counTime[7]\ : maxii_lcell
-- Equation(s):
-- counTime(7) = DFFEAS((\Add0~80_combout\ & (((!\Equal0~5\) # (!\Equal0~4_combout\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~6\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5\,
	datad => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(7));

-- Location: LC_X3_Y2_N7
\counTime[0]\ : maxii_lcell
-- Equation(s):
-- counTime(0) = DFFEAS((\Add0~115_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5\)) # (!\Equal0~6\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~115_combout\,
	datab => \Equal0~6\,
	datac => \Equal0~5\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(0));

-- Location: LC_X4_Y2_N4
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = (counTime(1) $ ((\Add0~117\)))
-- \Add0~112\ = CARRY(((!\Add0~117COUT1_121\) # (!counTime(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counTime(1),
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout => \Add0~112\);

-- Location: LC_X3_Y2_N6
\counTime[1]\ : maxii_lcell
-- Equation(s):
-- counTime(1) = DFFEAS((((\Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(1));

-- Location: LC_X3_Y2_N5
\counTime[2]\ : maxii_lcell
-- Equation(s):
-- counTime(2) = DFFEAS((((\Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counTime(2));

-- Location: LC_X4_Y3_N2
clkint : maxii_lcell
-- Equation(s):
-- \clkint~regout\ = DFFEAS(\clkint~regout\ $ (((\Equal0~6\ & (\Equal0~4_combout\ & \Equal0~5\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \clkint~regout\,
	datab => \Equal0~6\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~5\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clkint~regout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: LC_X5_Y4_N1
\state.s7\ : maxii_lcell
-- Equation(s):
-- \state.s7~regout\ = DFFEAS((\x~combout\(0) & ((\x~combout\(1) & ((\state.s6~regout\))) # (!\x~combout\(1) & (\state.s7~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \x~combout\(1),
	datac => \state.s7~regout\,
	datad => \state.s6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s7~regout\);

-- Location: LC_X4_Y4_N7
\state.s8\ : maxii_lcell
-- Equation(s):
-- \state.s8~regout\ = DFFEAS((\x~combout\(0) & ((\x~combout\(1) & ((\state.s7~regout\))) # (!\x~combout\(1) & (\state.s8~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \state.s8~regout\,
	datac => \x~combout\(1),
	datad => \state.s7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s8~regout\);

-- Location: LC_X5_Y4_N9
\state.s9\ : maxii_lcell
-- Equation(s):
-- \state.s9~regout\ = DFFEAS((\x~combout\(0) & ((\x~combout\(1) & ((\state.s8~regout\))) # (!\x~combout\(1) & (\state.s9~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \x~combout\(1),
	datac => \state.s9~regout\,
	datad => \state.s8~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s9~regout\);

-- Location: LC_X5_Y4_N0
\state.s10\ : maxii_lcell
-- Equation(s):
-- \state.s10~regout\ = DFFEAS((\x~combout\(0) & ((\x~combout\(1) & (\state.s9~regout\)) # (!\x~combout\(1) & ((\state.s10~regout\))))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \state.s9~regout\,
	datac => \state.s10~regout\,
	datad => \x~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s10~regout\);

-- Location: LC_X5_Y4_N3
\state.s11\ : maxii_lcell
-- Equation(s):
-- \state.s11~regout\ = DFFEAS((\x~combout\(0) & ((\x~combout\(1) & (\state.s10~regout\)) # (!\x~combout\(1) & ((\state.s11~regout\))))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \state.s10~regout\,
	datac => \state.s11~regout\,
	datad => \x~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s11~regout\);

-- Location: LC_X4_Y4_N9
\state.s2\ : maxii_lcell
-- Equation(s):
-- \state.s2~regout\ = DFFEAS((!\x~combout\(1) & ((\x~combout\(0) & ((\state.s2~regout\))) # (!\x~combout\(0) & (\state.s1~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \state.s1~regout\,
	datab => \x~combout\(0),
	datac => \x~combout\(1),
	datad => \state.s2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s2~regout\);

-- Location: LC_X4_Y4_N5
\state.s3\ : maxii_lcell
-- Equation(s):
-- \state.s3~regout\ = DFFEAS((!\x~combout\(1) & ((\x~combout\(0) & (\state.s3~regout\)) # (!\x~combout\(0) & ((\state.s2~regout\))))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \state.s3~regout\,
	datab => \x~combout\(0),
	datac => \x~combout\(1),
	datad => \state.s2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s3~regout\);

-- Location: LC_X4_Y4_N8
\state.s4\ : maxii_lcell
-- Equation(s):
-- \state.s4~regout\ = DFFEAS((!\x~combout\(1) & ((\x~combout\(0) & (\state.s4~regout\)) # (!\x~combout\(0) & ((\state.s3~regout\))))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \state.s4~regout\,
	datab => \x~combout\(1),
	datac => \state.s3~regout\,
	datad => \x~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s4~regout\);

-- Location: LC_X5_Y4_N4
\Selector5~0\ : maxii_lcell
-- Equation(s):
-- \Selector5~0_combout\ = (\state.s11~regout\) # (((\state.s4~regout\) # (!\Selector0~0_combout\)) # (!\state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.s11~regout\,
	datab => \state.s0~regout\,
	datac => \state.s4~regout\,
	datad => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~0_combout\);

-- Location: LC_X5_Y4_N5
\state.s5\ : maxii_lcell
-- Equation(s):
-- \state.s5~regout\ = DFFEAS((\x~combout\(0) & ((\x~combout\(1) & ((\Selector5~0_combout\))) # (!\x~combout\(1) & (\state.s5~regout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \x~combout\(1),
	datac => \state.s5~regout\,
	datad => \Selector5~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s5~regout\);

-- Location: LC_X5_Y4_N6
\state.s6\ : maxii_lcell
-- Equation(s):
-- \state.s6~regout\ = DFFEAS((\x~combout\(0) & ((\x~combout\(1) & (\state.s5~regout\)) # (!\x~combout\(1) & ((\state.s6~regout\))))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \x~combout\(1),
	datac => \state.s5~regout\,
	datad => \state.s6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s6~regout\);

-- Location: LC_X5_Y4_N2
\WideOr12~0\ : maxii_lcell
-- Equation(s):
-- \WideOr12~0_combout\ = ((!\state.s10~regout\ & (!\state.s5~regout\ & !\state.s11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.s10~regout\,
	datac => \state.s5~regout\,
	datad => \state.s11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr12~0_combout\);

-- Location: LC_X4_Y4_N4
\Selector0~1\ : maxii_lcell
-- Equation(s):
-- \Selector0~1_combout\ = (\x~combout\(1) & (((\state.s3~regout\) # (!\Selector0~0_combout\)) # (!\state.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(1),
	datab => \state.s0~regout\,
	datac => \state.s3~regout\,
	datad => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~1_combout\);

-- Location: LC_X4_Y4_N0
\WideOr13~0\ : maxii_lcell
-- Equation(s):
-- \WideOr13~0_combout\ = (!\state.s4~regout\ & (!\state.s8~regout\ & (!\state.s9~regout\ & !\state.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.s4~regout\,
	datab => \state.s8~regout\,
	datac => \state.s9~regout\,
	datad => \state.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr13~0_combout\);

-- Location: LC_X4_Y4_N1
\Selector0~2\ : maxii_lcell
-- Equation(s):
-- \Selector0~2_combout\ = (\state.s6~regout\) # (((\Selector0~1_combout\) # (!\WideOr13~0_combout\)) # (!\WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.s6~regout\,
	datab => \WideOr12~0_combout\,
	datac => \Selector0~1_combout\,
	datad => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~2_combout\);

-- Location: LC_X4_Y4_N2
\state.s0\ : maxii_lcell
-- Equation(s):
-- \state.s0~regout\ = DFFEAS((\x~combout\(0) & ((\state.s0~regout\) # ((\x~combout\(1))))) # (!\x~combout\(0) & (((!\Selector0~2_combout\)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8fd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \state.s0~regout\,
	datac => \x~combout\(1),
	datad => \Selector0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s0~regout\);

-- Location: LC_X5_Y4_N7
\Selector1~0\ : maxii_lcell
-- Equation(s):
-- \Selector1~0_combout\ = (\x~combout\(0) & ((\x~combout\(1) & ((\state.s3~regout\))) # (!\x~combout\(1) & (\state.s1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(0),
	datab => \x~combout\(1),
	datac => \state.s1~regout\,
	datad => \state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0_combout\);

-- Location: LC_X4_Y4_N6
\state.s1\ : maxii_lcell
-- Equation(s):
-- \state.s1~regout\ = DFFEAS((\Selector1~0_combout\) # ((!\x~combout\(0) & (!\state.s0~regout\ & !\x~combout\(1)))), GLOBAL(\clkint~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff01",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkint~regout\,
	dataa => \x~combout\(0),
	datab => \state.s0~regout\,
	datac => \x~combout\(1),
	datad => \Selector1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.s1~regout\);

-- Location: LC_X4_Y4_N3
\Selector0~0\ : maxii_lcell
-- Equation(s):
-- \Selector0~0_combout\ = (((!\state.s1~regout\ & !\state.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \state.s1~regout\,
	datad => \state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X6_Y4_N4
WideOr14 : maxii_lcell
-- Equation(s):
-- \WideOr14~combout\ = ((\state.s9~regout\) # ((\state.s11~regout\) # (\state.s5~regout\))) # (!\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.s9~regout\,
	datac => \state.s11~regout\,
	datad => \state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr14~combout\);

-- Location: LC_X3_Y4_N1
WideOr13 : maxii_lcell
-- Equation(s):
-- \WideOr13~combout\ = (((\state.s2~regout\) # (!\state.s0~regout\))) # (!\WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~0_combout\,
	datac => \state.s2~regout\,
	datad => \state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr13~combout\);

-- Location: LC_X6_Y4_N8
WideOr11 : maxii_lcell
-- Equation(s):
-- \WideOr11~combout\ = (\state.s10~regout\) # (((\state.s11~regout\) # (\state.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.s10~regout\,
	datac => \state.s11~regout\,
	datad => \state.s7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr11~combout\);

-- Location: LC_X6_Y4_N5
\Mux13~0\ : maxii_lcell
-- Equation(s):
-- \Mux13~0_combout\ = (!\WideOr14~combout\ & (((!\WideOr13~combout\ & !\WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datac => \WideOr13~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0_combout\);

-- Location: LC_X5_Y4_N8
WideOr12 : maxii_lcell
-- Equation(s):
-- \WideOr12~combout\ = (\state.s3~regout\) # (((!\WideOr12~0_combout\)) # (!\state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.s3~regout\,
	datab => \state.s0~regout\,
	datad => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr12~combout\);

-- Location: LC_X6_Y4_N2
\Mux12~0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0_combout\ = (!\WideOr14~combout\ & (\WideOr12~combout\ & (\WideOr13~combout\ & !\WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datab => \WideOr12~combout\,
	datac => \WideOr13~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

-- Location: LC_X3_Y4_N7
\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = (\WideOr11~combout\ & ((\WideOr14~combout\ & ((\WideOr13~combout\) # (!\WideOr12~combout\))) # (!\WideOr14~combout\ & (!\WideOr13~combout\)))) # (!\WideOr11~combout\ & ((\WideOr13~combout\ $ (\WideOr12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datab => \WideOr13~combout\,
	datac => \WideOr12~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: LC_X3_Y4_N9
\Mux12~1\ : maxii_lcell
-- Equation(s):
-- \Mux12~1_combout\ = (!\WideOr14~combout\ & (((\WideOr12~combout\ & \WideOr13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datac => \WideOr12~combout\,
	datad => \WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~1_combout\);

-- Location: LC_X3_Y4_N5
\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (\WideOr14~combout\ & (\WideOr12~combout\ $ (((!\WideOr13~combout\ & !\WideOr11~combout\))))) # (!\WideOr14~combout\ & ((\WideOr11~combout\ & (\WideOr13~combout\)) # (!\WideOr11~combout\ & ((\WideOr12~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datab => \WideOr13~combout\,
	datac => \WideOr12~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X3_Y4_N6
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\WideOr13~combout\ & (\WideOr12~combout\ & ((\WideOr11~combout\) # (!\WideOr14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datab => \WideOr13~combout\,
	datac => \WideOr12~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X3_Y4_N2
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\WideOr14~combout\) # (\WideOr12~combout\ $ (((\WideOr13~combout\ & !\WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fabe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datab => \WideOr13~combout\,
	datac => \WideOr12~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X3_Y4_N3
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\WideOr14~combout\ & (\WideOr12~combout\ $ (((!\WideOr13~combout\ & !\WideOr11~combout\))))) # (!\WideOr14~combout\ & (\WideOr13~combout\ & (\WideOr12~combout\ $ (!\WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e086",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datab => \WideOr13~combout\,
	datac => \WideOr12~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X3_Y4_N8
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = ((\WideOr14~combout\) # (\WideOr13~combout\ $ (\WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \WideOr13~combout\,
	datac => \WideOr14~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X6_Y4_N6
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\WideOr14~combout\ & ((\WideOr11~combout\) # (\WideOr12~combout\ $ (!\WideOr13~combout\)))) # (!\WideOr14~combout\ & ((\WideOr12~combout\ & ((\WideOr13~combout\) # (!\WideOr11~combout\))) # (!\WideOr12~combout\ & (\WideOr13~combout\ $ 
-- (\WideOr11~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ebd6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datab => \WideOr12~combout\,
	datac => \WideOr13~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X3_Y4_N4
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (!\WideOr14~combout\ & (((!\WideOr12~combout\ & \WideOr13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datac => \WideOr12~combout\,
	datad => \WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X3_Y4_N0
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\WideOr14~combout\ & (((!\WideOr13~combout\ & \WideOr12~combout\)) # (!\WideOr11~combout\))) # (!\WideOr14~combout\ & (\WideOr13~combout\ $ ((\WideOr12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34be",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr14~combout\,
	datab => \WideOr13~combout\,
	datac => \WideOr12~combout\,
	datad => \WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(0));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux13~0_combout\,
	oe => VCC,
	padio => ww_salida(2));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux12~0_combout\,
	oe => VCC,
	padio => ww_salida(3));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux11~0_combout\,
	oe => VCC,
	padio => ww_salida(4));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(5));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux12~1_combout\,
	oe => VCC,
	padio => ww_salida(6));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~0_combout\,
	oe => VCC,
	padio => ww_salida(7));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_salida(8));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	oe => VCC,
	padio => ww_salida(9));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	oe => VCC,
	padio => ww_salida(10));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~0_combout\,
	oe => VCC,
	padio => ww_salida(11));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_salida(12));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_salida(13));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_salida(14));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	oe => VCC,
	padio => ww_salida(15));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\salida[16]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	oe => VCC,
	padio => ww_salida(16));
END structure;


