This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for ffmpeg 3.3.5 on linux.  

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rpm/system packages:**

 - icu 50.1.2
 - zlib-devel 1.2.7   

Other versions may also work.

If the rpm/system package doesn't work for you (i.e. older distro build), you can create your own rez packages for any of the above, however you will most likely need to modify the build options.

## Building

 1. Run setup.sh
 2. Set the pacakge installation options in build.sh
 3. Run build.sh
 4. Test via rez-env ffmpeg-3.3.5