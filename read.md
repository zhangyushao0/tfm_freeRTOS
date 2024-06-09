```bash
cmake -S . -B build -DTFM_PLATFORM=stm/aslr_freertos_nsapp -DBL2=OFF -DNS=OFF -DNS_APP=ON -DCMAKE_BUILD_TYPE=Debug -DFREERTOS_PORT=GCC_ARM_CM33_NTZ_NONSECURE -DFREERTOS_HEAP=4 -DTFM_TOOLCHAIN_FILE=toolchain_GNUARM.cmake -DTEST_TARGET=beebs_cnt
```

## 修改内容

`platform/ext/target/stm/common/stm32l5xx/Device/Include/stm32l562xx.h` 加上注释

```c
// #define COMP1 COMP1_S
#define COMP1_BASE COMP1_BASE_S

// #define COMP2 COMP2_S
#define COMP2_BASE COMP2_BASE_S
```