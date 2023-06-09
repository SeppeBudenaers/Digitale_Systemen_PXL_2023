set_property IOSTANDARD LVCMOS33 [get_ports clk_0]
set_property IOSTANDARD LVCMOS33 [get_ports {uitgang_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {uitgang_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {uitgang_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {uitgang_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {uitgang_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {uitgang_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {uitgang_0[0]}]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_0_IBUF]
