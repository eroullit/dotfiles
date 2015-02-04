#!/bin/sh

DOT="bashrc gitconfig vimrc.local mrconfig tmux.conf oh-my-git"

./spf-13-vim/bootstrap.sh

mkdir -p ~/.fonts
cp "$PWD"/awesome-terminal-fonts/patched/*.ttf ~/.fonts

for f in $DOT
do
    ln -sf "$PWD/$f" "$HOME/.$(basename $f)"
done

# vim: ft=sh:tabstop=4:et
