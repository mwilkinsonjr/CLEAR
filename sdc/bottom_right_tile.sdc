###############################################################################
# Created by write_sdc
# Thu Apr 27 01:06:47 2023
###############################################################################
current_design bottom_right_tile
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name prog_clk -period 100.0000 [get_ports {prog_clk}]
set_clock_transition 0.5000 [get_clocks {prog_clk}]
set_clock_uncertainty 0.3500 prog_clk
set_propagated_clock [get_clocks {prog_clk}]
create_clock -name clk0 -period 100.0000 
set_clock_uncertainty 0.3500 clk0
set_clock_groups -name clock_group -logically_exclusive \
 -group [get_clocks {clk0}]\
 -group [get_clocks {prog_clk}]
set_input_delay -3.5000 -clock [get_clocks {prog_clk}] -add_delay [get_ports {ccff_head}]
set_input_delay -3.5000 -clock [get_clocks {prog_clk}] -add_delay [get_ports {ccff_head_1}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[0]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[10]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[11]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[12]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[13]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[14]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[15]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[16]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[17]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[18]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[19]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[1]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[20]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[21]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[22]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[23]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[24]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[25]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[26]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[27]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[28]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[29]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[2]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[3]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[4]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[5]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[6]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[7]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[8]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_in[9]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[0]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[10]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[11]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[12]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[13]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[14]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[15]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[16]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[17]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[18]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[19]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[1]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[20]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[21]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[22]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[23]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[24]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[25]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[26]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[27]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[28]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[29]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[2]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[3]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[4]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[5]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[6]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[7]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[8]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_in[9]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_in[0]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_in[1]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_in[2]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_in[3]}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {isol_n}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {prog_clk}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {prog_reset}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {reset}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {test_enable}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_}]
set_input_delay -2.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_}]
set_output_delay 3.0000 -clock [get_clocks {prog_clk}] -add_delay [get_ports {ccff_tail}]
set_output_delay 3.0000 -clock [get_clocks {prog_clk}] -add_delay [get_ports {ccff_tail_0}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[0]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[10]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[11]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[12]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[13]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[14]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[15]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[16]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[17]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[18]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[19]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[1]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[20]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[21]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[22]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[23]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[24]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[25]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[26]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[27]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[28]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[29]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[2]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[3]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[4]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[5]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[6]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[7]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[8]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chanx_left_out[9]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[0]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[10]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[11]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[12]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[13]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[14]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[15]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[16]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[17]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[18]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[19]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[1]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[20]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[21]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[22]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[23]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[24]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[25]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[26]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[27]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[28]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[29]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[2]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[3]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[4]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[5]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[6]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[7]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[8]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {chany_top_out[9]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_dir[0]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_dir[1]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_dir[2]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_dir[3]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_out[0]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_out[1]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_out[2]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {gfpga_pad_io_soc_out[3]}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_width_0_height_0_subtile_0__pin_inpad_0_}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_width_0_height_0_subtile_1__pin_inpad_0_}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_width_0_height_0_subtile_2__pin_inpad_0_}]
set_output_delay 3.0000 -clock [get_clocks {clk0}] -add_delay [get_ports {top_width_0_height_0_subtile_3__pin_inpad_0_}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.2200 [get_ports {ccff_tail}]
set_load -pin_load 0.2200 [get_ports {ccff_tail_0}]
set_load -pin_load 0.2200 [get_ports {top_width_0_height_0_subtile_0__pin_inpad_0_}]
set_load -pin_load 0.2200 [get_ports {top_width_0_height_0_subtile_1__pin_inpad_0_}]
set_load -pin_load 0.2200 [get_ports {top_width_0_height_0_subtile_2__pin_inpad_0_}]
set_load -pin_load 0.2200 [get_ports {top_width_0_height_0_subtile_3__pin_inpad_0_}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[29]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[28]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[27]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[26]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[25]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[24]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[23]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[22]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[21]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[20]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[19]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[18]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[17]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[16]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[15]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[14]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[13]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[12]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[11]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[10]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[9]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[8]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[7]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[6]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[5]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[4]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[3]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[2]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[1]}]
set_load -pin_load 0.2200 [get_ports {chanx_left_out[0]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[29]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[28]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[27]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[26]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[25]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[24]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[23]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[22]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[21]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[20]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[19]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[18]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[17]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[16]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[15]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[14]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[13]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[12]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[11]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[10]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[9]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[8]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[7]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[6]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[5]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[4]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[3]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[2]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[1]}]
set_load -pin_load 0.2200 [get_ports {chany_top_out[0]}]
set_load -pin_load 0.2200 [get_ports {gfpga_pad_io_soc_dir[3]}]
set_load -pin_load 0.2200 [get_ports {gfpga_pad_io_soc_dir[2]}]
set_load -pin_load 0.2200 [get_ports {gfpga_pad_io_soc_dir[1]}]
set_load -pin_load 0.2200 [get_ports {gfpga_pad_io_soc_dir[0]}]
set_load -pin_load 0.2200 [get_ports {gfpga_pad_io_soc_out[3]}]
set_load -pin_load 0.2200 [get_ports {gfpga_pad_io_soc_out[2]}]
set_load -pin_load 0.2200 [get_ports {gfpga_pad_io_soc_out[1]}]
set_load -pin_load 0.2200 [get_ports {gfpga_pad_io_soc_out[0]}]
set_input_transition 0.5000 [get_ports {ccff_head}]
set_input_transition 0.5000 [get_ports {ccff_head_1}]
set_input_transition 0.5000 [get_ports {isol_n}]
set_input_transition 0.5000 [get_ports {prog_clk}]
set_input_transition 0.5000 [get_ports {prog_reset}]
set_input_transition 0.5000 [get_ports {reset}]
set_input_transition 0.5000 [get_ports {test_enable}]
set_input_transition 0.5000 [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_10_}]
set_input_transition 0.5000 [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_11_}]
set_input_transition 0.5000 [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_12_}]
set_input_transition 0.5000 [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_}]
set_input_transition 0.5000 [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_14_}]
set_input_transition 0.5000 [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_15_}]
set_input_transition 0.5000 [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_8_}]
set_input_transition 0.5000 [get_ports {top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_}]
set_input_transition 0.5000 [get_ports {top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_}]
set_input_transition 0.5000 [get_ports {top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_}]
set_input_transition 0.5000 [get_ports {top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_}]
set_input_transition 0.5000 [get_ports {top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_}]
set_input_transition 0.5000 [get_ports {chanx_left_in[29]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[28]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[27]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[26]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[25]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[24]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[23]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[22]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[21]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[20]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[19]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[18]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[17]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[16]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[15]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[14]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[13]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[12]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[11]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[10]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[9]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[8]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[7]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[6]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[5]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[4]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[3]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[2]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[1]}]
set_input_transition 0.5000 [get_ports {chanx_left_in[0]}]
set_input_transition 0.5000 [get_ports {chany_top_in[29]}]
set_input_transition 0.5000 [get_ports {chany_top_in[28]}]
set_input_transition 0.5000 [get_ports {chany_top_in[27]}]
set_input_transition 0.5000 [get_ports {chany_top_in[26]}]
set_input_transition 0.5000 [get_ports {chany_top_in[25]}]
set_input_transition 0.5000 [get_ports {chany_top_in[24]}]
set_input_transition 0.5000 [get_ports {chany_top_in[23]}]
set_input_transition 0.5000 [get_ports {chany_top_in[22]}]
set_input_transition 0.5000 [get_ports {chany_top_in[21]}]
set_input_transition 0.5000 [get_ports {chany_top_in[20]}]
set_input_transition 0.5000 [get_ports {chany_top_in[19]}]
set_input_transition 0.5000 [get_ports {chany_top_in[18]}]
set_input_transition 0.5000 [get_ports {chany_top_in[17]}]
set_input_transition 0.5000 [get_ports {chany_top_in[16]}]
set_input_transition 0.5000 [get_ports {chany_top_in[15]}]
set_input_transition 0.5000 [get_ports {chany_top_in[14]}]
set_input_transition 0.5000 [get_ports {chany_top_in[13]}]
set_input_transition 0.5000 [get_ports {chany_top_in[12]}]
set_input_transition 0.5000 [get_ports {chany_top_in[11]}]
set_input_transition 0.5000 [get_ports {chany_top_in[10]}]
set_input_transition 0.5000 [get_ports {chany_top_in[9]}]
set_input_transition 0.5000 [get_ports {chany_top_in[8]}]
set_input_transition 0.5000 [get_ports {chany_top_in[7]}]
set_input_transition 0.5000 [get_ports {chany_top_in[6]}]
set_input_transition 0.5000 [get_ports {chany_top_in[5]}]
set_input_transition 0.5000 [get_ports {chany_top_in[4]}]
set_input_transition 0.5000 [get_ports {chany_top_in[3]}]
set_input_transition 0.5000 [get_ports {chany_top_in[2]}]
set_input_transition 0.5000 [get_ports {chany_top_in[1]}]
set_input_transition 0.5000 [get_ports {chany_top_in[0]}]
set_input_transition 0.5000 [get_ports {gfpga_pad_io_soc_in[3]}]
set_input_transition 0.5000 [get_ports {gfpga_pad_io_soc_in[2]}]
set_input_transition 0.5000 [get_ports {gfpga_pad_io_soc_in[1]}]
set_input_transition 0.5000 [get_ports {gfpga_pad_io_soc_in[0]}]
set_timing_derate -early 0.9200
set_timing_derate -late 1.0800
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.6000 [current_design]
set_max_fanout 14.0000 [current_design]
