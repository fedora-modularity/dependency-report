#!/bin/sh

./add_platform.sh


./build_deps.sh 389-ds      platform platform-placeholder perl autotools
./build_deps.sh autotools   platform platform-placeholder java perl
./build_deps.sh bind        platform platform-placeholder autotools perl
./build_deps.sh freeipa     platform platform-placeholder 389-ds autotools perl
./build_deps.sh httpd       platform platform-placeholder autotools perl
./build_deps.sh java        platform platform-placeholder autotools perl
./build_deps.sh krb5        platform platform-placeholder
./build_deps.sh networking-base platform platform-placeholder autotools perl
./build_deps.sh perl        platform platform-placeholder systemtap
./build_deps.sh pki         platform platform-placeholder java perl 
./build_deps.sh postgresql  platform platform-placeholder perl
./build_deps.sh resteasy    platform platform-placeholder autotools perl java
./build_deps.sh samba       platform platform-placeholder autotools perl
./build_deps.sh sssd        platform platform-placeholder autotools perl
./build_deps.sh storage-devices platform platform-placeholder autotools perl
./build_deps.sh systemtap   platform platform-placeholder autotools perl
./build_deps.sh tomcat      platform platform-placeholder autotools perl java

# I don't need build deps for these...
echo "" > modules/platform-placeholder/modular-build-deps.txt
echo "" > modules/installer/modular-build-deps.txt
