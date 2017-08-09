#!/bin/sh

DOT="bashrc gitconfig vimrc.local vimrc.before.local mrconfig tmux.conf liquidprompt jrnl_config Xresources"

./spf-13-vim/bootstrap.sh
./fonts-install.sh

for f in $DOT
do
    rm -f "$HOME/.$(basename $f)"
    ln -sf "$PWD/$f" "$HOME/.$(basename $f)"
done

# vim: ft=sh:tabstop=4:et
