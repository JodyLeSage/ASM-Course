cmake_minimum_required(VERSION 3.2)
project(Lab10 C CXX ASM)

enable_language(ASM_NASM)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -g -felf64")

file(GLOB LAB_ASM_FILES "*.nasm")
file(GLOB LAB_CPP_FILES "*.cpp")

add_executable(lab10 ${LAB_ASM_FILES} ${LAB_CPP_FILES})
