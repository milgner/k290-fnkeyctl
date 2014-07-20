#!/bin/sh
# comment in or out to whatever compiler you prefer
# if you want to use GCC, make sure it's a recent one
g++ -std=gnu++0x -lusb-1.0 k290_fnkeyctl.cpp -o k290_fnkeyctl
# clang -std=c++11 -I/usr/include -L/usr/lib k290_fnkeyctl.cpp -lusb-1.0 -lstdc++ -o k290_fnkeyctl
