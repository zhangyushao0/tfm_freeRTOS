#-------------------------------------------------------------------------------
# Copyright (c) 2020-2023, Arm Limited. All rights reserved.
# Copyright (c) 2022 Cypress Semiconductor Corporation (an Infineon company)
# or an affiliate of Cypress Semiconductor Corporation. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#
#-------------------------------------------------------------------------------

if(BL2)
    set(BL2_TRAILER_SIZE 0x10000 CACHE STRING "Trailer size")
else()
    #No header if no bootloader, but keep IMAGE_CODE_SIZE the same
    set(BL2_TRAILER_SIZE 0x10400 CACHE STRING "Trailer size")
endif()

# Make FLIH IRQ test as the default IRQ test
set(TEST_NS_SLIH_IRQ                  OFF   CACHE BOOL    "Whether to build NS regression Second-Level Interrupt Handling tests")

# Platform-specific configurations
set(CONFIG_TFM_USE_TRUSTZONE          ON )
set(TFM_MULTI_CORE_TOPOLOGY           OFF)

set(PLATFORM_SLIH_IRQ_TEST_SUPPORT    ON)
set(PLATFORM_FLIH_IRQ_TEST_SUPPORT    ON)
