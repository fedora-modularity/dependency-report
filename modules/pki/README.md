# pki
This is a dependency report for the pki module.

An initial [modulemd file](pki.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [java](../java)
* [tomcat](../tomcat)
* [resteasy](../resteasy)
* [storage-devices](../storage-devices)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
## Binary RPM packages
These are RPM dependencies of the [pki top-level package set](pki.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this pki module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `apache-commons-cli` | X | X | X | X | X | X | X |
| `audit-libs-python` | X | X | X | X | X | X | X |
| `jakarta-commons-httpclient` | X | X | X | X | X | X | X |
| `javassist` | X | X | X | X | X | X | X |
| `ldapjdk` | X | X | X | X | X | X | X |
| `libselinux-python` | X | X | X | X | X | X | X |
| `libsemanage-python` | X | X | X | X | X | X | X |
| `net-tools` | X | X | X | X | X | X | X |
| `nss-tools` | X | X | X | X | X | X | X |
| `nuxwdog` | X | X | X | X | X | X | X |
| `nuxwdog-client-java` | X | X | X | X | X | X | X |
| `openldap-clients` | X | X | X | X | X | X | X |
| `pki-base` | X | X | X | X | X | X | X |
| `pki-base-java` | X | X | X | X | X | X | X |
| `pki-ca` | X | X | X | X | X | X | X |
| `pki-kra` | X | X | X | X | X | X | X |
| `pki-server` | X | X | X | X | X | X | X |
| `pki-tools` | X | X | X | X | X | X | X |
| `policycoreutils-python` | X | X | X | X | X | X | X |
| `python2-cssselect` | X | X | X | X | X | X | X |
| `python2-html5lib` | X | X | X | X | X | X | X |
| `python2-IPy` | X | X | X | X | X | X | X |
| `python2-lxml` | X | X | X | X | X | X | X |
| `python2-pyasn1` | X | X | X | X | X | X | X |
| `python2-pyasn1-modules` | X | X | X | X | X | X | X |
| `python-beautifulsoup4` | X | X | X | X | X | X | X |
| `python-ldap` | X | X | X | X | X | X | X |
| `python-nss` | X | X | X | X | X | X | X |
| `setools-python` | X | X | X | X | X | X | X |
| `slf4j` | X | X | X | X | X | X | X |
| `slf4j-jdk14` | X | X | X | X | X | X | X |
| `velocity` | X | X | X | X | X | X | X |
| `xalan-j2` | X | X | X | X | X | X | X |
| `xerces-j2` | X | X | X | X | X | X | X |
| `xml-commons-apis` | X | X | X | X | X | X | X |
| `xml-commons-resolver` | X | X | X | X | X | X | X |
