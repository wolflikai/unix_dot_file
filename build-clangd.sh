#!/bin/bash

set -e

mkdir clangd
cd clangd/
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm

cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd ../..

cd llvm/tools/clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
cd ../../../..

mkdir build
cd build
cmake -G "Unix Makefiles" ../llvm
make clangd
