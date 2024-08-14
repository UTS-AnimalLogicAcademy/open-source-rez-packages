#! /bin/bash

git clone https://github.com/AcademySoftwareFoundation/MaterialX.git
cd MaterialX
git checkout v1.38.8
git submodule update --init --recursive