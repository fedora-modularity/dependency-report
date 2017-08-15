# platform-placeholder
This is a dependency report for the platform-placeholder module.

An initial [modulemd file](platform-placeholder.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
## Binary RPM packages
These are RPM dependencies of the [platform-placeholder top-level package set](platform-placeholder.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this platform-placeholder module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `boost-iostreams` | - | - | - | - | - | - | X |
| `boost-random` | - | - | - | - | - | - | X |
| `boost-system` | - | - | - | - | - | - | X |
| `boost-thread` | - | - | - | - | - | - | X |
| `device-mapper-multipath` | X | X | X | X | X | - | X |
| `device-mapper-multipath-libs` | X | X | X | X | X | - | X |
| `dracut-network` | X | X | X | X | X | - | X |
| `ebtables` | X | X | X | X | X | - | X |
| `ethtool` | X | X | X | X | X | - | X |
| `fcoe-utils` | X | X | X | X | X | - | X |
| `gdisk` | X | X | X | X | X | - | X |
| `hfsplus-tools` | X | X | X | X | X | - | X |
| `hostname` | X | X | X | X | X | - | X |
| `hwdata` | X | X | X | X | X | - | X |
| `initscripts` | X | X | X | X | X | - | X |
| `ipset` | X | X | X | X | X | - | X |
| `ipset-libs` | X | X | X | X | X | - | X |
| `iscsi-initiator-utils` | X | X | X | X | X | - | X |
| `iscsi-initiator-utils-iscsiuio` | X | X | X | X | X | - | X |
| `isns-utils-libs` | X | X | X | X | X | - | X |
| `kbd` | X | X | X | X | X | - | X |
| `kbd-legacy` | X | X | X | X | X | - | X |
| `kbd-misc` | X | X | X | X | X | - | X |
| `kexec-tools` | X | X | X | X | X | - | X |
| `kpartx` | X | X | X | X | X | - | X |
| `libaio` | X | X | X | X | X | - | X |
| `libblockdev` | X | X | X | X | X | - | X |
| `libblockdev-utils` | X | X | X | X | X | - | X |
| `libconfig` | X | X | X | X | X | - | X |
| `libnl3` | X | X | X | X | X | - | X |
| `libpciaccess` | X | X | X | X | X | - | X |
| `librados2` | - | - | - | - | - | - | X |
| `libuser` | X | X | X | X | X | - | X |
| `lldpad` | X | X | X | X | X | - | X |
| `lsof` | X | X | X | X | X | - | X |
| `lttng-ust` | - | - | - | - | - | - | X |
| `parted` | X | X | X | X | X | - | X |
| `passwd` | X | X | X | X | X | - | X |
| `pcre2` | X | X | X | X | X | - | X |
| `publicsuffix-list` | X | X | X | X | X | - | X |
| `rsync` | X | X | X | X | X | - | X |
| `sgpio` | X | X | X | X | X | - | X |
| `snappy` | X | X | X | X | X | - | X |
| `usermode` | X | X | X | X | X | - | X |
| `userspace-rcu` | X | X | X | X | X | - | X |
