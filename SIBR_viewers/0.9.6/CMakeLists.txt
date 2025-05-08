cmake_minimum_required(VERSION 2.6)

include(RezBuild)

set(FFMPEG_DIR "$ENV{REZ_FFMPEG_ROOT}" CACHE PATH "FFMPEG_DIR root directory")
set(EMBREE_DIR "$ENV{REZ_EMBREE_LIB_ROOT}" CACHE PATH "EMBREE root directory")

add_subdirectory(Gaussian-Splatting-Monitor/SIBR_viewers)