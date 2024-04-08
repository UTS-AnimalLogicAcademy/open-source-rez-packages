cmake_minimum_required (VERSION 3.12)
set (CMAKE_CXX_STANDARD 17)
#include(RezBuild)
#rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/KatanaUsdPlugins-$ENV{BUILD_VERSION})

#set_option(USD_ROOT $ENV{REZ_USD_ROOT})

set_option(USE_KATANA_TBB ON)
set_option(USE_KATANA_BOOST ON)
set_option(USE_KATANA_USD ON)
set_option(USE_KATANA_PYTHON ON)
set_option(KATANA_API_LOCATION $ENV{KATANA_API_LOCATION})
set_option(Boost_NO_WARN_NEW_VERSIONS 1)


add_subdirectory("KatanaUsdPlugins-$ENV{BUILD_VERSION}")
