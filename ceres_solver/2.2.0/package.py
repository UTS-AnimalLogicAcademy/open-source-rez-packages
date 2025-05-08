# -*- coding: utf-8 -*-

name = 'ceres_solver'

version = '2.2.0.2'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['eigen-3.3', 'glog-0.4','SuiteSparse', 'os-RedHatEnterprise-9+']

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    setenv('Ceres_ROOT', '{root}')
    setenv('Ceres_DIR', '{root}')
