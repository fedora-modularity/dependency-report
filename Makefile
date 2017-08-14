all: $(notdir $(wildcard modules/*)) ;

platform:
	@echo Configuring platform.
	@./add_platform.sh

%::
	@echo Generating $@.
	@./deps2.sh $@ $^


installer: platform 

autotools: platform

systemtap: platform
