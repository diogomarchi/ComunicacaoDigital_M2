------------------------------------------------
-- Design: comparador
-- Entity: comparador
-- Author: Diogo & George
-- Rev. : 1.0
-- Date : 11/08/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity comparador is
  port (
    i_CLK       : in std_logic;
    i_TEMPO_MAx : in std_logic_vector(15 downto 0); -- valor max
    i_CONTADOR  : in std_logic_vector(15 downto 0); -- valor atual
    o_RESET_CNT : out std_logic;
  o_SEL       : out std_logic_vector(1 downto 0)); -- data selector output 
end comparador;
architecture rtl of comparador is
 
  signal w_sel : std_logic_vector(1 downto 0) := "00";

begin
  process (i_CLK)
  begin
    if (rising_edge(i_CLK)) then
      if (i_CONTADOR = (i_TEMPO_MAx - '1')) then -- soma um ao atingir limite
        w_sel <= w_sel + "1"; 
      end if;
    end if;
  end process;
  o_RESET_CNT <= '1' when (i_TEMPO_MAx = i_CONTADOR) else '0'; 
  o_SEL       <= w_sel; -- SELECTOR
 
end rtl;