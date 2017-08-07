# Modularity dependency reports

This repository contains scripts to generate dependencies of the initial set of modules in F27.

## Input

**Modules are defined in [modularity-modules](https://github.com/modularity-modules) repositories** in the `README.md` files. 

The [module-repolist.txt](module-repolist.txt) file defines which repositories get processed.

## Output

**Output is stored in the [modules directory](modules).**

Module dependencies are resolved for all architectures: `aarch64`, `armv7hl`, `i686`, `ppc64`, `ppc64le`, `s390x`, `x86_64`. There are many files with different levels of detail. Please see the example below for more info.

Right now, the **following modules are included**. This image is automatically generated each time the scripts are run.

![module-deps](img/module-deps.png)

### Structure

#### Three major groups

* module/arch/**runtime-...txt** - All runtime dependencies excluding Platform and modular dependencies.
* module/arch/**standalone-runtime-...txt** - All runtime dependencies excluding Platform only.
* module/arch/**complete-runtime-...txt** - All runtime dependencies. Not very usable output.

#### Binary RPM vs. source SRPM

* module/arch/**...-source-...txt** - Source SRPM packages.
* module/arch/**...-binary-...txt** - Binary RPM packages.

#### Names only vs. NEVRA

* module/arch/**...-full.txt** - Full package names and versions in the NEVRA format.
* module/arch/**...-short.txt** - Only package names.

## Scripts

### 0. Get dependencies 

These scripts require you to have **depchase** installed:

```
$ git clone https://github.com/fedora-modularity/depchase.git
$ cd depchase
$ python3 setup.py install --user
```

Download the right **repodata locally** to do the depchasing:

```
$ git clone https://github.com/fedora-modularity/baseruntime-package-lists
$ cd baseruntime-package-lists
$ make repo/devel
```

Add a `repos.cfg` to this `dependency-report` repository. You can find it in the `baseruntime-package-lists` repo:

```
$ ls 
baseruntime-package-lists    dependency-report
$ cp baseruntime-package-lists/repo/Fedora-devel-GA-repos.cfg dependency-report/repos.cfg
```

Now you can run all the scripts in this repo.

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

Generate the `complete-runtime-*` and `standalone-runtime-*` package lists for all modules on all architectures. 

```
$ ./resolve_modules.sh
```

### 5. Figure out dependencies

Generate the `rumtime-*` package lists for all modules on all architectures.

```
$ ./deps.sh
```
