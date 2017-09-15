# hardware-support
This is a dependency report for the hardware-support module.

An initial [modulemd file](hardware-support.yaml) has been generated. It is experimental and probably unusable at this point.
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
These are RPM dependencies of the [hardware-support top-level package set](hardware-support.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this hardware-support module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `fuse` | - | - | - | - | - | X | - |
| `fuse-common` | - | - | - | - | - | X | - |
| `groff-base` | - | - | - | - | - | X | - |
| `librtas` | - | - | - | X | X | - | - |
| `libservicelog` | - | - | - | X | X | - | - |
| `libsysfs` | - | - | - | - | - | X | - |
| `libvpd` | - | - | - | X | X | - | - |
| `lsvpd` | - | - | - | X | X | - | - |
| `perl` | - | - | - | - | - | X | - |
| `perl-Algorithm-Diff` | - | - | - | - | - | X | - |
| `perl-Archive-Tar` | - | - | - | - | - | X | - |
| `perl-Archive-Zip` | - | - | - | - | - | X | - |
| `perl-Attribute-Handlers` | - | - | - | - | - | X | - |
| `perl-autodie` | - | - | - | - | - | X | - |
| `perl-B-Debug` | - | - | - | - | - | X | - |
| `perl-bignum` | - | - | - | - | - | X | - |
| `perl-Carp` | - | - | - | X | X | X | - |
| `perl-Compress-Bzip2` | - | - | - | - | - | X | - |
| `perl-Compress-Raw-Bzip2` | - | - | - | - | - | X | - |
| `perl-Compress-Raw-Zlib` | - | - | - | - | - | X | - |
| `perl-Config-Perl-V` | - | - | - | - | - | X | - |
| `perl-constant` | - | - | - | X | X | X | - |
| `perl-CPAN` | - | - | - | - | - | X | - |
| `perl-CPAN-Meta` | - | - | - | - | - | X | - |
| `perl-CPAN-Meta-Requirements` | - | - | - | - | - | X | - |
| `perl-CPAN-Meta-YAML` | - | - | - | - | - | X | - |
| `perl-Data-Dumper` | - | - | - | X | X | X | - |
| `perl-Data-OptList` | - | - | - | - | - | X | - |
| `perl-Data-Section` | - | - | - | - | - | X | - |
| `perl-DB_File` | - | - | - | - | - | X | - |
| `perl-devel` | - | - | - | - | - | X | - |
| `perl-Devel-Peek` | - | - | - | - | - | X | - |
| `perl-Devel-PPPort` | - | - | - | - | - | X | - |
| `perl-Devel-SelfStubber` | - | - | - | - | - | X | - |
| `perl-Devel-Size` | - | - | - | - | - | X | - |
| `perl-Digest` | - | - | - | - | - | X | - |
| `perl-Digest-MD5` | - | - | - | - | - | X | - |
| `perl-Digest-SHA` | - | - | - | - | - | X | - |
| `perl-Encode` | - | - | - | - | - | X | - |
| `perl-encoding` | - | - | - | - | - | X | - |
| `perl-Env` | - | - | - | - | - | X | - |
| `perl-Errno` | - | - | - | X | X | X | - |
| `perl-experimental` | - | - | - | - | - | X | - |
| `perl-Exporter` | - | - | - | X | X | X | - |
| `perl-ExtUtils-CBuilder` | - | - | - | - | - | X | - |
| `perl-ExtUtils-Command` | - | - | - | - | - | X | - |
| `perl-ExtUtils-Embed` | - | - | - | - | - | X | - |
| `perl-ExtUtils-Install` | - | - | - | - | - | X | - |
| `perl-ExtUtils-MakeMaker` | - | - | - | - | - | X | - |
| `perl-ExtUtils-Manifest` | - | - | - | - | - | X | - |
| `perl-ExtUtils-Miniperl` | - | - | - | - | - | X | - |
| `perl-ExtUtils-MM-Utils` | - | - | - | - | - | X | - |
| `perl-ExtUtils-ParseXS` | - | - | - | - | - | X | - |
| `perl-File-Fetch` | - | - | - | - | - | X | - |
| `perl-File-HomeDir` | - | - | - | - | - | X | - |
| `perl-File-Path` | - | - | - | X | X | X | - |
| `perl-File-Temp` | - | - | - | - | - | X | - |
| `perl-File-Which` | - | - | - | - | - | X | - |
| `perl-Filter` | - | - | - | - | - | X | - |
| `perl-Filter-Simple` | - | - | - | - | - | X | - |
| `perl-Getopt-Long` | - | - | - | - | - | X | - |
| `perl-HTTP-Tiny` | - | - | - | - | - | X | - |
| `perl-inc-latest` | - | - | - | - | - | X | - |
| `perl-interpreter` | - | - | - | X | X | X | - |
| `perl-IO` | - | - | - | X | X | X | - |
| `perl-IO-Compress` | - | - | - | - | - | X | - |
| `perl-IO-Socket-IP` | - | - | - | - | - | X | - |
| `perl-IO-Zlib` | - | - | - | - | - | X | - |
| `perl-IPC-Cmd` | - | - | - | - | - | X | - |
| `perl-IPC-System-Simple` | - | - | - | - | - | X | - |
| `perl-IPC-SysV` | - | - | - | - | - | X | - |
| `perl-JSON-PP` | - | - | - | - | - | X | - |
| `perl-libnet` | - | - | - | - | - | X | - |
| `perl-libnetcfg` | - | - | - | - | - | X | - |
| `perl-libs` | - | - | - | X | X | X | - |
| `perl-Locale-Codes` | - | - | - | - | - | X | - |
| `perl-Locale-Maketext` | - | - | - | - | - | X | - |
| `perl-Locale-Maketext-Simple` | - | - | - | - | - | X | - |
| `perl-local-lib` | - | - | - | - | - | X | - |
| `perl-macros` | - | - | - | X | X | X | - |
| `perl-Math-BigInt` | - | - | - | - | - | X | - |
| `perl-Math-BigInt-FastCalc` | - | - | - | - | - | X | - |
| `perl-Math-BigRat` | - | - | - | - | - | X | - |
| `perl-Math-Complex` | - | - | - | - | - | X | - |
| `perl-Memoize` | - | - | - | - | - | X | - |
| `perl-MIME-Base64` | - | - | - | - | - | X | - |
| `perl-Module-Build` | - | - | - | - | - | X | - |
| `perl-Module-CoreList` | - | - | - | - | - | X | - |
| `perl-Module-CoreList-tools` | - | - | - | - | - | X | - |
| `perl-Module-Load` | - | - | - | - | - | X | - |
| `perl-Module-Load-Conditional` | - | - | - | - | - | X | - |
| `perl-Module-Loaded` | - | - | - | - | - | X | - |
| `perl-Module-Metadata` | - | - | - | - | - | X | - |
| `perl-MRO-Compat` | - | - | - | - | - | X | - |
| `perl-Net-Ping` | - | - | - | - | - | X | - |
| `perl-open` | - | - | - | - | - | X | - |
| `perl-Package-Generator` | - | - | - | - | - | X | - |
| `perl-Params-Check` | - | - | - | - | - | X | - |
| `perl-Params-Util` | - | - | - | - | - | X | - |
| `perl-parent` | - | - | - | X | X | X | - |
| `perl-PathTools` | - | - | - | X | X | X | - |
| `perl-perlfaq` | - | - | - | - | - | X | - |
| `perl-PerlIO-via-QuotedPrint` | - | - | - | - | - | X | - |
| `perl-Perl-OSType` | - | - | - | - | - | X | - |
| `perl-Pod-Checker` | - | - | - | - | - | X | - |
| `perl-Pod-Escapes` | - | - | - | - | - | X | - |
| `perl-Pod-Html` | - | - | - | - | - | X | - |
| `perl-podlators` | - | - | - | - | - | X | - |
| `perl-Pod-Parser` | - | - | - | - | - | X | - |
| `perl-Pod-Perldoc` | - | - | - | - | - | X | - |
| `perl-Pod-Simple` | - | - | - | - | - | X | - |
| `perl-Pod-Usage` | - | - | - | - | - | X | - |
| `perl-Scalar-List-Utils` | - | - | - | X | X | X | - |
| `perl-SelfLoader` | - | - | - | - | - | X | - |
| `perl-Socket` | - | - | - | X | X | X | - |
| `perl-Software-License` | - | - | - | - | - | X | - |
| `perl-Storable` | - | - | - | - | - | X | - |
| `perl-Sub-Exporter` | - | - | - | - | - | X | - |
| `perl-Sub-Install` | - | - | - | - | - | X | - |
| `perl-Sys-Syslog` | - | - | - | - | - | X | - |
| `perl-Term-ANSIColor` | - | - | - | - | - | X | - |
| `perl-Term-Cap` | - | - | - | - | - | X | - |
| `perl-Test` | - | - | - | - | - | X | - |
| `perl-Test-Harness` | - | - | - | - | - | X | - |
| `perl-Test-Simple` | - | - | - | - | - | X | - |
| `perl-Text-Balanced` | - | - | - | - | - | X | - |
| `perl-Text-Diff` | - | - | - | - | - | X | - |
| `perl-Text-Glob` | - | - | - | - | - | X | - |
| `perl-Text-ParseWords` | - | - | - | - | - | X | - |
| `perl-Text-Tabs+Wrap` | - | - | - | X | X | X | - |
| `perl-Text-Template` | - | - | - | - | - | X | - |
| `perl-Thread-Queue` | - | - | - | - | - | X | - |
| `perl-threads` | - | - | - | X | X | X | - |
| `perl-threads-shared` | - | - | - | X | X | X | - |
| `perl-Time-HiRes` | - | - | - | - | - | X | - |
| `perl-Time-Local` | - | - | - | - | - | X | - |
| `perl-Time-Piece` | - | - | - | - | - | X | - |
| `perl-Unicode-Collate` | - | - | - | - | - | X | - |
| `perl-Unicode-Normalize` | - | - | - | X | X | X | - |
| `perl-URI` | - | - | - | - | - | X | - |
| `perl-utils` | - | - | - | - | - | X | - |
| `perl-version` | - | - | - | - | - | X | - |
| `powerpc-utils` | - | - | - | X | X | - | - |
| `ppc64-utils` | - | - | - | X | X | - | - |
| `python3-pyparsing` | - | - | - | - | - | X | - |
| `s390utils-base` | - | - | - | - | - | X | - |
| `s390utils-cmsfs-fuse` | - | - | - | - | - | X | - |
| `sysfsutils` | - | - | - | - | - | X | - |
| `systemtap-sdt-devel` | - | - | - | - | - | X | - |
| `which` | - | - | - | - | - | X | - |
