# tfm_freertos_mpu_aslr_clang-17 编译流程

## 工具链及设置

1. llvm-17

2. gcc-arm-none-eabi

> 需要将 toolchain_ARMCLANG.cmake 中对应的工具地址修改为自己的地址

3. 如果需要关闭 ASLR，需要将 ENABLE_ASLR 设置为 off，同时需要将 platform/ext/target/stm/aslr_freertos_nsapp/FreeRTOS/config/FreeRTOSConfig.h 中的configENABLE_ASLR 设置为 0

4. 可以通过修改 ELF-To-FUNCS_v2/section_read.py 中对应的地址从而修改随机化区域的大小

## step 1 生成 build 文件

```bash
cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake -DTFM_PARTITION_INTERNAL_TRUSTED_STORAGE=ON -DTEST_TARGET=beebs_cnt -DENABLE_ASLR=ON
```

## step 2 开启编译脚本

> 首先将 comdown.sh 中的路径修改为自己的路径

```bash
chmod +x comdown.sh
./comdown.sh -c
./comdown.sh -p
./comdown.sh -c
./comdown.sh -d
```
