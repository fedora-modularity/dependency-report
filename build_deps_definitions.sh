#!/bin/sh

./build_deps.sh installer   bootstrap
./build_deps.sh 389-ds      bootstrap
./build_deps.sh autotools   bootstrap
./build_deps.sh bind        bootstrap
./build_deps.sh freeipa     bootstrap
./build_deps.sh httpd       bootstrap
./build_deps.sh java        bootstrap
./build_deps.sh krb5        bootstrap
./build_deps.sh networking-base bootstrap
./build_deps.sh perl        bootstrap
./build_deps.sh pki         bootstrap
./build_deps.sh postgresql  bootstrap
./build_deps.sh resteasy    bootstrap
./build_deps.sh samba       bootstrap
./build_deps.sh sssd        bootstrap
./build_deps.sh storage-devices bootstrap
./build_deps.sh systemtap   bootstrap
./build_deps.sh tomcat      bootstrap
./build_deps.sh python3     bootstrap
./build_deps.sh python3-bootstrap    bootstrap
./build_deps.sh python3-ecosystem    bootstrap
./build_deps.sh python3-ecosystem-bootstrap    bootstrap
./build_deps.sh python2     bootstrap
./build_deps.sh storaged    bootstrap

# I don't need build deps for these...
excluded="platform platform-placeholder bootstrap"
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
