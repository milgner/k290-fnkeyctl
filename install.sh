#!/bin/sh

[ -f ./k290_fnkeyctl ] || ./build.sh || (echo "Could not build" && exit)

install -m 755 -o root k290_fnkeyctl /usr/local/sbin/
if [ -d /etc/udev/rules.d ]; then
  install -m 644 -o root 99-k290-config.rules /etc/udev/rules.d/
fi
if [ -d /usr/lib/systemd/system-sleep/ ]; then
  install -m 755 -o root k290-fnkeyctl.sh /usr/lib/systemd/system-sleep/
fi
if [ -d /etc/pm/sleep.d ]; then
  install -m 755 -o root 20-k290.sh /etc/pm/sleep.d/
fi

