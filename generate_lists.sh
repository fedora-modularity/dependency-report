#!/bin/sh

for repo in $(cat repos/repolist.txt); do
    perl mklists.pl -r repos/$repo
done
