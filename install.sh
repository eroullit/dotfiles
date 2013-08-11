#!/bin/sh

DOT="bashrc gitconfig vimrc mrconfig"

for f in $DOT
do
    ln -sf "$PWD/$f" "$HOME/.$f"
done

# vim: ft=sh:tabstop=4:et
