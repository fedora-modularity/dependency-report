# java
This is a dependency report for the java module.

An initial [modulemd file](java.yaml) has been generated. It is experimental and probably unusable at this point.
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
These are RPM dependencies of the [java top-level package set](java.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this java module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `copy-jdk-configs` | X | X | X | X | X | X | X |
| `giflib` | X | X | X | X | X | X | X |
| `java-1.8.0-openjdk` | X | X | X | X | X | X | X |
| `java-1.8.0-openjdk-devel` | X | X | X | X | X | X | X |
| `java-1.8.0-openjdk-headless` | X | X | X | X | X | X | X |
| `javapackages-tools` | X | X | X | X | X | X | X |
| `lua` | X | X | X | X | X | X | X |
| `lua-posix` | X | X | X | X | X | X | X |
| `ttmkfdir` | X | X | X | X | X | X | X |
| `tzdata-java` | X | X | X | X | X | X | X |
| `which` | - | X | - | - | - | X | - |
| `xorg-x11-fonts-Type1` | X | X | X | X | X | X | X |
| `xorg-x11-font-utils` | X | X | X | X | X | X | X |
