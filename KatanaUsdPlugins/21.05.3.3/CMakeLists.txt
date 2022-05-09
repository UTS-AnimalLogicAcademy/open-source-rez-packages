cmake_minimum_required (VERSION 3.12)

#include(RezBuild)
#rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/KatanaUsdPlugins-$ENV{BUILD_VERSION})

#set_option(USD_ROOT $ENV{REZ_USD_ROOT})

set_option(USE_KATANA_THIRDPARTY_LIBS ON)
set_option(KATANA_API_LOCATION $ENV{KATANA_API_LOCATION})


add_subdirectory("KatanaUsdPlugins-$ENV{BUILD_VERSION}")
