#!/bin/sh

mkdir -p repos
for repo in $(cat module-repolist.txt); do
  git clone https://github.com/modularity-modules/$repo.git repos/$repo
done
