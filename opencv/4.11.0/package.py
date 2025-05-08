# -*- coding: utf-8 -*-

name = 'opencv'

version = '4.11.0'

requires = [
    'os-RedHatEnterprise-9+',
    'python-3.10',
    'openjpeg-2.5.0',
    'openblas-0.3.27',
    'ffmpeg-4',
    'eigen-3.3.9',
    'openexr-3.1.11'
]

private_build_requires = ['cmake-3']

@early()
def config():
    import rezconfig
    return {'release_packages_path': rezconfig.release_ext_packages_path}

def commands():
    appendenv('PATH','{root}/bin')
    appendenv('LD_LIBRARY_PATH', '{root}/lib64')
    appendenv('LIBRARY_PATH', '{root}/lib64')
    appendenv('PKG_CONFIG_PATH', '{root}/lib64/pkgconfig')
    appendenv('PYTHONPATH','{root}/lib/python3.10/site-packages')
    setenv('OpenCV_DIR','{root}/lib64/cmake/opencv4')

