------------------------------------------------
-- Design: TDM_top
-- Entity: TDM_top
-- Author: Diogo & George
-- Rev. : 1.0
-- Date : 11/08/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity TDM_top is
  port (
    i_CLK    : in std_logic; -- input clock 
    i_FRAME1 : in std_logic_vector(15 downto 0); -- input frame1
    i_FRAME2 : in std_logic_vector(15 downto 0); -- input fram2
    i_FRAME3 : in std_logic_vector(15 downto 0); -- input frame3
    i_FRAME4 : in std_logic_vector(15 downto 0); -- input frame4
    i_TIME   : in std_logic_vector(15 downto 0); -- input time divisor
    o_FRAME  : out std_logic_vector(15 downto 0); -- output frame
    o_A      : out std_logic;
    o_B      : out std_logic;
    o_C      : out std_logic;
    o_D      : out std_logic 
  );
end TDM_top;

architecture rtl of TDM_top is

  component contador is
    port (
      i_CLR      : in std_logic; -- clear/reset
      i_CLK      : in std_logic; -- clock 
      o_contador : out std_logic_vector(15 downto 0) -- contador de clock
    );
  end component;

  component mux4x1 is
    port (
      i_SEL : in std_logic_vector(1 downto 0); -- selector 
      i_A   : in std_logic_Vector(15 downto 0); -- data input
      i_B   : in std_logic_Vector(15 downto 0); -- data input
      i_C   : in std_logic_Vector(15 downto 0); -- data input
      i_D   : in std_logic_Vector(15 downto 0); -- data input
      o_Q   : out std_logic_Vector(15 downto 0); -- data output
      o_A   : out std_logic;
      o_B   : out std_logic;
      o_C   : out std_logic;
      o_D   : out std_logic
    );
  end component;

  component comparador is
    port (
      i_CLK       : in std_logic;
      i_TEMPO_MAx : in std_logic_vector(15 downto 0); -- valor max
      i_CONTADOR  : in std_logic_vector(15 downto 0); -- valor atual
      o_RESET_CNT : out std_logic;
      o_SEL       : out std_logic_vector(1 downto 0)); -- data selector output 
  end component;

  signal w_i_sel    : std_logic_vector(1 downto 0);
  signal w_contador : std_logic_vector(15 downto 0); 
  signal w_reset    : std_logic;
 
begin
  u_contador : contador
  port map(
    i_CLR      => w_reset, 
    i_CLK      => i_CLK, 
    o_contador => w_contador
  );

 
  u_comparador : comparador
  port map(
    i_CLK       => i_CLK, 
    i_TEMPO_MAx => i_TIME, 
    i_CONTADOR  => w_contador, 
    o_RESET_CNT => w_reset, 
    o_SEL       => w_i_sel
  );
 
  u_mux4x1 : mux4x1
  port map(
    i_SEL => w_i_sel, 
    i_A   => i_FRAME1, 
    i_B   => i_FRAME2, 
    i_C   => i_FRAME3, 
    i_D   => i_FRAME4, 
    o_Q   => o_FRAME, 
    o_A   => o_A, 
    o_B   => o_B, 
    o_C   => o_C, 
    o_D   => o_D 
  );

end rtl;