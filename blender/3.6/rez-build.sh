#! /bin/bash

source version.sh

# this will build and install the rez package locally (default is ~/packages)
export PACKAGE_INSTALLATION_ROOT=/mnt/ala/software/ext_packages
export PACKAGE_NAME=blender
export PACKAGE_VERSION=$VERSION
export MAKE_THREADS=28

rez-env devtoolset-11 cmake-3 python-3.10 freetype-2.11 boost-1.80 openexr ffmpeg-4 jemalloc openvdb-10 openshadinglanguage usd_monolithic-23.08 embree_lib-3.8 fftw-3 webp alembic-1.8 openpgl-0.5 -c './build.sh'