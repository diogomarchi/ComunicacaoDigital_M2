------------------------------------------------
-- Design: mux_e_demux
-- Entity: tb_mux_e_demux
-- Author: Diogo
-- Rev.  : 1.0
-- Date  : 03/24/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
 
entity TMR_tb is
-- empty
end TMR_tb; 

architecture arch_1 of TMR_tb is

-- DUT component
component TMR is
port ( 
       i_A   : in  std_logic_vector(15 downto 0);  -- data input
       i_B   : in  std_logic_vector(15 downto 0);  -- data input
       i_C   : in  std_logic_vector(15 downto 0);  -- data input
       o_A   : out std_logic_vector(15 downto 0));  -- data output
end component;

signal w_i_A, w_i_B, w_i_C, w_o_A: std_logic_vector(15 downto 0);
begin

  -- Connect DUT
  u_DUT: TMR port map(
    i_A     => w_i_A,
    i_B     => w_i_B,
    i_C     => w_i_C,
    o_A     => w_o_A);
  process
  begin

    -- Select input channel A
    w_i_A       <= "0000111100001111";
    w_i_B       <= "0000111100001111";
    w_i_C       <= "1111000011110000";
    wait  for 1 ns;
    assert(w_o_A="0000111100001111") report "Fail @ 000" severity error;
    wait  for 1 ns;

    w_i_A       <= "0000111100001111";
    w_i_B       <= "1111000011110000";
    w_i_C       <= "1111000011110000";
    wait  for 1 ns;
    assert(w_o_A="1111000011110000") report "Fail @ 001" severity error;

    w_i_A       <= "0000111100001111";
    w_i_B       <= "1011000011110000";
    w_i_C       <= "1110101010101010";
    wait  for 1 ns;
    assert(w_o_A="1010101010101010") report "Fail @ 001" severity error;

  

    -- Clear inputs
    w_i_A       <= "0000000000000000";
    w_i_B       <= "0000000000000000";
    w_i_C       <= "0000000000000000";
    assert false report "Test done." severity note;
    
    wait;
  end process;
end arch_1;