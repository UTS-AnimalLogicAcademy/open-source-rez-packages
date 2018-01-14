This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for usd_katana 0.8.2 on

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rez packages:**

 - usd-0.8.2
 - katana

## Building

 1. Run setup.sh
 2. To build locally, either run "rez-build -i", or just run the rez-build.sh script.  This will install to your local rez package location defined in your rez config (eg: ~/packages)
 3. To release (and build, if not already built), run rez-release.sh, which will install into the rez release location defined in your rez config.
 4. Test via rez-env usd_katana-0.8.2