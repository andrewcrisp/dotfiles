#!/bin/sh

sudo apt install --yes neovim
sudo apt install --yes luarocks

mkdir $HOME/.config
cp ../nvim/ $HOME/.config/nvim/ -r
