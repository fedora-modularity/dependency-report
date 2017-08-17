#!/bin/sh

mkdir -p global_reports

cat modules/*/x86_64/runtime-binary-packages-short.txt  | sort | uniq -c | sort > global_reports/all-binary-pkgs-counted.txt

while read pkg_row; do
    pkg=$(echo $pkg_row | sed -e "s/.* //")
    printf "$pkg_row\t"
    for module in $(ls modules); do
        cat modules/$module/*/runtime-binary-packages-short.txt | grep "^$pkg$" > /dev/null
        if [ $? -eq 0 ]; then
            printf "$module, "
        fi
    done | sed 's/, $//'
    printf "\n"
done < global_reports/all-binary-pkgs-counted.txt | column -ts $'\t' > global_reports/all-binary-pkgs-occurrences.txt



