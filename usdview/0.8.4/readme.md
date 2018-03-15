This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for usdview 0.8.4 on

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Note

usdview requires pyside, linked to qt-4.5, which causes issues for Maya in the usd_maya environment.  This package avoids that issue by preventing pyside from being resolved in the core usd environment.  

There is no source code in this package, it is purely resolving an environment in which usdview can run.  


## Requirements

**rez packages:**
 - usd-0.8.4
 - pyside-1.2

## Building
 1. run rez-release.sh, which will install into the rez release location defined in your rez config.
 2. Test via rez-env usdview-0.8.4
