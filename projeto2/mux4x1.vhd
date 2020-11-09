------------------------------------------------
-- Design: mux4x1 16bits
-- Entity: mux4x1
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 11/08/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY mux4x1 IS
       PORT (
              i_sel : IN std_logic_Vector(1 DOWNTO 0); -- selector
              i_A : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_B : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_C : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_D : IN std_logic_Vector(15 DOWNTO 0); -- data input
              o_Q : OUT std_logic_Vector(15 DOWNTO 0); -- data output
				  o_A : OUT std_logic;
				  o_B : OUT std_logic;
				  o_C : OUT std_logic;
				  o_D : OUT std_logic);
END mux4x1;

ARCHITECTURE arch_1 OF mux4x1 IS       
BEGIN
  o_Q <= i_A WHEN (i_sel = "00") ELSE
         i_B WHEN (i_sel = "01") ELSE
         i_C WHEN (i_sel = "10") ELSE
         i_D;
	
  o_A <= '1' WHEN (i_sel = "00") ELSE	'0';
  o_B <= '1' WHEN (i_sel = "01") ELSE	'0';
  o_C <= '1' WHEN (i_sel = "10") ELSE	'0';
  o_D <= '1' WHEN (i_sel = "11") ELSE	'0';
END arch_1;