# storaged
This is a dependency report for the storaged module.

An initial [modulemd file](storaged.yaml) has been generated. It is experimental and probably unusable at this point.
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
These are RPM dependencies of the [storaged top-level package set](storaged.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this storaged module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `cryptsetup` | X | X | X | X | X | X | X |
| `libatasmart` | X | X | X | X | X | X | X |
| `libgudev` | X | X | X | X | X | X | X |
| `libstoraged` | X | X | X | X | X | X | X |
| `libstoraged-devel` | X | X | X | X | X | X | X |
| `libstoragemgmt` | X | X | X | X | X | X | X |
| `ntfs-3g` | X | X | X | - | X | X | X |
| `ntfsprogs` | X | X | X | - | X | X | X |
| `python3-libstoragemgmt` | X | X | X | X | X | X | X |
| `python3-libstoragemgmt-clibs` | X | X | X | X | X | X | X |
| `storaged` | X | X | X | X | X | X | X |
| `storaged-bcache` | X | X | X | X | X | X | X |
| `storaged-btrfs` | X | X | X | X | X | X | X |
| `storaged-iscsi` | X | X | X | X | X | X | X |
| `storaged-lsm` | X | X | X | X | X | X | X |
| `storaged-lvm2` | X | X | X | X | X | X | X |
| `storaged-zram` | X | X | X | X | X | X | X |
| `yajl` | X | X | X | X | X | X | X |
