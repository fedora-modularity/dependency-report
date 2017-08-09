all: $(notdir $(wildcard modules/*)) ;

platform:
	@echo Configuring platform.
	@./add_platform.sh

%::
	@echo Generating $@.
	@./deps2.sh $@ $^

389-ds: platform

autotools: platform perl

freeipa: platform 389-ds java httpd perl

java: platform

httpd: platform

nginx: platform

perl: platform

ruby: platform

systemtap: platform
