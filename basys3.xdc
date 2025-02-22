## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

set_property IOSTANDARD LVCMOS33 [get_ports *]


## Clock signal
set_property PACKAGE_PIN W5 [get_ports clock]

# BTN3 -  can be used as manual clock instead
#set_property PACKAGE_PIN C16 [get_ports clock]

create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clock]


##Buttons
# btnR proposed as reset
#set_property PACKAGE_PIN T17 [get_ports btnR]
set_property PACKAGE_PIN T17 [get_ports reset]

##7 segment display
set_property PACKAGE_PIN W7 [get_ports {io_display_seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {io_display_seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {io_display_seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {io_display_seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {io_display_seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {io_display_seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {io_display_seg[6]}]
set_property PACKAGE_PIN V7 [get_ports io_display_dp]
set_property PACKAGE_PIN U2 [get_ports {io_display_an[0]}]
set_property PACKAGE_PIN U4 [get_ports {io_display_an[1]}]
set_property PACKAGE_PIN V4 [get_ports {io_display_an[2]}]
set_property PACKAGE_PIN W4 [get_ports {io_display_an[3]}]

# Switches
set_property PACKAGE_PIN V17 [get_ports {io_sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {io_sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {io_sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {io_sw[3]}]
set_property PACKAGE_PIN W15 [get_ports {io_sw[4]}]
set_property PACKAGE_PIN V15 [get_ports {io_sw[5]}]
set_property PACKAGE_PIN W14 [get_ports {io_sw[6]}]
set_property PACKAGE_PIN W13 [get_ports {io_sw[7]}]
set_property PACKAGE_PIN V2  [get_ports {io_sw[8]}]
set_property PACKAGE_PIN T3  [get_ports {io_sw[9]}]
set_property PACKAGE_PIN T2  [get_ports {io_sw[10]}]
set_property PACKAGE_PIN R3  [get_ports {io_sw[11]}]
set_property PACKAGE_PIN W2  [get_ports {io_sw[12]}]
set_property PACKAGE_PIN U1  [get_ports {io_sw[13]}]
set_property PACKAGE_PIN T1  [get_ports {io_sw[14]}]
set_property PACKAGE_PIN R2  [get_ports {io_sw[15]}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {io_LEDs[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[0]}]
set_property PACKAGE_PIN E19 [get_ports {io_LEDs[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[1]}]
set_property PACKAGE_PIN U19 [get_ports {io_LEDs[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[2]}]
set_property PACKAGE_PIN V19 [get_ports {io_LEDs[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[3]}]
set_property PACKAGE_PIN W18 [get_ports {io_LEDs[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[4]}]
set_property PACKAGE_PIN U15 [get_ports {io_LEDs[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[5]}]
set_property PACKAGE_PIN U14 [get_ports {io_LEDs[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[6]}]
set_property PACKAGE_PIN V14 [get_ports {io_LEDs[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[7]}]
set_property PACKAGE_PIN V13 [get_ports {io_LEDs[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[8]}]
set_property PACKAGE_PIN V3 [get_ports {io_LEDs[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[9]}]
set_property PACKAGE_PIN W3 [get_ports {io_LEDs[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[10]}]
set_property PACKAGE_PIN U3 [get_ports {io_LEDs[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[11]}]
set_property PACKAGE_PIN P3 [get_ports {io_LEDs[12]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[12]}]
set_property PACKAGE_PIN N3 [get_ports {io_LEDs[13]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[13]}]
set_property PACKAGE_PIN P1 [get_ports {io_LEDs[14]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[14]}]
set_property PACKAGE_PIN L1 [get_ports {io_LEDs[15]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {io_LEDs[15]}]



