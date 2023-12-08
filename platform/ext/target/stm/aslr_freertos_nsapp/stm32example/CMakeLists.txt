target_include_directories(ns_app
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/stm32l5
)

target_sources(ns_app PRIVATE
    stm32l5/stm32l562e_discovery.c
)
list(GET TEST_TARGET_LIST 1 SECOND_PART)
add_subdirectory(${SECOND_PART})