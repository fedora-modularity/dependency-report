#!/bin/sh

echo "\n========================================="
echo "Removing old data..."
rm -rf modules repos

echo "\n========================================="
echo "Cloning 'modularity-modules' repositories..."
./clone_repos.sh

echo "\n========================================="
echo "Generating machine-readable top-lvl  package lists..."
./generate_lists.sh

echo "\n========================================="
echo "Resolving runtime package dependencies using depchase..."
./resolve_modules.sh

echo "\n========================================="
echo "Resolving runtime module dependencies..."
make

echo "\n========================================="
echo "Resolving build package dependencies using depchase..."
./resolve_build.sh

echo "\n========================================="
echo "Resolving build module dependencies..."
./build_deps_definitions.sh

echo "\n========================================="
echo "Producing human-readable reports..."
./reports.sh

echo "\n========================================="
echo "Generating runtime package dependency graph for all modules..."
./graph.sh

echo "\n========================================="
echo "EVERYTHING is done! \\o/"
echo "========================================="

