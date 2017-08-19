#!/bin/sh

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
./build_deps.sh python3     platform platform-placeholder python3-bootstrap
./build_deps.sh python3-bootstrap    platform platform-placeholder
./build_deps.sh python3-ecosystem    platform platform-placeholder
./build_deps.sh python3-ecosystem-bootstrap    platform platform-placeholder python3-ecosystem-bootstrap
./build_deps.sh python2     platform platform-placeholder

# I don't need build deps for these...
excluded="platform platform-placeholder installer"
arches=$(cat arches.txt)

for module in $excluded; do
    touch modules/$module/modular-build-deps.txt
    for arch in $arches; do
        touch modules/$module/$arch/buildtime-source-packages-short.txt
        touch modules/$module/$arch/buildtime-source-packages-full.txt
        touch modules/$module/$arch/buildtime-binary-packages-short.txt
        touch modules/$module/$arch/buildtime-binary-packages-full.txt
    done
done
