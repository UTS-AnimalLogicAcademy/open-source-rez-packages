#! /bin/bash

git clone https://code.qt.io/pyside/pyside-setup
cd pyside-setup
git branch --track 5.15.2 origin/5.15.2
git checkout 5.15.2
git submodule update --init --recursive

cd ..

rm pyside-setup/sources/shiboken2/libshiboken/pep384impl.cpp
cp patch/pep384impl.cpp pyside-setup/sources/shiboken2/libshiboken/pep384impl.cpp

rm pyside-setup/sources/shiboken2/libshiboken/sbknumpyarrayconverter.cpp
cp patch/sbknumpyarrayconverter.cpp pyside-setup/sources/shiboken2/libshiboken/sbknumpyarrayconverter.cpp
echo ALA - Copied patch files