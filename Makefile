all: $(notdir $(wildcard modules/*)) ;

platform:
	@echo Configuring platform.
	@./add_platform.sh

%::
	@echo Generating $@.
	@./deps2.sh $@ $^


installer: platform networking-base storage-devices platform-placeholder

autotools: platform perl platform-placeholder

systemtap: platform perl platform-placeholder

perl: platform platform-placeholder

networking-base: platform platform-placeholder

storage-devices: platform platform-placeholder

platform-placeholder: platform

freeipa: platform platform-placeholder
