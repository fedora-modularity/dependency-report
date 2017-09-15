# tomcat
This is a dependency report for the tomcat module.

An initial [modulemd file](tomcat.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [java](../java)
* [apache-commons](../apache-commons)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [tomcat top-level package set](tomcat.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this tomcat module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `ecj` | X | X | X | X | X | X | X |
| `jss` | X | X | X | X | X | X | X |
| `tomcat` | X | X | X | X | X | X | X |
| `tomcat-el-3.0-api` | X | X | X | X | X | X | X |
| `tomcat-jsp-2.3-api` | X | X | X | X | X | X | X |
| `tomcatjss` | X | X | X | X | X | X | X |
| `tomcat-lib` | X | X | X | X | X | X | X |
| `tomcat-servlet-3.1-api` | X | X | X | X | X | X | X |
