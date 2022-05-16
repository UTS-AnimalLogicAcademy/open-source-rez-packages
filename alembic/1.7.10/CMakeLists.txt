cmake_minimum_required (VERSION 2.8)

include(RezBuild)
rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(BOOST_ROOT $ENV{REZ_BOOST_ROOT})
set_option(PYILMBASE_ROOT $ENV{REZ_PYILMBASE_ROOT})
set_option(ALEMBIC_PYILMBASE_MODULE_DIRECTORY $ENV{REZ_PYILMBASE_ROOT}/lib64/python2.7/site-packages)
set_option(ILMBASE_ROOT $ENV{REZ_ILMBASE_ROOT})
set_option(USE_PYALEMBIC TRUE)
set_option(USE_IEXMATH TRUE)
set_option(LIBPYTHON_VERSION 2.7)
set_option(BUILD_STATIC_LIBS FALSE)
set_option(BUILD_SHARED_LIBS TRUE)

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/alembic-1.7.10)
add_subdirectory("alembic-1.7.10")
