#固定這樣打
cmake_minimum_required(VERSION 3.5)

#設定project名稱
project(cnc_manager)

#固定這樣打
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/Build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)

#宣告自己的project的執行cpp
add_library(${PROJECT_NAME}_library STATIC
    src/Hello.cpp
)

#宣告自己的library別名
add_library(cnc_manager::lib ALIAS 
    ${PROJECT_NAME}_library
)

#宣告自己project的.h路徑
target_include_directories(${PROJECT_NAME}_library
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

#新增執行檔
add_executable(${PROJECT_NAME} src/main.cpp)

#連結其他project的library及自己的.h路徑
target_link_libraries(${PROJECT_NAME}
    PRIVATE
        cnc_manager::lib
        pathalgo::lib
)