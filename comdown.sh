#!/bin/bash
STM32_Programmer_CLI_PATH="/mnt/d/programs/STM32CubeProgrammer/bin"
STM32_GDB_server_PATH="/mnt/d/programs/stm32gdbserver"
# STM32_GDB_server_PATH="/mnt/d/programs/STM32CubeProgrammer/bin"

for arg in "$@"; do
    if [[ "$arg" == "-c" ]] || [[ "$arg" == "--compile" ]]; then
        cmake --build build
        python3 loader_script/loader.py
        cmake --build build_s
        echo "Compile done"
        break
    fi
done

for arg in "$@"; do
    if [[ "$arg" == "-cn" ]] || [[ "$arg" == "--compile-normol" ]]; then
        cmake --build build
        echo "Compile done"
        break
    fi
done

for arg in "$@"; do
    if [[ "$arg" == "-d" ]] || [[ "$arg" == "--download" ]]; then
        eval $STM32_Programmer_CLI_PATH/"STM32_Programmer_CLI.exe" -c port=swd -e all -d build_s/bin/tfm_s.elf -d build/bin/ns_app.hex
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