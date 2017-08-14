# httpd
This is a dependency report for the httpd module.

An initial [modulemd file](httpd.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/missing-buildtime-source-packages-short.txt) or [binary](all/missing-buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
## Binary RPM packages (all arches combined)
These are RPM dependencies of the [httpd top-level package set](httpd.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this httpd module
------
* `apr`
* `apr-util`
* `fedora-logos-httpd`
* `httpd`
* `httpd-filesystem`
* `httpd-tools`
* `mailcap`
* `mod_http2`
