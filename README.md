# Modularity dependency reports

This repository contains scripts to generate dependencies of the initial set of modules in F27.

## `clone_repos.pl`

TBD

## `mklists.pl`

Generates machine-readable lists of the top-level packages for each module on all architectures.

For example, to process modules in the `nginx` repository, run:

```
perl mklists.pl -r repos/nginx
```
