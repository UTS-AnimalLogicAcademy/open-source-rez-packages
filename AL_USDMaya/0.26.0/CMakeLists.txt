cmake_minimum_required (VERSION 2.8)

include(RezBuild)
rez_find_packages(PREFIX pkgs AUTO)

# make set stick in subdirectories:
macro(set_option option value)
  set(${option} ${value} CACHE INTERNAL "" FORCE)
endmacro()
# http://edsiper.linuxchile.cl/blog/2016/01/08/cmake-override-subdirectory-options/

set_option(CMAKE_PREFIX_PATH
  ${CMAKE_PREFIX_PATH}
  "$ENV{REZ_QT_ROOT}/5.6/gcc_64/lib/cmake/Qt5Gui"
)

set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/AL_USDMaya-0.25.0)

set_option(BOOST_ROOT $ENV{REZ_BOOST_ROOT})

set_option(TBB_ROOT_DIR $ENV{REZ_TBB_ROOT})
set_option(TBB_INCLUDE_DIR $ENV{REZ_TBB_ROOT}/include)
set_option(TBB_LIBRARY $ENV{REZ_TBB_ROOT}/lib/intel64/gcc4.4/)

set_option(OPENEXR_LOCATION $ENV{REZ_OPENEXR_ROOT})
set_option(OPENEXR_LIBRARY_DIR $ENV{REZ_OPENEXR_ROOT}/lib)
set_option(OPENEXR_INCLUDE_DIR $ENV{REZ_OPENEXR_ROOT}/include)

set_option(OIIO_LIBRARIES
$ENV{REZ_OIIO_ROOT}/lib64/libOpenImageIO.so
$ENV{REZ_OIIO_ROOT}/lib64/libOpenImageIO_Util.so
)
set_option(OIIO_INCLUDE_DIR $ENV{REZ_OIIO_ROOT}/include)

set_option(OPENSUBDIV_INCLUDE_DIR $ENV{REZ_OPENSUBDIV_ROOT}/include)
set_option(OPENSUBDIV_LIBRARIES
$ENV{REZ_OPENSUBDIV_ROOT}/lib/libosdCPU.so
$ENV{REZ_OPENSUBDIV_ROOT}/lib/libosdGPU.so
)

set_option(PTEX_LOCATION $ENV{REZ_PTEX_ROOT})
set_option(PTEX_INCLUDE_DIR $ENV{REZ_PTEX_ROOT}/include)
set_option(PTEX_LIBRARY $ENV{REZ_PTEX_ROOT}/lib64/libPtex.so)

set_option(MAYA_BASE_DIR $ENV{MAYA_BASE_DIR})
set_option(MAYA_LOCATION $ENV{MAYA_BASE_DIR})
set_option(MAYA_tbb_LIBRARY $ENV{REZ_TBB_ROOT}/lib/intel64/gcc4.4/libtbb.so)

set_option(USD_CONFIG_FILE $ENV{REZ_USD_ROOT}/pxrConfig.cmake)

add_subdirectory("AL_USDMaya-0.26.0")
