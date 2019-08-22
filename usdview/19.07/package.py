# -*- coding: utf-8 -*-

name = 'usdview'

version = '19.07.002'

requires = [
    'pyside-1.2',
    'usd-19.07',
    'ocio_configs',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
