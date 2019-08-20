# -*- coding: utf-8 -*-

name = 'carbon'

version = '9.2.5'

variants = [['platform-linux', 'arch-x86_64', 'houdini-17.5.327']]

def commands():
    env.SIMCARBONTOOL_PATH.set('file:///opt/carbon/9.2.5/hfs17.5.327/numerion/SIM_CarbonTool/')
    env.NUMERION_SOFTWARE_LICENSE_PATH.set('6200@roz.ala.int.uts.edu.au')
    env.HOUDINI_PATH.append('/opt/carbon/9.2.5/hfs17.5.327/houdini17.5/:&')
    env.PATH.prepend('/opt/carbon/9.2.5/hfs17.5.327/houdini17.5/')

    env.CARBON_ROOT.set('/opt/carbon/9.2.5/hfs17.5.327/houdini17.5/')

    env.HOUDINI_OTLSCAN_PATH.prepend('$CARBON_ROOT/otls/')
