#!/bin/sh

mkdir -p repos
for repo in $(cat module-repolist.txt); do
  if [ ! -d repos/$repo ]; then
    git clone https://github.com/modularity-modules/$repo.git repos/$repo
  else
    (cd repos/$repo && git pull)
  fi
done
