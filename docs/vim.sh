#!/bin/bash

# Execute with..
# $ bash -c "$(curl -fLsS http://einbaasje.nl/vim.sh)"

# Download vimrc
curl -fLo ~/.vimrc http://eindbaasje.nl/vimrc

# Download Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# Add FZF_DEFAULT_COMMAND using find to bashrc
echo "export FZF_DEFAULT_COMMAND='find * -type f'" >> ~/.bashrc
    
# Run first setup
vim +PlugInstall +qall
