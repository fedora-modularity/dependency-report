all: $(notdir $(wildcard modules/*)) ;

platform:
	@echo Configuring platform.
	@./add_platform.sh

%::
	@echo Generating $@.
	@./deps2.sh $@ $^


#installer: platform networking-base storage-devices platform-placeholder
installer: platform

autotools: platform perl platform-placeholder

systemtap: platform perl platform-placeholder

perl: platform platform-placeholder

networking-base: platform platform-placeholder

storage-devices: platform platform-placeholder

platform-placeholder: platform

freeipa: platform platform-placeholder java perl 389-ds bind krb5 sssd samba pki tomcat resteasy httpd

java: platform platform-placeholder

389-ds: platform platform-placeholder

bind: platform platform-placeholder

krb5: platform platform-placeholder

sssd: platform platform-placeholder

samba: platform platform-placeholder

pki: platform platform-placeholder

tomcat: platform platform-placeholder

resteasy: platform platform-placeholder

httpd: platform platform-placeholder

postgresql: platform platform-placeholder
