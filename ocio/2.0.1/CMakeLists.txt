cmake_minimum_required (VERSION 2.8)

include(RezBuild)
rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/


set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/OpenColorIO-$ENV{BUILD_VERSION})

set_option(BUILD_USDMAYA_PXR_TRANSLATORS FALSE)

add_subdirectory("OpenColorIO-$ENV{BUILD_VERSION}")
