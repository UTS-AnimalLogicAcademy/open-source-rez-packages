#! /bin/bash

wget https://github.com/benhoyt/inih/archive/refs/tags/r58.tar.gz
tar -xvf r58.tar.gz

rm inih-r58/meson.build
cp patch/meson.build inih-r58/meson.build

rm ini-r58/meson_options.txt
cp patch/meson_options.txt inih-r58/meson_options.txt