#!/bin/bash

# Execute with..
# $ bash <(curl -s http://einbaasje.nl/vim.sh)

# Download vimrc
curl -fLo ~/.vimrc http://eindbaasje.nl/vimrc

# Download Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# Run first setup
vim +PlugInstall +qall
