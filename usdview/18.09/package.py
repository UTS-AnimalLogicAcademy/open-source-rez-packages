# -*- coding: utf-8 -*-

name = 'usdview'

version = '18.09'

requires = [
    'pyside-1.2',
    'usd-18.09',
    'zmq_server',
    'ala_usd_resolver',
    'turret_usd'
]

def commands():
    env.DEFAULT_USD.set('{root}/bin/DefaultUSD.usda')
