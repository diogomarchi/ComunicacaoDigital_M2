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
    i_CLR : IN std_logic; -- clear/reset
    i_CLK    : IN std_logic; -- clock    
    o_contador: out std_logic_vector(15 downto 0) -- time divisor 	     
  );
END contador;
ARCHITECTURE rtl OF contador IS

  SIGNAL w_COUNTER : std_logic_vector(15 DOWNTO 0) := "0000000000000000";
  
BEGIN
  PROCESS (i_CLR, i_CLK)
  BEGIN
    IF (i_CLR = '1') THEN           -- reset
      w_COUNTER <= "0000000000000000";      
    ELSIF (rising_edge(i_CLK)) THEN    -- clock
      w_COUNTER <= w_COUNTER + "1";    -- soma 1    		      
    END IF;
  END PROCESS;
  
  o_contador <=w_COUNTER;              -- conecta saida


END rtl;