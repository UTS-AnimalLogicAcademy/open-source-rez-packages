#! /bin/bash
source version.sh
wget https://github.com/CGAL/cgal/archive/refs/tags/$VERSION.tar.gz
tar -xvf $VERSION.tar.gz
mv cgal-$VERSION cgal