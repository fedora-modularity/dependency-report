#!/bin/sh
arches=$(cat arches.txt)
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
            cat $base/$dep/$arch/complete-$file
        done \
            | sort -u \
            | comm -23 $base/$target/$arch/complete-$file - \
            > $base/$target/$arch/$file

    done
done

echo $deps | sed -e "s/ /\n/g" > $base/$target/modular-deps.txt

for arch in $arches; do
    comm -23 \
        $base/$target/$arch/toplevel-binary-packages.txt \
        $base/$target/$arch/runtime-binary-packages-short.txt \
        > $base/$target/$arch/pulled-out-toplevel-binary-packages.txt
done
