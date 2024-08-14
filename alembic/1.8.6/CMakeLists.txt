cmake_minimum_required (VERSION 2.8)

include(RezBuild)
rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(BOOST_ROOT $ENV{REZ_BOOST_ROOT})
set_option(IMATH_ROOT $ENV{REZ_IMATH_ROOT})
set_option(USE_PYALEMBIC TRUE)
#set_option(USE_IEXMATH TRUE)
set_option(LIBPYTHON_VERSION $ENV{REZ_PYTHON_VERSION})
set_option(BUILD_STATIC_LIBS FALSE)
set_option(BUILD_SHARED_LIBS TRUE)

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/alembic-1.8.6)
add_subdirectory("alembic-1.8.6")
