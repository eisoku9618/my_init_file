#!/bin/bash

sudo rm -rf ~/Development
ln -s $HOME/Dropbox/settings/Development $HOME/Development

# emacs setting
sudo rm -rf ~/.emacs.d
ln -s $HOME/Dropbox/settings/emacs/.emacs.d $HOME/.emacs.d

# bash files
sudo rm -f ~/.bashrc
ln -s $HOME/Dropbox/settings/bashrc/.bashrc $HOME/.bashrc
sudo rm -f ~/.bashrc.custom
ln -s $HOME/Dropbox/settings/bashrc/.bashrc.custom $HOME/.bashrc.custom
sudo rm -f ~/.bashrc.mech
ln -s $HOME/Dropbox/settings/bashrc/.bashrc.mech $HOME/.bashrc.mech
sudo rm -f ~/bashrc.ros.delayedload

# texmaker setting
sudo rm -rf ~/.config/xm1
ln -s $HOME/Dropbox/settings/.settings/xm1 $HOME/.config/xm1

# startup applications setting
sudo rm -rf ~/.config/autostart
ln -s $HOME/Dropbox/settings/.settings/autostart $HOME/.config/autostart

# # cairo-dock setting
# sudo rm -rf ~/.config/cairo-dock
# ln -s $HOME/Dropbox/settings/.settings/cairo-dock $HOME/.config/cairo-dock

# Couturier
cp $HOME/Dropbox/Download/couturier_0.6.2-1_all.deb ~/Desktop

cd $HOME
source .bashrc
 
