# 389-ds
This is a dependency report for the 389-ds module.

An initial [modulemd file](389-ds.yaml) has been generated. It is experimental and probably unusable at this point.
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
These are RPM dependencies of the [389-ds top-level package set](389-ds.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this 389-ds module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `389-ds-base` | X | X | X | X | X | X | X |
| `389-ds-base-libs` | X | X | X | X | X | X | X |
| `audit` | X | X | X | X | X | X | X |
| `audit-libs-python3` | X | X | X | X | X | X | X |
| `bind-libs` | X | X | X | X | X | X | X |
| `bind-libs-lite` | X | X | X | X | X | X | X |
| `bind-license` | X | X | X | X | X | X | X |
| `bind-utils` | X | X | X | X | X | X | X |
| `checkpolicy` | X | X | X | X | X | X | X |
| `curl-minimal` | X | X | X | X | X | - | X |
| `cyrus-sasl-gssapi` | X | X | X | X | X | X | X |
| `cyrus-sasl-md5` | X | X | X | X | X | X | X |
| `GeoIP` | X | X | X | X | X | X | X |
| `GeoIP-GeoLite-data` | X | X | X | X | X | X | X |
| `gperftools-libs` | X | X | X | - | - | - | X |
| `groff-base` | X | X | X | X | X | - | X |
| `libcgroup` | X | X | X | X | X | X | X |
| `libicu` | X | X | X | X | X | X | X |
| `libselinux-python3` | X | X | X | X | X | X | X |
| `libselinux-utils` | X | X | X | X | X | X | X |
| `libsemanage-python` | X | X | X | X | X | X | X |
| `libsemanage-python3` | X | X | X | X | X | X | X |
| `libunwind` | X | X | X | - | - | - | X |
| `nss-tools` | X | X | X | X | X | X | X |
| `openldap-clients` | X | X | X | X | X | X | X |
| `perl-Algorithm-Diff` | X | X | X | X | X | - | X |
| `perl-Archive-Tar` | X | X | X | X | X | - | X |
| `perl-Carp` | X | X | X | - | - | - | X |
| `perl-Compress-Raw-Bzip2` | X | X | X | X | X | - | X |
| `perl-Compress-Raw-Zlib` | X | X | X | X | X | - | X |
| `perl-constant` | X | X | X | - | - | - | X |
| `perl-Data-Dumper` | X | X | X | - | - | - | X |
| `perl-DB_File` | X | X | X | X | X | - | X |
| `perl-Encode` | X | X | X | X | X | - | X |
| `perl-Errno` | X | X | X | - | - | - | X |
| `perl-Exporter` | X | X | X | - | - | - | X |
| `perl-File-Path` | X | X | X | - | - | - | X |
| `perl-File-Temp` | X | X | X | X | X | - | X |
| `perl-Getopt-Long` | X | X | X | X | X | - | X |
| `perl-HTTP-Tiny` | X | X | X | X | X | - | X |
| `perl-interpreter` | X | X | X | - | - | - | X |
| `perl-IO` | X | X | X | - | - | - | X |
| `perl-IO-Compress` | X | X | X | X | X | - | X |
| `perl-IO-Zlib` | X | X | X | X | X | - | X |
| `perl-libs` | X | X | X | - | - | - | X |
| `perl-macros` | X | X | X | - | - | - | X |
| `perl-Math-BigInt` | X | X | X | X | X | - | X |
| `perl-Math-Complex` | X | X | X | X | X | - | X |
| `perl-MIME-Base64` | X | X | X | X | X | - | X |
| `perl-Mozilla-LDAP` | X | X | X | X | X | X | X |
| `perl-NetAddr-IP` | X | X | X | X | X | X | X |
| `perl-parent` | X | X | X | - | - | - | X |
| `perl-PathTools` | X | X | X | - | - | - | X |
| `perl-Pod-Escapes` | X | X | X | X | X | - | X |
| `perl-podlators` | X | X | X | X | X | - | X |
| `perl-Pod-Perldoc` | X | X | X | X | X | - | X |
| `perl-Pod-Simple` | X | X | X | X | X | - | X |
| `perl-Pod-Usage` | X | X | X | X | X | - | X |
| `perl-Scalar-List-Utils` | X | X | X | - | - | - | X |
| `perl-Socket` | X | X | X | - | - | - | X |
| `perl-Socket6` | X | X | X | X | X | X | X |
| `perl-Storable` | X | X | X | X | X | - | X |
| `perl-Term-ANSIColor` | X | X | X | X | X | - | X |
| `perl-Term-Cap` | X | X | X | X | X | - | X |
| `perl-Text-Diff` | X | X | X | X | X | - | X |
| `perl-Text-ParseWords` | X | X | X | X | X | - | X |
| `perl-Text-Tabs+Wrap` | X | X | X | - | - | - | X |
| `perl-threads` | X | X | X | - | - | - | X |
| `perl-threads-shared` | X | X | X | - | - | - | X |
| `perl-Time-Local` | X | X | X | X | X | - | X |
| `perl-Unicode-Normalize` | X | X | X | - | - | - | X |
| `policycoreutils` | X | X | X | X | X | X | X |
| `policycoreutils-python3` | X | X | X | X | X | X | X |
| `policycoreutils-python-utils` | X | X | X | X | X | X | X |
| `python3-bind` | X | X | X | X | X | X | X |
| `python3-IPy` | X | X | X | X | X | X | X |
| `python3-ply` | X | X | X | X | X | X | X |
| `setools-python3` | X | X | X | X | X | X | X |
| `svrcore` | X | X | X | X | X | X | X |
