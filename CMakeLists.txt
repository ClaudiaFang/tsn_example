cmake_minimum_required (VERSION 3.5)

project(ITRI_TSN_CNC_ROOT)
set (CMAKE_CXX_STANDARD 11)
set (CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/Build)

include(CheckIncludeFiles)
include(GNUInstallDirs)

add_subdirectory(cnc_manager)
add_subdirectory(pathalgo)