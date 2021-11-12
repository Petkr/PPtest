cmake_minimum_required(VERSION 3.20)

project(PPtest VERSION "1.0.2")

include(GNUInstallDirs)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/vendor/${CMAKE_INSTALL_DATADIR}/cmake/")

file(DOWNLOAD "https://github.com/Petkr/PPstyle/releases/download/1.0.9/PPstyle-1.0.9-Linux.tar.gz" "PPstyle.tar.gz")
file(ARCHIVE_EXTRACT INPUT "PPstyle.tar.gz" DESTINATION "${CMAKE_CURRENT_LIST_DIR}/vendor")

add_subdirectory(PPtest)

install(FILES "PPtest.cmake" DESTINATION "${CMAKE_INSTALL_DATADIR}/cmake/")

set(CPACK_GENERATOR "TGZ")
include(CPack)
