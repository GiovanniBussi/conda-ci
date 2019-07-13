#!/bin/bash
set -e

$CXX $CPPFLAGS $CXXFLAGS $LIBS $LDFLAGS testme.cpp -o testme
mkdir -p $PREFIX/bin
cp testme $PREFIX/bin/testme
