------------------------------------------------
-- Design: mux_e_demux
-- Entity: tb_mux_e_demux
-- Author: Diogo
-- Rev.  : 1.0
-- Date  : 03/24/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
 
entity TDM_tb is
-- empty
end TDM_tb; 

architecture arch_1 of tdm_tb is

-- DUT component
component tdm is
       PORT (
              i_CLK : IN std_logic; -- selector
	      -- TEMPO MAXIMO PARA CADA CANAL
              i_MAX_TIME : in std_logic_vector(15 DOWNTO 0); 				  
	      i_A : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_B : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_C : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_D : IN std_logic_Vector(15 DOWNTO 0); -- data input
              o_Q : OUT std_logic_Vector(15 DOWNTO 0)); -- data output
END component;

signal w_CLK : std_logic;
signal w_i_A, w_i_B, w_i_C, w_i_D, w_o_A, w_i_TIME: std_logic_vector(15 downto 0);
constant c_CLK_PERIOD : time := 2 ns;

begin
  -- Connect DUT
  u_DUT: tdm port map(
   	      i_CLK => w_CLK,
              i_MAX_TIME => w_i_TIME,
	      i_A => w_i_A,
              i_B => w_i_B,
              i_C => w_i_C,
              i_D => w_i_D,
              o_Q => w_o_A);
  p_CLK: process
  begin
  	w_CLK <= '1';
    wait for c_CLK_PERIOD/2;  
    w_CLK <= '0';
    wait for c_CLK_PERIOD/2;  
  end process p_CLK;
  
  p_INPUT: process
  begin

    -- Select input channel A
    w_i_A       <= "0000000000001111";
    w_i_B       <= "0000000011110000";
    w_i_C       <= "0000111100000000";
    w_i_D       <= "1111000000000000";
    w_i_TIME    <= "0000000000001010";

    wait  for 2*c_CLK_PERIOD;
    assert(w_o_A="0000000000001111") report "Fail @ 000" severity error;
    wait  for  8*c_CLK_PERIOD;

    wait  for 2*c_CLK_PERIOD;
    assert(w_o_A="0000000011110000") report "Fail @ 001" severity error;
    wait for 8*c_CLK_PERIOD;

    wait  for 2*c_CLK_PERIOD;
    assert(w_o_A="0000111100000000") report "Fail @ 002" severity error;
    wait for 8*c_CLK_PERIOD;

    wait  for 2*c_CLK_PERIOD;
    assert(w_o_A="1111000000000000") report "Fail @ 003" severity error;
    wait for 8*c_CLK_PERIOD;
    
    wait  for 2*c_CLK_PERIOD;
    assert(w_o_A="0000000000001111") report "Fail @ 004" severity error;
    wait for 8*c_CLK_PERIOD;
 



    
  

    -- Clear inputs
    w_i_A       <= "0000000000000000";
    w_i_B       <= "0000000000000000";
    w_i_C       <= "0000000000000000";
    w_i_D       <= "0000000000000000";
    w_i_TIME    <= "0000000000000000";
    assert false report "Test done." severity note;
    
    wait;
  end process;
end arch_1;