------------------------------------------------
-- Design: mux4x1 16bits
-- Entity: mux4x1
-- Author: Diogo & George
-- Rev. : 1.0
-- Date : 11/08/2020
------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity mux4x1 is
  port (
    i_sel : in std_logic_Vector(1 downto 0); -- selector
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
end mux4x1;

architecture arch_1 of mux4x1 is 
begin
  o_Q <= i_A when (i_sel = "00") else
         i_B when (i_sel = "01") else
         i_C when (i_sel = "10") else
         i_D;
 
  o_A <= '1' when (i_sel = "00") else '0';
  o_B <= '1' when (i_sel = "01") else '0';
  o_C <= '1' when (i_sel = "10") else '0';
  o_D <= '1' when (i_sel = "11") else '0';
end arch_1;