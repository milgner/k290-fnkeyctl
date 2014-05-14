#!/bin/sh

clang -std=c++11 -I/usr/include -L/usr/lib k290_fnkeyctl.cpp -lusb-1.0 -lstdc++ -o k290_fnkeyctl
