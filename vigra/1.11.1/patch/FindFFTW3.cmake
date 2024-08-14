# - Find FFTW3
# Find the native FFTW3 includes and library
# This module defines
#  FFTW3_INCLUDE_DIR, where to find FFTW3lib.h, etc.
#  FFTW3_LIBRARIES, the libraries needed to use FFTW3.
#  JFFTW3_FOUND, If false, do not try to use FFTW3.
# also defined, but not for general use are
#  FFTW3_LIBRARY, where to find the FFTW3 library.

FIND_PATH(FFTW3_INCLUDE_DIR fftw3.h HINTS $ENV{REZ_FFTW_ROOT}/include)

SET(FFTW3_NAMES ${FFTW3_NAMES} fftw3)
FIND_LIBRARY(FFTW3_LIBRARY NAMES ${FFTW3_NAMES} HINTS $ENV{REZ_FFTW_ROOT}/lib)

# handle the QUIETLY and REQUIRED arguments and set FFTW3_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(FFTW3 DEFAULT_MSG FFTW3_LIBRARY FFTW3_INCLUDE_DIR)

IF(FFTW3_FOUND)
  SET(FFTW3_LIBRARIES ${FFTW3_LIBRARY})
ENDIF(FFTW3_FOUND)

# Deprecated declarations.
SET (NATIVE_FFTW3_INCLUDE_PATH ${FFTW3_INCLUDE_DIR} )
IF(FFTW3_LIBRARY)
  GET_FILENAME_COMPONENT (NATIVE_FFTW3_LIB_PATH ${FFTW3_LIBRARY} PATH)
ENDIF(FFTW3_LIBRARY)
