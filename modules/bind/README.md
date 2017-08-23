# bind
This is a dependency report for the bind module.

An initial [modulemd file](bind.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [python3](../python3)
* [python3-ecosystem](../python3-ecosystem)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [autotools](../autotools)
* [perl](../perl)
## Binary RPM packages
These are RPM dependencies of the [bind top-level package set](bind.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this bind module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `bind` | X | X | X | X | X | X | X |
| `bind-libs` | X | X | X | X | X | X | X |
| `bind-libs-lite` | X | X | X | X | X | X | X |
| `bind-license` | X | X | X | X | X | X | X |
| `bind-pkcs11` | X | X | X | X | X | X | X |
| `bind-pkcs11-libs` | X | X | X | X | X | X | X |
| `bind-pkcs11-utils` | X | X | X | X | X | X | X |
| `bind-utils` | X | X | X | X | X | X | X |
| `GeoIP` | X | X | X | X | X | X | X |
| `GeoIP-GeoLite-data` | X | X | X | X | X | X | X |
| `python3-bind` | X | X | X | X | X | X | X |
