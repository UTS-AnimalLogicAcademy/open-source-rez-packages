cmake_minimum_required (VERSION 3.2)

#include(RezBuild)
#rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/USD-0.8.4)

#alembic plugin
set_option(ALEMBIC_DIR $ENV{REZ_ALEMBIC_ROOT})
set_option(ALEMBIC_LIBRARY_DIR $ENV{REZ_ALEMBIC_ROOT}/lib)
set_option(ALEMBIC_INCLUDE_DIR $ENV{REZ_ALEMBIC_ROOT}/include)
set_option(PXR_BUILD_ALEMBIC_PLUGIN OFF)

# boost
set_option(BOOST_ROOT $ENV{REZ_BOOST_ROOT})

# tbb
set_option(TBB_ROOT_DIR $ENV{REZ_TBB_ROOT})
set_option(TBB_INCLUDE_DIR $ENV{REZ_TBB_ROOT}/include)
set_option(TBB_LIBRARY $ENV{REZ_TBB_ROOT}/lib/intel64/gcc4.4/)

# openexr
set_option(OPENEXR_LOCATION $ENV{REZ_OPENEXR_ROOT})
set_option(OPENEXR_LIBRARY_DIR $ENV{REZ_OPENEXR_ROOT}/lib)
set_option(OPENEXR_INCLUDE_DIR $ENV{REZ_OPENEXR_ROOT}/include)

# oiio
set_option(OIIO_LIBRARIES
$ENV{REZ_OIIO_ROOT}/lib64/libOpenImageIO.so
$ENV{REZ_OIIO_ROOT}/lib64/libOpenImageIO_Util.so
)
set_option(OIIO_INCLUDE_DIR $ENV{REZ_OIIO_ROOT}/include)

# opensubdiv
set_option(OPENSUBDIV_INCLUDE_DIR $ENV{REZ_OPENSUBDIV_ROOT}/include)
set_option(OPENSUBDIV_LIBRARIES
$ENV{REZ_OPENSUBDIV_ROOT}/lib/libosdCPU.so
$ENV{REZ_OPENSUBDIV_ROOT}/lib/libosdGPU.so
)

# ptex
set_option(PTEX_LOCATION $ENV{REZ_PTEX_ROOT})
set_option(PTEX_INCLUDE_DIR $ENV{REZ_PTEX_ROOT}/include)
set_option(PTEX_LIBRARY $ENV{REZ_PTEX_ROOT}/lib64/libPtex.so)

set_option(MAYA_BASE_DIR $ENV{MAYA_BASE_DIR})
set_option(MAYA_LOCATION $ENV{MAYA_BASE_DIR})
set_option(MAYA_tbb_LIBRARY $ENV{REZ_TBB_ROOT}/lib/intel64/gcc4.4/libtbb.so)
set_option(PXR_BUILD_MAYA_PLUGIN ON)


#set_option(PXR_BUILD_DOCUMENTATION ON)
add_subdirectory("USD-0.8.4")
