#!/bin/bash
set -e

$CXX $CPPFLAGS $CXXFLAGS $LIBS $LDFLAGS testme.cpp -o testme
cp testme $PREFIX/bin/testmd
