#!/bin/bash
script_dir=$(cd $(dirname $BASH_SOURCE); pwd)
ln -sf $script_dir/.tmux.conf $HOME/.byobu/.tmux.conf
ln -sf $script_dir/keybindings.tmux $HOME/.byobu/keybindings.tmux
unset script_dir