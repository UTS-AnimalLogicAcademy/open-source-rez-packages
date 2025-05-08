IF(UNIX)
ADD_DEFINITIONS(-Wall -Wno-unknown-pragmas)
ADD_DEFINITIONS(-ffast-math -msse2 -msse)

IF(APPLE)
# optimize for 64-bit core 2 architecture on Apple
ADD_DEFINITIONS(-march=core2)
ENDIF()
ENDIF()

set(CMAKE_CXX_STANDARD 20)
add_definitions(-DLHDR_CXX11_ENABLED)
add_definitions(-DBRANCH_PREDICTION)

if("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang")

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wnull-dereference -Wdelete-non-virtual-dtor -Wsign-compare -Wswitch")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wreturn-type -Wself-assign -Wunused-argument -Wunused-function -Wtautological-compare")

endif()

#OpenMP Support under Linux, Windows with MSVC & MacOS X with GCC >= 4.3
OPTION(USE_OPENMP "Use openmp threading support." OFF)
IF(USE_OPENMP)
    IF(MSVC OR UNIX)
        FIND_PACKAGE(OpenMP REQUIRED)
        SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
        SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    ELSEIF(CMAKE_COMPILER_IS_GNUCC AND UNIX)
        EXECUTE_PROCESS(COMMAND ${CMAKE_CXX_COMPILER} -dumpversion OUTPUT_VARIABLE GCC_VERSION)
        IF(GCC_VERSION VERSION_GREATER 4.3 OR GCC_VERSION VERSION_EQUAL 4.3)
            MESSAGE(STATUS "GCC >= 4.3")
            FIND_PACKAGE(OpenMP REQUIRED)
            SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
            SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
        ENDIF()
    ENDIF()
ENDIF()