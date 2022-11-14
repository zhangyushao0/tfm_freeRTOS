#-------------------------------------------------------------------------------
# Copyright (c) 2020-2023, Arm Limited. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#
#-------------------------------------------------------------------------------

cmake_policy(SET CMP0076 NEW)

#========================= Platform region defs ===============================#

target_include_directories(platform_region_defs
    INTERFACE
        ${CORSTONE310_COMMON_DIR}/partition
        ${CMAKE_CURRENT_SOURCE_DIR}
)

#========================= Platform common defs ===============================#

# Specify the location of platform specific build dependencies.
target_sources(tfm_s
    PRIVATE
    ${CORSTONE310_COMMON_DIR}/device/source/startup_corstone310.c
)
target_add_scatter_file(tfm_s
    $<$<C_COMPILER_ID:ARMClang>:${PLATFORM_DIR}/ext/common/armclang/tfm_common_s.sct>
    $<$<C_COMPILER_ID:GNU>:${PLATFORM_DIR}/ext/common/gcc/tfm_common_s.ld>
    $<$<C_COMPILER_ID:IAR>:${PLATFORM_DIR}/ext/common/iar/tfm_common_s.icf>
)

if(NS)
    target_sources(tfm_ns
        PRIVATE
            ${CORSTONE310_COMMON_DIR}/device/source/startup_corstone310.c
    )
    if(DEFAULT_NS_SCATTER)
        target_add_scatter_file(tfm_ns
            $<$<C_COMPILER_ID:ARMClang>:${PLATFORM_DIR}/ext/common/armclang/tfm_common_ns.sct>
            $<$<C_COMPILER_ID:GNU>:${PLATFORM_DIR}/ext/common/gcc/tfm_common_ns.ld>
            $<$<C_COMPILER_ID:IAR>:${PLATFORM_DIR}/ext/common/iar/tfm_common_ns.icf>
        )
    endif()
    target_link_libraries(CMSIS_5_tfm_ns
        INTERFACE
            $<$<C_COMPILER_ID:ARMClang>:CMSIS_5_RTX_V8MMN>
            $<$<C_COMPILER_ID:GNU>:CMSIS_5_RTX_V8MMN>
            $<$<C_COMPILER_ID:IAR>:CMSIS_5_RTX_V81MMN>
    )
endif()

if(BL2)
    target_sources(bl2
        PRIVATE
            ${CORSTONE310_COMMON_DIR}/device/source/startup_corstone310.c
    )
    target_add_scatter_file(bl2
        $<$<C_COMPILER_ID:ARMClang>:${PLATFORM_DIR}/ext/common/armclang/tfm_common_bl2.sct>
        $<$<C_COMPILER_ID:GNU>:${PLATFORM_DIR}/ext/common/gcc/tfm_common_bl2.ld>
        $<$<C_COMPILER_ID:IAR>:${PLATFORM_DIR}/ext/common/iar/tfm_common_bl2.icf>
    )
endif()

#========================= Platform Secure ====================================#

target_include_directories(platform_s
    PUBLIC
        ${CORSTONE310_COMMON_DIR}
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers/config/secure
        ${CORSTONE310_COMMON_DIR}/device
        ${CORSTONE310_COMMON_DIR}/device/include
        ${CORSTONE310_COMMON_DIR}/device/source/armclang
        ${CORSTONE310_COMMON_DIR}/native_drivers
        ${CORSTONE310_COMMON_DIR}/partition
        ${CORSTONE310_COMMON_DIR}/services/src
        ${CMAKE_SOURCE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}/device/config
        ${PLATFORM_DIR}/ext/common
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${PLATFORM_DIR}/ext/target/arm/drivers/usart/cmsdk
        ${PLATFORM_DIR}/ext/target/arm/drivers/usart/common
        ${PLATFORM_DIR}/ext/target/arm/drivers/mpc_sie
        ${PLATFORM_DIR}/ext/target/arm/drivers/counter/armv8m
        ${PLATFORM_DIR}/ext/target/arm/drivers/timer/armv8m
        ${PLATFORM_DIR}/ext/target/arm/drivers/mpu/armv8m
)

target_sources(platform_s
    PRIVATE
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers/Driver_MPC.c
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers/Driver_TGU.c
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers/Driver_PPC.c
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers/Driver_USART.c
        ${CORSTONE310_COMMON_DIR}/device/source/platform_s_device_definition.c
        ${CORSTONE310_COMMON_DIR}/device/source/system_core_init.c
        ${CORSTONE310_COMMON_DIR}/native_drivers/ppc_corstone310_drv.c
        ${CORSTONE310_COMMON_DIR}/native_drivers/tgu_armv8_m_drv.c
        ${PLATFORM_DIR}/ext/target/arm/drivers/usart/cmsdk/uart_cmsdk_drv.c
        ${PLATFORM_DIR}/ext/target/arm/drivers/mpc_sie/mpc_sie_drv.c
        ${PLATFORM_DIR}/ext/target/arm/drivers/mpu/armv8m/mpu_armv8m_drv.c
        ${PLATFORM_DIR}/ext/target/arm/drivers/counter/armv8m/syscounter_armv8-m_cntrl_drv.c
        $<$<OR:$<BOOL:${TEST_NS_SLIH_IRQ}>,$<BOOL:${TEST_NS_FLIH_IRQ}>>:${CORSTONE310_COMMON_DIR}/plat_test.c>
        $<$<BOOL:${TFM_PARTITION_PLATFORM}>:${CORSTONE310_COMMON_DIR}/services/src/tfm_platform_system.c>
)

target_sources(tfm_sprt
    PRIVATE
        # SLIH test Partition and FLIH test Partition access the timer as ARoT Partitions.
        # Put the driver to SPRT so that both SLIH and FLIH tests can access it.
        $<$<OR:$<BOOL:${TEST_NS_SLIH_IRQ}>,$<BOOL:${TEST_NS_FLIH_IRQ}>>:${PLATFORM_DIR}/ext/target/arm/drivers/timer/armv8m/systimer_armv8-m_drv.c>
)

target_compile_options(platform_s
    PUBLIC
        ${COMPILER_CMSE_FLAG}
)

#========================= Platform Non-Secure ================================#

target_sources(platform_ns
    PRIVATE
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers/Driver_USART.c
        ${CORSTONE310_COMMON_DIR}/device/source/platform_ns_device_definition.c
        ${CORSTONE310_COMMON_DIR}/device/source/system_core_init.c
        ${PLATFORM_DIR}/ext/target/arm/drivers/flash/emulated/emulated_flash_drv.c
        ${PLATFORM_DIR}/ext/target/arm/drivers/usart/cmsdk/uart_cmsdk_drv.c
)

target_include_directories(platform_ns
    PUBLIC
        ${CORSTONE310_COMMON_DIR}
        ${CMAKE_SOURCE_DIR}
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers
        ${CORSTONE310_COMMON_DIR}/cmsis_drivers/config/non_secure
        ${CORSTONE310_COMMON_DIR}/device
        ${CORSTONE310_COMMON_DIR}/device/include
        ${CORSTONE310_COMMON_DIR}/device/source/armclang
        ${CORSTONE310_COMMON_DIR}/native_drivers
        ${CORSTONE310_COMMON_DIR}/partition
        ${CMAKE_CURRENT_SOURCE_DIR}/device/config
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${PLATFORM_DIR}/ext/common
        ${PLATFORM_DIR}/ext/target/arm/drivers/usart/cmsdk
        ${PLATFORM_DIR}/ext/target/arm/drivers/usart/common
        ${PLATFORM_DIR}/ext/target/arm/drivers/mpc_sie
        ${PLATFORM_DIR}/ext/target/arm/drivers/counter/armv8m
        ${PLATFORM_DIR}/ext/target/arm/drivers/timer/armv8m
        ${PLATFORM_DIR}/ext/target/arm/drivers/mpu/armv8m
)

#========================= Platform BL2 =======================================#

if(BL2)
    target_sources(platform_bl2
        PRIVATE
            ${CORSTONE310_COMMON_DIR}/cmsis_drivers/Driver_USART.c
            ${CORSTONE310_COMMON_DIR}/device/source/platform_s_device_definition.c
            ${CORSTONE310_COMMON_DIR}/device/source/system_core_init.c
            ${PLATFORM_DIR}/ext/target/arm/drivers/flash/emulated/emulated_flash_drv.c
            ${PLATFORM_DIR}/ext/target/arm/drivers/usart/cmsdk/uart_cmsdk_drv.c
    )

    target_include_directories(platform_bl2
        PUBLIC
            ${CORSTONE310_COMMON_DIR}/cmsis_drivers
            ${CORSTONE310_COMMON_DIR}/cmsis_drivers/config/secure
            ${CORSTONE310_COMMON_DIR}/device
            ${CORSTONE310_COMMON_DIR}/device/include
            ${CORSTONE310_COMMON_DIR}/device/source/armclang
            ${CORSTONE310_COMMON_DIR}/native_drivers
            ${CORSTONE310_COMMON_DIR}/partition
            ${CORSTONE310_COMMON_DIR}/services/src
            ${CMAKE_CURRENT_SOURCE_DIR}/device/config
            ${PLATFORM_DIR}/ext/target/arm/drivers/usart/cmsdk
            ${PLATFORM_DIR}/ext/target/arm/drivers/usart/common
            ${PLATFORM_DIR}/ext/target/arm/drivers/mpc_sie
            ${PLATFORM_DIR}/ext/target/arm/drivers/counter/armv8m
            ${PLATFORM_DIR}/ext/target/arm/drivers/timer/armv8m
            ${PLATFORM_DIR}/ext/target/arm/drivers/mpu/armv8m

        PRIVATE
            ${CORSTONE310_COMMON_DIR}
            ${CMAKE_SOURCE_DIR}
    )
endif()

#========================= tfm_spm ============================================#

target_sources(tfm_spm
    PRIVATE
        ${CORSTONE310_COMMON_DIR}/target_cfg.c
        ${CORSTONE310_COMMON_DIR}/tfm_hal_platform.c
        ${PLATFORM_DIR}/ext/common/mpc_ppc_faults.c
        ${PLATFORM_DIR}/ext/common/tfm_hal_platform_v8m.c
        ${PLATFORM_DIR}/ext/common/tfm_hal_isolation_v8m.c

        ${CMAKE_CURRENT_SOURCE_DIR}/dma_init.c
        ${CMAKE_CURRENT_SOURCE_DIR}/tfm_peripherals_def.c
        $<$<OR:$<BOOL:${CONFIG_TFM_FLIH_API}>,$<BOOL:${CONFIG_TFM_SLIH_API}>>:${PLATFORM_DIR}/ext/common/tfm_interrupts.c>
)
