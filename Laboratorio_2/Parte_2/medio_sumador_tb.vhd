library ieee;
use ieee.std_logic_1164.all; 

entity medio_sumador_tb is
end medio_sumador_tb;

architecture test of medio_sumador_tb is

    component medio_sumador is
        port (
            x, y: in std_logic;
            sum, cout: out std_logic
        );
    end component;

    signal x_in, y_in, sum_out, cout_out: std_logic;

begin

    DUT: medio_sumador port map (
        x => x_in,
        y => y_in,
        sum => sum_out,
        cout => cout_out
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: x=0, y=0
        x_in <= '0';
        y_in <= '0';
        wait for 10 ns;
        assert sum_out = '0' and cout_out = '0'
            report "Test case 1 failed" severity error;

        -- Test case 2: x=0, y=1
        x_in <= '0';
        y_in <= '1';
        wait for 10 ns;
        assert sum_out = '1' and cout_out = '0'
            report "Test case 2 failed" severity error;

        -- Test case 3: x=1, y=0
        x_in <= '1';
        y_in <= '0';
        wait for 10 ns;
        assert sum_out = '1' and cout_out = '0'
            report "Test case 3 failed" severity error;

        -- Test case 4: x=1, y=1
        x_in <= '1';
        y_in <= '1';
        wait for 10 ns;
        assert sum_out = '0' and cout_out = '1'
            report "Test case 4 failed" severity error;

        wait;
    end process;

end test;