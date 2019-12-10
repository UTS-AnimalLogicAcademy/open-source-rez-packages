# -*- coding: utf-8 -*-

name = 'sidefx_labs'

version = '1.37'

def commands():
    env.HOUDINI_PATH.append('{root}/src:&{root}/src/bin:&{root}/src/dso:&')
    env.PATH.append('{root}/src/bin:&{root}/src/dso:&')
    env.HOUDINI_OTLSCAN_PATH.append('{root}/src/otls:&')


