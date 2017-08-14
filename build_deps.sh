#!/bin/sh
arches=$(cat arches.txt)
files="
    binary-packages-full.txt
    binary-packages-short.txt
    source-packages-full.txt
    source-packages-short.txt"
target=$1
shift
deps=$@
base=modules

for file in $files; do
    for arch in $arches; do
        for dep in $deps $target; do
            cat $base/$dep/$arch/complete-runtime-$file
        done \
            | sort -u \
            | comm -23 $base/$target/$arch/complete-buildtime-$file - \
            > $base/$target/$arch/buildtime-$file
    done
done

echo $deps | sed -e "s/ /\n/g" > $base/$target/modular-build-deps.txt
