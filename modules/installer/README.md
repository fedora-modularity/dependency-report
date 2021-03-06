# installer
This is a dependency report for the installer module.

An initial [modulemd file](installer.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [hardware-support](../hardware-support)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [installer top-level package set](installer.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this installer module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `anaconda-core` | X | X | X | X | X | X | X |
| `anaconda-tui` | X | X | X | X | X | X | X |
| `authconfig` | X | X | X | X | X | X | X |
| `bcache-tools` | X | X | X | X | X | X | X |
| `blktrace` | - | - | - | - | - | X | - |
| `chrony` | X | X | X | X | X | X | X |
| `cracklib-dicts` | X | X | X | X | X | X | X |
| `createrepo_c` | X | X | X | X | X | X | X |
| `createrepo_c-libs` | X | X | X | X | X | X | X |
| `curl-minimal` | X | X | X | X | X | X | X |
| `device-mapper-persistent-data` | X | X | X | X | X | X | X |
| `drpm` | X | X | X | X | X | X | X |
| `firewalld` | X | X | X | X | X | X | X |
| `firewalld-filesystem` | X | X | X | X | X | X | X |
| `glibc-langpack-en` | X | X | X | X | X | X | X |
| `isomd5sum` | X | X | X | X | X | X | X |
| `langtable` | X | X | X | X | X | X | X |
| `langtable-data` | X | X | X | X | X | X | X |
| `langtable-python3` | X | X | X | X | X | X | X |
| `libblockdev-btrfs` | X | X | X | X | X | X | X |
| `libblockdev-crypto` | X | X | X | X | X | X | X |
| `libblockdev-dm` | X | X | X | X | X | X | X |
| `libblockdev-fs` | X | X | X | X | X | X | X |
| `libblockdev-kbd` | X | X | X | X | X | X | X |
| `libblockdev-loop` | X | X | X | X | X | X | X |
| `libblockdev-lvm` | X | X | X | X | X | X | X |
| `libblockdev-mdraid` | X | X | X | X | X | X | X |
| `libblockdev-mpath` | X | X | X | X | X | X | X |
| `libblockdev-part` | X | X | X | X | X | X | X |
| `libblockdev-plugins-all` | X | X | X | X | X | X | X |
| `libblockdev-s390` | - | - | - | - | - | X | - |
| `libblockdev-swap` | X | X | X | X | X | X | X |
| `libbytesize` | X | X | X | X | X | X | X |
| `libndp` | X | X | X | X | X | X | X |
| `libnl3-cli` | X | X | X | X | X | X | X |
| `libpsl` | X | X | X | X | X | X | X |
| `libreport` | X | X | X | X | X | X | X |
| `libreport-anaconda` | X | X | X | X | X | X | X |
| `libreport-cli` | X | X | X | X | X | X | X |
| `libreport-plugin-bugzilla` | X | X | X | X | X | X | X |
| `libreport-plugin-reportuploader` | X | X | X | X | X | X | X |
| `libreport-web` | X | X | X | X | X | X | X |
| `libtar` | X | X | X | X | X | X | X |
| `libteam` | X | X | X | X | X | X | X |
| `lvm2` | X | X | X | X | X | X | X |
| `lvm2-libs` | X | X | X | X | X | X | X |
| `lz4` | X | X | X | X | X | X | X |
| `mariadb-connector-c` | - | - | - | - | - | X | - |
| `net-snmp` | - | - | - | - | - | X | - |
| `net-snmp-agent-libs` | - | - | - | - | - | X | - |
| `net-snmp-libs` | - | - | - | - | - | X | - |
| `NetworkManager` | X | X | X | X | X | X | X |
| `NetworkManager-libnm` | X | X | X | X | X | X | X |
| `NetworkManager-team` | X | X | X | X | X | X | X |
| `python2` | - | - | - | - | - | X | - |
| `python2-libs` | - | - | - | - | - | X | - |
| `python2-pip` | - | - | - | - | - | X | - |
| `python2-setuptools` | - | - | - | - | - | X | - |
| `python3-asn1crypto` | X | X | X | X | X | X | X |
| `python3-blivet` | X | X | X | X | X | X | X |
| `python3-blockdev` | X | X | X | X | X | X | X |
| `python3-bytesize` | X | X | X | X | X | X | X |
| `python3-cffi` | X | X | X | X | X | X | X |
| `python3-chardet` | X | X | X | X | X | X | X |
| `python3-coverage` | X | X | X | X | X | X | X |
| `python3-cryptography` | X | X | X | X | X | X | X |
| `python3-dbus` | X | X | X | X | X | X | X |
| `python3-decorator` | X | X | X | X | X | X | X |
| `python3-firewall` | X | X | X | X | X | X | X |
| `python3-gobject-base` | X | X | X | X | X | X | X |
| `python3-idna` | X | X | X | X | X | X | X |
| `python3-iscsi-initiator-utils` | X | X | X | X | X | X | X |
| `python3-kickstart` | X | X | X | X | X | X | X |
| `python3-libreport` | X | X | X | X | X | X | X |
| `python3-meh` | X | X | X | X | X | X | X |
| `python3-ntplib` | X | X | X | X | X | X | X |
| `python3-ordered-set` | X | X | X | X | X | X | X |
| `python3-pid` | X | X | X | X | X | X | X |
| `python3-ply` | X | X | X | X | X | X | X |
| `python3-pwquality` | X | X | X | X | X | X | X |
| `python3-pycparser` | X | X | X | X | X | X | X |
| `python3-pydbus` | X | X | X | X | X | X | X |
| `python3-pyOpenSSL` | X | X | X | X | X | X | X |
| `python3-pyparted` | X | X | X | X | X | X | X |
| `python3-pysocks` | X | X | X | X | X | X | X |
| `python3-pytz` | X | X | X | X | X | X | X |
| `python3-pyudev` | X | X | X | X | X | X | X |
| `python3-requests` | X | X | X | X | X | X | X |
| `python3-requests-file` | X | X | X | X | X | X | X |
| `python3-requests-ftp` | X | X | X | X | X | X | X |
| `python3-slip` | X | X | X | X | X | X | X |
| `python3-slip-dbus` | X | X | X | X | X | X | X |
| `python3-sssdconfig` | X | X | X | X | X | X | X |
| `python3-systemd` | X | X | X | X | X | X | X |
| `python3-urllib3` | X | X | X | X | X | X | X |
| `python3-wrapt` | X | X | X | X | X | X | X |
| `realmd` | X | X | X | X | X | X | X |
| `s390utils` | - | - | - | - | - | X | - |
| `s390utils-cmsfs` | - | - | - | - | - | X | - |
| `s390utils-cpuplugd` | - | - | - | - | - | X | - |
| `s390utils-iucvterm` | - | - | - | - | - | X | - |
| `s390utils-mon_statd` | - | - | - | - | - | X | - |
| `s390utils-osasnmpd` | - | - | - | - | - | X | - |
| `s390utils-ziomon` | - | - | - | - | - | X | - |
| `satyr` | X | X | X | X | X | X | X |
| `teamd` | X | X | X | X | X | X | X |
| `xmlrpc-c-client` | X | X | X | X | X | X | X |
