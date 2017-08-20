#!/bin/sh

cp -r hp modules/platform
echo "" > modules/platform/modular-deps.txt

for arch in $(cat arches.txt); do
    modulearchroot="modules/platform/$arch"

    cp $modulearchroot/runtime-binary-packages-full.txt   $modulearchroot/complete-runtime-binary-packages-full.txt 
    cp $modulearchroot/runtime-binary-packages-short.txt  $modulearchroot/complete-runtime-binary-packages-short.txt
    cp $modulearchroot/runtime-source-packages-full.txt   $modulearchroot/complete-runtime-source-packages-full.txt 
    cp $modulearchroot/runtime-source-packages-short.txt  $modulearchroot/complete-runtime-source-packages-short.txt
done


cp -r bootstrap modules/bootstrap
echo "" > modules/bootstrap/modular-deps.txt

for arch in $(cat arches.txt); do
    modulearchroot="modules/bootstrap/$arch"

    cp $modulearchroot/selfhosting-binary-packages-full.txt   $modulearchroot/runtime-binary-packages-full.txt 
    cp $modulearchroot/selfhosting-binary-packages-short.txt  $modulearchroot/runtime-binary-packages-short.txt
    cp $modulearchroot/selfhosting-source-packages-full.txt   $modulearchroot/runtime-source-packages-full.txt 
    cp $modulearchroot/selfhosting-source-packages-short.txt  $modulearchroot/runtime-source-packages-short.txt

    cp $modulearchroot/runtime-binary-packages-full.txt   $modulearchroot/complete-runtime-binary-packages-full.txt 
    cp $modulearchroot/runtime-binary-packages-short.txt  $modulearchroot/complete-runtime-binary-packages-short.txt
    cp $modulearchroot/runtime-source-packages-full.txt   $modulearchroot/complete-runtime-source-packages-full.txt 
    cp $modulearchroot/runtime-source-packages-short.txt  $modulearchroot/complete-runtime-source-packages-short.txt
done

