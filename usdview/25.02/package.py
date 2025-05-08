# -*- coding: utf-8 -*-

name = 'usdview'

version = '25.02.0' 

requires = [
    'pyside6',
    'usd-25.02',
    'ocio_configs-2.0.2',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
