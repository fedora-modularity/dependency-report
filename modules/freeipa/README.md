# freeipa
This is a dependency report for the freeipa module.

An initial [modulemd file](freeipa.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [java](../java)
* [perl](../perl)
* [389-ds](../389-ds)
* [bind](../bind)
* [krb5](../krb5)
* [sssd](../sssd)
* [samba](../samba)
* [pki](../pki)
* [tomcat](../tomcat)
* [resteasy](../resteasy)
* [httpd](../httpd)
* [storage-devices](../storage-devices)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [freeipa top-level package set](freeipa.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this freeipa module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `authconfig` | X | X | X | X | X | X | X |
| `autofs` | X | X | X | X | X | X | X |
| `autogen-libopts` | X | X | X | X | X | X | X |
| `bind-dyndb-ldap` | X | X | X | X | X | X | X |
| `certmonger` | X | X | X | X | X | X | X |
| `custodia` | X | X | X | X | X | X | X |
| `dbus-python` | X | X | X | X | X | X | X |
| `fontawesome-fonts` | X | X | X | X | X | X | X |
| `freeipa-client` | X | X | X | X | X | X | X |
| `freeipa-client-common` | X | X | X | X | X | X | X |
| `freeipa-common` | X | X | X | X | X | X | X |
| `freeipa-desktop-profile` | X | X | X | X | X | X | X |
| `freeipa-python-compat` | X | X | X | X | X | X | X |
| `freeipa-server` | X | X | X | X | X | X | X |
| `freeipa-server-common` | X | X | X | X | X | X | X |
| `freeipa-server-dns` | X | X | X | X | X | X | X |
| `freeipa-server-trust-ad` | X | X | X | X | X | X | X |
| `ldns` | X | X | X | X | X | X | X |
| `libitm` | X | X | X | X | X | X | X |
| `m2crypto` | X | X | X | X | X | X | X |
| `mod_auth_gssapi` | X | X | X | X | X | X | X |
| `mod_lookup_identity` | X | X | X | X | X | X | X |
| `ntp` | X | X | X | X | X | X | X |
| `oddjob` | X | X | X | X | X | X | X |
| `oddjob-mkhomedir` | X | X | X | X | X | X | X |
| `opencryptoki` | X | X | X | X | X | X | X |
| `opencryptoki-ccatok` | - | - | - | - | - | X | - |
| `opencryptoki-icsftok` | X | X | X | X | X | - | X |
| `opencryptoki-libs` | X | X | X | X | X | X | X |
| `opendnssec` | X | X | X | X | X | X | X |
| `open-sans-fonts` | X | X | X | X | X | X | X |
| `python2-augeas` | X | X | X | X | X | X | X |
| `python2-configparser` | X | X | X | X | X | X | X |
| `python2-custodia` | X | X | X | X | X | X | X |
| `python2-dateutil` | X | X | X | X | X | X | X |
| `python2-decorator` | X | X | X | X | X | X | X |
| `python2-ipaclient` | X | X | X | X | X | X | X |
| `python2-ipalib` | X | X | X | X | X | X | X |
| `python2-ipaserver` | X | X | X | X | X | X | X |
| `python2-kdcproxy` | X | X | X | X | X | X | X |
| `python2-netifaces` | X | X | X | X | X | X | X |
| `python2-systemd` | X | X | X | X | X | X | X |
| `python2-typing` | X | X | X | X | X | X | X |
| `python2-yubico` | X | X | X | X | X | X | X |
| `python3-asn1crypto` | X | X | X | X | X | X | X |
| `python3-cffi` | X | X | X | X | X | X | X |
| `python3-chardet` | X | X | X | X | X | X | X |
| `python3-cryptography` | X | X | X | X | X | X | X |
| `python3-custodia` | X | X | X | X | X | X | X |
| `python3-idna` | X | X | X | X | X | X | X |
| `python3-jwcrypto` | X | X | X | X | X | X | X |
| `python3-pycparser` | X | X | X | X | X | X | X |
| `python3-pyOpenSSL` | X | X | X | X | X | X | X |
| `python3-pysocks` | X | X | X | X | X | X | X |
| `python3-requests` | X | X | X | X | X | X | X |
| `python3-systemd` | X | X | X | X | X | X | X |
| `python3-urllib3` | X | X | X | X | X | X | X |
| `python-gssapi` | X | X | X | X | X | X | X |
| `python-jwcrypto` | X | X | X | X | X | X | X |
| `python-netaddr` | X | X | X | X | X | X | X |
| `python-qrcode-core` | X | X | X | X | X | X | X |
| `pyusb` | X | X | X | X | X | X | X |
| `slapi-nis` | X | X | X | X | X | X | X |
| `softhsm` | X | X | X | X | X | X | X |
| `sqlite` | X | X | X | X | X | X | X |
| `xmlrpc-c-client` | X | X | X | X | X | X | X |
