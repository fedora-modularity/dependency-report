#!/bin/sh

cp -r hp modules/platform
echo "" > modules/platform/modular-deps.txt

for arch in aarch64 armv7hl i686 ppc64 ppc64le s390x x86_64; do
    modulearchroot="modules/platform/$arch"

    cp $modulearchroot/runtime-binary-packages-full.txt   $modulearchroot/complete-runtime-binary-packages-full.txt 
    cp $modulearchroot/runtime-binary-packages-short.txt  $modulearchroot/complete-runtime-binary-packages-short.txt
    cp $modulearchroot/runtime-source-packages-full.txt   $modulearchroot/complete-runtime-source-packages-full.txt 
    cp $modulearchroot/runtime-source-packages-short.txt  $modulearchroot/complete-runtime-source-packages-short.txt
done

