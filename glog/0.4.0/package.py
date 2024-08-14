# -*- coding: utf-8 -*-

name = 'glog'

version = '0.4.0'

private_build_requires = ['cmake-3', 'devtoolset-7+']

requires = ['gflags']

def commands():
    setenv('Glog_ROOT', '{root}')
    setenv('Glog_DIR', '{root}')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
