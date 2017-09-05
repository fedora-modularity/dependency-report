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
* [apache-commons](../apache-commons)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [pki top-level package set](pki.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this pki module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `audit-libs-python` | X | X | X | X | X | X | X |
| `curl-minimal` | X | X | X | X | X | X | X |
| `jakarta-commons-httpclient` | X | X | X | X | X | X | X |
| `javassist` | X | X | X | X | X | X | X |
| `ldapjdk` | X | X | X | X | X | X | X |
| `net-tools` | X | X | X | X | X | X | X |
| `nspr-devel` | X | X | X | X | X | X | X |
| `nss-devel` | X | X | X | X | X | X | X |
| `nss-softokn-devel` | X | X | X | X | X | X | X |
| `nss-softokn-freebl-devel` | X | X | X | X | X | X | X |
| `nss-tools` | X | X | X | X | X | X | X |
| `nss-util-devel` | X | X | X | X | X | X | X |
| `nuxwdog` | X | X | X | X | X | X | X |
| `nuxwdog-client-java` | X | X | X | X | X | X | X |
| `openldap-clients` | X | X | X | X | X | X | X |
| `pki-base` | X | X | X | X | X | X | X |
| `pki-base-java` | X | X | X | X | X | X | X |
| `pki-ca` | X | X | X | X | X | X | X |
| `pki-kra` | X | X | X | X | X | X | X |
| `pki-server` | X | X | X | X | X | X | X |
| `pki-tools` | X | X | X | X | X | X | X |
| `pylint` | X | X | X | X | X | X | X |
| `python2-asn1crypto` | X | X | X | X | X | X | X |
| `python2-backports` | X | X | X | X | X | X | X |
| `python2-beautifulsoup4` | X | X | X | X | X | X | X |
| `python2-cffi` | X | X | X | X | X | X | X |
| `python2-chardet` | X | X | X | X | X | X | X |
| `python2-cryptography` | X | X | X | X | X | X | X |
| `python2-cssselect` | X | X | X | X | X | X | X |
| `python2-enum34` | X | X | X | X | X | X | X |
| `python2-html5lib` | X | X | X | X | X | X | X |
| `python2-idna` | X | X | X | X | X | X | X |
| `python2-ipaddress` | X | X | X | X | X | X | X |
| `python2-IPy` | X | X | X | X | X | X | X |
| `python2-ldap` | X | X | X | X | X | X | X |
| `python2-libselinux` | X | X | X | X | X | X | X |
| `python2-libsemanage` | X | X | X | X | X | X | X |
| `python2-lxml` | X | X | X | X | X | X | X |
| `python2-nss` | X | X | X | X | X | X | X |
| `python2-ply` | X | X | X | X | X | X | X |
| `python2-policycoreutils` | X | X | X | X | X | X | X |
| `python2-pyasn1` | X | X | X | X | X | X | X |
| `python2-pyasn1-modules` | X | X | X | X | X | X | X |
| `python2-pycparser` | X | X | X | X | X | X | X |
| `python2-pyOpenSSL` | X | X | X | X | X | X | X |
| `python2-pysocks` | X | X | X | X | X | X | X |
| `python2-requests` | X | X | X | X | X | X | X |
| `python2-setools` | X | X | X | X | X | X | X |
| `python2-six` | X | X | X | X | X | X | X |
| `python2-urllib3` | X | X | X | X | X | X | X |
| `python2-webencodings` | X | X | X | X | X | X | X |
| `python3-astroid` | X | X | X | X | X | X | X |
| `python3-isort` | X | X | X | X | X | X | X |
| `python3-lazy-object-proxy` | X | X | X | X | X | X | X |
| `python3-mccabe` | X | X | X | X | X | X | X |
| `python3-nss` | X | X | X | X | X | X | X |
| `python3-py` | X | X | X | X | X | X | X |
| `python3-pyasn1` | X | X | X | X | X | X | X |
| `python3-pyasn1-modules` | X | X | X | X | X | X | X |
| `python3-pyldap` | X | X | X | X | X | X | X |
| `python3-pylint` | X | X | X | X | X | X | X |
| `python3-pytest` | X | X | X | X | X | X | X |
| `python3-pytest-runner` | X | X | X | X | X | X | X |
| `python3-wrapt` | X | X | X | X | X | X | X |
| `python-backports-ssl_match_hostname` | X | X | X | X | X | X | X |
| `slf4j` | X | X | X | X | X | X | X |
| `slf4j-jdk14` | X | X | X | X | X | X | X |
| `svrcore` | X | X | X | X | X | X | X |
| `svrcore-devel` | X | X | X | X | X | X | X |
| `velocity` | X | X | X | X | X | X | X |
| `xalan-j2` | X | X | X | X | X | X | X |
| `xerces-j2` | X | X | X | X | X | X | X |
| `xml-commons-apis` | X | X | X | X | X | X | X |
| `xml-commons-resolver` | X | X | X | X | X | X | X |
