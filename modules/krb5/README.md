# krb5
This is a dependency report for the krb5 module.

An initial [modulemd file](krb5.yaml) has been generated. It is experimental and probably unusable at this point.
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
## Binary RPM packages
These are RPM dependencies of the [krb5 top-level package set](krb5.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this krb5 module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `krb5-pkinit` | X | X | X | X | X | X | X |
| `krb5-server` | X | X | X | X | X | X | X |
| `krb5-workstation` | X | X | X | X | X | X | X |
| `libkadm5` | X | X | X | X | X | X | X |
| `words` | X | X | X | X | X | X | X |
