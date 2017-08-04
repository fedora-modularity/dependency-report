#!/bin/sh

echo "Generating top-level package lits:"
for repo in $(cat repos/repolist.txt); do
    echo "  Processing $repo repository"
    perl mklists.pl -r repos/$repo
done
