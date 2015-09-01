#!/bin/sh

DOT="bashrc gitconfig vimrc.local vimrc.before.local mrconfig tmux.conf liquidprompt jrnl_config"

./spf-13-vim/bootstrap.sh

mkdir -p ~/.fonts
cp "$PWD"/awesome-terminal-fonts/patched/*.ttf ~/.fonts

for f in $DOT
do
    rm -f "$HOME/.$(basename $f)"
    ln -sf "$PWD/$f" "$HOME/.$(basename $f)"
done

# vim: ft=sh:tabstop=4:et
