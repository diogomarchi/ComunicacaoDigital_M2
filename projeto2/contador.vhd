------------------------------------------------
-- Design: contador
-- Entity: contador
-- Author: Diogo & George
-- Rev. : 1.0
-- Date : 11/08/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity contador is
  port (
    i_CLR      : in std_logic; -- clear/reset
    i_CLK      : in std_logic; -- clock 
    o_contador : out std_logic_vector(15 downto 0) -- time divisor 
  );
end contador;
architecture rtl of contador is

  signal w_COUNTER : std_logic_vector(15 downto 0) := "0000000000000000";
 
begin
  process (i_CLR, i_CLK)
  begin
    if (i_CLR = '1') then -- reset
      w_COUNTER <= "0000000000000000"; 
    elsif (rising_edge(i_CLK)) then -- clock
      w_COUNTER <= w_COUNTER + "1"; -- soma 1 
    end if;
  end process;
 
  o_contador <= w_COUNTER; -- conecta saida
end rtl;