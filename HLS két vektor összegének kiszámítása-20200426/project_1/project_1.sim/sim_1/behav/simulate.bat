@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim szim_behav -key {Behavioral:sim_1:Functional:szim} -tclbatch szim.tcl -view E:/Felhasznalok/Tiha/Sapi/2018-2019/II_felev/KMOOK/T12/proba/project_1/szim_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
