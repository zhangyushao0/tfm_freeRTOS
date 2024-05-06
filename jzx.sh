#!/bin/bash
TEST_TARGET_ARG="$1"
DWT_ENABLE="$2"

if [ "$DWT_ENABLE" = "Yes" ]; then
    sudo rm ./build/CMakeCache.txt &&sudo cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake -DTEST_TARGET=${TEST_TARGET_ARG}&&
    echo "enable dwt"
else
    sudo rm ./build/CMakeCache.txt &&sudo cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM_jzx_No.cmake -DTEST_TARGET=${TEST_TARGET_ARG}&&
    echo "close dwt"
fi

sudo cmake --build build&&
sudo ./loader_script/loader.py &&

if [ "$DWT_ENABLE" = "Yes" ]; then
    sudo rm ./build/CMakeCache.txt &&sudo cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake -DTEST_TARGET=${TEST_TARGET_ARG}&&
    echo "enable dwt"
else
    sudo rm ./build/CMakeCache.txt &&sudo cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM_jzx_No.cmake -DTEST_TARGET=${TEST_TARGET_ARG}&&echo "close dwt"
fi
sudo cmake --build build&&
llvm-objdump -s -d ./build/bin/tfm_s.elf >./build/tfm_s.asm&&
llvm-objdump -s -d ./build/bin/ns_app.elf >./build/ns_app.asm&&
/mnt/f/"Program Files"/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/"STM32_Programmer_CLI.exe" -c port=swd -e all -d ./build/bin/tfm_s.elf -d ./build/bin/ns_app.elf