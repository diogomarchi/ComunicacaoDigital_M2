------------------------------------------------
-- Design: TMR
-- Entity: TMR
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 11/05/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity TMR is
port ( 
       i_A   : in  std_logic_vector(15 downto 0);  -- data input
       i_B   : in  std_logic_vector(15 downto 0);  -- data input
       i_C   : in  std_logic_vector(15 downto 0);  -- data input
       o_A   : out std_logic_vector(15 downto 0));  -- data output
end TMR;


architecture arch_1 of TMR is
         
begin                            
  process(i_A, i_B, i_C) is
    begin
      for i in 0 to 15 loop
        if(i_A(i) = i_B(i)) then
            o_A(i)  <= i_A(i);
        elsif(i_A(i) = i_C(i))then
            o_A(i)  <= i_A(i);
        else
            o_A(i)  <= i_B(i); 
        end if;
      end loop;
  end process;
  
end arch_1;
