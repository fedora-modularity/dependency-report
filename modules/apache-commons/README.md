# apache-commons
This is a dependency report for the apache-commons module.

An initial [modulemd file](apache-commons.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [java](../java)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [apache-commons top-level package set](apache-commons.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this apache-commons module
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
