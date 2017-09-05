# Dependency reports

This directory contains global reports - a view on all modules at once.

For more details **individual modules** and **architecture-specific** information, please click on individual module names in thee table below.

## Files

### Runtime dependencies

* [**all-binary-pkgs.txt**](all-binary-pkgs.txt) - All binary packages included in all modules.
* [**all-binary-pkgs-counted.txt**](all-binary-pkgs-counted.txt) - All binary packages included in all modules, with a number saying in how many modules the package is.
* [**all-binary-pkgs-occurrences.txt**](all-binary-pkgs-occurrences.txt) - All binary packages included in all modules, with a list of modules they are included in.

### Build dependencies

* [**missing-build-deps-binary-pkgs.txt**](missing-build-deps-binary-pkgs.txt) - Missing build dependencies of all modules. Some of these packages might be already modularized, the build dependency just need to be defined.
* [**missing-build-deps-binary-pkgs-counted.txt**](missing-build-deps-binary-pkgs-counted.txt) - Missing build dependencies of all modules. Some of these packages might be already modularized, the build dependency just need to be defined. With a number representing how many modules are missing such dependency.
* [**missing-build-deps-binary-pkgs-unmodularized.txt**](missing-build-deps-binary-pkgs-unmodularized.txt) - Missing build dependencies of all modules. None of these packages are included in modules, so they need to get modularized.

## There are 33 modules:
![module-deps](../img/module-deps.png)

| Module | RPM components | RPMs missing in buildroot |
|---|---|---|
| [**389-ds**](../modules/389-ds) | **25** pkgs | [**0** pkgs missing](../modules/389-ds/all/buildtime-binary-packages-short.txt) |
| [**apache-commons**](../modules/apache-commons) | **18** pkgs | [**1** pkgs missing](../modules/apache-commons/all/buildtime-binary-packages-short.txt) |
| [**autotools**](../modules/autotools) | **3** pkgs | [**0** pkgs missing](../modules/autotools/all/buildtime-binary-packages-short.txt) |
| [**bind**](../modules/bind) | **11** pkgs | [**0** pkgs missing](../modules/bind/all/buildtime-binary-packages-short.txt) |
| [**fonts**](../modules/fonts) | **6** pkgs | [**0** pkgs missing](../modules/fonts/all/buildtime-binary-packages-short.txt) |
| [**freeipa**](../modules/freeipa) | **59** pkgs | [**20** pkgs missing](../modules/freeipa/all/buildtime-binary-packages-short.txt) |
| [**hardware-support**](../modules/hardware-support) | **0** pkgs | [**0** pkgs missing](../modules/hardware-support/all/buildtime-binary-packages-short.txt) |
| [**httpd**](../modules/httpd) | **14** pkgs | [**0** pkgs missing](../modules/httpd/all/buildtime-binary-packages-short.txt) |
| [**installer**](../modules/installer) | **67** pkgs | [**1** pkgs missing](../modules/installer/all/buildtime-binary-packages-short.txt) |
| [**java**](../modules/java) | **13** pkgs | [**0** pkgs missing](../modules/java/all/buildtime-binary-packages-short.txt) |
| [**krb5**](../modules/krb5) | **2** pkgs | [**0** pkgs missing](../modules/krb5/all/buildtime-binary-packages-short.txt) |
| [**networking-base**](../modules/networking-base) | **39** pkgs | [**1** pkgs missing](../modules/networking-base/all/buildtime-binary-packages-short.txt) |
| [**perl**](../modules/perl) | **139** pkgs | [**0** pkgs missing](../modules/perl/all/buildtime-binary-packages-short.txt) |
| [**pki**](../modules/pki) | **53** pkgs | [**5** pkgs missing](../modules/pki/all/buildtime-binary-packages-short.txt) |
| [**platform**](../modules/platform) | **445** pkgs | [**0** pkgs missing](../modules/platform/all/buildtime-binary-packages-short.txt) |
| [**platform-placeholder**](../modules/platform-placeholder) | **223** pkgs | [**0** pkgs missing](../modules/platform-placeholder/all/buildtime-binary-packages-short.txt) |
| [**postgresql**](../modules/postgresql) | **8** pkgs | [**0** pkgs missing](../modules/postgresql/all/buildtime-binary-packages-short.txt) |
| [**python2**](../modules/python2) | **12** pkgs | [**0** pkgs missing](../modules/python2/all/buildtime-binary-packages-short.txt) |
| [**python2-ecosystem**](../modules/python2-ecosystem) | **29** pkgs | [**0** pkgs missing](../modules/python2-ecosystem/all/buildtime-binary-packages-short.txt) |
| [**python3**](../modules/python3) | **11** pkgs | [**0** pkgs missing](../modules/python3/all/buildtime-binary-packages-short.txt) |
| [**python3-bootstrap**](../modules/python3-bootstrap) | **0** pkgs | [**0** pkgs missing](../modules/python3-bootstrap/all/buildtime-binary-packages-short.txt) |
| [**python3-ecosystem**](../modules/python3-ecosystem) | **22** pkgs | [**0** pkgs missing](../modules/python3-ecosystem/all/buildtime-binary-packages-short.txt) |
| [**python3-ecosystem-bootstrap**](../modules/python3-ecosystem-bootstrap) | **0** pkgs | [**0** pkgs missing](../modules/python3-ecosystem-bootstrap/all/buildtime-binary-packages-short.txt) |
| [**resteasy**](../modules/resteasy) | **27** pkgs | [**1** pkgs missing](../modules/resteasy/all/buildtime-binary-packages-short.txt) |
| [**ruby**](../modules/ruby) | **8** pkgs | [**0** pkgs missing](../modules/ruby/all/buildtime-binary-packages-short.txt) |
| [**samba**](../modules/samba) | **23** pkgs | [**1** pkgs missing](../modules/samba/all/buildtime-binary-packages-short.txt) |
| [**sssd**](../modules/sssd) | **24** pkgs | [**0** pkgs missing](../modules/sssd/all/buildtime-binary-packages-short.txt) |
| [**storage-devices**](../modules/storage-devices) | **233** pkgs | [**0** pkgs missing](../modules/storage-devices/all/buildtime-binary-packages-short.txt) |
| [**systemtap**](../modules/systemtap) | **14** pkgs | [**1** pkgs missing](../modules/systemtap/all/buildtime-binary-packages-short.txt) |
| [**tomcat**](../modules/tomcat) | **8** pkgs | [**1** pkgs missing](../modules/tomcat/all/buildtime-binary-packages-short.txt) |
| [**udisks2**](../modules/udisks2) | **18** pkgs | [**0** pkgs missing](../modules/udisks2/all/buildtime-binary-packages-short.txt) |
| [**X11-base**](../modules/X11-base) | **14** pkgs | [**0** pkgs missing](../modules/X11-base/all/buildtime-binary-packages-short.txt) |
