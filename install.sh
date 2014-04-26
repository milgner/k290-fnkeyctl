#!/bin/sh

./build.sh
install -m 755 -o root k290_fnkeyctl /usr/local/sbin/
install -m 644 -o root 99-k290-config.rules /etc/udev/rules.d/
