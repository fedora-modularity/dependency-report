# cloud-init
This is a dependency report for the cloud-init module.

An initial [modulemd file](cloud-init.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [python3](../python3)
* [python3-ecosystem](../python3-ecosystem)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [python3](../python3)
## Binary RPM packages
These are RPM dependencies of the [cloud-init top-level package set](cloud-init.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this cloud-init module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `cloud-init` | X | X | X | X | X | X | X |
| `net-tools` | X | X | X | X | X | X | X |
| `python3-configobj` | X | X | X | X | X | X | X |
| `python3-jinja2` | X | X | X | X | X | X | X |
| `python3-jsonpatch` | X | X | X | X | X | X | X |
| `python3-jsonpointer` | X | X | X | X | X | X | X |
| `python3-jwt` | X | X | X | X | X | X | X |
| `python3-markupsafe` | X | X | X | X | X | X | X |
| `python3-oauthlib` | X | X | X | X | X | X | X |
| `python3-prettytable` | X | X | X | X | X | X | X |
| `python3-pyserial` | X | X | X | X | X | X | X |
| `python3-PyYAML` | X | X | X | X | X | X | X |
