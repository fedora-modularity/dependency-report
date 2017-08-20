#!/bin/sh

repo=$(mktemp -d)
git clone https://github.com/fedora-modularity/baseruntime-package-lists.git $repo
rm -rf hp bootstrap
cp -r $repo/data/Fedora/devel/hp ./
cp -r $repo/data/Fedora/devel/bootstrap ./
rm -rf $repo

