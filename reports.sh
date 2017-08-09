#!/bin/sh

for module in $(ls modules); do
    {
        echo "# $module"
        echo "This is a dependency report for the $module module."
        echo "## Dependencies"
        for dep in $(cat modules/$module/modular-deps.txt); do
            echo "* [$dep](../$dep)"
        done
        echo "## Binary packages (all arches combined)"
        for pkg in $(cat modules/$module/all/runtime-binary-packages-short.txt); do
            echo "* [$pkg]"
        done
    } > modules/$module/README.md
done
