##Clock signal
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports src_clk]
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5 [get_ports { src_clk }];



##Switches
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports reset]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports start]


##LEDs
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {q[0]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports {q[1]}]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports {q[2]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {q[3]}]

