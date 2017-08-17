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
./build_deps.sh freeipa platform platform-placeholder
./build_deps.sh java        platform platform-placeholder

