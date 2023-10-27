#-------------------------------------------------------------------------------
# Copyright (c) 2020, Arm Limited. All rights reserved.
# Copyright (c) 2021 STMicroelectronics. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#
#-------------------------------------------------------------------------------

cmake_policy(SET CMP0076 NEW)

set(STM32L563E_DK_DIR ${CMAKE_CURRENT_LIST_DIR})
set(STM_COMMON_DIR ${STM32L563E_DK_DIR}/../common)
set(FREERTOS_DIR ${STM32L563E_DK_DIR}/FreeRTOS)
set(COMMON_DIR ${STM32L563E_DK_DIR}/../../../common)
set(TOP_DIR ${STM32L563E_DK_DIR}/../../../../..)
set(ASLR_DIR ${STM32L563E_DK_DIR}/aslr)
set(NS_APP_DIR ${STM32L563E_DK_DIR}/nsapp)
#NSAPP
add_executable(ns_app)
#def for stm32l5xx
include(${STM_COMMON_DIR}/stm32l5xx/CMakeLists.txt)


#NSAPP
target_sources(tfm_s
    PRIVATE
        ${STM_COMMON_DIR}/stm32l5xx/Device/Source/startup_stm32l5xx_s.c
)

target_compile_options(ns_app
    PUBLIC
        -mlong-calls
        -fno-jump-tables
)
set_target_properties(ns_app PROPERTIES
    SUFFIX ".axf"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)

target_link_options(ns_app
    PRIVATE
        $<$<C_COMPILER_ID:GNU>:-Wl,-Map=${CMAKE_BINARY_DIR}/bin/ns_app.map>
        $<$<C_COMPILER_ID:ARMClang>:--map>
        $<$<C_COMPILER_ID:IAR>:--map\;${CMAKE_BINARY_DIR}/bin/ns_app.map>
)

add_convert_to_bin_target(ns_app)
target_include_directories(ns_app
    PUBLIC
        ${STM32L563E_DK_DIR}/include
        ${NS_APP_DIR}/include
)
target_link_libraries(ns_app
    PUBLIC
        platform_common_interface
        platform_region_defs
        freertos
)
target_sources(ns_app
    PRIVATE
        ${STM_COMMON_DIR}/stm32l5xx/Device/Source/startup_stm32l5xx_ns.c
        ${NS_APP_DIR}/src/main_ns.c
)

#FreeRTOS
add_library(freertos STATIC)
target_include_directories(freertos
    PUBLIC
        ${FREERTOS_DIR}/include
        ${FREERTOS_DIR}/port/GCC
)
target_sources(freertos
    PRIVATE
        ${FREERTOS_DIR}/src/croutine.c
        ${FREERTOS_DIR}/src/event_groups.c
        ${FREERTOS_DIR}/src/list.c
        ${FREERTOS_DIR}/src/queue.c
        ${FREERTOS_DIR}/src/stream_buffer.c
        ${FREERTOS_DIR}/src/tasks.c
        ${FREERTOS_DIR}/src/timers.c
        ${FREERTOS_DIR}/port/MemMang/heap_4.c
        ${FREERTOS_DIR}/port/GCC/port.c
        ${FREERTOS_DIR}/port/GCC/portasm.c
)










if(BL2)
    target_sources(bl2
        PRIVATE
            ${STM_COMMON_DIR}/stm32l5xx/Device/Source/startup_stm32l5xx_bl2.c
            ${STM_COMMON_DIR}/stm32l5xx/bl2/low_level_ospi_device.c
            ${STM_COMMON_DIR}/hal/CMSIS_Driver/low_level_ospi_flash.c
            ${STM_COMMON_DIR}/stm32l5xx/hal/Src/stm32l5xx_hal_ospi.c
            ${STM_COMMON_DIR}/hal/Components/mx25lm51245g/mx25lm51245g.c
            ${STM32L563E_DK_DIR}/src/stm32l562e_discovery_ospi.c
    )
    target_include_directories(bl2
        PRIVATE
            ${STM_COMMON_DIR}/Components/mx25lm51245g
    )
endif()

target_include_directories(platform_s
    PUBLIC
    ${STM32L563E_DK_DIR}/ota
    ${STM32L563E_DK_DIR}/copytext
)

target_sources(platform_s
    PRIVATE
    ${STM32L563E_DK_DIR}/ota/flash.c
    ${STM32L563E_DK_DIR}/ota/port.c
    ${STM32L563E_DK_DIR}/ota/rand.c
    ${STM32L563E_DK_DIR}/ota/loader.c
    ${STM32L563E_DK_DIR}/copytext/copytext.c
)



install(FILES ${STM32L563E_DK_DIR}/include/flash_layout.h
              ${STM32L563E_DK_DIR}/include/region_defs.h
        DESTINATION ${CMAKE_BINARY_DIR} )
set (BL2_FILE_TO_PREPROCESS ${CMAKE_CURRENT_BINARY_DIR}/image_macros_to_preprocess_bl2.c)
file(WRITE ${BL2_FILE_TO_PREPROCESS} ${BL2_PREPROCESSING})
install(FILES ${BL2_FILE_TO_PREPROCESS}
        DESTINATION ${CMAKE_BINARY_DIR} )
