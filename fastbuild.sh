#!/bin/sh
OSPRAY_DIR=$HOME/software/ospray-superbuild-git

g++ \
    -O0 -g -W -Wall \
    -shared -fPIC \
    -std=c++11 \
    -I $OSPRAY_DIR/include \
    -I $OSPRAY_DIR/include/ospray/ospray_testing \
    -L $OSPRAY_DIR/lib \
    `python -m pybind11 --includes` \
    ospray.cpp \
    -o ospray`python3-config --extension-suffix` \
    -lospray \
    -lospray_testing
