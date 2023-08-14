#!/bin/bash
STM32_Programmer_CLI_PATH="/mnt/d/stm32prog/bin"
STM32_GDB_server_PATH="/mnt/d/stm32/STM32CubeIDE_1.10.1/STM32CubeIDE/plugins/com.st.stm32cube.ide.mcu.externaltools.stlink-gdb-server.win32_2.0.300.202203231527/tools/bin"
for arg in "$@"; do
    if [[ "$arg" == "-c" ]] || [[ "$arg" == "--compile" ]]; then
        cd cmake_build
        make install
        cd ..
        echo "Compile done"
        break
    fi
done
for arg in "$@"; do
    if [[ "$arg" == "-d" ]] || [[ "$arg" == "--download" ]]; then
        eval $STM32_Programmer_CLI_PATH/"STM32_Programmer_CLI.exe" -c port=swd -e all -d cmake_build/bin/tfm_s.elf -d cmake_build/bin/ns_app.hex
        echo "Download done"
        break
    fi
done
for arg in "$@"; do
    if [[ "$arg" == "-gs" ]] || [[ "$arg" == "--gdbserver" ]]; then
        cd $STM32_GDB_server_PATH
        ./ST-LINK_gdbserver.exe -d
        cd -
        break
    fi
done