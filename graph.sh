#!/bin/sh

arches="aarch64 armv7hl i686 ppc64 ppc64le s390x x86_64"

echo "Drawing graphs:"
for module in $(ls modules); do
    echo "  Processing $module module..."
    for arch in $arches; do
        grep -F -f \
            modules/$module/$arch/runtime-binary-packages-full.txt \
            modules/$module/$arch/depchase-runtime-relations.txt \
            > modules/$module/$arch/relations-runtime.txt

        {
            pkg=NONE
            while read line; do
                if [[ $line == ├─* ]] || [[ $line == └─* ]] ; then
                    dep=$(echo $line | sed -e "s/.* //" )
                    echo "  \"${pkg%-*-*}\" -> \"${dep%-*-*}\";"
                else
                    pkg=$line
                fi
            done < modules/$module/$arch/relations-runtime.txt
        } | sort -u > modules/$module/$arch/graph.txt
        echo "strict digraph G {" > modules/$module/$arch/graph.dot
        echo "node [fontname=monospace];" >> modules/$module/$arch/graph.dot
        cat modules/$module/$arch/graph.txt >> modules/$module/$arch/graph.dot
        echo "}" >> modules/$module/$arch/graph.dot
        START=7; cat modules/$module/$arch/graph.dot \
            | sfdp -Gstart=$START -Goverlap=prism \
            | gvmap -e -d $START \
            | neato -Gstart=$START -n -Ecolor="#44444455" -Tsvg \
            > modules/$module/$arch/graph.svg
    done
done


