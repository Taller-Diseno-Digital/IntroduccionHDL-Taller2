library ieee;
use ieee.std_logic_1164.all; 

entity bit4_sumador_tb is
end bit4_sumador_tb;

architecture test of bit4_sumador_tb is

    signal A_IN, B_IN, SUM_OUT: std_logic_vector(3 downto 0);
	 signal COUT_OUT, CIN_IN   : std_logic;

begin

    BIT0 : entity work.bit4_sumador
			port map (
        A => A_IN,
        B => B_IN,
		  CIN => CIN_IN,
        SUM => SUM_OUT,
        COUT => COUT_OUT
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: A=1011, B=0011, CIN=0
		  CIN_IN <= '0';
        A_IN <= "1011";
        B_IN <= "0011";
        wait for 10 ns;
        assert SUM_OUT = "1110" and cout_out = '0'
            report "Test case 1 failed" severity error;

        -- Test case 2: A=1011, B=0111, CIN=1
        CIN_IN <= '1';
		  A_IN <= "1011";
        B_IN <= "0111";
        wait for 10 ns;
        assert SUM_OUT = "0011" and cout_out = '1'
            report "Test case 2 failed" severity error;

        -- Test case 3: A=1000, B=0101, CIN=0
        CIN_IN <= '0';
		  A_IN <= "1000";
        B_IN <= "0101";
        wait for 10 ns;
        assert SUM_OUT = "1101" and cout_out = '0'
            report "Test case 3 failed" severity error;

        -- Test case 4: A=1100, B=0011, CIN=1
        CIN_IN <= '1';
		  A_IN <= "1100";
        B_IN <= "0011";
        wait for 10 ns;
        assert SUM_OUT = "0000" and cout_out = '1'
            report "Test case 4 failed" severity error;

        wait;
    end process;

end test;