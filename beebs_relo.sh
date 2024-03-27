#!/bin/bash

TEST_TARGET_ARG="$1"
#MNT_DIR_NUM="$2"
CURRENT_DIR=/home/jiangzixian/relo_func2
TARGET_DIR=/mnt/f/fromWSL/bin_beebs/bin40
STM32_Programmer_CLI_PATH=/mnt/f/"Program Files"/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin
STM32_GDB_server_PATH=/mnt/f/ST/STM32CubeIDE_1.12.0/STM32CubeIDE/plugins/com.st.stm32cube.ide.mcu.externaltools.stlink-gdb-server.win32_2.0.500.202301161003/tools/bin

cd build &&
sudo rm CMakeCache.txt&&sudo cmake .. -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DTFM_TOOLCHAIN_FILE=../toolchain_GNUARM_Yes.cmake -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTEST_TARGET="${TEST_TARGET_ARG}" -DCMAKE_BINARY_DIR_NS="${CURRENT_DIR}"/build/bin_ns -DCMAKE_BINARY_DIR_S="${CURRENT_DIR}"/build/bin_s -DRELOCATION_TABLE_OPTIONS=ON&&sudo make -j &&

cd "${CURRENT_DIR}"/build/bin_ns &&
readelf -s ns_app.elf | grep FUNC > "${CURRENT_DIR}"/platform/ext/target/stm/aslr_freertos_nsapp/loader/script/func_info.txt &&
readelf -r ns_app.elf > "${CURRENT_DIR}"/platform/ext/target/stm/aslr_freertos_nsapp/loader/script/relocation.txt &&
readelf -s ns_app.elf > "${CURRENT_DIR}"/platform/ext/target/stm/aslr_freertos_nsapp/loader/script/symbol_table.txt &&

cd "${CURRENT_DIR}"/platform/ext/target/stm/aslr_freertos_nsapp/loader/script &&
sudo ./func_load.py &&
sudo ./loader.py  &&
cd "${CURRENT_DIR}"/build &&

sudo rm CMakeCache.txt&&sudo cmake .. -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DTFM_TOOLCHAIN_FILE=../toolchain_GNUARM_Yes.cmake -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTEST_TARGET="${TEST_TARGET_ARG}" -DCMAKE_BINARY_DIR_NS="${CURRENT_DIR}"/build/bin_ns -DCMAKE_BINARY_DIR_S="${CURRENT_DIR}"/build/bin_s1 -DRELOCATION_TABLE_OPTIONS=OFF&&sudo make -j &&

sudo rm CMakeCache.txt&&sudo cmake .. -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DTFM_TOOLCHAIN_FILE=../toolchain_GNUARM_No.cmake -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTEST_TARGET="${TEST_TARGET_ARG}" -DCMAKE_BINARY_DIR_NS="${CURRENT_DIR}"/build/bin_ns1 -DCMAKE_BINARY_DIR_S="${CURRENT_DIR}"/build/bin_s -DRELOCATION_TABLE_OPTIONS=OFF&&sudo make -j &&

llvm-objdump -s -d "${CURRENT_DIR}"/build/bin_ns/ns_app.elf > "${CURRENT_DIR}"/build/bin_ns/ns_app.asm &&
llvm-objdump -s -d "${CURRENT_DIR}"/build/bin_s/tfm_s.elf > "${CURRENT_DIR}"/build/bin_s/tfm_s.asm &&

"${STM32_Programmer_CLI_PATH}"/"STM32_Programmer_CLI.exe" -c port=swd -e all -d "${CURRENT_DIR}"/build/bin_s/tfm_s.elf -d "${CURRENT_DIR}"/build/bin_ns/ns_app.elf
#"${STM32_GDB_server_PATH}"/"ST-LINK_gdbserver.exe" -d -cp /mnt/f/'Program Files'/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin




