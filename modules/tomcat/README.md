# tomcat
This is a dependency report for the tomcat module.

An initial [modulemd file](tomcat.yaml) has been generated. It is experimental and probably unusable at this point.
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
These are RPM dependencies of the [tomcat top-level package set](tomcat.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this tomcat module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `apache-commons-collections` | X | X | X | X | X | X | X |
| `apache-commons-daemon` | X | X | X | X | X | X | X |
| `apache-commons-dbcp` | X | X | X | X | X | X | X |
| `apache-commons-lang` | X | X | X | X | X | X | X |
| `apache-commons-logging` | X | X | X | X | X | X | X |
| `apache-commons-pool` | X | X | X | X | X | X | X |
| `copy-jdk-configs` | X | X | X | X | X | X | X |
| `ecj` | X | X | X | X | X | X | X |
| `freetype` | - | X | - | - | - | X | - |
| `java-1.8.0-openjdk-headless` | X | X | X | X | X | X | X |
| `javapackages-tools` | X | X | X | X | X | X | X |
| `jss` | X | X | X | X | X | X | X |
| `libpng` | - | X | - | - | - | X | - |
| `lua` | X | X | X | X | X | X | X |
| `lua-posix` | X | X | X | X | X | X | X |
| `tomcat` | X | X | X | X | X | X | X |
| `tomcat-el-3.0-api` | X | X | X | X | X | X | X |
| `tomcat-jsp-2.3-api` | X | X | X | X | X | X | X |
| `tomcatjss` | X | X | X | X | X | X | X |
| `tomcat-lib` | X | X | X | X | X | X | X |
| `tomcat-servlet-3.1-api` | X | X | X | X | X | X | X |
| `tzdata-java` | X | X | X | X | X | X | X |
| `which` | - | X | - | - | - | X | - |
