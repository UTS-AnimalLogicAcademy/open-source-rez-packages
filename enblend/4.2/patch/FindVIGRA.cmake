# - Find VIGRA 
# Added to support Windows build but should work anywhere.
# After looking in UNIX standard places, tries wxWidgets build 
# tree, which should have this package.
#
# 
# reads cache variables
# defines cache variables
#  VIGRA_INCLUDE_DIR, where to find headers
#  VIGRA_LIBRARIES, list of release link libraries
#  VIGRA_FOUND, If != "YES", error out as VIGRA is required

SET( VIGRA_FOUND "NO" )

IF(WIN32)
  FIND_PATH(VIGRA_INCLUDE_DIR vigra/gaborfilter.hxx 
      PATHS ${SOURCE_BASE_DIR}/vigra/include
  )
  # for dynamic build, it's vigraimpex.lib and the dll must be copied into hugin's bin folder
  #SET(VIGRA_LIBRARIES ${SOURCE_BASE_DIR}/vigra/lib/libvigraindex.dll)
  FIND_LIBRARY_WITH_DEBUG(VIGRA_LIBRARIES
    WIN32_DEBUG_POSTFIX d
    NAMES vigraimpex libvigraimpex 
    PATHS
    ${VIGRA_ROOT_PATH}
    ${VIGRA_ROOT_PATH}/Release
    ${VIGRA_ROOT_PATH}/lib
    ${SOURCE_BASE_DIR}/vigra/lib
    )
  #FIND_FILE(VIGRA_DLL
  #  NAMES vigraimpex.dll
  #  PATHS ${SOURCE_BASE_DIR}/vigra1.6.0/lib
  #)
ELSE(WIN32)
  FIND_PATH(VIGRA_INCLUDE_DIR vigra/gaborfilter.hxx
    /usr/local/include
    /usr/include
    /opt/local/include
    $ENV{REZ_VIGRA_ROOT}/include
  )

  FIND_LIBRARY(VIGRA_LIBRARIES
    NAMES vigraimpex libvigraimpex 
    PATHS /usr/lib /usr/local/lib /opt/local/lib $ENV{REZ_VIGRA_ROOT}/lib
 ) 
ENDIF(WIN32)


IF (VIGRA_INCLUDE_DIR AND VIGRA_LIBRARIES)
   SET(VIGRA_FOUND TRUE)
ENDIF (VIGRA_INCLUDE_DIR AND VIGRA_LIBRARIES)

IF (VIGRA_FOUND)
  MESSAGE(STATUS "Found VIGRA: ${VIGRA_LIBRARIES}")
  # we check the version of VIGRA library
  FIND_FILE(VIGRA_VERSION_FILE VigraConfigVersion.cmake
    PATH /usr/lib/vigra
         /usr/local/lib/vigra 
         /opt/local/lib
         ${SOURCE_BASE_DIR}/vigra/lib/vigra
  )
  IF(${VIGRA_VERSION_FILE} MATCHES "-NOTFOUND")
    SET(VIGRA_VERSION_CHECK FALSE)
    # check is done additional in ConfigureChecks.cmake
  ELSE()
    # backup of variable PACKAGE_VERSION, it is overwrited in VigraConfigVersion.cmake
    SET(BACKUP_PACKAGE_VERSION ${PACKAGE_VERSION})
    INCLUDE(${VIGRA_VERSION_FILE} NO_POLICY_SCOPE)
    SET(VIGRA_VERSION ${PACKAGE_VERSION})
    SET(PACKAGE_VERSION ${BACKUP_PACKAGE_VERSION})
    IF(${VIGRA_VERSION} VERSION_EQUAL 1.9.0 OR ${VIGRA_VERSION} VERSION_GREATER 1.9.0)
      SET(VIGRA_VERSION_CHECK TRUE)
      MESSAGE(STATUS "VIGRA version: ${VIGRA_VERSION}")
    ELSE()
      MESSAGE(FATAL_ERROR 
        "VIGRA lib is too old.\nEnblend requires at least version 1.9.0, but found version ${VIGRA_VERSION}."
      )
    ENDIF()
  ENDIF()

ELSE (VIGRA_FOUND)
	MESSAGE(FATAL_ERROR "Could not find VIGRA")
ENDIF (VIGRA_FOUND)


MARK_AS_ADVANCED(
  VIGRA_LIBRARIES
  VIGRA_INCLUDE_DIR
  )

