# Modularity dependency reports

This repository contains scripts to generate dependencies of the initial set of modules in F27.

## Format

Module dependencies are resolved for all architectures: `aarch64`, `armv7hl`, `i686`, `ppc64`, `ppc64le`, `s390x`, `x86_64`. There are many files with different levels of detail. Please see the example below for more info.

### Example: `httpd` module

[httpd](modules/httpd) module:
  * [httpd.csv](modules/httpd/httpd.csv) - List of top-level packages with rationale.
  * [x86_64](modules/httpd/x86_64) - More level of details for a specific architecture.
    * `complete-*` - Complete runtime dependencies. Not very usable output.
    * `standalone-*` - All dependencies needed to be able to run on Platform. Basically `complete - platform = standalone`.

## Scripts

### 1. Get the module definitions

Clones all [modularity-modules](https://github.com/modularity-modules) repos listed in `repos/repolist.txt`. These repositories define the top-level package sets and are owned by the module maintainers.

```
$ ./clone_repos.sh
```

### 2. Extract module package lists from README files

Generates machine-readable top-level package lists for modules from all repositorires.

```
$ ./generate_lists.sh
```

### 3. Get the Host & Platform modules data

The [Host & Platform](https://github.com/fedora-modularity/hp) is a set of modules or module stacks defining the base operating system. It is needed to resolve the `standalone-*` package lists.

```
$ ./get_hp.sh
```

### 4. Generate deps for all modules

Generate the `complete-*` and `standalone-*` package lists for all modules on all architectures. 

```
$ ./resolve_modules.sh
```
