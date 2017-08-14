# 389-ds
This is a dependency report for the 389-ds module.

An initial [modulemd file](389-ds.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
### Build
This list might not be complete. Please see the missing RPM build dependencies ([source](missing-buildtime-source-packages-short.txt) or [binary](missing-buildtime-binary-packages-short.txt)) lists for more information.
* [platform](../platform)
## Binary RPM packages (all arches combined)
These are RPM dependencies of the [389-ds top-level package set](389-ds.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this 389-ds module
* `389-ds-base`
* `389-ds-base-libs`
* `audit`
* `audit-libs-python3`
* `bind-libs`
* `bind-libs-lite`
* `bind-license`
* `bind-utils`
* `checkpolicy`
* `curl-minimal`
* `cyrus-sasl-gssapi`
* `cyrus-sasl-md5`
* `GeoIP`
* `GeoIP-GeoLite-data`
* `gperftools-libs`
* `groff-base`
* `libcgroup`
* `libicu`
* `libselinux-python3`
* `libselinux-utils`
* `libsemanage-python`
* `libsemanage-python3`
* `libunwind`
* `nss-tools`
* `openldap-clients`
* `perl-Algorithm-Diff`
* `perl-Archive-Tar`
* `perl-Carp`
* `perl-Compress-Raw-Bzip2`
* `perl-Compress-Raw-Zlib`
* `perl-constant`
* `perl-Data-Dumper`
* `perl-DB_File`
* `perl-Encode`
* `perl-Errno`
* `perl-Exporter`
* `perl-File-Path`
* `perl-File-Temp`
* `perl-Getopt-Long`
* `perl-HTTP-Tiny`
* `perl-interpreter`
* `perl-IO`
* `perl-IO-Compress`
* `perl-IO-Zlib`
* `perl-libs`
* `perl-macros`
* `perl-Math-BigInt`
* `perl-Math-Complex`
* `perl-MIME-Base64`
* `perl-Mozilla-LDAP`
* `perl-NetAddr-IP`
* `perl-parent`
* `perl-PathTools`
* `perl-Pod-Escapes`
* `perl-podlators`
* `perl-Pod-Perldoc`
* `perl-Pod-Simple`
* `perl-Pod-Usage`
* `perl-Scalar-List-Utils`
* `perl-Socket`
* `perl-Socket6`
* `perl-Storable`
* `perl-Term-ANSIColor`
* `perl-Term-Cap`
* `perl-Text-Diff`
* `perl-Text-ParseWords`
* `perl-Text-Tabs+Wrap`
* `perl-threads`
* `perl-threads-shared`
* `perl-Time-Local`
* `perl-Unicode-Normalize`
* `policycoreutils`
* `policycoreutils-python3`
* `policycoreutils-python-utils`
* `python2`
* `python2-libs`
* `python2-pip`
* `python2-setuptools`
* `python3-bind`
* `python3-IPy`
* `python3-ply`
* `setools-python3`
* `svrcore`
