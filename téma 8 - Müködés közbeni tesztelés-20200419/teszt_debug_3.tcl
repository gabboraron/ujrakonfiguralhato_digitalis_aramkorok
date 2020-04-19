
#TCL parancsokat alkalamzva  terv a k�vetekz�k�ppen hozhat� l�tre

set terv_nev teszt_8
set konyvtar C:/Munka/I_Felev/UKDA_2017/L6
start_gui
create_project ${terv_nev} ${konyvtar}/${terv_nev} -part xc7z010clg400-1

#check_ip_cache -clear_output_repo

#VHDL hardver le�r� nyelv be�ll�t�sa
set_property target_language VHDL [current_project]
#VHDL forr�sk�dnak a tervhez val� csatol�sa
add_files -norecurse ${konyvtar}/top_level_2.vhd

#Megk�t�s �llom�nynak a tervhez val�csatol�sa
add_files -fileset constrs_1 -norecurse ${konyvtar}/system_4.xdc
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

#Szint�zis futtat�sa
launch_runs synth_1
#V�rakoz�s a szint�zis befejez�s�re
wait_on_run synth_1

#Synthesized Design megnyit�sa
open_run synth_1

#Debug core magnak a tervhez val� csatol�sa
create_debug_core u_ila_0 ila

#ILA modul konfigur�l�sa
set_property C_DATA_DEPTH 65536 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN true [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#enable advanced trigger mode
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
#enable Basic capture mode
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]

#ILA modul �rajel�nek meghat�roz�sa
connect_debug_port u_ila_0/clk [get_nets [list src_clk_IBUF_BUFG]]
#A Tesy modulon probe0 s�nsz�less�g�nek meghat�roz�sa
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
#probe0 bemenetre a start, reset �s q_div jelek csatol�sa. 
#a forr�skodban meghat�rozott jelek nem �rhet�ek el tesztel�sre a szint�zist k�vet�en, hanem a 
#bemenetek eset�ben start_IBUF reset_IBUF, kimenetek eset�ben pedig _OBUF
connect_debug_port u_ila_0/probe0 [get_nets [list start_IBUF reset_IBUF q_div]]

#egy �jabb bemenet (probe1) l�trehoz�sa a tesztemodul bemenet�re
create_debug_port u_ila_0 probe
#s�nsz�less�g be�ll�t�sa
set_property port_width 4 [get_debug_ports u_ila_0/probe1]
#q_OBUF[0], q_OBUF[1], q_OBUF[2], q_OBUF[3]  kiemeneteknek a probe1 bemeneti portra val� csatol�sa
connect_debug_port u_ila_0/probe1 [get_nets [list q_O*]]

#Megk�t�s f�jl ment�se
save_constraints_as system_${terv_nev}.xdc

set_property constrset system_${terv_nev}.xdc [get_runs synth_1]
set_property constrset system_${terv_nev}.xdc [get_runs impl_1]
#save_constraints

#check_ip_cache -clear_output_repo

#Implement�ci� lefuttat�sa
launch_runs impl_1
wait_on_run impl_1

#Konfigur�ci�s f�jl gener�l�sa
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

#Hardver megnyit�sa
open_hw

#szerver ind�t�sa az FPGA �ramk�rre val� kapcsol�d�s c�lj�b�k
connect_hw_server
#C�lhardver megnyit�sa 
open_hw_target

#Konfigurios .bit f�jl �s debug_net.ltx be�ll�t�sa
set_property PROGRAM.FILE ${konyvtar}/${terv_nev}/${terv_nev}.runs/impl_1/top_level_2.bit [lindex [get_hw_devices] 1]
set_property PROBES.FILE ${konyvtar}/${terv_nev}/${terv_nev}.runs/impl_1/debug_nets.ltx [lindex [get_hw_devices] 1]


current_hw_device [lindex [get_hw_devices] 1]
#hardver fris�t�se
refresh_hw_device [lindex [get_hw_devices] 1]

#hardver programoz�sa
program_hw_devices [lindex [get_hw_devices] 1]

refresh_hw_device [lindex [get_hw_devices] 1]