# Modularity dependency reports

This repository contains scripts to generate dependencies of the initial set of modules in F27.

## Scripts

### `clone_repos.sh`

Clones all repos defined in `repos/repolist.txt`.

```
$ ./clone_repos.sh
```

### `generate_lists.sh`

Generates machine-readable top-level package lists for modules from all repositorires.

```
$ ./generate_lists.sh
```

### `mklists.pl`

Generates machine-readable top-level package lists for modules from a given repository.

For example, to process modules in the `nginx` repository, run:

```
$ perl mklists.pl -r repos/nginx
```
