create_clock -name i_CLK -period 10.000 [get_ports {i_CLK}]

derive_clock_uncertainty

set_false_path -from [get_ports {i_A*}]
set_false_path -from [get_ports {i_B*}]
set_false_path -from [get_ports {i_C*}]
set_false_path -to   [get_ports {o_A*}]