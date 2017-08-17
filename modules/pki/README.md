# pki
This is a dependency report for the pki module.

An initial [modulemd file](pki.yaml) has been generated. It is experimental and probably unusable at this point.
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
These are RPM dependencies of the [pki top-level package set](pki.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this pki module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `apache-commons-cli` | X | X | X | X | X | X | X |
| `apache-commons-codec` | X | X | X | X | X | X | X |
| `apache-commons-collections` | X | X | X | X | X | X | X |
| `apache-commons-daemon` | X | X | X | X | X | X | X |
| `apache-commons-dbcp` | X | X | X | X | X | X | X |
| `apache-commons-io` | X | X | X | X | X | X | X |
| `apache-commons-lang` | X | X | X | X | X | X | X |
| `apache-commons-logging` | X | X | X | X | X | X | X |
| `apache-commons-pool` | X | X | X | X | X | X | X |
| `audit` | X | X | X | X | X | X | X |
| `audit-libs-python` | X | X | X | X | X | X | X |
| `audit-libs-python3` | X | X | X | X | X | X | X |
| `bea-stax-api` | X | X | X | X | X | X | X |
| `checkpolicy` | X | X | X | X | X | X | X |
| `copy-jdk-configs` | X | X | X | X | X | X | X |
| `curl-minimal` | X | X | X | X | X | - | X |
| `ecj` | X | X | X | X | X | X | X |
| `freetype` | - | X | - | - | - | X | - |
| `glassfish-fastinfoset` | X | X | X | X | X | X | X |
| `glassfish-jaxb-api` | X | X | X | X | X | X | X |
| `glassfish-jaxb-core` | X | X | X | X | X | X | X |
| `glassfish-jaxb-runtime` | X | X | X | X | X | X | X |
| `glassfish-jaxb-txw2` | X | X | X | X | X | X | X |
| `httpcomponents-client` | X | X | X | X | X | X | X |
| `httpcomponents-core` | X | X | X | X | X | X | X |
| `istack-commons-runtime` | X | X | X | X | X | X | X |
| `jackson` | X | X | X | X | X | X | X |
| `jakarta-commons-httpclient` | X | X | X | X | X | X | X |
| `java-1.8.0-openjdk-headless` | X | X | X | X | X | X | X |
| `javapackages-tools` | X | X | X | X | X | X | X |
| `javassist` | X | X | X | X | X | X | X |
| `jboss-annotations-1.2-api` | X | X | X | X | X | X | X |
| `jboss-jaxrs-2.0-api` | X | X | X | X | X | X | X |
| `jboss-logging` | X | X | X | X | X | X | X |
| `jcip-annotations` | X | X | X | X | X | X | X |
| `joda-time` | X | X | X | X | X | X | X |
| `jsr-311` | X | X | X | X | X | X | X |
| `jss` | X | X | X | X | X | X | X |
| `ldapjdk` | X | X | X | X | X | X | X |
| `libcgroup` | X | X | X | X | X | X | X |
| `libjpeg-turbo` | X | X | X | X | X | X | X |
| `libpng` | - | X | - | - | - | X | - |
| `libselinux-python` | X | X | X | X | X | X | X |
| `libselinux-python3` | X | X | X | X | X | X | X |
| `libselinux-utils` | X | X | X | X | X | X | X |
| `libsemanage-python` | X | X | X | X | X | X | X |
| `libsemanage-python3` | X | X | X | X | X | X | X |
| `libxslt` | X | X | X | X | X | X | X |
| `lksctp-tools` | X | X | X | X | X | X | X |
| `lua` | X | X | X | X | X | X | X |
| `lua-posix` | X | X | X | X | X | X | X |
| `net-tools` | X | X | X | X | X | X | X |
| `nss-tools` | X | X | X | X | X | X | X |
| `nuxwdog` | X | X | X | X | X | X | X |
| `nuxwdog-client-java` | X | X | X | X | X | X | X |
| `objectweb-asm3` | X | X | X | X | X | X | X |
| `openldap-clients` | X | X | X | X | X | X | X |
| `pki-base` | X | X | X | X | X | X | X |
| `pki-base-java` | X | X | X | X | X | X | X |
| `pki-ca` | X | X | X | X | X | X | X |
| `pki-kra` | X | X | X | X | X | X | X |
| `pki-server` | X | X | X | X | X | X | X |
| `pki-tools` | X | X | X | X | X | X | X |
| `policycoreutils` | X | X | X | X | X | X | X |
| `policycoreutils-python` | X | X | X | X | X | X | X |
| `policycoreutils-python3` | X | X | X | X | X | X | X |
| `policycoreutils-python-utils` | X | X | X | X | X | X | X |
| `python2-asn1crypto` | X | X | X | X | X | X | X |
| `python2-cffi` | X | X | X | X | X | X | X |
| `python2-cryptography` | X | X | X | X | X | X | X |
| `python2-cssselect` | X | X | X | X | X | X | X |
| `python2-html5lib` | X | X | X | X | X | X | X |
| `python2-idna` | X | X | X | X | X | X | X |
| `python2-IPy` | X | X | X | X | X | X | X |
| `python2-lxml` | X | X | X | X | X | X | X |
| `python2-ply` | X | X | X | X | X | X | X |
| `python2-pyasn1` | X | X | X | X | X | X | X |
| `python2-pyasn1-modules` | X | X | X | X | X | X | X |
| `python2-pycparser` | X | X | X | X | X | X | X |
| `python2-pyOpenSSL` | X | X | X | X | X | X | X |
| `python2-pysocks` | X | X | X | X | X | X | X |
| `python2-requests` | X | X | X | X | X | X | X |
| `python2-six` | X | X | X | X | X | X | X |
| `python2-urllib3` | X | X | X | X | X | X | X |
| `python3-IPy` | X | X | X | X | X | X | X |
| `python-backports` | X | X | X | X | X | X | X |
| `python-backports-ssl_match_hostname` | X | X | X | X | X | X | X |
| `python-beautifulsoup4` | X | X | X | X | X | X | X |
| `python-chardet` | X | X | X | X | X | X | X |
| `python-enum34` | X | X | X | X | X | X | X |
| `python-ipaddress` | X | X | X | X | X | X | X |
| `python-ldap` | X | X | X | X | X | X | X |
| `python-nss` | X | X | X | X | X | X | X |
| `relaxngDatatype` | X | X | X | X | X | X | X |
| `resteasy-atom-provider` | X | X | X | X | X | X | X |
| `resteasy-client` | X | X | X | X | X | X | X |
| `resteasy-core` | X | X | X | X | X | X | X |
| `resteasy-jackson-provider` | X | X | X | X | X | X | X |
| `resteasy-jaxb-provider` | X | X | X | X | X | X | X |
| `selinux-policy` | X | X | X | X | X | X | X |
| `selinux-policy-targeted` | X | X | X | X | X | X | X |
| `setools-python` | X | X | X | X | X | X | X |
| `setools-python3` | X | X | X | X | X | X | X |
| `slf4j` | X | X | X | X | X | X | X |
| `slf4j-jdk14` | X | X | X | X | X | X | X |
| `stax2-api` | X | X | X | X | X | X | X |
| `stax-ex` | X | X | X | X | X | X | X |
| `tomcat` | X | X | X | X | X | X | X |
| `tomcat-el-3.0-api` | X | X | X | X | X | X | X |
| `tomcat-jsp-2.3-api` | X | X | X | X | X | X | X |
| `tomcatjss` | X | X | X | X | X | X | X |
| `tomcat-lib` | X | X | X | X | X | X | X |
| `tomcat-servlet-3.1-api` | X | X | X | X | X | X | X |
| `tzdata-java` | X | X | X | X | X | X | X |
| `velocity` | X | X | X | X | X | X | X |
| `which` | - | X | - | - | - | - | - |
| `xalan-j2` | X | X | X | X | X | X | X |
| `xerces-j2` | X | X | X | X | X | X | X |
| `xml-commons-apis` | X | X | X | X | X | X | X |
| `xml-commons-resolver` | X | X | X | X | X | X | X |
| `xmlstreambuffer` | X | X | X | X | X | X | X |
| `xsom` | X | X | X | X | X | X | X |
