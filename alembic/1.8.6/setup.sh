#! /bin/bash

source version.sh

wget https://github.com/alembic/alembic/archive/$VERSION.tar.gz
tar -xvf $VERSION.tar.gz

rm alembic-$VERSION/CMakeLists.txt
cp patch/CMakeLists.txt alembic-$VERSION/CMakeLists.txt


# rm alembic-1.7.10/cmake/AlembicBoost.cmake
# cp patch/AlembicBoost.cmake alembic-1.7.10/cmake/AlembicBoost.cmake

# rm alembic-1.7.10/python/PyAlembic/CMakeLists.txt
# cp patch/CMakeLists_PyAlembic.cmake alembic-1.7.10/python/PyAlembic/CMakeLists.txt

# rm alembic-1.7.10/python/PyAlembic/Tests/CMakeLists.txt
# cp patch/CMakeLists_PyAlembic_Tests.cmake alembic-1.7.10/python/PyAlembic/Tests/CMakeLists.txt

# rm alembic-1.7.10/lib/Alembic/CMakeLists.txt
# cp patch/CMakeLists_lib_Alembic.txt alembic-1.7.10/lib/Alembic/CMakeLists.txt

# rm alembic-1.7.10/cmake/Modules/FindIlmBase.cmake
# cp patch/FindIlmBase.cmake alembic-1.7.10/cmake/Modules/FindIlmBase.cmake