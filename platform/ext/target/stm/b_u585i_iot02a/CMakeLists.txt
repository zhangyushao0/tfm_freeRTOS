#-------------------------------------------------------------------------------
# Copyright (c) 2020, Arm Limited. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#
#-------------------------------------------------------------------------------

cmake_policy(SET CMP0076 NEW)

set(B_U585I_IOT02A_DIR ${CMAKE_CURRENT_LIST_DIR})
set(STM_COMMON_DIR ${B_U585I_IOT02A_DIR}/../common)

#def for stm32u5xx
include(${STM_COMMON_DIR}/stm32u5xx/CMakeLists.txt)
#========================= Platform defs ===============================#

# Specify the location of platform specific build dependencies.
target_sources(tfm_s
    PRIVATE
        ${STM_COMMON_DIR}/stm32u5xx/Device/Source/startup_stm32u5xx_s.c
        ${STM_COMMON_DIR}/stm32u5xx/bl2/low_level_ospi_device.c
        ${STM_COMMON_DIR}/hal/CMSIS_Driver/low_level_ospi_flash.c
        ${STM_COMMON_DIR}/hal/Components/mx25lm51245g/mx25lm51245g.c
        ${B_U585I_IOT02A_DIR}/src/b_u585i_iot02a_ospi.c
)

if(STSAFEA)
    set(STSAFEA_INTERFACE_SRC_DIR ${B_U585I_IOT02A_DIR}/src/)
    include(${STM_COMMON_DIR}/secure_element/CMakeLists.txt)
endif()

if(NS)
    target_sources(tfm_ns
        PRIVATE
            ${STM_COMMON_DIR}/stm32u5xx/Device/Source/startup_stm32u5xx_ns.c
    )
endif()

if(BL2)
    target_sources(bl2
        PRIVATE
            ${STM_COMMON_DIR}/stm32u5xx/Device/Source/startup_stm32u5xx_bl2.c
            ${STM_COMMON_DIR}/stm32u5xx/bl2/low_level_ospi_device.c
            ${STM_COMMON_DIR}/hal/CMSIS_Driver/low_level_ospi_flash.c
            ${STM_COMMON_DIR}/hal/Components/mx25lm51245g/mx25lm51245g.c
            ${B_U585I_IOT02A_DIR}/src/b_u585i_iot02a_ospi.c
    )
endif()

install(FILES ${B_U585I_IOT02A_DIR}/include/flash_layout.h
              ${B_U585I_IOT02A_DIR}/include/region_defs.h
        DESTINATION  ${CMAKE_BINARY_DIR} )
set (BL2_FILE_TO_PREPROCESS ${CMAKE_CURRENT_BINARY_DIR}/image_macros_to_preprocess_bl2.c)
file(WRITE ${BL2_FILE_TO_PREPROCESS} ${BL2_PREPROCESSING})
install(FILES ${BL2_FILE_TO_PREPROCESS}
        DESTINATION ${CMAKE_BINARY_DIR} )
