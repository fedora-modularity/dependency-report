#!/bin/sh


modules_queue=($(ls modules))
modules_done=()
while [ -n "$modules_queue" ]; do
    for module in ${modules_queue[*]}; do
        ready=true
        for dep in $(cat modules/$module/modular-deps.txt); do
            if [[ ! " ${modules_done[@]} " =~ " ${dep} " ]]; then
                ready=false
            fi
        done
        if [ "$ready" = true ]; then
            echo "processing $module"
            for arch in aarch64 armv7hl i686 ppc64 ppc64le s390x x86_64; do
                modulearchroot="modules/$module/$arch"
                # $module: $(cat modules/$module/modular-deps.txt)

                if [ -z "$(cat modules/$module/modular-deps.txt)" ]; then
                    cat $modulearchroot/standalone-runtime-source-packages-short.txt > $modulearchroot/runtime-source-packages-short.txt
                    cat $modulearchroot/standalone-runtime-source-packages-full.txt > $modulearchroot/runtime-source-packages-full.txt
                    cat $modulearchroot/standalone-runtime-binary-packages-short.txt > $modulearchroot/runtime-binary-packages-short.txt
                    cat $modulearchroot/standalone-runtime-binary-packages-full.txt > $modulearchroot/runtime-binary-packages-full.txt
                else
                    for i in $(cat modules/$module/modular-deps.txt); do
                        cat modules/$i/$arch/runtime-source-packages-short.txt
                    done | sort | uniq -u | comm -13 - $modulearchroot/standalone-runtime-source-packages-short.txt > $modulearchroot/runtime-source-packages-short.txt
                    for i in $(cat modules/$module/modular-deps.txt); do
                        cat modules/$i/$arch/runtime-source-packages-full.txt
                    done | sort | uniq -u | comm -13 - $modulearchroot/standalone-runtime-source-packages-full.txt > $modulearchroot/runtime-source-packages-full.txt
                    for i in $(cat modules/$module/modular-deps.txt); do
                        cat modules/$i/$arch/runtime-binary-packages-short.txt
                    done | sort | uniq -u | comm -13 - $modulearchroot/standalone-runtime-binary-packages-short.txt > $modulearchroot/runtime-binary-packages-short.txt
                    for i in $(cat modules/$module/modular-deps.txt); do
                        cat modules/$i/$arch/runtime-binary-packages-full.txt
                    done | sort | uniq -u | comm -13 - $modulearchroot/standalone-runtime-binary-packages-full.txt > $modulearchroot/runtime-binary-packages-full.txt
                fi
                mkdir -p $modulearchroot/deps
            done
            delete=($module)
            modules_queue=( "${modules_queue[@]/$delete}" )
            modules_done+=($module)
        fi
    done    
      
done
