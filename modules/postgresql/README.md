# postgresql
This is a dependency report for the postgresql module.

An initial [modulemd file](postgresql.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [postgresql top-level package set](postgresql.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this postgresql module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `postgresql` | X | X | X | X | X | X | X |
| `postgresql-contrib` | X | X | X | X | X | X | X |
| `postgresql-devel` | X | X | X | X | X | X | X |
| `postgresql-libs` | X | X | X | X | X | X | X |
| `postgresql-server` | X | X | X | X | X | X | X |
| `postgresql-static` | X | X | X | X | X | X | X |
| `postgresql-upgrade` | X | X | X | X | X | X | X |
| `uuid` | X | X | X | X | X | X | X |
