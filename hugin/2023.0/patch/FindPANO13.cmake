# - Find PANO13 headers and libraries
# modified for Hugin 0.7 Windows build 02Nov2007 TKSharpless
# reads cache variable
#  SOURCE_BASE_DIR -- directory that contains hugin source root
# defines cache vars
#  PANO13_INCLUDE_DIR, where to find pano13/panorama.h, etc.
#  PANO13_LIBRARIES, release link library list.
#  PANO13_DEBUG_LIBRARIES, debug ditto.
#  PANO13_FOUND, If != "YES", do not try to use PANO13.


## NOTE the form "pano13/panorama.h" is used in #includes in 
## some hugin source files, so we are stuck with that.
FIND_PATH(PANO13_INCLUDE_DIR pano13/panorama.h
  /usr/local/include
  /usr/include
  ${SOURCE_BASE_DIR}/libpano13/include
  ${SOURCE_BASE_DIR}/libpano
  ${SOURCE_BASE_DIR}
  $ENV{REZ_LIBPANO13_ROOT}/include
)

include(FindLibraryWithDebug)

find_library_with_debug(PANO13_LIBRARIES
  WIN32_DEBUG_POSTFIX d
  NAMES pano13
  PATHS ${SYSTEM_LIB_DIRS} 
        "${PANO13_INCLUDE_DIR}/pano13/Release LIB CMD"
        "${PANO13_INCLUDE_DIR}/pano13/Release CMD/Win32"
        ${PANO13_INCLUDE_DIR}/pano13/Release
        ${SOURCE_BASE_DIR}/libpano13/lib
        ${SOURCE_BASE_DIR}/pano13
        $ENV{REZ_LIBPANO13_ROOT}/lib
)

IF(PANO13_INCLUDE_DIR)
  IF(PANO13_LIBRARIES)
    FILE(STRINGS "${PANO13_INCLUDE_DIR}/pano13/version.h" PANO13_VERSION_H REGEX "#define VERSION")
    STRING(REGEX REPLACE ".*#define +VERSION +\"([.0-9]+).*" "\\1" PANO13_VERSION "${PANO13_VERSION_H}")
    IF(PANO13_FIND_VERSION_COUNT EQUAL 0)
      SET( PANO13_FOUND "YES" )
    ELSE()
      IF(PANO13_VERSION VERSION_EQUAL PANO13_FIND_VERSION OR PANO13_VERSION VERSION_GREATER PANO13_FIND_VERSION)
        SET( PANO13_FOUND "YES" )
      ELSE()
        SET( PANO13_FOUND "NO" )
      ENDIF()
    ENDIF()
  ENDIF(PANO13_LIBRARIES)
ENDIF(PANO13_INCLUDE_DIR)
 
IF(PANO13_FOUND)
  IF(NOT PANO13_FIND_QUIETLY)
    MESSAGE(STATUS "libpano13 version: ${PANO13_VERSION}")
  ENDIF(NOT PANO13_FIND_QUIETLY)
ELSE(PANO13_FOUND)
  IF(PANO13_FIND_REQUIRED)
    IF(PANO13_VERSION)
      MESSAGE(FATAL_ERROR "libpano13 version: ${PANO13_FIND_VERSION} required, ${PANO13_VERSION} found")
    ELSE(PANO13_VERSION)
      MESSAGE(FATAL_ERROR "libpano13 not found")
    ENDIF(PANO13_VERSION)
  ELSE(PANO13_FIND_REQUIRED)
    IF(PANO13_VERSION)
      MESSAGE(STATUS "libpano13 version: ${PANO13_FIND_VERSION} required, ${PANO13_VERSION} found")
    ELSE(PANO13_VERSION)
      MESSAGE(STATUS "libpano13 not found")
    ENDIF(PANO13_VERSION)
  ENDIF(PANO13_FIND_REQUIRED)
ENDIF(PANO13_FOUND)
