target_include_directories(ns_app
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/stm32l5
)

target_sources(ns_app PRIVATE
    stm32l5/stm32l562e_discovery.c
)

add_subdirectory(CRYP_AESModes)