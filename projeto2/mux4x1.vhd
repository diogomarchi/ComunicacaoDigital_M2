------------------------------------------------
-- Design: mux4x1 16bits
-- Entity: mux4x1
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 11/08/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux4x1 IS
       PORT (
              i_SEL0 : IN std_logic; -- selector
              i_SEL1 : IN std_logic; -- selector
              i_A : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_B : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_C : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_D : IN std_logic_Vector(15 DOWNTO 0); -- data input
              o_Q : OUT std_logic_Vector(15 DOWNTO 0)); -- data output
END mux4x1;

ARCHITECTURE arch_1 OF mux4x1 IS
       SIGNAL w_C : std_logic_vector(15 DOWNTO 0);
BEGIN
       o_Q <= i_A WHEN (i_SEL0 = '0' AND i_SEL1 = '0') ELSE
              i_B WHEN (i_SEL0 = '1' AND i_SEL1 = '0') ELSE
              i_C WHEN (i_SEL0 = '0' AND i_SEL1 = '1') ELSE
              i_D;

END arch_1;