# ruby
This is a dependency report for the ruby module.

An initial [modulemd file](ruby.yaml) has been generated. It is experimental and probably unusable at this point.
## Dependencies
These are modules identified as dependencies.
### Runtime
This list might not be complete. There might be other packages in the *Binary RPM packages (all arches combined)* section that needs to be split to different modules.
* [platform](../platform)
### Build
This list might not be complete. Please see the missing RPM build dependencies ([source](all/missing-buildtime-source-packages-short.txt) or [binary](all/missing-buildtime-binary-packages-short.txt)) lists for more information.
* [platform](../platform)
* [perl](../perl)
* [systemtap](../systemtap)
* [autotools](../autotools)
## Binary RPM packages (all arches combined)
These are RPM dependencies of the [ruby top-level package set](ruby.csv). They should be either:
* split into other modules and be used as modular dependncies
* included in this ruby module
* `libyaml`
* `ruby`
* `rubygem-bundler`
* `rubygem-io-console`
* `rubygem-openssl`
* `rubygem-psych`
* `rubygems`
* `ruby-libs`
* `rubypick`
