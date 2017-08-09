#!/bin/sh

echo "Generating reports"
for module in $(ls modules); do
    {
        echo "# $module"
        echo "This is a dependency report for the $module module."
        echo ""
        echo "An initial [modulemd file]($module.yaml) has been generated. It is experimental and probably unusable at this point."
        echo "## Dependencies"
        for dep in $(cat modules/$module/modular-deps.txt); do
            echo "* [$dep](../$dep)"
        done
        echo "## Binary packages (all arches combined)"
        for pkg in $(cat modules/$module/all/runtime-binary-packages-short.txt); do
            echo "* \`$pkg\`"
        done
    } > modules/$module/README.md
done

echo "Generating modulemd files"
for module in $(ls modules); do
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
            platform: master
EOF
        for dep in $(cat modules/$module/modular-deps.txt); do
            echo "            $dep: master"
        done
        cat << EOF
        requires:
            platform: master
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
        for pkg in $(cat modules/$module/all/runtime-source-packages-short.txt); do
            echo "            $pkg:"
            echo "                rationale: Generated."
            echo "                ref: master."
        done
    } > modules/$module/$module.yaml
done
