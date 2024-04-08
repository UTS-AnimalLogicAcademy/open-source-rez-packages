wget https://github.com/AcademySoftwareFoundation/Imath/archive/refs/tags/v3.1.9.tar.gz
tar -xvf v3.1.9.tar.gz

rm Imath-3.1.9/src/python/CMakeLists.txt
cp patch/CMakeLists.txt Imath-3.1.9/src/python/CMakeLists.txt