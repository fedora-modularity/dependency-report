#!/bin/sh

echo ""
echo "========================================="
echo "Removing old data..."
echo "========================================="
rm -rf modules repos

echo ""
echo "========================================="
echo "Cloning 'modularity-modules' repositories..."
echo "========================================="
./clone_repos.sh

echo ""
echo "========================================="
echo "Generating machine-readable top-lvl package lists..."
echo "========================================="
./generate_lists.sh

echo ""
echo "========================================="
echo "Resolving runtime package dependencies using depchase..."
echo "========================================="
./resolve.sh runtime

echo ""
echo "========================================="
echo "Substracting runtime module dependencies..."
echo "========================================="
make

echo ""
echo "========================================="
echo "Resolving build package dependencies using depchase..."
echo "========================================="
./resolve.sh buildtime

echo ""
echo "========================================="
echo "Substracting build module dependencies..."
echo "========================================="
./build_deps_definitions.sh

echo ""
echo "========================================="
echo "Producing human-readable reports..."
echo "========================================="
./reports.sh

echo ""
echo "========================================="
echo "Generating runtime package dependency graph for all modules..."
echo "========================================="
./graph.sh

echo ""
echo "========================================="
echo "Generating global reports..."
echo "========================================="
./global_reports.sh

echo ""
echo "========================================="
echo "EVERYTHING is done! \\o/"
echo "========================================="

