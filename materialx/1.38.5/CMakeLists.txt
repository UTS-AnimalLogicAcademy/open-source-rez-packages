cmake_minimum_required (VERSION 3.5)

include(RezBuild)
rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/MaterialX)
set_option(MATERIALX_BUILD_PYTHON ON)
set_option(MATERIALX_BUILD_VIEWER ON)

set_option(MATERIALX_BUILD_SHARED_LIBS ON)

add_subdirectory("MaterialX")
