#!/bin/sh

clang -std=c++11 -I/usr/include -L/usr/lib -lusb-1.0 -lstdc++ k290_fnkeyctl.cpp -o k290_fnkeyctl