#! /bin/bash

wget https://github.com/alembic/alembic/archive/1.7.10.tar.gz
tar -xvf 1.7.10.tar.gz

rm alembic-1.7.10/cmake/AlembicBoost.cmake
cp patch/AlembicBoost.cmake alembic-1.7.10/cmake/AlembicBoost.cmake

rm alembic-1.7.10/python/PyAlembic/CMakeLists.txt
cp patch/CMakeLists_PyAlembic.cmake alembic-1.7.10/python/PyAlembic/CMakeLists.txt

rm alembic-1.7.10/python/PyAlembic/Tests/CMakeLists.txt
cp patch/CMakeLists_PyAlembic_Tests.cmake alembic-1.7.10/python/PyAlembic/Tests/CMakeLists.txt

rm alembic-1.7.10/lib/Alembic/CMakeLists.txt
cp patch/CMakeLists_lib_Alembic.txt alembic-1.7.10/lib/Alembic/CMakeLists.txt

rm alembic-1.7.10/cmake/Modules/FindIlmBase.cmake
cp patch/FindIlmBase.cmake alembic-1.7.10/cmake/Modules/FindIlmBase.cmake