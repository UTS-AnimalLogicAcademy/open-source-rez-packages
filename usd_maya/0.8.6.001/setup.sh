#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/$COMMIT_ID.zip
unzip $COMMIT_ID.zip

# patch so that we can build the maya plugin without building all of usd
# assumes usd is already built and installed as a rez package
rm USD-$COMMIT_ID/third_party/maya/CMakeLists.txt
rm USD-$COMMIT_ID/CMakeLists.txt
rm USD-$COMMIT_ID/cmake/defaults/Options.cmake
cp patch/CMakeLists_maya.txt USD-$COMMIT_ID/third_party/maya/CMakeLists.txt
cp patch/CMakeLists_root.txt USD-$COMMIT_ID/CMakeLists.txt
cp patch/Options.cmake USD-$COMMIT_ID/cmake/defaults/Options.cmake
