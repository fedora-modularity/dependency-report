# systemtap
This is a dependency report for the systemtap module.

An initial [modulemd file](systemtap.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [perl](../perl)
* [platform-placeholder](../platform-placeholder)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
## Binary RPM packages
These are RPM dependencies of the [systemtap top-level package set](systemtap.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this systemtap module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `avahi-libs` | X | X | X | X | X | X | X |
| `boost-atomic` | - | - | X | X | - | - | X |
| `boost-chrono` | - | - | X | X | - | - | X |
| `boost-date-time` | - | - | X | X | - | - | X |
| `boost-system` | - | - | X | X | - | - | X |
| `boost-thread` | - | - | X | X | - | - | X |
| `curl-minimal` | X | X | X | X | X | X | X |
| `dyninst` | - | - | X | X | - | - | X |
| `json-c` | X | X | X | X | X | X | X |
| `kernel-devel` | X | X | X | X | X | X | X |
| `libdwarf` | - | - | X | X | - | - | X |
| `systemtap` | X | X | X | X | X | X | X |
| `systemtap-client` | X | X | X | X | X | X | X |
| `systemtap-devel` | X | X | X | X | X | X | X |
| `systemtap-runtime` | X | X | X | X | X | X | X |
