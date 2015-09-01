#!/bin/sh

DOT="bashrc gitconfig vimrc.local vimrc.before.local mrconfig tmux.conf liquidprompt jrnl_config"

./spf-13-vim/bootstrap.sh

for f in $DOT
do
    ln -sf "$PWD/$f" "$HOME/.$(basename $f)"
done

# vim: ft=sh:tabstop=4:et
