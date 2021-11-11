cmake_minimum_required(VERSION 3.20)

file(GLOB sources "*.[hc]pp")

add_library("PPtest" SHARED "${sources}")
target_compile_features("PPtest" PUBLIC cxx_std_20)

install(TARGETS "PPtest" LIBRARY)
install(DIRECTORY "${CMAKE_CURRENT_LIST_DIR}" DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}" FILES_MATCHING PATTERN "*.hpp")

include(PPstyle)
PPstyle("PPtest")
