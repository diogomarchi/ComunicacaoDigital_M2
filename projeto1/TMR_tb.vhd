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
		 i_CLK : in  std_logic; -- clock 
		 i_CLR : in  std_logic; -- clear
       i_A   : in  std_logic_vector(15 downto 0);  -- data input
       i_B   : in  std_logic_vector(15 downto 0);  -- data input
       i_C   : in  std_logic_vector(15 downto 0);  -- data input
       o_A   : out std_logic_vector(15 downto 0));  -- data output
		 		 
end component;

signal w_CLK, w_CLR : std_logic;
signal w_i_A, w_i_B, w_i_C, w_o_A: std_logic_vector(15 downto 0);

constant c_CLK_PERIOD : time := 2 ns;

begin

  -- Connect DUT
  u_DUT: TMR port map(
    i_CLK   => w_CLK,
    i_CLR   => w_CLR,
    i_A     => w_i_A,
    i_B     => w_i_B,
    i_C     => w_i_C,
    o_A     => w_o_A);

  
  -- clock
  p_CLK: process
  begin
    w_CLK <= '1';
    wait for c_CLK_PERIOD/2;  
    w_CLK <= '0';
    wait for c_CLK_PERIOD/2;  
  end process p_CLK;
  
  -- reset
  p_CLR: process
  begin
    w_CLR <= '0';
    wait for c_CLK_PERIOD;  
    w_CLR <= '1';
    wait for c_CLK_PERIOD;  
    w_CLR <= '0';
    wait; -- for the end of simulation
  end process p_CLR;
  
  
  -- main process
  process
  begin
	 
	 -- wait for reset
	 w_i_A       <= "0000000000000000";
    w_i_B       <= "0000000000000000";
    w_i_C       <= "0000000000000000";
	 wait for 4*c_CLK_PERIOD;
	 
    -- canal A = B
    w_i_A       <= "0000111100001111";
    w_i_B       <= "0000111100001111";
    w_i_C       <= "1111000011110000";
    wait  for 2*c_CLK_PERIOD;
    assert(w_o_A="0000111100001111") report "Fail @ 000" severity error;
    
	 -- canal B = C
    w_i_A       <= "0000111100001111";
    w_i_B       <= "1111000011110000";
    w_i_C       <= "1111000011110000";
    wait  for 2*c_CLK_PERIOD;
    assert(w_o_A="1111000011110000") report "Fail @ 001" severity error;    
	 
	 -- teste para diferentes bits
    w_i_A       <= "0000111100001111";
    w_i_B       <= "1011000011110000";
    w_i_C       <= "1110101010101010";
    wait  for 2*c_CLK_PERIOD;
    assert(w_o_A="1010101010101010") report "Fail @ 001" severity error;    
  

    -- Clear inputs
    w_i_A       <= "0000000000000000";
    w_i_B       <= "0000000000000000";
    w_i_C       <= "0000000000000000";
    assert false report "Test done." severity note;
    
    wait;
  end process;
end arch_1;