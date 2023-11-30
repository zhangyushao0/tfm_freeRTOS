# FreeRTOS-MPU 的随机化

## FreeRTOS-MPU 的简介

FreeRTOS-MPU 是 FreeRTOS 的一个扩展，它提供了基于内存保护单元（MPU）的任务隔离机制。FreeRTOS-MPU 通过使用 MPU 来实现代码和数据的保护，使得非特权的任务无法访问内核的数据，同时非特权的任务无法直接调用内核提供的服务，必须通过 syscall 来访问内核提供的服务。

## FreeRTOS-MPU 的随机化

本项目希望将随机化系统部署到 FreeRTOS-MPU 上，随机化 FreeRTOS-MPU 的内核和任务代码，同时确保随机化前后代码段的权限保持不变，同时随机化后的代码能够正常运行。

### FreeRTOS-MPU 默认 Flash 代码保护策略

默认情况下，FreeRTOS-MPU 会将 Flash 分为三个区域，分别为 priviledged code，unpriviledged code 和 syscall，其中 priviledged code 是特权可读可执行，unpriviledged code 和 syscall 均是非特权可读可执行，但非特权任务通过 syscall 调用内核服务时，系统会对触发升权指令的地址进行检查，如果其对应的地址不在 syscall 区域内，则会触发异常，导致任务被挂起。因此，我们需要保证随机化后这三块区域能够全部保留。

![image-20231121201306573](https://cdn.jsdelivr.net/gh/zhanghancs/blog-img/img/202311212013630.png)

### FreeRTOS-MPU 随机化方案

将原有对 Flash 的保护关闭，将 Flash 区域设置为不可执行，确保随机化流程能够正确执行，同时为了确保随机化前后权限的一致性，需要将随机化区域划分为三块，分别对应 priviledged code，unpriviledged code 和 syscall，然后在 HardFault 异常处理中根据触发函数的地址将其随机化到对应区域。

![image-20231121201234888](https://cdn.jsdelivr.net/gh/zhanghancs/blog-img/img/202311212012968.png)

### FreeRTOS-MPU 随机化的具体细节

1. 在 FreeRTOS 中加入三个随机化区域的宏定义

    ```c
    #define ASLR_RAM_PRIV_REGION_START 0x20006000
    #define ASLR_RAM_PRIV_REGION_END 0x2000afff

    #define ASLR_RAM_SYSCALL_REGION_START 0x2000b000
    #define ASLR_RAM_SYSCALL_REGION_END 0x2000cfff

    #define ASLR_RAM_UNPRIV_REGION_START 0x2000d000
    #define ASLR_RAM_UNPRIV_REGION_END 0x2000ffff
    ```

2. 开启对随机化区域的 MPU 保护

    在 `port.c` 的 `prvSetupMPU` 函数中删除原有 Flash 上 MPU 保护，开启对随机化区域的 MPU 保护，其中 unpriviledged code 和 syscall 区域的 MPU 保护权限相同，因此可以只使用一个 MPU 区域来保护这两个区域。

    ```c
    portMPU_RNR_REG = portASLRPRIVILEGED_RAM_REGION;
    portMPU_RBAR_REG = (((uint32_t)__aslr_privilege_sram_start__) &
                        portMPU_RBAR_ADDRESS_MASK) | (portMPU_REGION_NON_SHAREABLE)  | (portMPU_REGION_PRIVILEGED_READ_ONLY);
    portMPU_RLAR_REG = (((uint32_t)__aslr_privilege_sram_end__) &
                        portMPU_RLAR_ADDRESS_MASK) | (portMPU_RLAR_ATTR_INDEX0) |
    (portMPU_RLAR_REGION_ENABLE);
    
    portMPU_RNR_REG = portASLRUNPRIVILEGED_RAM_REGION;
    portMPU_RBAR_REG = (((uint32_t)__aslr_syscall_sram_start__) &
                        portMPU_RBAR_ADDRESS_MASK) | (portMPU_REGION_NON_SHAREABLE) |
    (portMPU_REGION_READ_ONLY);
    portMPU_RLAR_REG = (((uint32_t)__aslr_unprivilege_sram_end__) &
                        portMPU_RLAR_ADDRESS_MASK) | (portMPU_RLAR_ATTR_INDEX0) |
    (portMPU_RLAR_REGION_ENABLE);
    ```
    
3. 修改升权时的地址范围判断
    由于非内核的任务在通过 syscall 调用内核服务时，需要进行特权升级，因此系统会在升权前判断升权行为是否由 syscall 触发，因此需要将 `port.c` 中  `vPortSVCHandler_C` 调用 `vRaisePrivilege` 的判断条件修改为：

    ```c
    if ((ulPC >= (uint32_t)ASLR_RAM_SYSCALL_REGION_START) &&
        (ulPC <= (uint32_t)ASLR_RAM_SYSCALL_REGION_END)) {
        vRaisePrivilege();
    }
    ```

4. 部分间接跳转指令的重写
    函数级地址空间随机化技术只适用于绝对地址跳转，因此我们对间接指令进行重写，为此我们使用 `-mlong-calls` 和 `-fno-jump-tables` 这两个编译选项来阻止间接地址跳转，但 FreeRTOS 存在内联汇编代码，编译选项无法起作用，其位于 `portasm.c` 中的 `PendSV_Handler` 函数以及 `vStartFirstTas`k 函数中。我们需要手动修改这两个函数中的汇编代码，将间接跳转指令重写为绝对跳转指令。
