#!/bin/sh


rm -rf modules/platform

# Resolve complete dependencies using depchase
resolve_arch() {
    local arch="$1"

    for module in $(ls modules); do

        modulearchroot="modules/$module/$arch"

        # clear existing files
        > $modulearchroot/complete-runtime-binary-packages-full.txt
        > $modulearchroot/complete-runtime-source-packages-full.txt
        > $modulearchroot/complete-runtime-binary-packages-short.txt
        > $modulearchroot/complete-runtime-source-packages-short.txt

        echo "  Processing $module for $arch..."
        hintsfile="hp/$arch/hints.txt"
        hints=""
        while read hint; do
            hints+="--hint $hint "
        done < $hintsfile

        cat $modulearchroot/toplevel-binary-packages.txt |
        xargs depchase -v -a $arch -c repos.cfg resolve $hints > $modulearchroot/depchase-runtime-failures.txt 2> $modulearchroot/depchase-runtime-relations.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "Depchase failures encountered for $module on $arch runtime:"
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
}

for arch in $(cat arches.txt); do
    echo "Starting the resolution of $arch dependencies."
    resolve_arch "$arch" &
done

echo "Waiting for jobs to finish..."
wait
echo "Done. Sorting out Platform module dependencies."

# Figuring out the standalone dependencies 
for arch in $(cat arches.txt); do
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

