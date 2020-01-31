cmake_minimum_required (VERSION 3.10)

#include(RezBuild)
#rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/nuke-ML-server-$ENV{VERSION})

set_option(NUKE_INSTALL_PATH $ENV{NUKE_LOCATION})

add_subdirectory("nuke-ML-server-$ENV{VERSION}")
