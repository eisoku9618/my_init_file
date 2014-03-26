#!/bin/bash

if [ ! -f /usr/bin/aptitude ]; then
    sudo apt-get -y install aptitude
fi

sudo aptitude -y install build-essential

wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add -
wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add -
sudo wget https://www.ubuntulinux.jp/sources.list.d/precise.list -O /etc/apt/sources.list.d/ubuntu-ja.list
sudo aptitude -y update
sudo aptitude -y install ubuntu-defaults-ja

sudo add-apt-repository -y ppa:cassou/emacs
sudo apt-add-repository -y ppa:diesch/testing
#sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:ikoinoba/ppa

sudo aptitude -y update
sudo aptitude -y install

# tex
sudo aptitude install -y nkf ptex-bin dvipsk-ja xpdf gs-cjk-resource latex-cjk-japanese language-pack-ja ghostscript python-roman ptex-jtex jbibtex-bin ptex-jisfonts texlive-latex-extra texlive-fonts-recommended dia-gnome texlive-science okumura-clsfiles

# TeX maker
# sudo aptitude -y install texmaker
# sudo aptitude -y install ibus-qt4 qt4-qtconfig

# emacs24
# sudo aptitude -y install emacs24 emacs24-el

# Classic Menu Indicator
sudo aptitude -y install classicmenu-indicator

# mozc
sudo aptitude -y install ibus-mozc
sudo aptitude -y install emacs-mozc emacs-mozc-bin

# guake
# sudo aptitude -y install guake

# pdf-shuffler
sudo aptitude -y install pdfshuffler

# gimp & inkscape
sudo aptitude -y install gimp inkscape

# Ricty
# sudo aptitude -y install fontforge
# cd /tmp
# if [ ! -f Inconsolata.otf ]; then
#     wget http://levien.com/type/myfonts/Inconsolata.otf
# fi
# if [ ! -f ricty_generator.sh ]; then
#     wget -O ricty_generator.sh https://www.dropbox.com/s/eza74btlwbte0a0/ricty_generator.sh?dl=1
# fi
# if [ ! -f migu-1m-20121030.zip ]; then
#     wget -O migu-1m-20121030.zip https://www.dropbox.com/s/wx2s7gz4u3k2rl4/migu-1m-20121030.zip?dl=1
# fi
# unzip migu-1m-20121030.zip
# sudo mv migu-1m-20121030/migu-1m-* ./
# sudo sh ricty_generator.sh Inconsolata.otf migu-1m-regular.ttf migu-1m-bold.ttf
# sudo mkdir -p ~/.fonts
# sudo cp Ricty-{Regular,Bold}.ttf ~/.fonts/
# fc-cache -vf

# Compiz & Compiz Fusion plugins
sudo aptitude -y install compiz compizconfig-settings-manager

# synaptic
sudo aptitude -y install synaptic

# delete global menu
sudo aptitude -y purge appmenu-gtk3 appmenu-gtk appmenu-qt

# rename some Directories in English
export LANG=C xdg-user-dirs-gtk-update

# System load indicator
sudo aptitude -y install indicator-multiload

# for movies
sudo aptitude -y install flashplugin-installer

# for git
sudo aptitude -y install ssh
sudo aptitude -y install xsel

# for python
sudo aptitude -y install ipython ipython-notebook

sudo aptitude -y install byobu
