#! /bin/bash

wget https://www.mpfr.org/mpfr-4.0.2/mpfr-4.0.2.tar.gz
tar -xvf mpfr-4.0.2.tar.gz

cd mpfr-4.0.2

wget https://www.mpfr.org/mpfr-4.0.2/allpatches
patch -N -Z -p1 < allpatches


