
set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period "407Mhz" -waveform { 0.000 5.000 } [get_ports *]

derive_pll_clocks
derive_clock_uncertainty

#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay  -min -clock [get_clocks {clk}]  -6.000 [get_ports {A[0]}]
set_input_delay  -min -clock [get_clocks {clk}]  -6.000 [get_ports {A[1]}]
set_input_delay  -min -clock [get_clocks {clk}]  -6.000 [get_ports {B[0]}]
set_input_delay  -min -clock [get_clocks {clk}]  -6.000 [get_ports {B[1]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay  -max -clock [get_clocks {clk}]  3.000 [get_ports {finalOut_ALU[0]}]
set_output_delay  -max -clock [get_clocks {clk}]  3.000 [get_ports {finalOut_ALU[1]}]



set_false_path -from [get_ports clk]

set_clock_groups -asynchronous -group [get_clocks *] 