#!/bin/sh

module=$1

echo "Generating modulemd for $module"
{
    cat << EOF
document: modulemd
version: 1
data:
summary: $module module
description: This $module has been generated
license:
    module: [ MIT ]
dependencies:
    buildrequires:
EOF
    for dep in $(cat modules/$module/modular-build-deps.txt); do
        echo "            $dep: master"
    done
    cat << EOF
    requires:
EOF
    for dep in $(cat modules/$module/modular-deps.txt); do
        echo "            $dep: master"
    done
    cat << EOF
references:
    community: https://docs.pagure.org/modularity/
    documentation: https://github.com/modularity-modules/$module
    tracker: https://github.com/modularity-modules/$module
components:
    rpms:
EOF
    for pkg in $(cat modules/$module/all/runtime-source-packages-full.txt); do
        echo "            ${pkg%-*-*}:"
        echo "                rationale: Generated."
        ref=$(./get_package_hashes.py $(echo $pkg | sed -e "s/\(.*\).src$/\1/") | sed -e "s/^.*:\([^)]*\))/\1/")
        if [ -n "$ref" ]; then
            echo "                ref: $ref"
        else
            echo "                ref: master"
        fi
    done
} > modules/$module/$module.yaml
