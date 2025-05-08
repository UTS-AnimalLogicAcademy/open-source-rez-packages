cmake_minimum_required(VERSION 2.6)

include(RezBuild)

set(FLANN_INCLUDE_DIR_HINTS $ENV{REZ_FLANN_ROOT}/include)
set(FLANN_LIBRARY_DIR_HINTS $ENV{REZ_FLANN_ROOT}/lib)

set(GLEW_INCLUDE_DIR_HINTS $ENV{REZ_GLEW_ROOT}/include)
set(GLEW_LIBRARY_DIR_HINTS $ENV{REZ_GLEW_ROOT}/lib64)


if (NOT DEFINED CMAKE_CUDA_COMPILER)
    message(STATUS "CMAKE_CUDA_COMPILER not defined, setting to native")
    set(CMAKE_CUDA_COMPILER /usr/local/cuda/bin/nvcc)
endif()

if (NOT DEFINED CMAKE_CUDA_ARCHITECTURES)
    message(STATUS "CMAKE_CUDA_ARCHITECTURES not defined, setting to native")
    set(CMAKE_CUDA_ARCHITECTURES native)
endif()

add_subdirectory(colmap)