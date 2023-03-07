library ieee;
use ieee.std_logic_1164.all; 

entity bit4_sumador is
		port(
				A,B   : in std_logic_vector(3 downto 0);
				CIN   : in std_logic;
				SUM   : out std_logic_vector(3 downto 0);
				COUT  : out std_logic
				);
end entity bit4_sumador;

architecture bit4_sumador_logica of bit4_sumador is
	signal CARRY : std_logic_vector(3 downto 1);
	
	begin 
		BIT0 : entity work.completo_sumador
			port map(B(0),A(0),CIN,     SUM(0),CARRY(1));
		BIT1 : entity work.completo_sumador
			port map(B(1),A(1),CARRY(1),SUM(1),CARRY(2));
		BIT2 : entity work.completo_sumador
			port map(B(2),A(2),CARRY(2),SUM(2),CARRY(3)); 
		BIT3 : entity work.completo_sumador
			port map(B(3),A(3),CARRY(3),SUM(3),COUT); 
			
end bit4_sumador_logica;
