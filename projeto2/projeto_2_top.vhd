------------------------------------------------
-- Design: TDM_top
-- Entity: TDM_top 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 11/08/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY TDM_top IS
	PORT (
		i_CLK   : IN std_logic; -- input clock
		i_CLR_n : IN std_logic; -- input clear/reset
		i_FRAME1 : IN std_logic_vector(15 DOWNTO 0); -- input frame1
		i_FRAME2 : IN std_logic_vector(15 DOWNTO 0); -- input fram2
		i_FRAME3 : IN std_logic_vector(15 DOWNTO 0); -- input frame3
		i_FRAME4 : IN std_logic_vector(15 DOWNTO 0); -- input frame4
		i_TIME  : in std_logic_vector(7 downto 0);   -- input time divisor
		o_FRAME : OUT std_logic_vector(15 DOWNTO 0)  -- output frame
	);
END TDM_top;

ARCHITECTURE rtl OF TDM_top IS

	COMPONENT contador IS
	  PORT (
		 i_PC_CLR : IN std_logic; -- clear/reset
		 i_CLK    : IN std_logic; -- clock
		 i_TIME   : IN std_logic_vector(7 downto 0); -- enable 	 
		 o_SINAL  : out std_logic);
   END component;

	COMPONENT mux4x1 IS
	  PORT (
  	    i_SEL0 : IN std_logic; -- selector
		 i_SEL1 : IN std_logic; -- selector
		 i_A : IN std_logic_Vector(15 DOWNTO 0); -- data input
		 i_B : IN std_logic_Vector(15 DOWNTO 0); -- data input
		 i_C : IN std_logic_Vector(15 DOWNTO 0); -- data input
		 i_D : IN std_logic_Vector(15 DOWNTO 0); -- data input
		 o_Q : OUT std_logic_Vector(15 DOWNTO 0)); -- data output
	END component;

	COMPONENT ALU IS
		port ( 	 
       i_A     : in  std_logic;  -- data sinal
		 i_SEL0  : out  std_logic; -- data selector input
		 i_SEL1  : out  std_logic; -- data selector input
       o_SEL0  : out  std_logic; -- data selector output
		 o_SEL1  : out  std_logic); -- data selector output
   end component;



	SIGNAL w_SINAL, w_i_SEL0, w_i_SEL1, w_o_SEL0, w_o_SEL1 : std_logic;
BEGIN

	--connecting contador with ALU
	u_contador : contador PORT MAP(
		 i_PC_CLR => i_CLR_n,
		 i_CLK    => i_CLK,
		 i_TIME   => i_TIME, 
		 o_SINAL  => w_SINAL
	);

	--connecting instruction_register with processador_unidade_controle	 
	u_ALU : ALU PORT MAP(
		 i_A     => w_SINAL,
		 i_SEL0  => w_i_SEL0,
		 i_SEL1  => w_i_SEL1,
       o_SEL0  => w_o_SEL0,
		 o_SEL1  => w_o_SEL1
	);

	--connecting processador_bloco_controle with processador_unidade_controle									 
	u_mux4x1 :	mux4x1 PORT MAP(
		 i_SEL0 => w_o_SEL0,
		 i_SEL1 => w_o_SEL1,
		 i_A    => i_FRAME1,
		 i_B    => i_FRAME2,
		 i_C    => i_FRAME3,
		 i_D    => i_FRAME4,
		 o_Q    => o_FRAME
	);

END rtl;