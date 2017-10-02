#!/usr/bin/env sh

if [ -z "$1" ]
then
    PROJECT_NAME=$(basename $PWD)
else
    PROJECT_NAME=$1
fi

cmake -H. -Bbuild -GNinja -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_CXX_INCLUDE_WHAT_YOU_USE=iwyu -DPROJECT_NAME=$PROJECT_NAME
# cmake -H. -Bbuild -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_CXX_INCLUDE_WHAT_YOU_USE=iwyu -DCMAKE_CXX_COMPILER=clang++ -GNinja
# cmake -H. -Bbuild -DCMAKE_CXX_INCLUDE_WHAT_YOU_USE=iwyu -DCMAKE_CXX_CLANG_TIDY=clang-tidy

# cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 .

# cmake --build build -- VERBOSE=1
# cmake --build build
