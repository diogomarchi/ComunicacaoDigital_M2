LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY ALU IS
  PORT (	 
       i_A     : in  std_logic_vector(1 downto 0);  -- data sinal
       o_SEL0  : out  std_logic; -- data selector output
       o_SEL1  : out  std_logic); -- data selector output
  end ALU;
ARCHITECTURE rtl OF ALU IS
BEGIN
  o_SEL0 <= '0' when (i_A = "00") else
				'1' when (i_A = "01") else
				'0' when (i_A = "10") else
				'1';
  o_SEL1 <= '0' when (i_A = "00") else
				'0' when (i_A = "01") else
				'1' when (i_A = "10") else
				'1';

END rtl;