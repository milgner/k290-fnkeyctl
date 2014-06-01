#!/bin/sh

[ -f ./k290_fnkeyctl ] || ./build.sh || (echo "Could not build" && exit)

install -m 755 -o root k290_fnkeyctl /usr/local/sbin/
install -m 644 -o root 99-k290-config.rules /etc/udev/rules.d/
install -m 755 -o root 20-k290.sh /etc/pm/sleep.d/
