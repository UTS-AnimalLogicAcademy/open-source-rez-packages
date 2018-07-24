cmake_minimum_required (VERSION 2.8)

include(RezBuild)
rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/googletest-release-$ENV{BUILD_VERSION})
set_option(CMAKE_POSITION_INDEPENDENT_CODE ON)
set_option(BUILD_SHARED_LIBS ON)

add_subdirectory("googletest-release-$ENV{BUILD_VERSION}")
