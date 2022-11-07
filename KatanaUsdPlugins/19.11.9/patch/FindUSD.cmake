# Copyright 2019 Foundry
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


#The USD libraries required by the Katana USD Plug-ins
set(USD_LIBRARIES
    gf
    hio
    ndr
    sdf
    sdr
    tf
    usdGeom
    usdHydra
    usdImagingGL
    usdLux
    usdRi
    usdShade
    usdSkel
    usdUI
    usdUtils
    vt
)

if(NOT DEFINED USD_LIBRARY_DIR)
    if(NOT DEFINED USD_ROOT)
        message(FATAL_ERROR "Unable to find USD libraries USD_ROOT must be"
            " specified.")
    endif()
    set(USD_LIBRARY_DIR ${USD_ROOT}/lib)
endif()

if(NOT DEFINED USD_INCLUDE_DIR)
    if(NOT DEFINED USD_ROOT)
        message(FATAL_ERROR "Unable to find USD libraries USD_ROOT must be"
            " specified.")
    endif()
    set(USD_INCLUDE_DIR ${USD_ROOT}/include)
endif()


set(LIB_EXTENSION "")
if(UNIX AND NOT APPLE)
    set(LIB_EXTENSION .so)
elseif(WIN32)
    set(LIB_EXTENSION .lib)
else()
    message(FATAL_ERROR "Unable to find Apple USD libraries,
        not supported")
endif()

foreach(lib ${USD_LIBRARIES})
    set(USD_${lib}_PATH
        ${USD_LIBRARY_DIR}/${PXR_LIB_PREFIX}${lib}${LIB_EXTENSION})
    if(EXISTS ${USD_${lib}_PATH})
        add_library(${lib} INTERFACE IMPORTED)

        # Probably adding more dependencies than are required to some
        # libraries.
        set(LIBS ${USD_${lib}_PATH}
            Boost::python
            Boost::thread
            Boost::system
            Boost::regex
            TBB::tbb
            Python::Python
            )
        set_target_properties(${lib}
            PROPERTIES
            INTERFACE_LINK_LIBRARIES "${LIBS}"
        )
        set_target_properties(${lib}
            PROPERTIES
            INTERFACE_INCLUDE_DIRECTORIES "${USD_INCLUDE_DIR}"
        )
    else()
        message(FATAL-ERROR "Unable to add library ${lib}, could not be found in location ${USD_${lib}_PATH}")
    endif()
endforeach()
