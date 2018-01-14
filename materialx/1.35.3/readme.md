This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for materialx 1.35.3 on linux

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rez packages:**
 - pybind11-2.2.1

## Building

 1. Run setup.sh
 2. To build locally, either run "rez-build -i", or just run the rez-build.sh script.  This will install to your local rez package location defined in your rez config (eg: ~/packages)
 3. To release (and build, if not already built), run rez-release.sh, which will install into the rez release location defined in your rez config.
 4. Test via rez-env materialx-1.35.3
