#!/bin/sh
path=$(pwd)

##################
#     HOME       #
##################
ln -sf $path/.xinitrc $HOME/.xinitrc

##################
#     CONFIG     #
##################
[ ! -d $HOME/.config ] && mkdir $HOME/.config

# [ -d $HOME/.config/nvim ] && rm -rf $HOME/.config/nvim
# ln -sf $path/config/nvim $HOME/.config/nvim

[ -d $HOME/.config/dwm ] && rm -rf $HOME/.config/dwm
ln -sf $path/config/dwm $HOME/.config/dwm

[ -d $HOME/.config/st ] && rm -rf $HOME/.config/st
ln -sf $path/config/st $HOME/.config/st

[ -d $HOME/.config/dmenu ] && rm -rf $HOME/.config/dmenu
ln -sf $path/config/dmenu $HOME/.config/dmenu

#[ -d $HOME/.config/slock ] && rm -rf $HOME/.config/slock
#ln -sf $path/config/slock $HOME/.config/slock

#[ -d $HOME/.config/resources ] && rm -rf $HOME/.config/resources
#ln -sf $path/config/resources $HOME/.config/resources

#ln -sf $path/config/picom.conf $HOME/.config/picom.conf

##################
#     CACHE      #
##################
[ ! -d $HOME/.cache ] && mkdir $HOME/.cache
ln -sf $path/cache/wal $HOME/.cache/wal


##################
#     INSTALL    #
##################
cd $path/config
path=$(pwd)
$path/install.sh

