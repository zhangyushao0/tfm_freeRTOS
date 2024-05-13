# tfm_freertos_mpu_aslr_clang-16 编译流程

## step 1 生成make文件

```bash
cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake -DTFM_PARTITION_INTERNAL_TRUSTED_STORAGE=ON -DTEST_TARGET=beebs_cnt -DENABLE_ASLR=ON
```

## step 2 开启编译脚本

```bash
chmod +x comedown.sh
./comedown.sh -c
./comedown.sh -p
./comedown.sh -c
```

## 自定义区域

platform/ext/target/stm/aslr_freertos_nsapp/aslr/include/aslr_address_config.h 里面的这三个分别是特权函数，系统调用，非特权函数的随机化后的地址范围，如果要修改，需要同步到 platform/ext/target/stm/aslr_freertos_nsapp/FreeRTOS/config/random_region_config.h 中

```c
#define ASLR_RAM_PRIV_REGION_START 0x20010000
#define ASLR_RAM_PRIV_REGION_SIZE 0x00008000
#define ASLR_RAM_PRIV_REGION_END \
    (ASLR_RAM_PRIV_REGION_START + ASLR_RAM_PRIV_REGION_SIZE - 1)

#define ASLR_RAM_SYSCALL_REGION_START (ASLR_RAM_PRIV_REGION_END + 1)
#define ASLR_RAM_SYSCALL_REGION_SIZE 0x00004000
#define ASLR_RAM_SYSCALL_REGION_END \
    (ASLR_RAM_SYSCALL_REGION_START + ASLR_RAM_SYSCALL_REGION_SIZE - 1)

#define ASLR_RAM_UNPRIV_REGION_START (ASLR_RAM_SYSCALL_REGION_END + 1)
#define ASLR_RAM_UNPRIV_REGION_SIZE 0x00010000
#define ASLR_RAM_UNPRIV_REGION_END \
    (ASLR_RAM_UNPRIV_REGION_START + ASLR_RAM_UNPRIV_REGION_SIZE - 1)
```
