# Modularity dependency reports

This repository contains scripts to generate dependencies of the initial set of modules in F27.

## Input

**Modules are defined in [modularity-modules](https://github.com/modularity-modules) repositories** in the `README.md` files. 

The [module-repolist.txt](module-repolist.txt) file defines which repositories get processed.

## Output

**Output is stored in the [modules](modules) directory.**

You can also list [all packages and their occurrences in modules](global_reports/all-binary-pkgs-occurrences.txt)

Module dependencies are resolved for all architectures: `aarch64`, `armv7hl`, `i686`, `ppc64`, `ppc64le`, `s390x`, `x86_64`. There are many files with different levels of detail. Please see the example below for more info.

Right now, the **following modules are included**. This image is automatically generated each time the scripts are run.

![module-deps](img/module-deps.png)

### Structure

#### Three major groups

* module/arch/**runtime-...txt** - All runtime dependencies excluding Platform and modular dependencies.
* module/arch/**standalone-runtime-...txt** - All runtime dependencies excluding Platform only.
* module/arch/**complete-runtime-...txt** - All runtime dependencies. Not very usable output.

#### Binary RPM vs. source RPM

* module/arch/**...-source-...txt** - Source RPM packages.
* module/arch/**...-binary-...txt** - Binary RPM packages.

#### Names only vs. NEVRA

* module/arch/**...-full.txt** - Full package names and versions in the NEVRA format.
* module/arch/**...-short.txt** - Only package names.

## Scripts

### Installation 

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

### Running the scripts

There are many scripts doing different things. This one runs them in the right order.

```
$ ./regenerate_everything.sh
```

### Adding content and defining dependencies

The goal of these scripts was to provide an output as quickly as possible. Therefore, some of the following steps might feel hacky.

To **add a new module** defined in a [modularity-modules](https://github.com/modularity-modules) repository, add the name of the repo in the `module-repolist.txt` file.

```
$ cat module-repolist.txt

repo-one
repo-two
repo-three
...
```

To **define a runtime dependency**, add it to the `Makefile`.

```
$ cat Makefile

...
module: platform dependency-one dependency-two

dependency-one: platform
...
```

To **define a build dependency**, add it to the `build_deps_definitions.sh`. All modules need to have an entry in this file.

```
$ cat build_deps_definitions.sh

./build_deps.sh module-one   platform
./build_deps.sh module-two   platform module-one
```
