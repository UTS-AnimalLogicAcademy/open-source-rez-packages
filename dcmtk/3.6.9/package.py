# -*- coding: utf-8 -*-

name = 'dcmtk'

version = '3.6.9'

private_build_requires = ['cmake-3']

requires = ['os-RedHatEnterprise-9+']

def commands():
    appendenv('PATH','{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig')
    setenv('DCMTK_ROOT', '{root}')
    setenv('DCMTK_DIR', '{root}/lib64/cmake/dcmtk')
