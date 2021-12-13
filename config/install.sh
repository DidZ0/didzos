#! /bin/sh

path=$(pwd)

sudo make -C $path/dwm/ clean install
rm -f $path/dwm/config.h

sudo make -C $path/dmenu/ clean install
rm -f $path/dmenu/config.h

sudo make -C $path/st/ clean install
rm -f $path/st/config.h
