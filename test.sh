#!/bin/bash

# 定义数组
array=("beebs_cnt" "beebs_compress" "beebs_cover" "beebs_fdct" "beebs_fibcall" "beebs_levenshtein" "beebs_ndes" "beebs_ns" "beebs_prime" "beebs_tarai" "embench_aha-mont64" "embench_nsichneu" "embench_picojpeg" "embench_primecount" "embench_slre" "embench_matmult-int" "embench_statemate" "stm32example_GPIOEXTI" "stm32example_GPIOIOToggle" "stm32example_RCCClockConfig")

# 获取用户输入的数字作为数组索引
index="$1"
# echo index: $index
# 获取数组中相应位置的内容
content="${array[$index]}"
# echo content: $content
# 拼接固定字符串和数组内容
command="cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake -DTEST_TARGET=${content}"

# 执行命令
rm -rf build
echo "执行命令: $command"

eval "$command"
./comdown.sh -pc
./comdown.sh -d
./comdown.sh -g
