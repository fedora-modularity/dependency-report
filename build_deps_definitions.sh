#!/bin/sh

./add_platform.sh


./build_deps.sh installer   platform systemtap autotools
./build_deps.sh systemtap   platform
./build_deps.sh autotools   platform
./build_deps.sh perl        platform
./build_deps.sh networking-base platform
./build_deps.sh storage-devices platform
