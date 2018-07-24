This will download, build, and create a [rez](http://nerdvegas.github.io/rez/) package for glew-2.0.0 on linux.  

Tested on RedHat 3.10.0-693.11.1.el7.x86_64

## Requirements

**rpm/system packages:**
 - libXmu-devel 
 - libXi-devel 
 - mesa-libGL-devel

## Building

 1. Run setup.sh
 2. Set the pacakge installation options in build.sh
 3. Run build.sh
 4. Test via rez-env glew-2.0.0