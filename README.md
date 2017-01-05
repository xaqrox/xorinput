# xorinput
Disable laptop keyboard (and later, mouse/trackpad) when using external
input devices.

:warning: Experimental, proceed with caution. :warning:

## Installation/Usage
**This will disable your laptop keyboard**. (That's the whole point.) Not
recommended if you don't have an external keyboard you can use.

```sh
# "install"
git clone https://github.com/xaqrox/xorinput.git
cd xorinput
# usage
./xorinput.sh
```

The script will wait until you press a key (with your external keyboard) and
then re-enable the laptop keyboard. It also prints the command to re-enable just
in case, if you somehow exit the shell without pressing a key or lose the
command or something, read this for
clues...http://askubuntu.com/questions/160945/is-there-a-way-to-disable-a-laptops-internal-keyboard

## Inspiration
* http://askubuntu.com/questions/160945/is-there-a-way-to-disable-a-laptops-internal-keyboard
* http://unix.stackexchange.com/questions/268171/linux-detect-if-external-keyboard-is-plugged-to-laptop
* http://unix.stackexchange.com/questions/228988/how-to-automatically-disable-laptop-keyboard-mouse-with-xinput-when-external-key
* http://askubuntu.com/questions/337411/how-to-permanently-assign-a-different-keyboard-layout-to-a-usb-keyboard/337431#337431
