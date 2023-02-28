library ieee;
use ieee.std_logic_1164.all; 

entity completo_sumador is
		port(
				x,y,z      : in std_logic;
				sum,cout   : out std_logic
				);
end entity completo_sumador;

architecture completo_sumador_logica of completo_sumador is
	signal med_sum     : std_logic;
	signal med_carry   : std_logic;
	signal total_carry : std_logic;
	
	component Med_Add is
        port(
				x,y      : in std_logic;
				sum,cout : out std_logic
				);
    end component;
	
	begin 
		MS1 : Med_Add port map(x,y,med_sum,med_carry);
		MS2 : Med_Add port map(med_sum,z,sum,total_carry);
		cout <= total_carry OR med_carry;
end completo_sumador_logica;

