#!/bin/sh

DOT="bashrc gitconfig vimrc"

for f in $DOT
do
    ln -s "$PWD/$f" "$HOME/.$f"
done

# vim: ft=sh:tabstop=4:et
