# Try to find the OpenEXR libraries
# This check defines:
#
#  OPENEXR_FOUND - system has OpenEXR
#  OPENEXR_INCLUDE_DIRS - OpenEXR include directories
#  OPENEXR_LIBRARIES - Libraries needed to use OpenEXR
#
# Copyright (c) 2006, Alexander Neundorf, <neundorf@kde.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.


if (OPENEXR_INCLUDE_DIRS AND OPENEXR_LIBRARIES)
  # in cache already
  SET(OPENEXR_FOUND TRUE)

else ()
IF (NOT WIN32 OR MINGW)
  # use pkg-config to get the directories and then use these values
  # in the FIND_PATH() and FIND_LIBRARY() calls
  INCLUDE(UsePkgConfig)
  
  PKGCONFIG(OpenEXR _OpenEXRIncDir _OpenEXRLinkDir _OpenEXRLinkFlags _OpenEXRCflags)
ENDIF (NOT WIN32 OR MINGW)
  FIND_PATH(OPENEXR_INCLUDE_DIR ImfRgbaFile.h
     PATH_SUFFIXES OpenEXR
     PATHS
       ${_OpenEXRIncDir}
       /usr/include
       /usr/local/include
       ${SOURCE_BASE_DIR}/Deploy/include
  )

  # for OpenEXR 3.x
  FIND_PATH(OPENEXR_INCLUDE2_DIR ImathVec.h
     PATH_SUFFIXES OpenEXR
     PATHS
       ${_OpenEXRIncDir}
       /usr/include
       /usr/local/include
       ${SOURCE_BASE_DIR}/Deploy/include
      HINTS

  )
  
  include(FindLibraryWithDebug)

  find_library_with_debug(OPENEXR_OPENEXR_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES OpenEXR OpenEXR-3_1 OpenEXR-3_0
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )

  find_library_with_debug(OPENEXR_HALF_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES Half-2_5 Half-2_4 Half-2_3 Half
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )

  find_library_with_debug(OPENEXR_IEX_LIBRARY
    WIN32_DEBUG_POSTFIX d
    NAMES Iex-3_1 Iex-3_0 Iex-2_5 Iex-2_4 Iex-2_3 Iex-2_2 Iex
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )

  find_library_with_debug(OPENEXR_ILMTHREAD_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES IlmThread-3_1 IlmThread-3_0 IlmThread-2_5 IlmThread-2_4 IlmThread-2_3 IlmThread-2_2 IlmThread
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )
  
  find_library_with_debug(OPENEXR_IMATH_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES Imath-3_1 Imath-3_0 Imath-2_5 Imath-2_4 Imath-2_3 Imath-2_2 Imath
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )
  
  
  find_library_with_debug(OPENEXR_ILMIMF_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES IlmImf-2_5 IlmImf-2_4 IlmImf-2_3 IlmImf-2_2 IlmImf 
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )
  
  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(OPENEXR DEFAULT_MSG 
                                  OPENEXR_INCLUDE_DIRS OPENEXR_LIBRARIES)

  FIND_PACKAGE(ZLIB)

  if (OPENEXR_INCLUDE_DIR AND OPENEXR_INCLUDE2_DIR AND OPENEXR_OPENEXR_LIBRARY AND OPENEXR_IEX_LIBRARY AND OPENEXR_ILMTHREAD_LIBRARY AND OPENEXR_IMATH_LIBRARY AND ZLIB_INCLUDE_DIR AND ZLIB_LIBRARIES)
    # OpenEXR v3.x found
     set(OPENEXR_FOUND TRUE)
     set(OPENEXR_INCLUDE_DIRS ${OPENEXR_INCLUDE_DIR} ${OPENEXR_INCLUDE2_DIR})
     set(OPENEXR_LIBRARIES ${OPENEXR_OPENEXR_LIBRARY} ${OPENEXR_IMATH_LIBRARY} ${OPENEXR_IEX_LIBRARY} ${OPENEXR_ILMTHREAD_LIBRARY} ${ZLIB_LIBRARIES} CACHE STRING "The libraries needed to use OpenEXR")
  else()
    # trying if OpenEXR 2.x matches
    if (OPENEXR_INCLUDE_DIR AND OPENEXR_IMATH_LIBRARY AND OPENEXR_ILMIMF_LIBRARY AND OPENEXR_IEX_LIBRARY AND OPENEXR_HALF_LIBRARY AND ZLIB_INCLUDE_DIR AND ZLIB_LIBRARIES)
      set(OPENEXR_FOUND TRUE)
      set(OPENEXR_INCLUDE_DIRS ${OPENEXR_INCLUDE_DIR})
      if (OPENEXR_ILMTHREAD_LIBRARY)
        set(OPENEXR_LIBRARIES ${OPENEXR_IMATH_LIBRARY} ${OPENEXR_ILMIMF_LIBRARY} ${OPENEXR_IEX_LIBRARY} ${OPENEXR_HALF_LIBRARY} ${OPENEXR_ILMTHREAD_LIBRARY} ${ZLIB_LIBRARIES} CACHE STRING "The libraries needed to use OpenEXR")
      else ()
        set(OPENEXR_LIBRARIES ${OPENEXR_IMATH_LIBRARY} ${OPENEXR_ILMIMF_LIBRARY} ${OPENEXR_IEX_LIBRARY} ${OPENEXR_HALF_LIBRARY} ${ZLIB_LIBRARIES} CACHE STRING "The libraries needed to use OpenEXR")
      endif ()
    endif ()
  endif()
  
  
  
  if (OPENEXR_FOUND)
    if (NOT OpenEXR_FIND_QUIETLY)
      message(STATUS "Found OPENEXR: ${OPENEXR_LIBRARIES}")
    endif (NOT OpenEXR_FIND_QUIETLY)
  else (OPENEXR_FOUND)
    if (OpenEXR_FIND_REQUIRED)
      message(FATAL_ERROR "Could NOT find OPENEXR")
    endif (OpenEXR_FIND_REQUIRED)
  endif (OPENEXR_FOUND)
  
  MARK_AS_ADVANCED(
     OPENEXR_INCLUDE_DIR 
     OPENEXR_INCLUDE2_DIR
     OPENEXR_INCLUDE_DIRS
     OPENEXR_LIBRARIES 
     OPENEXR_OPENEXR_LIBRARY
     OPENEXR_ILMIMF_LIBRARY 
     OPENEXR_IMATH_LIBRARY 
     OPENEXR_IEX_LIBRARY 
     OPENEXR_HALF_LIBRARY
     OPENEXR_ILMTHREAD_LIBRARY )
  
endif ()
