-- TOP ENTITY

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY fdm IS
       PORT (
              i_CLK : IN std_logic; -- selector
				  -- TEMPO MAXIMO PARA CADA CANAL
              i_MAX_TIME : in std_logic_vector(15 DOWNTO 0); 
				  
				  i_A : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_B : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_C : IN std_logic_Vector(15 DOWNTO 0); -- data input
              i_D : IN std_logic_Vector(15 DOWNTO 0); -- data input
              o_Q : OUT std_logic_Vector(15 DOWNTO 0)); -- data output
END fdm;

ARCHITECTURE arch_1 OF fdm IS
       -- contador
       SIGNAL w_C : std_logic_vector(15 DOWNTO 0);
		 
		 -- seletor de canal
		 SIGNAL w_SEL : std_logic_vector(1 DOWNTO 0);
		 
		 
BEGIN
	
  -- realiza a contagem de clock 
  PROCESS (i_CLK)
  BEGIN
    IF (rising_edge(i_CLK)) THEN   -- na subida de clock
      w_C <= w_C + "1";            -- incrementa contador
		
		IF (w_C = i_MAX_TIME) THEN     -- se contador = valor maximo
        w_SEL <= w_SEL + "1";        -- novo canal
        w_C <= "0000000000000000";
      END IF;
		
    END IF;
  END PROCESS;
  
  -- realiza seleção entre canais de entrada
  PROCESS (w_SEL)
  BEGIN
    CASE w_SEL IS               -- MUX 4x1
      WHEN "00" =>   o_Q <= i_A;
      WHEN "01" =>   o_Q <= i_B;
      WHEN "10" =>   o_Q <= i_C;
      WHEN OTHERS => o_Q <= i_D;
    END CASE;	 
  END PROCESS;
  
END arch_1;