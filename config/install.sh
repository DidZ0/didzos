#! /bin/sh

path=$(pwd)

# INSTALL DWM
rm -f $path/dwm/flexipage/config.h
sudo make -C $path/dwm/flexipage clean install
$path/tools/flexipatch-finalizer.sh -r -d $path/dwm/flexipage -o $path/dwm
sudo make -C $path/dwm clean install

rm -f $path/dmenu/config.h
sudo make -C $path/dmenu/ clean install

rm -f $path/st/config.h
sudo make -C $path/st/ clean install
