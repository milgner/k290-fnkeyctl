#!/bin/sh

INSTALL_UDEV_RULE="OFF"
INSTALL_SYSTEMD_SLEEP_SCRIPT="OFF"
INSTALL_PM_UTILS_SLEEP_SCRIPT="OFF"

if [ -d /etc/udev/rules.d ]; then
  INSTALL_UDEV_RULE="ON"
fi
if [ -d /usr/lib/systemd/system-sleep/ ]; then
  INSTALL_SYSTEMD_SLEEP_SCRIPT="ON"
fi
if [ -d /etc/pm/sleep.d ]; then
  INSTALL_PM_UTILS_SLEEP_SCRIPT="ON"
fi
[ -f ./k290_fnkeyctl ] || ./build.sh -DINSTALL_UDEV_RULE=$INSTALL_UDEV_RULE \
  -DINSTALL_SYSTEMD_SLEEP_SCRIPT=$INSTALL_SYSTEMD_SLEEP_SCRIPT \
  -DINSTALL_PM_UTILS_SLEEP_SCRIPT=$INSTALL_PM_UTILS_SLEEP_SCRIPT \
  || (echo "Could not build" && exit)
make install
