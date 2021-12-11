#! /bin/sh

path=$(pwd)

# INSTALL DWM
rm -rf $path/dwm/out/*
cp $path/dwm/flexipatch/patches.def.h $path/dwm/flexipatch/patches.h
$path/tools/flexipatch-finalizer.sh -r -d $path/dwm/flexipatch -o $path/dwm/out
rm $path/dwm/flexipatch/patches.h
sudo make -C $path/dwm/out clean install
