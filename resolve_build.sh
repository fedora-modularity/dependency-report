#!/bin/sh


rm -rf modules/platform

# Resolve complete dependencies using depchase
resolve_arch() {
    local arch="$1"

    for module in $(ls modules); do

        modulearchroot="modules/$module/$arch"

        # clear existing files
        > $modulearchroot/complete-buildtime-binary-packages-full.txt
        > $modulearchroot/complete-buildtime-source-packages-full.txt
        > $modulearchroot/complete-buildtime-binary-packages-short.txt
        > $modulearchroot/complete-buildtime-source-packages-short.txt

        echo "  Processing $module for $arch..."
        hintsfile="hp/$arch/hints.txt"
        hints=""
        while read hint; do
            hints+="--hint $hint "
        done < $hintsfile

        cat $modulearchroot/runtime-source-packages-short.txt | sed -e "s/$/.src/g" |
        xargs depchase -v -a $arch -c repos.cfg resolve $hints > $modulearchroot/depchase-buildtime-failures.txt 2> $modulearchroot/depchase-buildtime-relations.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "Depchase failures encountered for $module on $arch buildtime:"
            cat $modulearchroot/depchase-buildtime-failures.txt
            continue
        fi

        cat $modulearchroot/depchase-buildtime-failures.txt |
        while IFS= read -r nevra; do
              [[ "$nevra" == *.src || "$nevra" == *.nosrc ]] && type_="source" || type_="binary"
            name=${nevra%-*-*}
            echo "$nevra" >> $modulearchroot/complete-buildtime-$type_-packages-full.txt
            echo "$name" >> $modulearchroot/complete-buildtime-$type_-packages-short.txt
        done
        rm -f $modulearchroot/depchase-buildtime-failures.txt

        sort -o $modulearchroot/complete-buildtime-binary-packages-full.txt $modulearchroot/complete-buildtime-binary-packages-full.txt
        sort -o $modulearchroot/complete-buildtime-source-packages-full.txt $modulearchroot/complete-buildtime-source-packages-full.txt
        sort -o $modulearchroot/complete-buildtime-binary-packages-short.txt $modulearchroot/complete-buildtime-binary-packages-short.txt
        sort -o $modulearchroot/complete-buildtime-source-packages-short.txt $modulearchroot/complete-buildtime-source-packages-short.txt
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
        > $modulearchroot/standalone-buildtime-binary-packages-full.txt
        > $modulearchroot/standalone-buildtime-source-packages-full.txt
        > $modulearchroot/standalone-buildtime-binary-packages-short.txt
        > $modulearchroot/standalone-buildtime-source-packages-short.txt

        sort -o hp/$arch/runtime-source-packages-full.txt hp/$arch/runtime-source-packages-full.txt
        sort -o hp/$arch/runtime-binary-packages-full.txt hp/$arch/runtime-binary-packages-full.txt
        sort -o hp/$arch/runtime-source-packages-short.txt hp/$arch/runtime-source-packages-short.txt
        sort -o hp/$arch/runtime-binary-packages-short.txt hp/$arch/runtime-binary-packages-short.txt

        comm -13 hp/$arch/runtime-binary-packages-full.txt $modulearchroot/complete-buildtime-binary-packages-full.txt > $modulearchroot/standalone-buildtime-binary-packages-full.txt
        comm -13 hp/$arch/runtime-source-packages-full.txt $modulearchroot/complete-buildtime-source-packages-full.txt > $modulearchroot/standalone-buildtime-source-packages-full.txt
        comm -13 hp/$arch/runtime-binary-packages-short.txt $modulearchroot/complete-buildtime-binary-packages-short.txt > $modulearchroot/standalone-buildtime-binary-packages-short.txt
        comm -13 hp/$arch/runtime-source-packages-short.txt $modulearchroot/complete-buildtime-source-packages-short.txt > $modulearchroot/standalone-buildtime-source-packages-short.txt

        awk 'NR==FNR{x++} END{ if(x!=FNR){exit 1} }' $modulearchroot/standalone-buildtime-binary-packages-full.txt $modulearchroot/standalone-buildtime-binary-packages-short.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "    WARNING! Different number of packages between full and short."
            echo "      $(wc -l $modulearchroot/standalone-buildtime-binary-packages-short.txt)"
            echo "      $(wc -l $modulearchroot/standalone-buildtime-binary-packages-full.txt)"
        fi

        awk 'NR==FNR{x++} END{ if(x!=FNR){exit 1} }' $modulearchroot/standalone-buildtime-source-packages-full.txt $modulearchroot/standalone-buildtime-source-packages-short.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "    WARNING! Different number of packages between full and short."
            echo "      $(wc -l $modulearchroot/standalone-buildtime-source-packages-short.txt)"
            echo "      $(wc -l $modulearchroot/standalone-buildtime-source-packages-full.txt)"
        fi
    done
done


echo "Success!"

