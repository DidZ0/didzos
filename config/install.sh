#! /bin/sh

path=$(pwd)

# INSTALL DWM
rm -rf $path/dwm/out/*
$path/tools/flexipatch-finalizer.sh -r -d $path/dwm/flexipatch -o $path/dwm/out
sudo make -C $path/dwm/out clean install
