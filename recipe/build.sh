#!/bin/bash
set -e

if [[ $(uname) == Darwin ]]; then
  export CFLAGS="${CFLAGS} -isysroot ${CONDA_BUILD_SYSROOT}"
  export CXXFLAGS="${CFLAGS} -isysroot ${CONDA_BUILD_SYSROOT}"
fi

$CXX $CPPFLAGS $CXXFLAGS $LIBS $LDFLAGS testme.cpp -o testme
mkdir -p $PREFIX/bin
cp testme $PREFIX/bin/testme