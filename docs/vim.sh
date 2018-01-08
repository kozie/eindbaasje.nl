#!/bin/bash

# Execute with..
# $ bash -c "$(curl -fLsS http://eindbaasje.nl/vim.sh)"

# Check if not root
if [[ $EUID -eq 0 ]]; then
   echo "Please do not run as root!" 
   exit 1
fi

# Download vimrc
curl -fLo ~/.vimrc http://eindbaasje.nl/vimrc

# Download Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# Add FZF_DEFAULT_COMMAND using find to bashrc
echo "export FZF_DEFAULT_COMMAND='find * -type f'" >> ~/.bashrc
    
# Run first setup
vim +PlugInstall +qall
