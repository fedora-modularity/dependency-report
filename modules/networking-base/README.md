# networking-base
This is a dependency report for the networking-base module.

An initial [modulemd file](networking-base.yaml) has been generated. It is experimental and probably unusable at this point.
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
These are RPM dependencies of the [networking-base top-level package set](networking-base.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this networking-base module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `authconfig` | X | X | X | X | X | - | X |
| `curl-minimal` | X | X | X | X | X | - | X |
| `dbus-glib` | X | X | X | X | X | - | X |
| `firewalld` | X | X | X | X | X | - | X |
| `firewalld-filesystem` | X | X | X | X | X | - | X |
| `jansson` | X | X | X | X | X | - | X |
| `libdaemon` | X | X | X | X | X | - | X |
| `libmodman` | X | X | X | X | X | - | X |
| `libndp` | X | X | X | X | X | - | X |
| `libnl3-cli` | X | X | X | X | X | - | X |
| `libproxy` | X | X | X | X | X | - | X |
| `libpsl` | X | X | X | X | X | - | X |
| `libselinux-python3` | X | X | X | X | X | - | X |
| `libselinux-utils` | X | X | X | X | X | - | X |
| `libteam` | X | X | X | X | X | - | X |
| `lm_sensors-libs` | X | X | X | X | - | - | X |
| `mariadb-common` | X | X | X | X | X | - | X |
| `mariadb-config` | X | X | X | X | X | - | X |
| `mariadb-libs` | X | X | X | X | X | - | X |
| `net-snmp` | X | X | X | X | X | - | X |
| `net-snmp-agent-libs` | X | X | X | X | X | - | X |
| `net-snmp-libs` | X | X | X | X | X | - | X |
| `NetworkManager` | X | X | X | X | X | - | X |
| `NetworkManager-libnm` | X | X | X | X | X | - | X |
| `NetworkManager-team` | X | X | X | X | X | - | X |
| `perl-Carp` | X | X | X | - | - | - | X |
| `perl-constant` | X | X | X | - | - | - | X |
| `perl-Data-Dumper` | X | X | X | - | - | - | X |
| `perl-Errno` | X | X | X | - | - | - | X |
| `perl-Exporter` | X | X | X | - | - | - | X |
| `perl-File-Path` | X | X | X | - | - | - | X |
| `perl-interpreter` | X | X | X | - | - | - | X |
| `perl-IO` | X | X | X | - | - | - | X |
| `perl-libs` | X | X | X | - | - | - | X |
| `perl-macros` | X | X | X | - | - | - | X |
| `perl-parent` | X | X | X | - | - | - | X |
| `perl-PathTools` | X | X | X | - | - | - | X |
| `perl-Scalar-List-Utils` | X | X | X | - | - | - | X |
| `perl-Socket` | X | X | X | - | - | - | X |
| `perl-Text-Tabs+Wrap` | X | X | X | - | - | - | X |
| `perl-threads` | X | X | X | - | - | - | X |
| `perl-threads-shared` | X | X | X | - | - | - | X |
| `perl-Unicode-Normalize` | X | X | X | - | - | - | X |
| `policycoreutils` | X | X | X | X | X | - | X |
| `polkit-libs` | X | X | X | X | X | - | X |
| `publicsuffix-list-dafsa` | X | X | X | X | X | - | X |
| `python3-dbus` | X | X | X | X | X | - | X |
| `python3-decorator` | X | X | X | X | X | - | X |
| `python3-firewall` | X | X | X | X | X | - | X |
| `python3-gobject-base` | X | X | X | X | X | - | X |
| `python3-slip` | X | X | X | X | X | - | X |
| `python3-slip-dbus` | X | X | X | X | X | - | X |
| `python3-sssdconfig` | X | X | X | X | X | - | X |
| `realmd` | X | X | X | X | X | - | X |
| `teamd` | X | X | X | X | X | - | X |
| `xmlrpc-c` | X | X | X | X | X | - | X |
| `xmlrpc-c-client` | X | X | X | X | X | - | X |
