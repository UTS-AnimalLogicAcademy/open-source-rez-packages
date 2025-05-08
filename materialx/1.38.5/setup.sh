#! /bin/bash

git clone https://github.com/AcademySoftwareFoundation/MaterialX.git
cd MaterialX
git checkout v1.38.5
git submodule update --init --recursive
cd ..

rm MaterialX/source/MaterialXGenShader/TypeDesc.cpp
cp patch/TypeDesc.cpp MaterialX/source/MaterialXGenShader/TypeDesc.cpp

rm MaterialX/source/MaterialXGenShader/TypeDesc.h
cp patch/TypeDesc.h MaterialX/source/MaterialXGenShader/TypeDesc.h
echo ALA - Copied patch files