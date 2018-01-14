#! /bin/bash

wget https://github.com/pyside/PySide/archive/1.2.4.tar.gz
tar -xvf 1.2.4.tar.gz
rm PySide-1.2.4/CMakeLists.txt
cp CMakeLists_PySide.txt PySide-1.2.4/CMakeLists.txt

wget https://github.com/pyside/Tools/archive/0.2.15.tar.gz
tar -xvf 0.2.15.tar.gz
rm Tools-0.2.15/CMakeLists.txt
cp CMakeLists_Tools.txt Tools-0.2.15/CMakeLists.txt
