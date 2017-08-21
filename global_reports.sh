#!/bin/sh

modules=$(ls modules \
    | sed \
        -e "s/^bootstrap$//g")

mkdir -p global_reports

echo ""
echo "Producing 'all-binary-pkgs' list..."

for module in $modules; do
    cat modules/$module/all/runtime-binary-packages-short.txt
done | sort | uniq | sort > global_reports/all-binary-pkgs.txt

echo ""
echo "Producing 'all-binary-pkgs-counted' list..."

for module in $modules; do
    cat modules/$module/all/runtime-binary-packages-short.txt
done | sort | uniq -c | sort > global_reports/all-binary-pkgs-counted.txt

echo ""
echo "Producing 'all-binary-pkgs-occurrences' list..."

while read pkg_row; do
    pkg=$(echo $pkg_row | sed -e "s/.* //")
    printf "$pkg_row\t"
    for module in $modules; do
        cat modules/$module/all/runtime-binary-packages-short.txt | grep "^$pkg$" > /dev/null
        if [ $? -eq 0 ]; then
            printf "$module, "
        fi
    done | sed 's/, $//'
    printf "\n"
done < global_reports/all-binary-pkgs.txt | column -ts $'\t' > global_reports/all-binary-pkgs-occurrences.txt

echo ""
echo "Producing 'missing-build-deps-binary-pkgs' list..."

for module in $modules; do
    cat modules/$module/all/buildtime-binary-packages-short.txt
done | sort | uniq | sort > global_reports/missing-build-deps-binary-pkgs.txt

echo ""
echo "Producing 'missing-build-deps-binary-pkgs-counted' list..."

for module in $modules; do
    cat modules/$module/all/buildtime-binary-packages-short.txt
done | sort | uniq -c | sort > global_reports/missing-build-deps-binary-pkgs-counted.txt

echo ""
echo "Producing 'missing-build-deps-binary-pkgs-unmodularized' list..."

comm -13 \
    global_reports/all-binary-pkgs.txt \
    global_reports/missing-build-deps-binary-pkgs.txt \
    > global_reports/missing-build-deps-binary-pkgs-unmodularized.txt


echo ""
echo "Generating README in the global_reports directory..."

{
    echo "# Dependency reports"
    echo ""
    echo "This directory contains global reports - a view on all modules at once."
    echo ""
    echo "For more details **individual modules** and **architecture-specific** information, please click on individual module names in thee table below."
    echo ""
    echo "## Files"
    echo ""
    echo "### Runtime dependencies"
    echo ""
    echo "* [**all-binary-pkgs.txt**](all-binary-pkgs.txt) - All binary packages included in all modules."
    echo "* [**all-binary-pkgs-counted.txt**](all-binary-pkgs-counted.txt) - All binary packages included in all modules, with a number saying in how many modules the package is."
    echo "* [**all-binary-pkgs-occurrences.txt**](all-binary-pkgs-occurrences.txt) - All binary packages included in all modules, with a list of modules they are included in."
    echo ""
    echo "### Build dependencies"
    echo ""
    echo "* [**missing-build-deps-binary-pkgs.txt**](missing-build-deps-binary-pkgs.txt) - Missing build dependencies of all modules. Some of these packages might be already modularized, the build dependency just need to be defined."
    echo "* [**missing-build-deps-binary-pkgs-counted.txt**](missing-build-deps-binary-pkgs-counted.txt) - Missing build dependencies of all modules. Some of these packages might be already modularized, the build dependency just need to be defined. With a number representing how many modules are missing such dependency."
    echo "* [**missing-build-deps-binary-pkgs-unmodularized.txt**](missing-build-deps-binary-pkgs-unmodularized.txt) - Missing build dependencies of all modules. None of these packages are included in modules, so they need to get modularized."
    echo ""
    echo "## There are $(ls modules | wc -l) modules:"
    echo ""
    echo "![module-deps](../img/module-deps.png)"
    echo ""
    echo "| Module | RPM compnents | RPMs missing in buildroot |"
    echo "|---|---|---|"
    for module in $modules; do
        echo "| [**$module**](../modules/$module) | **$(cat modules/$module/all/runtime-binary-packages-short.txt | wc -l)** pkgs | [**$(cat modules/$module/all/buildtime-binary-packages-short.txt | wc -l)** pkgs missing](../modules/$module/all/buildtime-binary-packages-short.txt) |"
    done
} > global_reports/README.md


