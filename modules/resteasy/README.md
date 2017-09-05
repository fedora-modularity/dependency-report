# resteasy
This is a dependency report for the resteasy module.

An initial [modulemd file](resteasy.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [java](../java)
* [apache-commons](../apache-commons)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [resteasy top-level package set](resteasy.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this resteasy module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `bea-stax-api` | X | X | X | X | X | X | X |
| `glassfish-fastinfoset` | X | X | X | X | X | X | X |
| `glassfish-jaxb-api` | X | X | X | X | X | X | X |
| `glassfish-jaxb-core` | X | X | X | X | X | X | X |
| `glassfish-jaxb-runtime` | X | X | X | X | X | X | X |
| `glassfish-jaxb-txw2` | X | X | X | X | X | X | X |
| `httpcomponents-client` | X | X | X | X | X | X | X |
| `httpcomponents-core` | X | X | X | X | X | X | X |
| `istack-commons-runtime` | X | X | X | X | X | X | X |
| `jackson` | X | X | X | X | X | X | X |
| `jboss-annotations-1.2-api` | X | X | X | X | X | X | X |
| `jboss-jaxrs-2.0-api` | X | X | X | X | X | X | X |
| `jboss-logging` | X | X | X | X | X | X | X |
| `jcip-annotations` | X | X | X | X | X | X | X |
| `joda-time` | X | X | X | X | X | X | X |
| `jsr-311` | X | X | X | X | X | X | X |
| `objectweb-asm3` | X | X | X | X | X | X | X |
| `relaxngDatatype` | X | X | X | X | X | X | X |
| `resteasy-atom-provider` | X | X | X | X | X | X | X |
| `resteasy-client` | X | X | X | X | X | X | X |
| `resteasy-core` | X | X | X | X | X | X | X |
| `resteasy-jackson-provider` | X | X | X | X | X | X | X |
| `resteasy-jaxb-provider` | X | X | X | X | X | X | X |
| `stax2-api` | X | X | X | X | X | X | X |
| `stax-ex` | X | X | X | X | X | X | X |
| `xmlstreambuffer` | X | X | X | X | X | X | X |
| `xsom` | X | X | X | X | X | X | X |
