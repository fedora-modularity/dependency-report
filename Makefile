all: $(notdir $(wildcard modules/*)) ;

platform:
	@echo Configuring platform.
	@./add_platform.sh

%::
	@echo Generating $@.
	@./deps2.sh $@ $^


installer: platform networking-base

autotools: platform perl

systemtap: platform perl

perl: platform

networking-base: platform
