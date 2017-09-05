# python2
This is a dependency report for the python2 module.

An initial [modulemd file](python2.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [fonts](../fonts)
* [X11-base](../X11-base)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [python2 top-level package set](python2.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this python2 module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `curl-minimal` | X | X | X | X | X | X | X |
| `python2-debug` | X | X | X | X | X | X | X |
| `python2-devel` | X | X | X | X | X | X | X |
| `python2-rpm-macros` | X | X | X | X | X | X | X |
| `python2-test` | X | X | X | X | X | X | X |
| `python2-tkinter` | X | X | X | X | X | X | X |
| `python2-tools` | X | X | X | X | X | X | X |
| `python2-wheel` | X | X | X | X | X | X | X |
| `python3-rpm-generators` | X | X | X | X | X | X | X |
| `python-rpm-macros` | X | X | X | X | X | X | X |
| `tix` | X | X | X | X | X | X | X |
| `tk` | X | X | X | X | X | X | X |
