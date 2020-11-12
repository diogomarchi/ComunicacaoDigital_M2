------------------------------------------------
-- Design: TMR
-- Entity: TMR
-- Author: Diogo & George
-- Rev. : 1.0
-- Date : 11/05/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity TMR is
  port (
    i_CLK : in std_logic; -- clock
    i_CLR : in std_logic; -- clear
    i_A   : in std_logic_vector(15 downto 0); -- data input
    i_B   : in std_logic_vector(15 downto 0); -- data input
    i_C   : in std_logic_vector(15 downto 0); -- data input
    o_A   : out std_logic_vector(15 downto 0)); -- data output
end TMR;

architecture arch_1 of TMR is

  signal r_A, r_B, r_c : std_logic_vector(15 downto 0);
  signal r_o_A         : std_logic_vector(15 downto 0);
 
begin
  -- sincronismo para o circuito
  process (i_CLK, i_CLR) is
  begin
    if (i_CLR = '1') then
      r_A <= "0000000000000000";
      r_B <= "0000000000000000";
      r_c <= "0000000000000000"; 
    elsif (rising_edge(i_CLK)) then
      r_A <= i_A;
      r_B <= i_B;
      r_C <= i_C;
      o_A <= r_o_A;
    end if;
  end process;
 
  -- logica do votador
  process (i_CLR, r_A, r_B, r_C) is
    begin
      for i in 0 to 15 loop -- loop para percorrer os bits
        if (r_A(i) = r_B(i) or r_A(i) = r_C(i)) then 
          -- compara os bits do canal A e B
          r_o_A(i) <= r_A(i); -- se for igual atribui A como saida
        else -- se não
          r_o_A(i) <= r_B(i); -- atribui B como saida
        end if;
      end loop;
 
    end process;
 
end arch_1;