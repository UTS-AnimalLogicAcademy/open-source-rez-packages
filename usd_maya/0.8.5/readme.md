This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for usd_maya 0.8.5 on linux

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rez packages:**

 - usd-0.8.5
 - maya-2017
 - PyOpenGL-3 (discoverable by mayapy)

## Building

 1. Run setup.sh
 2. To build locally, either run "rez-build -i", or just run the rez-build.sh script.  This will install to your local rez package location defined in your rez config (eg: ~/packages)
 3. To release (and build, if not already built), run rez-release.sh, which will install into the rez release location defined in your rez config.
 4. Test via rez-env usd_maya-0.8.4
