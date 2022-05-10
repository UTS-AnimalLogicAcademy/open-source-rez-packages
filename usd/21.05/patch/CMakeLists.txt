project(usd)

cmake_minimum_required(VERSION 3.12)

#########################################
# patch
#########################################

macro(set_option option value)
  set(${option} ${value} CACHE BOOL "" FORCE)
endmacro()
#set_option(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/USD-$ENV{VERSION})

set_option(PXR_BUILD_ALEMBIC_PLUGIN OFF)
set_option(PXR_BUILD_IMAGING ON)

set_option(DPXR_ENABLE_OPENVDB_SUPPORT OFF)

#set_option(PYTHON_LIBRARY $ENV{PYTHON_LIB_HOME}/libpython2.7.so)

# jemalloc
set_option(PXR_MALLOC_LIBRARY $ENV{REZ_JEMALLOC_ROOT}/lib/libjemalloc.so)

#alembic plugin
#set_option(ALEMBIC_DIR $ENV{REZ_ALEMBIC_ROOT})
#set_option(ALEMBIC_LIBRARY_DIR $ENV{REZ_ALEMBIC_ROOT}/lib)
#set_option(ALEMBIC_INCLUDE_DIR $ENV{REZ_ALEMBIC_ROOT}/include)
set_option(PXR_BUILD_ALEMBIC_PLUGIN OFF)

# boost
#set_option(BOOST_ROOT $ENV{REZ_BOOST_ROOT})

# tbb
#set_option(TBB_ROOT_DIR $ENV{REZ_TBB_ROOT})
#set_option(TBB_INCLUDE_DIR $ENV{REZ_TBB_ROOT}/include)
#set_option(TBB_LIBRARY $ENV{TBB_LIBRARIES})

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
set_option(PXR_BUILD_OPENIMAGEIO_PLUGIN ON)

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

# embree
set_option(EMBREE_LOCATION $ENV{REZ_EMBREE_LIB_ROOT})
set_option(PXR_BUILD_EMBREE_PLUGIN OFF)

#set_option(PXR_BUILD_MATERIALX_PLUGIN OFF)

# renderman
set_option(RENDERMAN_LOCATION $ENV{RMANTREE})
set_option(PXR_BUILD_PRMAN_PLUGIN OFF)

# glew
set(GLEW_LOCATION $ENV{REZ_GLEW_ROOT})

# open color io
set(OCIO_INCLUDE_DIRS $ENV{REZ_OCIO_ROOT}/include)
set(OCIO_LIBRARIES $ENV{REZ_OCIO_ROOT}/lib/libOpenColorIO.so)
set(OCIO_LOCATION $ENV{REZ_OCIO_ROOT})
set_option(PXR_BUILD_OPENCOLORIO_PLUGIN OFF)

set_option(PXR_BUILD_TESTS OFF)
#########################################

if (NOT CMAKE_SIZEOF_VOID_P EQUAL 8)
    if (WIN32)
        message(FATAL_ERROR "Compiler does not support 64-bit builds. "
                "If you are using Visual Studio, make sure you are in the "
                "x64 command prompt and have specified the Win64 cmake "
                "generator (e.g., -G \"Visual Studio 14 2015 Win64\")")
    else()
        message(FATAL_ERROR "Compiler does not support 64-bit builds.")
    endif()
endif()

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH}
                      ${CMAKE_SOURCE_DIR}/cmake/defaults
                      ${CMAKE_SOURCE_DIR}/cmake/modules
                      ${CMAKE_SOURCE_DIR}/cmake/macros)

include(Options)
include(ProjectDefaults)
include(Packages)

# This has to be defined after Packages is included, because it relies on the
# discovered path to the python executable.
set(PXR_PYTHON_SHEBANG "${PYTHON_EXECUTABLE}" 
    CACHE 
    STRING
    "Replacement path for Python #! line."
)

# CXXDefaults will set a variety of variables for the project.
# Consume them here. This is an effort to keep the most common
# build files readable.
include(CXXDefaults)
add_definitions(${_PXR_CXX_DEFINITIONS})
set(CMAKE_CXX_FLAGS "${_PXR_CXX_FLAGS} ${CMAKE_CXX_FLAGS}")

include(Public)

pxr_toplevel_prologue()

add_subdirectory(pxr)
add_subdirectory(extras)

if (${PXR_BUILD_PRMAN_PLUGIN})
    add_subdirectory(third_party/renderman-${RENDERMAN_VERSION_MAJOR})
endif()

if (PXR_BUILD_DOCUMENTATION)
    pxr_build_documentation()
endif()   

pxr_toplevel_epilogue()
