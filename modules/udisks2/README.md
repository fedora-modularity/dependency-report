# udisks2
This is a dependency report for the udisks2 module.

An initial [modulemd file](udisks2.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [krb5](../krb5)
* [python3](../python3)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [udisks2 top-level package set](udisks2.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this udisks2 module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `libatasmart` | X | X | X | X | X | X | X |
| `libgudev` | X | X | X | X | X | X | X |
| `libstoragemgmt` | X | X | X | X | X | X | X |
| `libudisks2` | X | X | X | X | X | X | X |
| `libudisks2-devel` | X | X | X | X | X | X | X |
| `ntfs-3g` | X | X | X | - | X | X | X |
| `ntfsprogs` | X | X | X | - | X | X | X |
| `python3-libstoragemgmt` | X | X | X | X | X | X | X |
| `python3-libstoragemgmt-clibs` | X | X | X | X | X | X | X |
| `udisks2` | X | X | X | X | X | X | X |
| `udisks2-bcache` | X | X | X | X | X | X | X |
| `udisks2-btrfs` | X | X | X | X | X | X | X |
| `udisks2-debugsource` | X | X | X | X | X | X | X |
| `udisks2-iscsi` | X | X | X | X | X | X | X |
| `udisks2-lsm` | X | X | X | X | X | X | X |
| `udisks2-lvm2` | X | X | X | X | X | X | X |
| `udisks2-zram` | X | X | X | X | X | X | X |
| `yajl` | X | X | X | X | X | X | X |
