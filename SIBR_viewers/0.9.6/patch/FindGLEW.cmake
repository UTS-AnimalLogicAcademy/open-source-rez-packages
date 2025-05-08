#.rst:
# FindGLEW
# -------
#
# Try to find GLEW.
#
# This will define the following variables:
#
# ``GLEW_FOUND``
#     True if (the requested version of) GLEW is available
# ``GLEW_VERSION``
#     The version of GLEW; note that this is the API version defined in the
#     headers, rather than the version of the implementation (eg: Mesa)
# ``GLEW_LIBRARIES``
#     This can be passed to target_link_libraries() instead of the ``GLEW::GLEW``
#     target
# ``GLEW_INCLUDE_DIRS``
#     This should be passed to target_include_directories() if the target is not
#     used for linking
# ``GLEW_DEFINITIONS``
#     This should be passed to target_compile_options() if the target is not
#     used for linking
#
# If ``GLEW_FOUND`` is TRUE, it will also define the following imported target:
#
# ``GLEW::GLEW``
#     The GLEW library
#
# In general we recommend using the imported target, as it is easier to use.
# Bear in mind, however, that if the target is in the link interface of an
# exported library, it must be made available by the package config file.
#
# Since pre-1.0.0.

#=============================================================================
# Copyright 2014 Alex Merry <alex.merry@kde.org>
# Copyright 2014 Martin Gräßlin <mgraesslin@kde.org>
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. The name of the author may not be used to endorse or promote products
#    derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
# NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NGLEWIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#=============================================================================

include(CheckCXXSourceCompiles)
include(CMakePushCheckState)

# Use pkg-config to get the directories and then use these values
# in the FIND_PATH() and FIND_LIBRARY() calls
find_package(PkgConfig)
pkg_check_modules(PKG_GLEW QUIET glew)

set(GLEW_DEFINITIONS ${PKG_GLEW_CFLAGS_OTHER})

find_path(GLEW_INCLUDE_DIR
    NAMES
        GL/glew.h
    HINTS
        ${PKG_GLEW_INCLUDE_DIRS}
)
find_library(GLEW_LIBRARY
    NAMES
        GLEW
    HINTS
        ${PKG_GLEW_LIBRARY_DIRS}
)

# NB: We do *not* use the version information from pkg-config, as that
#     is the implementation version (eg: the Mesa version)
if(GLEW_INCLUDE_DIR)
    # glew.h has defines of the form GLEW_VERSION_x_y for each supported
    # version; so the header for GLEW 1.1 will define GLEW_VERSION_1_0 and
    # GLEW_VERSION_1_1.  Finding the highest supported version involves
    # finding all these defines and selecting the highest numbered.
    file(READ "${GLEW_INCLUDE_DIR}/GL/glew.h" _GLEW_header_contents)
    string(REGEX MATCHALL
        "[ \t]GLEW_VERSION_[0-9_]+"
        _GLEW_version_lines
        "${_GLEW_header_contents}"
    )
    unset(_GLEW_header_contents)
    foreach(_GLEW_version_line ${_GLEW_version_lines})
        string(REGEX REPLACE
            "[ \t]GLEW_VERSION_([0-9_]+)"
            "\\1"
            _version_candidate
            "${_GLEW_version_line}"
        )
        string(REPLACE "_" "." _version_candidate "${_version_candidate}")
        if(NOT DEFINED GLEW_VERSION OR GLEW_VERSION VERSION_LESS _version_candidate)
            set(GLEW_VERSION "${_version_candidate}")
        endif()
    endforeach()
    unset(_GLEW_version_lines)
endif()

cmake_push_check_state(RESET)
list(APPEND CMAKE_REQUIRED_LIBRARIES "${GLEW_LIBRARY}")
list(APPEND CMAKE_REQUIRED_INCLUDES "${GLEW_INCLUDE_DIR}")

set(HAVE_GLEW TRUE)

cmake_pop_check_state()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GLEW
    FOUND_VAR
        GLEW_FOUND
    REQUIRED_VARS
        GLEW_LIBRARY
        GLEW_INCLUDE_DIR
        HAVE_GLEW
    VERSION_VAR
        GLEW_VERSION
)

if(GLEW_FOUND AND NOT TARGET GLEW::GLEW)
    add_library(GLEW::GLEW UNKNOWN IMPORTED)
    set_target_properties(GLEW::GLEW PROPERTIES
        IMPORTED_LOCATION "${GLEW_LIBRARY}"
        INTERFACE_COMPILE_OPTIONS "${GLEW_DEFINITIONS}"
        INTERFACE_INCLUDE_DIRECTORIES "${GLEW_INCLUDE_DIR}"
    )
endif()

mark_as_advanced(GLEW_LIBRARY GLEW_INCLUDE_DIR HAVE_GLEW)

# compatibility variables
set(GLEW_LIBRARIES ${GLEW_LIBRARY})
set(GLEW_INCLUDE_DIRS ${GLEW_INCLUDE_DIR})
set(GLEW_VERSION_STRING ${GLEW_VERSION})
