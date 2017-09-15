# 389-ds
This is a dependency report for the 389-ds module.

An initial [modulemd file](389-ds.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [networking-base](../networking-base)
* [perl](../perl)
* [python3](../python3)
* [python3-ecosystem](../python3-ecosystem)
* [bind](../bind)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [389-ds top-level package set](389-ds.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this 389-ds module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `389-ds-base` | X | X | X | X | X | X | X |
| `389-ds-base-devel` | X | X | X | X | X | X | X |
| `389-ds-base-libs` | X | X | X | X | X | X | X |
| `cyrus-sasl` | X | X | X | X | X | X | X |
| `cyrus-sasl-devel` | X | X | X | X | X | X | X |
| `cyrus-sasl-gssapi` | X | X | X | X | X | X | X |
| `cyrus-sasl-md5` | X | X | X | X | X | X | X |
| `gperftools-libs` | X | X | X | - | - | - | X |
| `libtalloc` | X | X | X | X | X | X | X |
| `libtevent` | X | X | X | X | X | X | X |
| `nspr-devel` | X | X | X | X | X | X | X |
| `nss-devel` | X | X | X | X | X | X | X |
| `nss-softokn-devel` | X | X | X | X | X | X | X |
| `nss-softokn-freebl-devel` | X | X | X | X | X | X | X |
| `nss-tools` | X | X | X | X | X | X | X |
| `nss-util-devel` | X | X | X | X | X | X | X |
| `openldap-clients` | X | X | X | X | X | X | X |
| `openldap-devel` | X | X | X | X | X | X | X |
| `perl-Mozilla-LDAP` | X | X | X | X | X | X | X |
| `perl-NetAddr-IP` | X | X | X | X | X | X | X |
| `perl-Socket6` | X | X | X | X | X | X | X |
| `python2` | X | X | X | X | X | X | X |
| `python2-libs` | X | X | X | X | X | X | X |
| `python2-libsemanage` | X | X | X | X | X | X | X |
| `python2-pip` | X | X | X | X | X | X | X |
| `python2-setuptools` | X | X | X | X | X | X | X |
| `svrcore` | X | X | X | X | X | X | X |
| `svrcore-devel` | X | X | X | X | X | X | X |
