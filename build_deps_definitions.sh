#!/bin/sh

./add_platform.sh


./build_deps.sh 389-ds      platform
./build_deps.sh autotools   platform
./build_deps.sh freeipa     platform
./build_deps.sh java        platform
./build_deps.sh httpd       platform
./build_deps.sh nginx       platform
./build_deps.sh perl        platform
./build_deps.sh ruby        platform perl systemtap autotools
./build_deps.sh systemtap   platform
./build_deps.sh python3     platform
./build_deps.sh installer   platform
