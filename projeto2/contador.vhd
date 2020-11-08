------------------------------------------------
-- Design: contador
-- Entity: contador
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 11/08/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY contador IS
  PORT (
    i_PC_CLR : IN std_logic; -- clear/reset
    i_CLK    : IN std_logic; -- clock
    i_TIME   : IN std_logic_vector(15 downto 0); -- time divisor 	 
	 o_SINAL  : out std_logic_vector(1 downto 0) -- output sinal
  );
END contador;
ARCHITECTURE rtl OF contador IS

  SIGNAL w_COUNTER : std_logic_vector(15 DOWNTO 0);
  SIGNAL w_SINAL   : std_logic_vector(1 downto 0);
BEGIN

  PROCESS (i_PC_CLR, i_CLK)
  BEGIN
    IF (i_PC_CLR = '1') THEN
      w_COUNTER <= "0000000000000000";
    ELSIF (rising_edge(i_CLK)) THEN
      IF (w_COUNTER < i_TIME) THEN
        w_COUNTER <= w_COUNTER + "1";
		else
		  w_COUNTER <= "0000000000000000";
		  w_SINAL   <= w_SINAL + "1";
      END IF;
    END IF;
  END PROCESS;
  o_SINAL <= w_SINAL;

END rtl;