#***************************************************************************
#                                  _   _ ____  _
#  Project                     ___| | | |  _ \| |
#                             / __| | | | |_) | |
#                            | (__| |_| |  _ <| |___
#                             \___|\___/|_| \_\_____|
#
# Copyright (C) 1998 - 2020, Daniel Stenberg, <daniel@haxx.se>, et al.
#
# This software is licensed as described in the file COPYING, which
# you should have received as part of this distribution. The terms
# are also available at https://curl.se/docs/copyright.html.
#
# You may opt to use, copy, modify, merge, publish, distribute and/or sell
# copies of the Software, and permit persons to whom the Software is
# furnished to do so, under the terms of the COPYING file.
#
# This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
# KIND, either express or implied.
#
###########################################################################
include(FindPackageHandleStandardArgs)

find_path(BROTLI_INCLUDE_DIR "brotli/decode.h" HINTS $ENV{Brotli_ROOT}/include)

find_library(BROTLICOMMON_LIBRARY NAMES brotlicommon HINTS $ENV{Brotli_ROOT}/lib $ENV{Brotli_ROOT}/lib64)
find_library(BROTLIDEC_LIBRARY NAMES brotlidec HINTS $ENV{Brotli_ROOT}/lib $ENV{Brotli_ROOT}/lib64)

find_package_handle_standard_args(Brotli
    FOUND_VAR
      BROTLI_FOUND
    REQUIRED_VARS
      BROTLIDEC_LIBRARY
      BROTLICOMMON_LIBRARY
      BROTLI_INCLUDE_DIR
    FAIL_MESSAGE
      "Could NOT find Brotli"
)

set(Brotli_INCLUDE_DIRS ${BROTLI_INCLUDE_DIR})
set(Brotli_LIBRARIES ${BROTLICOMMON_LIBRARY} ${BROTLIDEC_LIBRARY})

mark_as_advanced(BROTLI_INCLUDE_DIR)
mark_as_advanced(BROTLICOMMON_LIBRARY)
mark_as_advanced(BROTLIDEC_LIBRARY)
