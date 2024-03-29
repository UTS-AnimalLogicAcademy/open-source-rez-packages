cmake_minimum_required(VERSION 3.12)

project(usd)

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
                      ${CMAKE_SOURCE_DIR_APPENDED}/cmake/defaults
                      ${CMAKE_SOURCE_DIR_APPENDED}/cmake/modules
                      ${CMAKE_SOURCE_DIR_APPENDED}/cmake/macros)

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

# disable building of the core usd libraries, for when you just want to rebuild a dcc plugin:
if (${PXR_BUILD_USD})
    add_subdirectory(pxr)
    add_subdirectory(extras)
endif()

if (PXR_BUILD_PRMAN_PLUGIN)
    set(prmanPluginPath "third_party/renderman-${RENDERMAN_VERSION_MAJOR}")

    get_filename_component(prmanPluginAbsPath "${prmanPluginPath}" ABSOLUTE)
    if (EXISTS "${prmanPluginAbsPath}")
        add_subdirectory("${prmanPluginPath}")
    else()
        message(FATAL_ERROR "No RenderMan plugin available for "
                "RenderMan ${RENDERMAN_VERSION_MAJOR}")
    endif()
endif()

if (PXR_BUILD_DOCUMENTATION)
    pxr_build_documentation()
endif()   

pxr_toplevel_epilogue()
