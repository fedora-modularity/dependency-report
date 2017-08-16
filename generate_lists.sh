#!/bin/sh

echo "Generating top-level package lits:"
for repo in $(cat module-repolist.txt); do
    echo "  Processing $repo repository"
    perl mklists.pl -r repos/$repo
done

for module in $(ls modules); do
    for arch in $(cat arches.txt); do
        sort -o modules/$module/$arch/toplevel-binary-packages.txt modules/$module/$arch/toplevel-binary-packages.txt
    done
done
