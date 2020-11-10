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

architecture arch_1 of TDM_tb is

-- DUT component
component TDM_top is
	PORT (
		i_CLK   : IN std_logic; -- input clock		
		i_FRAME1 : IN std_logic_vector(15 DOWNTO 0); -- input frame1
		i_FRAME2 : IN std_logic_vector(15 DOWNTO 0); -- input fram2
		i_FRAME3 : IN std_logic_vector(15 DOWNTO 0); -- input frame3
		i_FRAME4 : IN std_logic_vector(15 DOWNTO 0); -- input frame4
		i_TIME   : in std_logic_vector(15 downto 0);   -- input time divisor
		o_FRAME  : OUT std_logic_vector(15 DOWNTO 0);  -- output frame
		o_A : OUT std_logic;
		o_B : OUT std_logic;
		o_C : OUT std_logic;
		o_D : OUT std_logic	
	);
END component;

signal w_CLK, w_CLR_n, w_o_A, w_o_B, w_o_C, w_o_D : std_logic;
signal w_i_A, w_i_B, w_i_C, w_i_D, w_o_FRAME, w_i_TIME: std_logic_vector(15 downto 0);


constant c_CLK_PERIOD : time := 2 ns;

begin
  -- Connect DUT
  u_DUT: TDM_top port map(
            i_CLK => w_CLK,
            i_TIME   => w_i_TIME,
            i_FRAME1 => w_i_A,
            i_FRAME2 => w_i_B,
            i_FRAME3 => w_i_C,
            i_FRAME4 => w_i_D,
            o_FRAME  => w_o_FRAME,
            o_A => w_o_A,
            o_B => w_o_B,
            o_C => w_o_C,
            o_D => w_o_D);

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
    assert(w_o_FRAME="0000000000001111") report "Fail @ 000" severity error;
    wait  for  8*c_CLK_PERIOD;

    wait  for 2*c_CLK_PERIOD;
    assert(w_o_FRAME="0000000011110000") report "Fail @ 001" severity error;
    wait for 8*c_CLK_PERIOD;

    wait  for 2*c_CLK_PERIOD;
    assert(w_o_FRAME="0000111100000000") report "Fail @ 002" severity error;
    wait for 8*c_CLK_PERIOD;

    wait  for 2*c_CLK_PERIOD;
    assert(w_o_FRAME="1111000000000000") report "Fail @ 003" severity error;
    wait for 8*c_CLK_PERIOD;
    
    wait  for 2*c_CLK_PERIOD;
    assert(w_o_FRAME="0000000000001111") report "Fail @ 004" severity error;
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