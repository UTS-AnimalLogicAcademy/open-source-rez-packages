# -*- coding: utf-8 -*-

name = 'gklib'

version = '5.2.2'

private_build_requires = ['cmake-3']

requires = ['os-RedHatEnterprise-9+']

@early()
def config():
    import rezconfig
    return {'release_packages_path': rezconfig.release_ext_packages_path}

def commands():
    appendenv('LD_LIBRARY_PATH', '{root}/lib')
    appendenv('LIBRARY_PATH', '{root}/lib')
    setenv('GKlib_ROOT', '{root}')
