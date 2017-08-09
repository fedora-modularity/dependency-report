#!/bin/sh
arches="aarch64 armv7hl i686 ppc64 ppc64le s390x x86_64"
files="
    runtime-binary-packages-full.txt
    runtime-binary-packages-short.txt
    runtime-source-packages-full.txt
    runtime-source-packages-short.txt"
base=modules

for file in $files; do
    for module in $(ls modules); do
        mkdir -p $base/$module/all
        for arch in $arches; do
            cat $base/$module/$arch/$file
        done \
            | sort -u \
            > $base/$module/all/$file
    done
done
         
