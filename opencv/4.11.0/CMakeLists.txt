cmake_minimum_required(VERSION 2.6)

include(RezBuild)

set(OPENCV_EXTRA_MODULES_PATH ../opencv_contrib/modules CACHE PATH "Where to look for additional OpenCV modules (can be ;-separated list of paths)")

add_subdirectory(opencv)