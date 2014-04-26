Reconfigures the way the function keys on Logitech K290 keyboards work

For some unfathomable reason, Logitech has decided to make the F-keys on this 
model emit their multimedia function by default.
This utility switches the functionality back to the regular behaviour.

## Build instructions

You'll need:

 - clang
 - libusb 1.0, including development files

On a regular Linux System just type `./build.sh` and it should work.
If it does not, look at the script and adapt the path accordingly.
If it still does not work, open an issue or a Pull Request on Github :)

## Running it

Opening the device with libusb requires advanced permissions, so run it with

    sudo ./k290_fnkeyctl

Afterwards, you'll have regular function key behaviour. If you want to switch
back, just append `-r` or `--reset`.

To automatically run the program when the device is plugged in, you can use
the included udev rules script as a template. Or just install the tool using

    sudo ./install.sh

Which will copy the executable to `/usr/local/sbin` and install the udev rules
into `/etc/udev/rules.d`.
