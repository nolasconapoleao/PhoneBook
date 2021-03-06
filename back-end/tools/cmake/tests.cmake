## macro that handles creation of unit test executable
macro (create_test target)
    ## To allow absolute header paths in includes
    include_directories(${CMAKE_SOURCE_DIR}/src/back-end)

    ## To create a target that can run via ctest
    add_test (NAME ${target} COMMAND $<TARGET_FILE:${target}>)
endmacro (create_test)
