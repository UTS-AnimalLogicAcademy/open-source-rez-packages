# -*- coding: utf-8 -*-

name = 'assimp'

version = '5.4.3'

private_build_requires = ['cmake-3']

requires = ['os-RedHatEnterprise-9+']

@early()
def config():
    import rezconfig
    return {'release_packages_path': rezconfig.release_ext_packages_path}

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig')
    setenv('ASSIMP_DIR','{root}/lib64/cmake/assimp-5.4')
    setenv('assimp_DIR','{root}/lib64/cmake/assimp-5.4')
