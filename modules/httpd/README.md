# httpd
This is a dependency report for the httpd module.

An initial [modulemd file](httpd.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [python2](../python2)
* [python2-ecosystem](../python2-ecosystem)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [httpd top-level package set](httpd.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this httpd module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `apr` | X | X | X | X | X | X | X |
| `apr-util` | X | X | X | X | X | X | X |
| `fedora-logos-httpd` | X | X | X | X | X | X | X |
| `httpd` | X | X | X | X | X | X | X |
| `httpd-filesystem` | X | X | X | X | X | X | X |
| `httpd-tools` | X | X | X | X | X | X | X |
| `mailcap` | X | X | X | X | X | X | X |
| `mod_http2` | X | X | X | X | X | X | X |
| `mod_nss` | X | X | X | X | X | X | X |
| `mod_session` | X | X | X | X | X | X | X |
| `mod_wsgi` | X | X | X | X | X | X | X |
| `nss-tools` | X | X | X | X | X | X | X |
| `python2-ndg_httpsclient` | X | X | X | X | X | X | X |
