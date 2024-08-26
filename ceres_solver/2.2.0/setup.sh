#! /bin/bash

wget http://ceres-solver.org/ceres-solver-2.2.0.tar.gz
tar -xvf ceres-solver-2.2.0.tar.gz

rm ceres-solver-2.2.0/cnake/FindSuiteSparse.cmake

cp patch/FindSuiteSparse.cmake ceres-solver-2.2.0/cnake/FindSuiteSparse.cmake