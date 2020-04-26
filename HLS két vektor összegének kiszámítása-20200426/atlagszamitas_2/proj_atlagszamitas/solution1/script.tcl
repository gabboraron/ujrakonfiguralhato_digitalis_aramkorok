############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_atlagszamitas
set_top atlagszamitas
add_files atlagszamitas.c
add_files -tb result.golden.dat
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
config_interface -expose_global -m_axi_offset off -register_io off
source "./proj_atlagszamitas/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -setup
export_design -format sysgen
