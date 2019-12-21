#!/bin/sh
rm -rf src/tinyos-main
git clone https://github.com/tinyos/tinyos-main src/tinyos-main


chmod +x ./common/patchs/archlinux_build_patch_tinyos_main.sh
./common/patchs/archlinux_build_patch_tinyos_main.sh



chmod +x ./common/patchs/documentation_patch.sh
./common/patchs/documentation_patch.sh

cd src/tinyos-main/tools


echo "======> Building tools"
./Bootstrap
./configure
make



echo "======> Building doc"
cd ../doc
make all




