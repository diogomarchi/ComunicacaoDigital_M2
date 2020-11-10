create_clock -name i_CLK -period 10.000 [get_ports {i_CLK}]

derive_clock_uncertainty

set_false_path -from [get_ports {i_FRAME1*}]
set_false_path -from [get_ports {i_FRAME2*}]
set_false_path -from [get_ports {i_FRAME3*}]
set_false_path -from [get_ports {i_FRAME4*}]
set_false_path -from [get_ports {i_TIME*}]

set_false_path -to   [get_ports {o_A}]
set_false_path -to   [get_ports {o_B}]
set_false_path -to   [get_ports {o_C}]
set_false_path -to   [get_ports {o_D}]
set_false_path -to   [get_ports {o_FRAME*}]