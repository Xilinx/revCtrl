# All of this is from settings64.bat - made to work for bash
VER="2014.2"

# call c:\Xilinx\Vivado\2014.2\settings64.bat
# which calls:

# CALL C:\Xilinx\Vivado\2014.2\.settings64-Vivado.bat
export PATH=/c/Xilinx/Vivado/$VER/bin:/c/Xilinx/Vivado/$VER/lib/win64.o:$PATH
export XILINX_VIVADO=/c/Xilinx/Vivado/$VER

# CALL C:\Xilinx\Vivado_HLS\2014.2\.settings64-Vivado_High_Level_Synthesis.bat
# CALL C:\Xilinx\SDK\2014.2\.settings64-Software_Development_Kit.bat

# now set up mingw
export PATH=/c/Xilinx/Vivado_HLS/$VER/msys/bin:$PATH
