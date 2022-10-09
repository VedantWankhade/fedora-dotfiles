#!/bin/bash

echo "Installing vim Plug"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copying .vimrc"
cp ./.vimrc ~/

echo "To use fzf, you have to install it using 'PlugInstall' in the directory you want it to work in"
