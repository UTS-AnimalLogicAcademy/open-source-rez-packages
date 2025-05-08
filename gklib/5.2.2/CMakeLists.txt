cmake_minimum_required(VERSION 2.6)

include(RezBuild)

option(BUILD_SHARED_LIBS "Build shared libraries (.dll/.so) instead of static ones (.lib/.a)" ON)

add_subdirectory(GKlib)