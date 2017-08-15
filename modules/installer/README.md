# installer
This is a dependency report for the installer module.

An initial [modulemd file](installer.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [networking-base](../networking-base)
* [storage-devices](../storage-devices)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
* [systemtap](../systemtap)
* [autotools](../autotools)
## Binary RPM packages
These are RPM dependencies of the [installer top-level package set](installer.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this installer module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `anaconda-core` | X | X | X | X | X | - | X |
| `anaconda-tui` | X | X | X | X | X | - | X |
| `augeas-libs` | X | X | X | X | X | - | X |
| `chrony` | X | X | X | X | X | - | X |
| `cracklib-dicts` | X | X | X | X | X | - | X |
| `createrepo_c` | X | X | X | X | X | - | X |
| `createrepo_c-libs` | X | X | X | X | X | - | X |
| `device-mapper-multipath` | X | X | X | X | X | - | X |
| `device-mapper-multipath-libs` | X | X | X | X | X | - | X |
| `device-mapper-persistent-data` | X | X | X | X | X | - | X |
| `dracut-network` | X | X | X | X | X | - | X |
| `drpm` | X | X | X | X | X | - | X |
| `ethtool` | X | X | X | X | X | - | X |
| `fcoe-utils` | - | - | X | - | - | - | X |
| `glibc-langpack-en` | X | X | X | X | X | - | X |
| `gnupg` | X | X | X | X | X | - | X |
| `hwdata` | - | - | X | - | - | - | X |
| `iscsi-initiator-utils` | X | X | X | X | X | - | X |
| `iscsi-initiator-utils-iscsiuio` | X | X | X | X | X | - | X |
| `isns-utils-libs` | X | X | X | X | X | - | X |
| `isomd5sum` | X | X | X | X | X | - | X |
| `json-c` | X | X | X | X | X | - | X |
| `kbd` | X | X | X | X | X | - | X |
| `kbd-legacy` | X | X | X | X | X | - | X |
| `kbd-misc` | X | X | X | X | X | - | X |
| `kexec-tools` | X | X | X | X | X | - | X |
| `langtable` | X | X | X | X | X | - | X |
| `langtable-data` | X | X | X | X | X | - | X |
| `langtable-python3` | X | X | X | X | X | - | X |
| `libblockdev` | X | X | X | X | X | - | X |
| `libblockdev-btrfs` | X | X | X | X | X | - | X |
| `libblockdev-crypto` | X | X | X | X | X | - | X |
| `libblockdev-dm` | X | X | X | X | X | - | X |
| `libblockdev-fs` | X | X | X | X | X | - | X |
| `libblockdev-kbd` | X | X | X | X | X | - | X |
| `libblockdev-loop` | X | X | X | X | X | - | X |
| `libblockdev-lvm` | X | X | X | X | X | - | X |
| `libblockdev-mdraid` | X | X | X | X | X | - | X |
| `libblockdev-mpath` | X | X | X | X | X | - | X |
| `libblockdev-part` | X | X | X | X | X | - | X |
| `libblockdev-plugins-all` | X | X | X | X | X | - | X |
| `libblockdev-swap` | X | X | X | X | X | - | X |
| `libblockdev-utils` | X | X | X | X | X | - | X |
| `libbytesize` | X | X | X | X | X | - | X |
| `libconfig` | - | - | X | - | - | - | X |
| `libpciaccess` | - | - | X | - | - | - | X |
| `libreport` | X | X | X | X | X | - | X |
| `libreport-anaconda` | X | X | X | X | X | - | X |
| `libreport-cli` | X | X | X | X | X | - | X |
| `libreport-plugin-bugzilla` | X | X | X | X | X | - | X |
| `libreport-plugin-reportuploader` | X | X | X | X | X | - | X |
| `libreport-python3` | X | X | X | X | X | - | X |
| `libreport-web` | X | X | X | X | X | - | X |
| `libtar` | X | X | X | X | X | - | X |
| `libusb` | X | X | X | X | X | - | X |
| `lldpad` | - | - | X | - | - | - | X |
| `lsof` | X | X | X | X | X | - | X |
| `lvm2` | X | X | X | X | X | - | X |
| `lvm2-libs` | X | X | X | X | X | - | X |
| `lz4` | X | X | X | X | X | - | X |
| `python3-asn1crypto` | X | X | X | X | X | - | X |
| `python3-blivet` | X | X | X | X | X | - | X |
| `python3-blockdev` | X | X | X | X | X | - | X |
| `python3-bytesize` | X | X | X | X | X | - | X |
| `python3-cffi` | X | X | X | X | X | - | X |
| `python3-chardet` | X | X | X | X | X | - | X |
| `python3-coverage` | X | X | X | X | X | - | X |
| `python3-cryptography` | X | X | X | X | X | - | X |
| `python3-idna` | X | X | X | X | X | - | X |
| `python3-iscsi-initiator-utils` | X | X | X | X | X | - | X |
| `python3-kickstart` | X | X | X | X | X | - | X |
| `python3-meh` | X | X | X | X | X | - | X |
| `python3-ntplib` | X | X | X | X | X | - | X |
| `python3-ordered-set` | X | X | X | X | X | - | X |
| `python3-pid` | X | X | X | X | X | - | X |
| `python3-ply` | X | X | X | X | X | - | X |
| `python3-pwquality` | X | X | X | X | X | - | X |
| `python3-pycparser` | X | X | X | X | X | - | X |
| `python3-pyOpenSSL` | X | X | X | X | X | - | X |
| `python3-pyparted` | X | X | X | X | X | - | X |
| `python3-pysocks` | X | X | X | X | X | - | X |
| `python3-pytz` | X | X | X | X | X | - | X |
| `python3-pyudev` | X | X | X | X | X | - | X |
| `python3-requests` | X | X | X | X | X | - | X |
| `python3-requests-file` | X | X | X | X | X | - | X |
| `python3-requests-ftp` | X | X | X | X | X | - | X |
| `python3-urllib3` | X | X | X | X | X | - | X |
| `python3-wrapt` | X | X | X | X | X | - | X |
| `rsync` | X | X | X | X | X | - | X |
| `satyr` | X | X | X | X | X | - | X |
| `usermode` | - | - | X | X | X | - | X |
| `volume_key-libs` | X | X | X | X | X | - | X |
