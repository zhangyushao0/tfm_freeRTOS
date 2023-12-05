# tfm_freertos_mpu_aslr_clang-16 编译流程

## step 1 生成make文件

```bash
cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_PARTITION_INTERNAL_TRUSTED_STORAGE=ON
```

## step 2 开启编译脚本

```bash
chmod +x comedown.sh
./comedown.sh -c
```

## step 3 修改 platform/ext/target/stm/aslr_freertos_nsapp/aslr/include/aslr_address_config.h

```bash
./comedown.sh -p
cd build/bin
readelf -s ns_app.elf | grep priv
readelf -s ns_app.elf | grep syscall
readelf -S tfm_s.elf | grep -w .ITS
./comedown.sh -p
```

## step 4 修改 platform/ext/target/stm/aslr_freertos_nsapp/FreeRTOS/portable/GCC/ARM_CM33_NTZ/non_secure/portasm.c 中的 select_next_task

```bash
readelf -s ns_app.elf | grep vTaskSwitchContext
```

修改这两个地址

```c
" movw r3, #0x6b15    \n"
" movt r3, #0x0805      \n"
```
