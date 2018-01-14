This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for oiio 1.8.5 on linux.  

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rpm/system packages:**

 - giflib-devel
 - libwebp-devel
 - pugixml-devel
 - openjpeg-devel
 - dcmtk-devel
 - LibRaw-devel
 - libjpeg-turbo-devel
 - libjpeg-turbo-utils
 - yasm
 - libpng-devel
 - libtiff-devel
 - bzip2-devel

Other versions may also work.

If the rpm/system package doesn't work for you (i.e. older distro build), you can create your own rez packages for any of the above, however you will most likely need to modify the build options.

**rez packages:**
 - openexr-2.2.0
 - ilmbase-2.2.0
 - ocio-1.0.9
 - ffmpeg-3.3.5
 - boost-1.55.0

## Building

 1. Run setup.sh
 2. Set the pacakge installation options in build.sh
 3. Run build.sh
 4. Test via rez-env oiio-1.8.5