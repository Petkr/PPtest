cmake_minimum_required(VERSION 3.20)

PPcmake_package("github.com" "Petkr" "PPcmake" "1.0.4")

function(PPtest TARGET_NAME TEST_SOURCES F)
    add_custom_target("${TARGET_NAME}")

    foreach(test_source ${TEST_SOURCES})
        get_filename_component(_test "${test_source}" NAME_WE)

        add_executable("${_test}" "${test_source}")
        target_compile_options("${_test}" PUBLIC "-include" "iostream")
        target_include_directories("${_test}" PUBLIC "${CMAKE_SOURCE_DIR}" "${PPCMAKE_VENDORDIR}/include")
        target_link_directories("${_test}" PUBLIC "${PPCMAKE_VENDORDIR}/lib/")
        target_link_libraries("${_test}" "PPtest")
        add_test("${_test}" "${_test}")
        add_dependencies("${TARGET_NAME}" "${_test}")

        cmake_language(CALL "${F}" "${_test}")
    endforeach()
endfunction()
