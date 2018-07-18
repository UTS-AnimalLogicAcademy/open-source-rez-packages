#! /bin/bash

source version.sh

wget https://github.com/PixarAnimationStudios/USD/archive/$COMMIT_ID.zip
unzip $COMMIT_ID.zip

