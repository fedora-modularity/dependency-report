all: $(notdir $(wildcard modules/*)) ;

platform:
	@echo Configuring platform.
	@./add_hp_and_bootstrap.sh

%::
	@echo Generating $@.
	@./deps2.sh $@ $^


#installer: platform networking-base storage-devices platform-placeholder
installer: platform platform-placeholder

autotools: platform perl platform-placeholder

systemtap: platform perl platform-placeholder

perl: platform platform-placeholder

networking-base: platform platform-placeholder

storage-devices: platform platform-placeholder

platform-placeholder: platform

freeipa: platform platform-placeholder java perl 389-ds bind krb5 sssd samba pki tomcat resteasy httpd storage-devices

java: platform platform-placeholder

389-ds: platform platform-placeholder networking-base perl

bind: platform platform-placeholder

krb5: platform platform-placeholder

sssd: platform platform-placeholder samba

samba: platform platform-placeholder

pki: platform platform-placeholder java tomcat resteasy storage-devices

tomcat: platform platform-placeholder

resteasy: platform platform-placeholder

httpd: platform platform-placeholder

postgresql: platform platform-placeholder

python3: platform platform-placeholder

python3-bootstrap: platform platform-placeholder

python3-ecosystem: platform platform-placeholder

python3-ecosystem-bootstrap: platform platform-placeholder

python2: platform platform-placeholder

storaged: platform platform-placeholder
