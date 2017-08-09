#!/bin/sh
arches="aarch64 armv7hl i686 ppc64 ppc64le s390x x86_64"
files="
    runtime-binary-packages-full.txt
    runtime-binary-packages-short.txt
    runtime-source-packages-full.txt
    runtime-source-packages-short.txt"
target=$1
shift
deps=$@
base=modules

for file in $files; do
    for arch in $arches; do
        for dep in $deps; do
            comm -23 \
                $base/$target/$arch/complete-$file \
                $base/$dep/$arch/complete-$file \
                > $base/$target/$arch/$file
        done
    done
done
