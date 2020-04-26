@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto e6bfbc8dce314335bb9c044b55f2117d -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot szim_behav xil_defaultlib.szim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
