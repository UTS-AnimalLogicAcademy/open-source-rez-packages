#! /bin/bash

wget https://github.com/ukoethe/vigra/releases/download/Version-1-11-1/vigra-1.11.1-src.tar.gz
tar -xvf vigra-1.11.1-src.tar.gz

rm vigra-1.11.1/config/FindFFTW3.cmake
cp patch/FindFFTW3.cmake vigra-1.11.1/config/FindFFTW3.cmake

rm vigra-1.11.1/config/FindFFTW3F.cmake
cp patch/FindFFTW3F.cmake vigra-1.11.1/config/FindFFTW3F.cmake

rm vigra-1.11.1/config/FindOpenEXR.cmake
cp patch/FindOpenEXR.cmake vigra-1.11.1/config/FindOpenEXR.cmake