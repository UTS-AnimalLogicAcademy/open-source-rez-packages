# Copyright 2020 Foundry
#
# Licensed under the Apache License, Version 2.0 (the "Apache License")
# with the following modification; you may not use this file except in
# compliance with the Apache License and the following modification to it:
# Section 6. Trademarks. is deleted and replaced with:
#
# 6. Trademarks. This License does not grant permission to use the trade
# names, trademarks, service marks, or product names of the Licensor
# and its affiliates, except as required to comply with Section 4(c) of
# the License and to reproduce the content of the NOTICE file.
#
# You may obtain a copy of the Apache License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the Apache License with the above modification is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the Apache License for the specific
# language governing permissions and limitations under the Apache License.


function(add_boost_interface)
    if(NOT DEFINED Python_VERSION_MAJOR)
    message(FATL_ERROR "Unable to read Python_VERSION_MAJOR from Python "
        "FindPackage, therefore unable to build Boost_PYTHON_COMPONENT")
    endif()
    set(Boost_PYTHON_COMPONENT
            python${Python_VERSION_MAJOR}${Python_VERSION_MINOR})
    set(Boost_PYTHON_COMPONENT ${Boost_PYTHON_COMPONENT} PARENT_SCOPE)
    if(USE_KATANA_BOOST)
        # Setup the variables to use the Katana builds.
        set(BOOST_LIBRARYDIR ${KATANA_API_LOCATION}/bin)
        set(BOOST_INCLUDEDIR ${KATANA_API_LOCATION}/external/foundryboost/include)

        set(Boost_NO_SYSTEM_PATHS ON)
        set(Boost_NO_BOOST_CMAKE ON)
        set(Boost_USE_MULTITHREADED ON)
        set(Boost_USE_RELEASE_LIBS ON)
        set(Boost_USE_DEBUG_LIBS OFF)
        set(Boost_NAMESPACE foundryboost)
        set(Boost_USE_STATIC_LIBS OFF)
        if(MSVC)
            add_definitions(-DBOOST_ALL_NO_LIB)
            add_definitions(-DBOOST_ALL_DYN_LINK)
            set(Boost_ARCHITECTURE -x64)
            set(Boost_COMPILER -vc141)
        endif()
        add_compile_definitions(Boost_NAMESPACE=${Boost_NAMESPACE})
    endif()
    find_package(Boost 1.70.0
        COMPONENTS
            filesystem
            ${Boost_PYTHON_COMPONENT}
            thread
            system
            regex
        REQUIRED)
endfunction(add_boost_interface) # add_boost_interface


function(add_python_interface)
    if (TARGET Python::Python)
        return()
    endif()

    if(USE_KATANA_PYTHON)
        include(${KATANA_API_LOCATION}/plugin_apis/cmake/python-variables.cmake)

        add_library(Python::Python INTERFACE IMPORTED)
        # Parent_scope required for Python_EXECUTABLE variable is used in
        # the parent cmake files.
        set(Python_EXECUTABLE
            ${KATANA_API_LOCATION}/bin/${KATANA_PYTHON_EXECUTABLE}
            PARENT_SCOPE)
        set(Python_LIBRARIES
            ${KATANA_API_LOCATION}/bin/${KATANA_PYTHON_LIB})
        set(Python_INCLUDE_DIRS
            ${KATANA_API_LOCATION}/bin/${KATANA_PYTHON_INCLUDE_FOLDER})
        set_target_properties(Python::Python
            PROPERTIES
                INTERFACE_INCLUDE_DIRECTORIES "${Python_INCLUDE_DIRS}"
                INTERFACE_LINK_LIBRARIES "${Python_LIBRARIES}"
        )
        set(Python_VERSION_MAJOR ${KATANA_PYTHON_VERSION_MAJOR} PARENT_SCOPE)
        set(Python_VERSION_MINOR ${KATANA_PYTHON_VERSION_MINOR} PARENT_SCOPE)
    elseif(DEFINED Python_ROOT_DIR)
        find_package(Python COMPONENTS Interpreter Development REQUIRED)
        if(Python_INCLUDE_DIRS AND Python_LIBRARIES AND Python_EXECUTABLE)
            # add_library(Python::Python INTERFACE IMPORTED)
            set_target_properties(Python::Python
                PROPERTIES
                    INTERFACE_INCLUDE_DIRECTORIES "${Python_INCLUDE_DIRS}"
                    INTERFACE_LINK_LIBRARIES "${Python_LIBRARIES}"
            )
        else()
            message(FATAL_ERROR "Cannot find Python libraries or headers"
                " using find_package(Python). Ensure the Python_ROOT_DIR is"
                " specified correctly. Or Ensure that Python_EXECUTABLE is"
                " defined in your build script"
            )
        endif()
    elseif(DEFINED Python_DIR AND DEFINED Python_EXECUTABLE)
        find_package(Python CONFIG REQUIRED)
    else()
        message(FATAL_ERROR "Cannot search for Python libraries, must"
            " specify either USE_KATANA_PYTHON to use the Python shipped "
            " with Katana, Python_ROOT_DIR to use default CMake"
            " FindPackage or Python_DIR and Python_EXECUTABLE to use a"
            " custom cmake config"
        )
    endif()
endfunction() #add_python_interface


function(add_tbb_interface)
    if(USE_KATANA_TBB)
        # We want to create CMake interfaces to make linking neater and to
        # reduce complexity later in the build
        if (TARGET TBB::tbb)
            return()
        endif()
        add_library(TBB::tbb INTERFACE IMPORTED)
        if(KATANA_API_LOCATION)
            if(UNIX)
                set(tbb_lib_suffix so)
            elseif(WIN32)
                set(tbb_lib_suffix lib)
            endif() # OS Type
            set_target_properties(TBB::tbb
                PROPERTIES
                    INTERFACE_INCLUDE_DIRECTORIES
                        "${KATANA_API_LOCATION}/external/tbb/include"
                    INTERFACE_COMPILE_DEFINITIONS
                        "__TBB_NO_IMPLICIT_LINKAGE=1"
                    INTERFACE_LINK_LIBRARIES
                        "${KATANA_API_LOCATION}/bin/libtbb.${tbb_lib_suffix}"
            )
        else()
            message(FATAL_ERROR "KATANA_API_LOCATION must be set if using the"
                " USE_KATANA_TBB option")
        endif() # If KATANA_API_LOCATION
    elseif(DEFINED TBB_DIR)
        find_package(TBB CONFIG REQUIRED)
    else()
        find_package(TBB REQUIRED)
        add_library(TBB::tbb INTERFACE IMPORTED)
        if(TBB_tbb_FOUND)
            set_target_properties(TBB::tbb
                PROPERTIES
                    INTERFACE_INCLUDE_DIRECTORIES "${TBB_INCLUDE_DIRS}"
                    INTERFACE_COMPILE_DEFINITIONS "__TBB_NO_IMPLICIT_LINKAGE=1"
                    INTERFACE_LINK_LIBRARIES "${TBB_tbb_LIBRARY}"
            )
        else()
            message(FATAL_ERROR "Unable to find tbb library")
        endif()
    endif() # If USE_KATANA_TBB
endfunction() #add_tbb_interface


function(add_usd_interface)
    if(USE_KATANA_USD)
        set(USD_LIBRARY_DIR ${KATANA_API_LOCATION}/bin)
        set(USD_INCLUDE_DIR ${KATANA_API_LOCATION}/external/FnUSD/include)
        set(PXR_LIB_PREFIX foundry)
        if(UNIX)
            set(PXR_LIB_PREFIX libfn)
        endif()
        find_package(USD REQUIRED)
    elseif(USE_FOUNDRY_FIND_USD)
        find_package(USD REQUIRED)
    else()
        if(USD_USING_CMAKE_THIRDPARTY_TARGET_DEPENDENCIES)
            find_package(OpenEXR CONFIG REQUIRED)
            find_package(OpenSubdiv REQUIRED)
        endif()
        if(NOT DEFINED USD_ROOT)
            message(FATAL_ERROR "Build option USD_ROOT is not defined")
        endif()
        include(${USD_ROOT}/pxrConfig.cmake)
    endif()
endfunction() #add_use_interface
