set VER=2017.4

call c:\Xilinx\Vivado\%VER%\settings64.bat

REM Below are not requred for Vivado - just useful if you want to 
REM use the same shell for editing files and launching flows
REM http://www.mingw.org/wiki/HOWTO_Set_the_HOME_variable_for_cmd_exe

REM vim requires HOME environment variable to be set
set HOME=%USERPROFILE%

REM adding msys, git, and vim to the path env variable
SET PATH=C:\Xilinx\Vivado\%VER%\tps\win64\git-1.9.5\bin;%PATH%
SET PATH=C:\Xilinx\Vivado\%VER%\tps\share\vim\vim74;%PATH%
SET PATH=C:\Xilinx\Vivado_HLS\%VER%\msys\bin;%PATH%

REM some useful aliases to work better in linux
%SYSTEMROOT%\System32\doskey.exe ll=ls -altr $*
%SYSTEMROOT%\System32\doskey.exe vi=vim -N $*
%SYSTEMROOT%\System32\doskey.exe which=sh -c "which $*"
