# -*- coding: utf-8 -*-

name = 'flann'

version = '1.9.3'

private_build_requires = ['cmake-3']

requires = ['os-RedHatEnterprise-9+']

@early()
def config():
    import rezconfig
    return {'release_packages_path': rezconfig.release_ext_packages_path}

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    appendenv('PKG_CONFIG_PATH', '{root}/lib/pkgconfig')
    setenv('flann_ROOT', '{root}')
    setenv('flann_DIR', '{root}/lib/cmake/flann')
