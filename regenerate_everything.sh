#!/bin/sh

printf "\n\n=========================================\n"
printf "Removing old data...\n\n"
rm -rf modules repos

printf "\n\n=========================================\n"
printf "Cloning 'modularity-modules' repositories...\n\n"
./clone_repos.sh

printf "\n\n=========================================\n"
printf "Generating machine-readable top-lvl  package lists...\n\n"
./generate_lists.sh

printf "\n\n=========================================\n"
printf "Resolving runtime package dependencies using depchase...\n\n"
./resolve.sh runtime

printf "\n\n=========================================\n"
printf "Resolving runtime module dependencies...\n\n"
make

printf "\n\n=========================================\n"
printf "Resolving build package dependencies using depchase...\n\n"
./resolve.sh buildtime

printf "\n\n=========================================\n"
printf "Resolving build module dependencies...\n\n"
./build_deps_definitions.sh

printf "\n\n=========================================\n"
printf "Producing human-readable reports...\n\n"
./reports.sh

printf "\n\n=========================================\n"
printf "Generating runtime package dependency graph for all modules...\n\n"
./graph.sh

printf "\n\n=========================================\n"
printf "Generating global reports...\n\n"
./where_is_pkg.sh

printf "\n\n=========================================\n"
printf "EVERYTHING is done! \\o/\n"
printf "=========================================\n"

