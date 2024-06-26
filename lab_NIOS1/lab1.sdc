set_time_format -unit ns -decimal_places 3

create_clock -name {clock} -period 40.000 -waveform { 0.000 20.000 } [get_ports {clk}]

set_clock_uncertainty -rise_from [get_clocks {clock}] -rise_to [get_clocks {clock}] 0.020
set_clock_uncertainty -rise_from [get_clocks {clock}] -fall_to [get_clocks {clock}] 0.020
set_clock_uncertainty -fall_from [get_clocks {clock}] -rise_to [get_clocks {clock}] 0.020
set_clock_uncertainty -fall_from [get_clocks {clock}] -fall_to [get_clocks {clock}] 0.020

set_input_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {pdd}]
set_input_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {sw}]

set_output_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {led[0]}]
set_output_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {led[1]}]
set_output_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {led[2]}]
set_output_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {led[3]}]
set_output_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {led[4]}]
set_output_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {led[5]}]
set_output_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {led[6]}]
set_output_delay -add_delay -clock [get_clocks {clock}] 10.000 [get_ports {led[7]}]