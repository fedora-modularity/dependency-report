# samba
This is a dependency report for the samba module.

An initial [modulemd file](samba.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [autotools](../autotools)
* [perl](../perl)
## Binary RPM packages
These are RPM dependencies of the [samba top-level package set](samba.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this samba module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `avahi-libs` | X | X | X | X | X | X | X |
| `cups-libs` | X | X | X | X | X | X | X |
| `libkadm5` | X | X | X | X | X | X | X |
| `libldb` | X | X | X | X | X | X | X |
| `libsmbclient` | X | X | X | X | X | X | X |
| `libtalloc` | X | X | X | X | X | X | X |
| `libtdb` | X | X | X | X | X | X | X |
| `libtevent` | X | X | X | X | X | X | X |
| `libtomcrypt` | X | X | X | X | X | X | X |
| `libtommath` | X | X | X | X | X | X | X |
| `libwbclient` | X | X | X | X | X | X | X |
| `python2-crypto` | X | X | X | X | X | X | X |
| `python2-dns` | X | X | X | X | X | X | X |
| `python2-ldb` | X | X | X | X | X | X | X |
| `python2-talloc` | X | X | X | X | X | X | X |
| `python2-tdb` | X | X | X | X | X | X | X |
| `python2-tevent` | X | X | X | X | X | X | X |
| `samba` | X | X | X | X | X | X | X |
| `samba-client-libs` | X | X | X | X | X | X | X |
| `samba-common` | X | X | X | X | X | X | X |
| `samba-common-libs` | X | X | X | X | X | X | X |
| `samba-common-tools` | X | X | X | X | X | X | X |
| `samba-dc-libs` | X | X | X | X | X | X | X |
| `samba-libs` | X | X | X | X | X | X | X |
| `samba-python` | X | X | X | X | X | X | X |
| `samba-winbind` | X | X | X | X | X | X | X |
| `samba-winbind-modules` | X | X | X | X | X | X | X |
