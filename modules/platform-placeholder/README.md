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
| `bcache-tools` | X | X | X | X | X | X | X |
| `blktrace` | - | - | - | - | - | X | - |
| `boost-iostreams` | - | - | - | - | - | - | X |
| `boost-random` | - | - | - | - | - | - | X |
| `boost-system` | - | - | - | - | - | - | X |
| `boost-thread` | - | - | - | - | - | - | X |
| `curl-minimal` | - | - | - | - | - | X | - |
| `dbus-glib` | X | X | X | X | X | X | X |
| `debugmode` | X | X | X | X | X | X | X |
| `device-mapper-devel` | X | X | X | X | X | X | X |
| `device-mapper-event` | X | X | X | X | X | X | X |
| `device-mapper-event-libs` | X | X | X | X | X | X | X |
| `device-mapper-multipath` | X | X | X | X | X | X | X |
| `device-mapper-multipath-libs` | X | X | X | X | X | X | X |
| `device-mapper-persistent-data` | X | X | X | X | X | X | X |
| `dmraid` | X | X | X | X | X | X | X |
| `dmraid-devel` | X | X | X | X | X | X | X |
| `dmraid-events` | X | X | X | X | X | X | X |
| `dosfstools` | X | X | X | X | X | X | X |
| `dracut-network` | X | X | X | X | X | X | X |
| `ebtables` | X | X | X | X | X | X | X |
| `ethtool` | X | X | X | X | X | - | X |
| `fcoe-utils` | X | X | X | X | X | X | X |
| `gdisk` | X | X | X | X | X | X | X |
| `glib2-devel` | X | X | X | X | X | X | X |
| `gnupg` | X | X | X | X | X | X | X |
| `hfsplus-tools` | X | X | X | X | X | X | X |
| `hostname` | X | X | X | X | X | - | X |
| `hwdata` | X | X | X | X | X | X | X |
| `initscripts` | X | X | X | X | X | - | X |
| `ipset` | X | X | X | X | X | X | X |
| `ipset-devel` | X | X | X | X | X | X | X |
| `ipset-libs` | X | X | X | X | X | X | X |
| `iscsi-initiator-utils` | X | X | X | X | X | X | X |
| `iscsi-initiator-utils-devel` | X | X | X | X | X | X | X |
| `iscsi-initiator-utils-iscsiuio` | X | X | X | X | X | X | X |
| `isns-utils-libs` | X | X | X | X | X | X | X |
| `kbd` | X | X | X | X | X | X | X |
| `kbd-legacy` | X | X | X | X | X | X | X |
| `kbd-misc` | X | X | X | X | X | X | X |
| `kexec-tools` | X | X | X | X | X | X | X |
| `kpartx` | X | X | X | X | X | X | X |
| `libaio` | X | X | X | X | X | X | X |
| `libaio-devel` | X | X | X | X | X | X | X |
| `libblockdev` | X | X | X | X | X | X | X |
| `libblockdev-btrfs` | X | X | X | X | X | X | X |
| `libblockdev-btrfs-devel` | X | X | X | X | X | X | X |
| `libblockdev-crypto` | X | X | X | X | X | X | X |
| `libblockdev-crypto-devel` | X | X | X | X | X | X | X |
| `libblockdev-devel` | X | X | X | X | X | X | X |
| `libblockdev-dm` | X | X | X | X | X | X | X |
| `libblockdev-dm-devel` | X | X | X | X | X | X | X |
| `libblockdev-fs` | X | X | X | X | X | X | X |
| `libblockdev-fs-devel` | X | X | X | X | X | X | X |
| `libblockdev-kbd` | X | X | X | X | X | X | X |
| `libblockdev-kbd-devel` | X | X | X | X | X | X | X |
| `libblockdev-loop` | X | X | X | X | X | X | X |
| `libblockdev-loop-devel` | X | X | X | X | X | X | X |
| `libblockdev-lvm` | X | X | X | X | X | X | X |
| `libblockdev-lvm-dbus` | X | X | X | X | X | X | X |
| `libblockdev-lvm-dbus-devel` | X | X | X | X | X | X | X |
| `libblockdev-lvm-devel` | X | X | X | X | X | X | X |
| `libblockdev-mdraid` | X | X | X | X | X | X | X |
| `libblockdev-mdraid-devel` | X | X | X | X | X | X | X |
| `libblockdev-mpath` | X | X | X | X | X | X | X |
| `libblockdev-mpath-devel` | X | X | X | X | X | X | X |
| `libblockdev-part` | X | X | X | X | X | X | X |
| `libblockdev-part-devel` | X | X | X | X | X | X | X |
| `libblockdev-plugins-all` | X | X | X | X | X | X | X |
| `libblockdev-s390` | - | - | - | - | - | X | - |
| `libblockdev-swap` | X | X | X | X | X | X | X |
| `libblockdev-swap-devel` | X | X | X | X | X | X | X |
| `libblockdev-utils` | X | X | X | X | X | X | X |
| `libblockdev-utils-devel` | X | X | X | X | X | X | X |
| `libbytesize` | X | X | X | X | X | X | X |
| `libconfig` | X | X | X | X | X | X | X |
| `libconfig-devel` | X | X | X | X | X | X | X |
| `libmnl-devel` | X | X | X | X | X | X | X |
| `libnl3` | X | X | X | X | X | X | X |
| `libnl3-cli` | X | X | X | X | X | X | X |
| `libnl3-devel` | X | X | X | X | X | X | X |
| `libpciaccess` | X | X | X | X | X | X | X |
| `libpciaccess-devel` | X | X | X | X | X | X | X |
| `librados2` | - | - | - | - | - | - | X |
| `libselinux-devel` | X | X | X | X | X | X | X |
| `libsepol-devel` | X | X | X | X | X | X | X |
| `libusb` | X | X | X | X | X | - | X |
| `libuser` | X | X | X | X | X | X | X |
| `lldpad` | X | X | X | X | X | X | X |
| `lldpad-devel` | X | X | X | X | X | X | X |
| `lsof` | X | X | X | X | X | X | X |
| `lttng-ust` | - | - | - | - | - | - | X |
| `lvm2` | X | X | X | X | X | X | X |
| `lvm2-dbusd` | X | X | X | X | X | X | X |
| `lvm2-libs` | X | X | X | X | X | X | X |
| `mariadb-common` | - | - | - | - | - | X | - |
| `mariadb-config` | - | - | - | - | - | X | - |
| `mariadb-libs` | - | - | - | - | - | X | - |
| `mdadm` | X | X | X | X | X | X | X |
| `net-snmp` | - | - | - | - | - | X | - |
| `net-snmp-agent-libs` | - | - | - | - | - | X | - |
| `net-snmp-libs` | - | - | - | - | - | X | - |
| `parted` | X | X | X | X | X | X | X |
| `passwd` | X | X | X | X | X | X | X |
| `pcre-cpp` | X | X | X | X | X | X | X |
| `pcre-devel` | X | X | X | X | X | X | X |
| `pcre-utf16` | X | X | X | X | X | X | X |
| `pcre-utf32` | X | X | X | X | X | X | X |
| `publicsuffix-list` | X | X | X | X | X | X | X |
| `publicsuffix-list-dafsa` | X | X | X | X | X | X | X |
| `python2` | - | - | - | - | - | X | - |
| `python2-blockdev` | X | X | X | X | X | X | X |
| `python2-libs` | - | - | - | - | - | X | - |
| `python2-pip` | - | - | - | - | - | X | - |
| `python2-setuptools` | - | - | - | - | - | X | - |
| `python3-blockdev` | X | X | X | X | X | X | X |
| `python3-dbus` | X | X | X | X | X | X | X |
| `python3-gobject-base` | X | X | X | X | X | X | X |
| `python3-iscsi-initiator-utils` | X | X | X | X | X | X | X |
| `python3-libnl3` | X | X | X | X | X | X | X |
| `python3-pyudev` | X | X | X | X | X | X | X |
| `python-gobject-base` | X | X | X | X | X | X | X |
| `python-iscsi-initiator-utils` | X | X | X | X | X | X | X |
| `python-libnl3` | X | X | X | X | X | X | X |
| `rsync` | X | X | X | X | X | X | X |
| `s390utils` | - | - | - | - | - | X | - |
| `s390utils-cmsfs` | - | - | - | - | - | X | - |
| `s390utils-cpuplugd` | - | - | - | - | - | X | - |
| `s390utils-iucvterm` | - | - | - | - | - | X | - |
| `s390utils-mon_statd` | - | - | - | - | - | X | - |
| `s390utils-osasnmpd` | - | - | - | - | - | X | - |
| `s390utils-ziomon` | - | - | - | - | - | X | - |
| `sgpio` | X | X | X | X | X | X | X |
| `snappy` | X | X | X | X | X | X | X |
| `snappy-devel` | X | X | X | X | X | X | X |
| `systemd-devel` | X | X | X | X | X | X | X |
| `usermode` | X | X | X | X | X | X | X |
| `userspace-rcu` | X | X | X | X | X | X | X |
| `volume_key-libs` | X | X | X | X | X | X | X |
