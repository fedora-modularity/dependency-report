#!/bin/sh

repo=$(mktemp -d)
git clone https://github.com/fedora-modularity/baseruntime-package-lists.git $repo
rm -rf modules/hp
cp -r $repo/data/Fedora/devel/hp modules/
rm -rf $repo

