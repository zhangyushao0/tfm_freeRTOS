
target_include_directories(ns_app PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/simple
)

target_sources(ns_app PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/simple/core_portme.c
    ${CMAKE_CURRENT_SOURCE_DIR}/core_list_join.c
    ${CMAKE_CURRENT_SOURCE_DIR}/core_main.c
    ${CMAKE_CURRENT_SOURCE_DIR}/core_matrix.c
    ${CMAKE_CURRENT_SOURCE_DIR}/core_state.c
    ${CMAKE_CURRENT_SOURCE_DIR}/core_util.c
)