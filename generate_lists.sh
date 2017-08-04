#!/bin/sh

echo "Generating top-level package lits:"
for repo in $(cat module-repolist.txt); do
    echo "  Processing $repo repository"
    perl mklists.pl -r repos/$repo
done

for module in $(ls modules); do
    touch modules/$module/modular-deps.txt
done

# Hardcoding module dependencies here.
# FIXME: This needs to get figured out in a better way.
echo httpd > modules/freeipa/modular-deps.txt
echo perl >> modules/freeipa/modular-deps.txt

