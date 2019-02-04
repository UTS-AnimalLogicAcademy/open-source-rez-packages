#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/v$VERSION.zip
unzip v$VERSION.zip

# patch so that we can build the katan plugin without building all of usd
# assumes usd is already built and installed as a rez package
