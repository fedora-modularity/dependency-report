# ruby
This is a dependency report for the ruby module.

An initial [modulemd file](ruby.yaml) has been generated. It is experimental and probably unusable at this point.
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
These are RPM dependencies of the [ruby top-level package set](ruby.csv). They should be either:
* split into other modules and be used as modular dependencies
* included in this ruby module
### Packages
| |aarch64 |armv7hl |i686 |ppc64 |ppc64le |s390x |x86_64 |
|---|---|---|---|---|---|---|---|
| `ruby` | X | X | X | X | X | X | X |
| `rubygem-bundler` | X | X | X | X | X | X | X |
| `rubygem-io-console` | X | X | X | X | X | X | X |
| `rubygem-openssl` | X | X | X | X | X | X | X |
| `rubygem-psych` | X | X | X | X | X | X | X |
| `rubygems` | X | X | X | X | X | X | X |
| `ruby-libs` | X | X | X | X | X | X | X |
| `rubypick` | X | X | X | X | X | X | X |
