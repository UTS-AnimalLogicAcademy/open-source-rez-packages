# Try to find the OpenEXR libraries
# This check defines:
#
#  OPENEXR_FOUND - system has OpenEXR
#  OPENEXR_INCLUDE_DIR - OpenEXR include directory
#  OPENEXR_LIBRARIES - Libraries needed to use OpenEXR
#
# Copyright (c) 2006, Alexander Neundorf, <neundorf@kde.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.


if (OPENEXR_INCLUDE_DIR AND OPENEXR_LIBRARIES)
  # in cache already
  SET(OPENEXR_FOUND TRUE)

else (OPENEXR_INCLUDE_DIR AND OPENEXR_LIBRARIES)
IF (NOT WIN32 OR MINGW)
  # use pkg-config to get the directories and then use these values
  # in the FIND_PATH() and FIND_LIBRARY() calls
  INCLUDE(UsePkgConfig)
  
  PKGCONFIG(OpenEXR _OpenEXRIncDir _OpenEXRLinkDir _OpenEXRLinkFlags _OpenEXRCflags)
ENDIF (NOT WIN32 OR MINGW)
  FIND_PATH(OPENEXR_INCLUDE_DIR ImfRgbaFile.h
     ${_OpenEXRIncDir}
     ${_OpenEXRIncDir}/OpenEXR/
     /usr/include
     /usr/local/include
     ${SOURCE_BASE_DIR}/Deploy/include
     ${SOURCE_BASE_DIR}/Deploy/include/OpenEXR
  )
  
  include(FindLibraryWithDebug)
  find_library_with_debug(OPENEXR_HALF_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES Half
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )

  find_library_with_debug(OPENEXR_IEX_LIBRARY
    WIN32_DEBUG_POSTFIX d
    NAMES Iex-2_2 Iex
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )

  find_library_with_debug(OPENEXR_ILMTHREAD_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES IlmThread-2_2 IlmThread
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )
  
  find_library_with_debug(OPENEXR_IMATH_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES Imath-2_2 Imath
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )
  
  
  find_library_with_debug(OPENEXR_ILMIMF_LIBRARY 
    WIN32_DEBUG_POSTFIX d
    NAMES IlmImf-2_2 IlmImf 
    PATHS
      ${_OPENEXRLinkDir}
      $ENV{REZ_OPENEXR_ROOT}/lib
      ${SYSTEM_LIB_DIRS}
      ${SOURCE_BASE_DIR}/Deploy/lib/
      ${SOURCE_BASE_DIR}/Deploy/lib/Release
  )
  
  if (OPENEXR_INCLUDE_DIR AND OPENEXR_IMATH_LIBRARY AND OPENEXR_ILMIMF_LIBRARY AND OPENEXR_IEX_LIBRARY AND OPENEXR_HALF_LIBRARY)
     set(OPENEXR_FOUND TRUE)
     if (OPENEXR_ILMTHREAD_LIBRARY)
       set(OPENEXR_LIBRARIES ${OPENEXR_IMATH_LIBRARY} ${OPENEXR_ILMIMF_LIBRARY} ${OPENEXR_IEX_LIBRARY} ${OPENEXR_HALF_LIBRARY} ${OPENEXR_ILMTHREAD_LIBRARY} CACHE STRING "The libraries needed to use OpenEXR")
     else (OPENEXR_ILMTHREAD_LIBRARY)
       set(OPENEXR_LIBRARIES ${OPENEXR_IMATH_LIBRARY} ${OPENEXR_ILMIMF_LIBRARY} ${OPENEXR_IEX_LIBRARY} ${OPENEXR_HALF_LIBRARY} CACHE STRING "The libraries needed to use OpenEXR")
     endif (OPENEXR_ILMTHREAD_LIBRARY)
  endif (OPENEXR_INCLUDE_DIR AND OPENEXR_IMATH_LIBRARY AND OPENEXR_ILMIMF_LIBRARY AND OPENEXR_IEX_LIBRARY AND OPENEXR_HALF_LIBRARY)
  
  
  
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
     OPENEXR_LIBRARIES 
     OPENEXR_ILMIMF_LIBRARY 
     OPENEXR_IMATH_LIBRARY 
     OPENEXR_IEX_LIBRARY 
     OPENEXR_HALF_LIBRARY
     OPENEXR_ILMTHREAD_LIBRARY )
  
endif (OPENEXR_INCLUDE_DIR AND OPENEXR_LIBRARIES)
