add_test(build_tests COMMAND ${CMAKE_COMMAND} -E true)
set_tests_properties(build_tests PROPERTIES DEPENDS build_tests_command)
add_custom_target(build_tests_command COMMAND ${CMAKE_CTEST_COMMAND})

macro(add_build_test target)
    add_executable("${target}" ${ARGN})
    add_test(NAME "${target}_test" COMMAND "${target}")
    add_dependencies(build_tests_command ${target})
endmacro()
