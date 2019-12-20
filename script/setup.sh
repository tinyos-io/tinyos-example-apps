#!/bin/sh
rm -rf src/tinyos-main
git clone https://github.com/tinyos/tinyos-main src/tinyos-main


chmod +x ./common/patchs/archlinux_build_patch_tinyos_main.sh
./common/patchs/archlinux_build_patch_tinyos_main.sh

cd src/tinyos-main/tools


./Bootstrap
./configure
make




