#!/bin/sh

for repo in $(cat repos/repolist.txt); do
  git clone https://github.com/modularity-modules/$repo.git repos/$repo
done
