# -*- coding: utf-8 -*-

name = 'usdview'

version = '19.11'

requires = [
    'pyside-1.2',
    'usd-19.11',
    'ocio_configs',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
