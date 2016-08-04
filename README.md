Reconfigures the way the function keys on Logitech K290 keyboards work

For some unfathomable reason, Logitech has decided to make the F-keys on this 
model emit their multimedia function by default.
This utility switches the functionality back to the regular behaviour.

## Build instructions

You'll need:

 - a C++ compiler, either G++ (default) or Clang
 - if you choose clang, change build.sh as described in there
 - libusb 1.0, including development files
   - on Ubuntu/Debian this can be achieved via `sudo apt-get install libusb-1.0-0-dev`

Then, on a regular Linux System just type `./build.sh` and it should work.
If it does not, look at the script and adapt the path accordingly.
If it still does not work, open an issue or a Pull Request on Github :)

## Running it

### Manually

Opening the device with libusb requires advanced permissions, so run it with

    sudo ./k290_fnkeyctl

Afterwards, you'll have regular function key behaviour. If you want to switch
back, just append `-r` or `--reset`.

### Automatically (udev)

To automatically run the program when the device is plugged in, you can use
the included udev rules script as a template. Or just automatically install
them along with the executable with

    sudo ./install.sh

Which will copy the executable to `/usr/local/sbin` and install the udev rules
into `/etc/udev/rules.d`.
Now you'll just need to tell udev to apply the new rules:

    sudo udevadm control --reload-rules
    sudo udevadm trigger --subsystem-match=input

### Fedora installation

Go to https://copr.fedoraproject.org/coprs/mariuszs/k290-fnkeyctl/

### Debian 8 Jessie installation

Debian 8 is a little different from Ubuntu derivatives like Linux mint. You might get C++ function reference errors and this might be because **pkg-config** might not available by default so it just fails without warning. To get arround this run 
      
      `sudo dpkg --search pkg-config`

If you do not find it then:
      
      `sudo apt-get install pkg-config`

Run `./build.sh` as usual
