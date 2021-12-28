cmake_minimum_required(VERSION 3.20)

file(GLOB sources "*.cpp")
file(GLOB headers "*.hpp")

add_library("PPtest" SHARED "${sources}" "${headers}")
set_target_properties("PPtest" PROPERTIES PUBLIC_HEADER "${headers}")

target_compile_options("PPtest" PUBLIC "-std=c++20")

install(TARGETS "PPtest"
        LIBRARY
        PUBLIC_HEADER DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/PPtest")

PPstyle("PPtest")
