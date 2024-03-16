#!/bin/bash
STM32_Programmer_CLI_PATH="/mnt/d/programs/STM32CubeProgrammer/bin"
STM32_GDB_server_PATH="/mnt/d/programs/stm32gdbserver"
ELF_TO_Funcs_PATH="/home/han/srtp/tfm_freeRTOS/ELF-To-FUNCS_v2"

for arg in "$@"; do
    if [[ "$arg" == "-c" ]] || [[ "$arg" == "--compile" ]]; then
        cd build
        make install
        cd ..
        echo "Compile done"
        break
    fi
done
for arg in "$@"; do
    if [[ "$arg" == "-d" ]] || [[ "$arg" == "--download" ]]; then
        eval $STM32_Programmer_CLI_PATH/"STM32_Programmer_CLI.exe" -c port=swd -e all -d build/bin/tfm_s.elf -d build/bin/ns_app.hex
        echo "Download done"
        break
    fi
done
for arg in "$@"; do
    if [[ "$arg" == "-g" ]] || [[ "$arg" == "--gdbserver" ]]; then
        cd $STM32_GDB_server_PATH
        ./ST-LINK_gdbserver.exe -d
        cd -
        break
    fi
done
for arg in "$@"; do
    if [[ "$arg" == "-p" ]] || [[ "$arg" == "--python" ]]; then
        cd $ELF_TO_Funcs_PATH
        python3 main.py
        break
    fi
done