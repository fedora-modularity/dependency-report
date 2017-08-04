#!/bin/sh

for module in $(ls modules); do
    for arch in x86_64 i686; do

        modulearchroot="modules/$module/$arch"

        # clear existing files
        > $modulearchroot/runtime-binary-packages-full.txt
        > $modulearchroot/runtime-source-packages-full.txt
        > $modulearchroot/runtime-binary-packages-short.txt
        > $modulearchroot/runtime-source-packages-short.txt

        echo "Processing $module module for $arch..."
        cat $modulearchroot/toplevel-binary-packages.txt |
        xargs depchase -a $arch -c repos.cfg resolve > $modulearchroot/depchase-runtime-failures.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "Depchase failures encountered on $arch runtime:"
            cat $modulearchroot/depchase-runtime-failures.txt
            continue
        fi

        cat $modulearchroot/depchase-runtime-failures.txt |
        while IFS= read -r nevra; do
              [[ "$nevra" == *.src || "$nevra" == *.nosrc ]] && type_="source" || type_="binary"
            name=${nevra%-*-*}
            echo "$nevra" >> $modulearchroot/runtime-$type_-packages-full.txt
            echo "$name" >> $modulearchroot/runtime-$type_-packages-short.txt
        done
        rm -f $modulearchroot/depchase-runtime-failures.txt
    done
done
echo "Success!"

