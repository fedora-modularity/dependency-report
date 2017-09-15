# X11-base
This is a dependency report for the X11-base module.

An initial [modulemd file](X11-base.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [fonts](../fonts)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [X11-base top-level package set](X11-base.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this X11-base module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `libfontenc` | X | X | X | X | X | X | X |
| `libICE` | X | X | X | X | X | X | X |
| `libSM` | X | X | X | X | X | X | X |
| `libX11` | X | X | X | X | X | X | X |
| `libX11-common` | X | X | X | X | X | X | X |
| `libXau` | X | X | X | X | X | X | X |
| `libxcb` | X | X | X | X | X | X | X |
| `libXcomposite` | X | X | X | X | X | X | X |
| `libXext` | X | X | X | X | X | X | X |
| `libXfont` | X | X | X | X | X | X | X |
| `libXft` | X | X | X | X | X | X | X |
| `libXi` | X | X | X | X | X | X | X |
| `libXrender` | X | X | X | X | X | X | X |
| `libXtst` | X | X | X | X | X | X | X |
