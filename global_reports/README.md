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

## There are 29 modules:
![module-deps](../img/module-deps.png)

| Module | RPM components | RPMs missing in buildroot |
|---|---|---|
| [**389-ds**](../modules/389-ds) | **21** pkgs | [**83** pkgs missing](../modules/389-ds/all/buildtime-binary-packages-short.txt) |
| [**autotools**](../modules/autotools) | **3** pkgs | [**293** pkgs missing](../modules/autotools/all/buildtime-binary-packages-short.txt) |
| [**bind**](../modules/bind) | **11** pkgs | [**28** pkgs missing](../modules/bind/all/buildtime-binary-packages-short.txt) |
| [**freeipa**](../modules/freeipa) | **66** pkgs | [**227** pkgs missing](../modules/freeipa/all/buildtime-binary-packages-short.txt) |
| [**httpd**](../modules/httpd) | **12** pkgs | [**115** pkgs missing](../modules/httpd/all/buildtime-binary-packages-short.txt) |
| [**installer**](../modules/installer) | **65** pkgs | [**1** pkgs missing](../modules/installer/all/buildtime-binary-packages-short.txt) |
| [**java**](../modules/java) | **31** pkgs | [**136** pkgs missing](../modules/java/all/buildtime-binary-packages-short.txt) |
| [**krb5**](../modules/krb5) | **5** pkgs | [**1** pkgs missing](../modules/krb5/all/buildtime-binary-packages-short.txt) |
| [**networking-base**](../modules/networking-base) | **61** pkgs | [**311** pkgs missing](../modules/networking-base/all/buildtime-binary-packages-short.txt) |
| [**perl**](../modules/perl) | **141** pkgs | [**643** pkgs missing](../modules/perl/all/buildtime-binary-packages-short.txt) |
| [**pki**](../modules/pki) | **36** pkgs | [**278** pkgs missing](../modules/pki/all/buildtime-binary-packages-short.txt) |
| [**platform**](../modules/platform) | **299** pkgs | [**0** pkgs missing](../modules/platform/all/buildtime-binary-packages-short.txt) |
| [**platform-placeholder**](../modules/platform-placeholder) | **359** pkgs | [**0** pkgs missing](../modules/platform-placeholder/all/buildtime-binary-packages-short.txt) |
| [**postgresql**](../modules/postgresql) | **8** pkgs | [**47** pkgs missing](../modules/postgresql/all/buildtime-binary-packages-short.txt) |
| [**python2**](../modules/python2) | **23** pkgs | [**146** pkgs missing](../modules/python2/all/buildtime-binary-packages-short.txt) |
| [**python2-ecosystem**](../modules/python2-ecosystem) | **85** pkgs | [**0** pkgs missing](../modules/python2-ecosystem/all/buildtime-binary-packages-short.txt) |
| [**python3**](../modules/python3) | **22** pkgs | [**145** pkgs missing](../modules/python3/all/buildtime-binary-packages-short.txt) |
| [**python3-bootstrap**](../modules/python3-bootstrap) | **0** pkgs | [**0** pkgs missing](../modules/python3-bootstrap/all/buildtime-binary-packages-short.txt) |
| [**python3-ecosystem**](../modules/python3-ecosystem) | **19** pkgs | [**107** pkgs missing](../modules/python3-ecosystem/all/buildtime-binary-packages-short.txt) |
| [**python3-ecosystem-bootstrap**](../modules/python3-ecosystem-bootstrap) | **0** pkgs | [**0** pkgs missing](../modules/python3-ecosystem-bootstrap/all/buildtime-binary-packages-short.txt) |
| [**resteasy**](../modules/resteasy) | **39** pkgs | [**461** pkgs missing](../modules/resteasy/all/buildtime-binary-packages-short.txt) |
| [**ruby**](../modules/ruby) | **8** pkgs | [**68** pkgs missing](../modules/ruby/all/buildtime-binary-packages-short.txt) |
| [**samba**](../modules/samba) | **27** pkgs | [**556** pkgs missing](../modules/samba/all/buildtime-binary-packages-short.txt) |
| [**sssd**](../modules/sssd) | **24** pkgs | [**71** pkgs missing](../modules/sssd/all/buildtime-binary-packages-short.txt) |
| [**storaged**](../modules/storaged) | **18** pkgs | [**99** pkgs missing](../modules/storaged/all/buildtime-binary-packages-short.txt) |
| [**storage-devices**](../modules/storage-devices) | **78** pkgs | [**485** pkgs missing](../modules/storage-devices/all/buildtime-binary-packages-short.txt) |
| [**systemtap**](../modules/systemtap) | **14** pkgs | [**254** pkgs missing](../modules/systemtap/all/buildtime-binary-packages-short.txt) |
| [**tomcat**](../modules/tomcat) | **23** pkgs | [**287** pkgs missing](../modules/tomcat/all/buildtime-binary-packages-short.txt) |
