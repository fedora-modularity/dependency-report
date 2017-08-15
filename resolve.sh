#!/bin/sh

WHAT="$1"

case "$WHAT" in 
    buildtime)
        get_toplevel_pkgs() {
            local modulearchroot="$1"
            sed -e "s/$/.src/g" < "$modulearchroot/runtime-source-packages-short.txt"
        }
        ;;
    runtime)
        get_toplevel_pkgs() {
            local modulearchroot="$1"
            cat "$modulearchroot/toplevel-binary-packages.txt"
        }
        ;;
    *)
        echo "Don't know what to do: '$WHAT'" >&2
        exit 1
        ;;
esac

rm -rf modules/platform

# Resolve complete dependencies using depchase
resolve_arch() {
    local arch="$1"

    for module in $(ls modules); do

        modulearchroot="modules/$module/$arch"

        # clear existing files
        > $modulearchroot/complete-$WHAT-binary-packages-full.txt
        > $modulearchroot/complete-$WHAT-source-packages-full.txt
        > $modulearchroot/complete-$WHAT-binary-packages-short.txt
        > $modulearchroot/complete-$WHAT-source-packages-short.txt

        echo "  Processing $module for $arch..."
        hintsfile="hp/$arch/hints.txt"
        hints=""
        while read hint; do
            hints+="--hint $hint "
        done < $hintsfile

        get_toplevel_pkgs "$modulearchroot" |
        xargs depchase -v -a $arch -c repos.cfg resolve $hints > $modulearchroot/depchase-$WHAT-failures.txt 2> $modulearchroot/depchase-$WHAT-relations.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "Depchase failures encountered for $module on $arch $WHAT:"
            cat $modulearchroot/depchase-$WHAT-failures.txt
            continue
        fi

        cat $modulearchroot/depchase-$WHAT-failures.txt |
        while IFS= read -r nevra; do
              [[ "$nevra" == *.src || "$nevra" == *.nosrc ]] && type_="source" || type_="binary"
            name=${nevra%-*-*}
            echo "$nevra" >> $modulearchroot/complete-$WHAT-$type_-packages-full.txt
            echo "$name" >> $modulearchroot/complete-$WHAT-$type_-packages-short.txt
        done
        rm -f $modulearchroot/depchase-$WHAT-failures.txt

        sort -o $modulearchroot/complete-$WHAT-binary-packages-full.txt $modulearchroot/complete-$WHAT-binary-packages-full.txt
        sort -o $modulearchroot/complete-$WHAT-source-packages-full.txt $modulearchroot/complete-$WHAT-source-packages-full.txt
        sort -o $modulearchroot/complete-$WHAT-binary-packages-short.txt $modulearchroot/complete-$WHAT-binary-packages-short.txt
        sort -o $modulearchroot/complete-$WHAT-source-packages-short.txt $modulearchroot/complete-$WHAT-source-packages-short.txt
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
        > $modulearchroot/standalone-$WHAT-binary-packages-full.txt
        > $modulearchroot/standalone-$WHAT-source-packages-full.txt
        > $modulearchroot/standalone-$WHAT-binary-packages-short.txt
        > $modulearchroot/standalone-$WHAT-source-packages-short.txt

        sort -o hp/$arch/runtime-source-packages-full.txt hp/$arch/runtime-source-packages-full.txt
        sort -o hp/$arch/runtime-binary-packages-full.txt hp/$arch/runtime-binary-packages-full.txt
        sort -o hp/$arch/runtime-source-packages-short.txt hp/$arch/runtime-source-packages-short.txt
        sort -o hp/$arch/runtime-binary-packages-short.txt hp/$arch/runtime-binary-packages-short.txt

        comm -13 hp/$arch/runtime-binary-packages-full.txt $modulearchroot/complete-$WHAT-binary-packages-full.txt > $modulearchroot/standalone-$WHAT-binary-packages-full.txt
        comm -13 hp/$arch/runtime-source-packages-full.txt $modulearchroot/complete-$WHAT-source-packages-full.txt > $modulearchroot/standalone-$WHAT-source-packages-full.txt
        comm -13 hp/$arch/runtime-binary-packages-short.txt $modulearchroot/complete-$WHAT-binary-packages-short.txt > $modulearchroot/standalone-$WHAT-binary-packages-short.txt
        comm -13 hp/$arch/runtime-source-packages-short.txt $modulearchroot/complete-$WHAT-source-packages-short.txt > $modulearchroot/standalone-$WHAT-source-packages-short.txt

        awk 'NR==FNR{x++} END{ if(x!=FNR){exit 1} }' $modulearchroot/standalone-$WHAT-binary-packages-full.txt $modulearchroot/standalone-$WHAT-binary-packages-short.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "    WARNING! Different number of packages between full and short."
            echo "      $(wc -l $modulearchroot/standalone-$WHAT-binary-packages-short.txt)"
            echo "      $(wc -l $modulearchroot/standalone-$WHAT-binary-packages-full.txt)"
        fi

        awk 'NR==FNR{x++} END{ if(x!=FNR){exit 1} }' $modulearchroot/standalone-$WHAT-source-packages-full.txt $modulearchroot/standalone-$WHAT-source-packages-short.txt
        RC=$?
        if [ $RC -ne 0 ]; then
            echo "    WARNING! Different number of packages between full and short."
            echo "      $(wc -l $modulearchroot/standalone-$WHAT-source-packages-short.txt)"
            echo "      $(wc -l $modulearchroot/standalone-$WHAT-source-packages-full.txt)"
        fi
    done
done


echo "Success!"
