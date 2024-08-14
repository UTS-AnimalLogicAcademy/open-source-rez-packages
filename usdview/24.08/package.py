# -*- coding: utf-8 -*-

name = 'usdview'

version = '24.08.0' 

requires = [
    'pyside2',
    'usd-24.08',
    'ocio_configs-2.0.2',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
