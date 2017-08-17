#!/bin/sh

./add_platform.sh


#./build_deps.sh installer   platform systemtap autotools platform-placeholder
./build_deps.sh installer   platform
./build_deps.sh systemtap   platform platform-placeholder
./build_deps.sh autotools   platform platform-placeholder
./build_deps.sh perl        platform platform-placeholder
./build_deps.sh networking-base platform platform-placeholder
./build_deps.sh storage-devices platform platform-placeholder
./build_deps.sh platform-placeholder platform
./build_deps.sh freeipa platform platform-placeholder 389-ds
./build_deps.sh java        platform platform-placeholder
./build_deps.sh 389-ds        platform platform-placeholder
./build_deps.sh bind        platform platform-placeholder
./build_deps.sh krb5        platform platform-placeholder
./build_deps.sh sssd        platform platform-placeholder
./build_deps.sh samba       platform platform-placeholder
./build_deps.sh pki         platform platform-placeholder
./build_deps.sh tomcat      platform platform-placeholder
./build_deps.sh resteasy    platform platform-placeholder
./build_deps.sh httpd       platform platform-placeholder
./build_deps.sh postgresql  platform platform-placeholder

