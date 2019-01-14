# -*- coding: utf-8 -*-

name = 'usdview'

version = '18.11.01'

requires = [
    'pyside-1.2',
    'usd-18.11',
    'zmq_server',
    'ala_usd_resolver',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
