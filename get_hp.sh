#!/bin/sh

repo=$(mktemp -d)
git clone https://github.com/fedora-modularity/baseruntime-package-lists.git $repo
rm -rf hp
cp -r $repo/data/Fedora/devel/hp ./
rm -rf $repo

