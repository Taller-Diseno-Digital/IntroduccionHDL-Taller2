library ieee;
use ieee.std_logic_1164.all; 

entity medio_sumador is
		port(
				x,y      : in std_logic;
				sum,cout : out std_logic
				);
end entity medio_sumador;

architecture medio_sumador_logica of medio_sumador is
	begin 
		sum  <= x XOR y;
		cout <= x AND y;
end medio_sumador_logica;

