#!/bin/bash

case "$1" in
    thaw|resume)
        /usr/local/sbin/k290_fnkeyctl > /dev/null
        ;;
    *) exit $NA
        ;;
esac
exit $?
