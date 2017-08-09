#!/bin/sh

cd "$(dirname "$0")"

mkdir -p "$HOME"/.fonts
cp -f ./fonts/*.ttf "$HOME"/.fonts
cp -f ./fonts/*.otf "$HOME"/.fonts
fc-cache -fv "$HOME"/.fonts
