list(GET TEST_TARGET_LIST 1 SECOND_PART)

file(GLOB MY_SOURCES "src/${SECOND_PART}/*.c")
target_include_directories(ns_app PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/src/${SECOND_PART}
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_sources(ns_app PRIVATE
    ${MY_SOURCES}
)
