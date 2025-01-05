#!/bin/sh

sudo apt install --yes neovim
sudo apt install --yes luarocks
sudo apt install --yes npm

mkdir $HOME/.config
cp ../nvim/ $HOME/.config/nvim/ -r
