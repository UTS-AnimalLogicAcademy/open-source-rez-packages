#! /bin/bash

git clone https://code.qt.io/pyside/pyside-setup
cd pyside-setup
#git branch --track 5.15.12 origin/5.15.12
git checkout b642cfa372ca04f8a09f2bc94f8718ab23911ac1
git submodule update --init --recursive
