#!/bin/sh


rm -rf modules/platform

echo "Visualizing dependencies between modules..."

mkdir -p img
> img/module-deps.dot
echo "strict digraph G {" >> img/module-deps.dot
echo "  node [fontname=monospace];" >> img/module-deps.dot

for module in $(ls modules); do
    echo "  \"$module\" -> \"hp\";" >> img/module-deps.dot
    for dep in $(cat modules/$module/modular-deps.txt); do
        echo "  \"$module\" -> \"$dep\";" >> img/module-deps.dot
    done 
done

echo "}" >> img/module-deps.dot

dot -Tpng img/module-deps.dot > img/module-deps.png


# Resolving complete dependencies using depchase
for arch in aarch64 armv7hl i686 ppc64 ppc64le s390x x86_64; do
    echo "Resolving $arch dependencies:"
    for module in $(ls modules); do

        modulearchroot="modules/$module/$arch"

        # clear existing files
        > $modulearchroot/complete-runtime-binary-packages-full.txt
        > $modulearchroot/complete-runtime-source-packages-full.txt
        > $modulearchroot/complete-runtime-binary-packages-short.txt
        > $modulearchroot/complete-runtime-source-packages-short.txt

        echo "  Processing $module..."
        hintsfile="hp/$arch/hints.txt"
        hints=""
        while read hint; do
            hints+="--hint $hint "
        done < $hintsfile

        cat $modulearchroot/toplevel-binary-packages.txt |
        xargs depchase -a $arch -c repos.cfg resolve $hints > $modulearchroot/depchase-runtime-failures.txt
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
            echo "$nevra" >> $modulearchroot/complete-runtime-$type_-packages-full.txt
            echo "$name" >> $modulearchroot/complete-runtime-$type_-packages-short.txt
        done
        rm -f $modulearchroot/depchase-runtime-failures.txt

        sort -o $modulearchroot/complete-runtime-binary-packages-full.txt $modulearchroot/complete-runtime-binary-packages-full.txt
        sort -o $modulearchroot/complete-runtime-source-packages-full.txt $modulearchroot/complete-runtime-source-packages-full.txt
        sort -o $modulearchroot/complete-runtime-binary-packages-short.txt $modulearchroot/complete-runtime-binary-packages-short.txt
        sort -o $modulearchroot/complete-runtime-source-packages-short.txt $modulearchroot/complete-runtime-source-packages-short.txt
    done
done

# Figuring out the standalone dependencies 
for arch in aarch64 armv7hl i686 ppc64 ppc64le s390x x86_64; do
    for module in $(ls modules); do

        modulearchroot="modules/$module/$arch"

        # clear existing files
        > $modulearchroot/standalone-runtime-binary-packages-full.txt
        > $modulearchroot/standalone-runtime-source-packages-full.txt
        > $modulearchroot/standalone-runtime-binary-packages-short.txt
        > $modulearchroot/standalone-runtime-source-packages-short.txt

        sort -o hp/$arch/runtime-source-packages-full.txt hp/$arch/runtime-source-packages-full.txt
        sort -o hp/$arch/runtime-binary-packages-full.txt hp/$arch/runtime-binary-packages-full.txt
        sort -o hp/$arch/runtime-source-packages-short.txt hp/$arch/runtime-source-packages-short.txt
        sort -o hp/$arch/runtime-binary-packages-short.txt hp/$arch/runtime-binary-packages-short.txt

        comm -13 hp/$arch/runtime-binary-packages-full.txt $modulearchroot/complete-runtime-binary-packages-full.txt > $modulearchroot/standalone-runtime-binary-packages-full.txt
        comm -13 hp/$arch/runtime-source-packages-full.txt $modulearchroot/complete-runtime-source-packages-full.txt > $modulearchroot/standalone-runtime-source-packages-full.txt
        comm -13 hp/$arch/runtime-binary-packages-short.txt $modulearchroot/complete-runtime-binary-packages-short.txt > $modulearchroot/standalone-runtime-binary-packages-short.txt
        comm -13 hp/$arch/runtime-source-packages-short.txt $modulearchroot/complete-runtime-source-packages-short.txt > $modulearchroot/standalone-runtime-source-packages-short.txt

        awk 'NR==FNR{x++} END{ if(x!=FNR){exit 1} }' $modulearchroot/standalone-runtime-binary-packages-full.txt $modulearchroot/standalone-runtime-binary-packages-short.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "    WARNING! Different number of packages between full and short."
            echo "      $(wc -l $modulearchroot/standalone-runtime-binary-packages-short.txt)"
            echo "      $(wc -l $modulearchroot/standalone-runtime-binary-packages-full.txt)"
        fi

        awk 'NR==FNR{x++} END{ if(x!=FNR){exit 1} }' $modulearchroot/standalone-runtime-source-packages-full.txt $modulearchroot/standalone-runtime-source-packages-short.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "    WARNING! Different number of packages between full and short."
            echo "      $(wc -l $modulearchroot/standalone-runtime-source-packages-short.txt)"
            echo "      $(wc -l $modulearchroot/standalone-runtime-source-packages-full.txt)"
        fi
    done
done


echo "Success!"

