# -*- coding: utf-8 -*-

name = 'usdview'

version = '23.08.1' 

requires = [
    'pyside2',
    'usd-23.08',
    'ocio_configs-2.0.2',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
