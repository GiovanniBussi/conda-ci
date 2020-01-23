#!/bin/bash
set -e
set -x

#if [[ $(uname) == Darwin ]]; then
  #export SDKROOT="${CONDA_BUILD_SYSROOT}"
#fi

$CXX $CPPFLAGS $CXXFLAGS $LIBS $LDFLAGS testme.cpp -o testme
mkdir -p $PREFIX/bin
cp testme $PREFIX/bin/testme
