# sssd
This is a dependency report for the sssd module.

An initial [modulemd file](sssd.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [samba](../samba)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [autotools](../autotools)
* [perl](../perl)
## Binary RPM packages
These are RPM dependencies of the [sssd top-level package set](sssd.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this sssd module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `cyrus-sasl-gssapi` | X | X | X | X | X | X | X |
| `http-parser` | X | X | X | X | X | X | X |
| `libdhash` | X | X | X | X | X | X | X |
| `libipa_hbac` | X | X | X | X | X | X | X |
| `libsss_autofs` | X | X | X | X | X | X | X |
| `libsss_certmap` | X | X | X | X | X | X | X |
| `libsss_idmap` | X | X | X | X | X | X | X |
| `libsss_nss_idmap` | X | X | X | X | X | X | X |
| `python2-libipa_hbac` | X | X | X | X | X | X | X |
| `python2-libsss_nss_idmap` | X | X | X | X | X | X | X |
| `python2-sss` | X | X | X | X | X | X | X |
| `python2-sssdconfig` | X | X | X | X | X | X | X |
| `python2-sss-murmur` | X | X | X | X | X | X | X |
| `python3-sssdconfig` | X | X | X | X | X | X | X |
| `sssd` | X | X | X | X | X | X | X |
| `sssd-ad` | X | X | X | X | X | X | X |
| `sssd-client` | X | X | X | X | X | X | X |
| `sssd-common` | X | X | X | X | X | X | X |
| `sssd-common-pac` | X | X | X | X | X | X | X |
| `sssd-dbus` | X | X | X | X | X | X | X |
| `sssd-ipa` | X | X | X | X | X | X | X |
| `sssd-krb5` | X | X | X | X | X | X | X |
| `sssd-krb5-common` | X | X | X | X | X | X | X |
| `sssd-ldap` | X | X | X | X | X | X | X |
