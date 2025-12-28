set_property PACKAGE_PIN W5 [get_ports clk_100MHz]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_100MHz]
	
set_property PACKAGE_PIN V14 [get_ports {clk_1Hz}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {clk_1Hz}]