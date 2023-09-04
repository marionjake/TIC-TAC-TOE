cmake_minimum_required(VERSION 3.25) # FetchContent is available in 3.11+
project(TIC-TAC-TOE)

set(CMAKE_CXX_STANDARD 20)

add_subdirectory(vendor/raylib)

# Our Project
file(GLOB_RECURSE SOURCES "src/*.cpp")
add_executable(${PROJECT_NAME} ${SOURCES})

target_include_directories(${PROJECT_NAME} PRIVATE vendor/raylib/src)
target_link_libraries(${PROJECT_NAME} raylib)

