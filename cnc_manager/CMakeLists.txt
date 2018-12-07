cmake_minimum_required(VERSION 3.5)

# Set the project name
project(cnc_controller)

set (CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/Build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")


set(pathalgo_DIR ${PROJECT_SOURCE_DIR}/../pathalgo)

#find_package(pathalgo REQUIRED)

# Add a library with the above sources
add_library(${PROJECT_NAME}_library STATIC
    src/Hello.cpp
)

add_library(cnc_manager::lib ALIAS 
    ${PROJECT_NAME}_library
)

target_include_directories(${PROJECT_NAME}_library
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Create the executable
add_executable(${PROJECT_NAME} src/main.cpp)

# Link the static library from subproject1 using it's alias sub::lib1
# Link the header only library from subproject2 using it's alias sub::lib2
# This will cause the include directories for that target to be added to this project
target_link_libraries(${PROJECT_NAME}
    PRIVATE
        cnc_manager::lib
        pathalgo::lib
)