#! /bin/bash

git clone https://code.qt.io/pyside/pyside-setup
cd pyside-setup
git branch --track 5.15.2 origin/5.15.2
git checkout 5.15.2
git submodule update --init --recursive
