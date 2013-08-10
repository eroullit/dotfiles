#!/bin/sh

DOT="bashrc gitconfig vimrc"

for f in $DOT
do
    ln -s "$f" "$HOME/.$f"
done

# vim: ft=sh:tabstop=4:et
