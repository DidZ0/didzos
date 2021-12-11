#! /bin/sh

path=$(pwd)
dwm_path=$path/dwm
dmenu_path=$path/dmenu
st_path=$path/st

# INSTALL DWM
rm -rf $dwm_path/out/*
cp $dwm_path/flexipatch/patches.def.h $dwm_path/flexipatch/patches.h
$path/tools/flexipatch-finalizer.sh -r -d $dwm_path/flexipatch -o $dwm_path/out
rm $dwm_path/flexipatch/patches.h
sudo make -C $dwm_path/out clean install

# INSTALL DMENU
# TODO

# INSTALL ST 
rm -rf $st_path/out/*
cp $st_path/flexipatch/patches.def.h $st_path/flexipatch/patches.h
$path/tools/flexipatch-finalizer.sh -r -d $st_path/flexipatch -o $st_path/out
rm $st_path/flexipatch/patches.h
sudo make -C $st_path/out clean install