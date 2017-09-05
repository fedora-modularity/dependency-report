# storage-devices
This is a dependency report for the storage-devices module.

An initial [modulemd file](storage-devices.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
* [platform-placeholder](../platform-placeholder)
* [perl](../perl)
* [python2](../python2)
* [python2-ecosystem](../python2-ecosystem)
### Build
This list might not be complete.
Please see the **missing RPM build dependencies ([source](all/buildtime-source-packages-short.txt) or [binary](all/buildtime-binary-packages-short.txt)) lists** for more information.
* [bootstrap](../bootstrap)
## Binary RPM packages
These are RPM dependencies of the [storage-devices top-level package set](storage-devices.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this storage-devices module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `ceph` | X | X | X | X | X | X | X |
| `ceph-base` | X | X | X | X | X | X | X |
| `ceph-common` | X | X | X | X | X | X | X |
| `ceph-mds` | X | X | X | X | X | X | X |
| `ceph-mgr` | X | X | X | X | X | X | X |
| `ceph-mon` | X | X | X | X | X | X | X |
| `ceph-osd` | X | X | X | X | X | X | X |
| `ceph-selinux` | X | X | X | X | X | X | X |
| `cryptopp` | X | X | X | X | X | X | X |
| `cryptsetup` | X | X | X | X | X | X | X |
| `gperftools-libs` | X | X | X | X | X | - | X |
| `leveldb` | X | X | X | X | X | X | X |
| `libcephfs2` | X | X | X | X | X | X | X |
| `librados2` | X | X | X | X | X | X | - |
| `libradosstriper1` | X | X | X | X | X | X | X |
| `librbd1` | X | X | X | X | X | X | X |
| `librgw2` | X | X | X | X | X | X | X |
| `lttng-ust` | X | X | X | X | X | X | - |
| `pycryptopp` | X | X | X | X | X | X | X |
| `python2-babel` | X | X | X | X | X | X | X |
| `python2-beaker` | X | X | X | X | X | X | X |
| `python2-beautifulsoup4` | X | X | X | X | X | X | X |
| `python2-cherrypy` | X | X | X | X | X | X | X |
| `python2-click` | X | X | X | X | X | X | X |
| `python2-cssselect` | X | X | X | X | X | X | X |
| `python2-flask` | X | X | X | X | X | X | X |
| `python2-html5lib` | X | X | X | X | X | X | X |
| `python2-itsdangerous` | X | X | X | X | X | X | X |
| `python2-jinja2` | X | X | X | X | X | X | X |
| `python2-logutils` | X | X | X | X | X | X | X |
| `python2-lxml` | X | X | X | X | X | X | X |
| `python2-mako` | X | X | X | X | X | X | X |
| `python2-markupsafe` | X | X | X | X | X | X | X |
| `python2-paste` | X | X | X | X | X | X | X |
| `python2-pecan` | X | X | X | X | X | X | X |
| `python2-prettytable` | X | X | X | X | X | X | X |
| `python2-simplegeneric` | X | X | X | X | X | X | X |
| `python2-singledispatch` | X | X | X | X | X | X | X |
| `python2-tempita` | X | X | X | X | X | X | X |
| `python2-waitress` | X | X | X | X | X | X | X |
| `python2-webencodings` | X | X | X | X | X | X | X |
| `python2-webob` | X | X | X | X | X | X | X |
| `python2-webtest` | X | X | X | X | X | X | X |
| `python-cephfs` | X | X | X | X | X | X | X |
| `python-rados` | X | X | X | X | X | X | X |
| `python-rbd` | X | X | X | X | X | X | X |
| `python-rgw` | X | X | X | X | X | X | X |
| `python-werkzeug` | X | X | X | X | X | X | X |
| `which` | - | X | - | - | - | X | - |
