cmake_minimum_required(VERSION 3.20)

project(PPtest VERSION "1.0.4")

file(DOWNLOAD "https://raw.githubusercontent.com/Petkr/PPcmake/1.0.4/PPcmake.cmake" "${CMAKE_BINARY_DIR}/PPcmake.cmake")
include("${CMAKE_BINARY_DIR}/PPcmake.cmake")

PPcmake_package("github.com" "Petkr" "PPcmake" "1.0.4")
PPcmake_package("github.com" "Petkr" "PPstyle" "1.0.15")

PPcmake_add_subdirectory(PPtest)

PPcmake_install_file("PPtest.cmake")

PPcmake_cpack()
