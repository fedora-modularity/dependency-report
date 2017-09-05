# fonts
This is a dependency report for the fonts module.

An initial [modulemd file](fonts.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [fonts top-level package set](fonts.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this fonts module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `aajohan-comfortaa-fonts` | X | X | X | X | X | X | X |
| `fontawesome-fonts` | X | X | X | X | X | X | X |
| `fontconfig` | X | X | X | X | X | X | X |
| `fontpackages-filesystem` | X | X | X | X | X | X | X |
| `freetype` | - | X | - | - | - | X | - |
| `libpng` | - | X | - | - | - | X | - |
