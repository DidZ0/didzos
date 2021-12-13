#!/bin/sh
path=$(pwd)

#DEPS
paru -S --needed python nitrogen neovim picom-git python-pywal

#DELETE 
[ ! -d $HOME/.config ] && mkdir $HOME/.config
[ -d $HOME/.config/dwm ] && rm -rf $HOME/.config/dwm
[ -d $HOME/.config/st ] && rm -rf $HOME/.config/st
[ -d $HOME/.config/dmenu ] && rm -rf $HOME/.config/dmenu
[ -d $HOME/.config/resources ] && rm -rf $HOME/.config/resources
[ ! -d $HOME/.cache ] && mkdir $HOME/.cache

#.CONFIG
ln -sf $path/.xinitrc $HOME/.xinitrc
ln -sf $path/cache/wal $HOME/.cache/wal
ln -sf $path/config/resources $HOME/.config/resources
ln -sf $path/config/picom.conf $HOME/.config/picom.conf
ln -sf $path/config/dwm $HOME/.config/dwm
ln -sf $path/config/st $HOME/.config/st
ln -sf $path/config/dmenu $HOME/.config/dmenu

#ETC
sudo ln -sf $path/etc/trackpad/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf

#INSTALL
cd $path/config
path=$(pwd)
$path/install.sh
