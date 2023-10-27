#!/bin/bash
STM32_Programmer_CLI_PATH="/mnt/f/stm32prog/bin"
STM32_GDB_server_PATH="/mnt/f/gdb-server/bin"
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
        eval $STM32_Programmer_CLI_PATH/"STM32_Programmer_CLI.exe" -c port=swd -e all -d build/bin/tfm_s.elf -d \build/bin/ns_app.hex
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