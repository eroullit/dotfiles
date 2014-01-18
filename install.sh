#!/bin/sh

DOT="bashrc gitconfig vimrc.local mrconfig tmux.conf"

./spf-13-vim/bootstrap.sh

for f in $DOT
do
    ln -sf "$PWD/$f" "$HOME/.$f"
done

# vim: ft=sh:tabstop=4:et
