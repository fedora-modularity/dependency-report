#!/bin/sh

mkdir -p global_reports

cat modules/*/all/runtime-binary-packages-short.txt  | sort | uniq -c | sort > global_reports/all-binary-pkgs-counted.txt

while read pkg_row; do
    pkg=$(echo $pkg_row | sed -e "s/.* //")
    printf "$pkg_row\t"
    for module in $(ls modules); do
        cat modules/$module/all/runtime-binary-packages-short.txt | grep "^$pkg$" > /dev/null
        if [ $? -eq 0 ]; then
            printf "$module, "
        fi
    done | sed 's/, $//'
    printf "\n"
done < global_reports/all-binary-pkgs-counted.txt | column -ts $'\t' > global_reports/all-binary-pkgs-occurrences.txt

{
    echo "# Global reports"
    echo ""
    echo "![module-deps](../img/module-deps.png)"
    echo "## There are $(ls modules | wc -l) modules:"
    echo ""
    echo "| Module | RPM compnents | RPMs missing in buildroot |"
    echo "|---|---|---|"
    for module in $(ls modules); do
        echo "| [**$module**](../modules/$module) | $(cat modules/$module/all/runtime-binary-packages-short.txt | wc -l) | [$(cat modules/$module/all/buildtime-binary-packages-short.txt | wc -l) pkgs missing](../modules/$module/all/buildtime-binary-packages-short.txt) |"
    done
} > global_reports/README.md


