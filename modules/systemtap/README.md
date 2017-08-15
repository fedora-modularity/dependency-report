# systemtap
This is a dependency report for the systemtap module.

An initial [modulemd file](systemtap.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [perl](../perl)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [platform](../platform)
## Binary RPM packages (all arches combined)
These are RPM dependencies of the [systemtap top-level package set](systemtap.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this systemtap module
------
* `avahi-libs`
* `boost-atomic`
* `boost-chrono`
* `boost-date-time`
* `boost-system`
* `boost-thread`
* `curl-minimal`
* `dyninst`
* `json-c`
* `kernel-devel`
* `libdwarf`
* `systemtap`
* `systemtap-client`
* `systemtap-devel`
* `systemtap-runtime`
